# Importar el archivo CSV
$usuarios = Import-Csv -Path "C:\Usuarios.csv"
 
# Crear la unidad organizativa "Empresa_Galicia"
New-ADOrganizationalUnit -Name "Empresa_Galicia" -Path "OU=Empresa_Galicia,DC=galicia,DC=lan"
 
# Crear las unidades organizativas de los departamentos
$departamentos = "Gerencia", "Administracion", "Comercial", "Tecnico", "Laboratorio", "Produccion", "Almacen"
foreach ($departamento in $departamentos) {
    $ouPath = "OU=$departamento,OU=Empresa_Galicia,DC=galicia,DC=lan"
    New-ADOrganizationalUnit -Name $departamento -Path $ouPath
}
 
# Crear el grupo de jefes
$ouJefesPath = "OU=Jefes,OU=Empresa_Galicia,DC=dominio,DC=com"
New-ADOrganizationalUnit -Name "Jefes" -Path $ouJefesPath
 
# Crear los grupos de cada departamento
foreach ($departamento in $departamentos) {
    $grupoNombre = "gg$departamento"
    $grupoPath = "OU=$departamento,OU=Empresa_Galicia,DC=dominio,DC=com"
    New-ADGroup -Name $grupoNombre -GroupScope Global -Path $grupoPath
}
 
# Importar los usuarios y agregarlos a los grupos correspondientes
$usuariosGalicia = $usuarios | Where-Object { $_.sede -eq "Galicia" }
foreach ($usuario in $usuariosGalicia) {
    # Concatenar los campos nom, cognom1 y cognom2
    $nombreCompleto = $usuario.nom + " " + $usuario.cognom1 + " " + $usuario.cognom2
    $nombreUsuario = $nombreCompleto -replace '\W', ''  # Eliminar caracteres especiales del nombre de usuario
 
    $contraseñaUsuario = $usuario.dni
 
    # Crear el usuario en Active Directory
    $usuarioPath = "OU=Empresa_Galicia,DC=dominio,DC=com"
    New-ADUser -Name $nombreCompleto -SamAccountName $nombreUsuario -UserPrincipalName "$nombreUsuario@galicia.lan" -Path $usuarioPath -Description $usuario.descrip -Enabled $true -PassThru | Set-ADAccountPassword -Reset -NewPassword (ConvertTo-SecureString -AsPlainText $contraseñaUsuario -Force)
 
    # Agregar el usuario a su grupo correspondiente
    $departamento = $usuario.dept
    $grupoNombre = "gg$departamento"
    Add-ADGroupMember -Identity $grupoNombre -Members $nombreUsuario
 
    # Verificar si es un jefe y agregarlo al grupo de jefes
    if ($usuario.descrip -eq "Jefe") {
        Add-ADGroupMember -Identity "ggJefesDepartamento" -Members $nombreUsuario
        Move-ADObject -Identity "CN=$nombreCompleto,CN=Users,DC=galicia,DC=lan" -TargetPath $ouJefesPath
    }
}

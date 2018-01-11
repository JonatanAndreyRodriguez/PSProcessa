---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-FileSystemAccessRule

## SYNOPSIS
Establece el descriptor de seguridad de los elementos especificados.

## SYNTAX

### FromString (Default)
```
Set-FileSystemAccessRule -Path <String> -IdentityName <String> -AccessControl <String>
 [-FileSystemRight <FileSystemRights>] [-PropagationFlag <String>] [-InheritanceFlag <String>] [-WhatIf]
 [-Confirm]
```

### FromSid
```
Set-FileSystemAccessRule -Path <String> -SidType <WellKnownSidType> [-DomainSid <SecurityIdentifier>]
 -AccessControl <String> [-FileSystemRight <FileSystemRights>] [-PropagationFlag <String>]
 [-InheritanceFlag <String>] [-WhatIf] [-Confirm]
```

## DESCRIPTION
Agrega un nuevo descriptor de seguridad a los elementos especificados, manteniendo el descriptor de seguridad actual.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Set-AccessRulePolicy -Path 'C:\Temp' -IdentityName 'username' -AccessControl 'Allow' -FileSystemRight 'FullControl'
```

Agrega un descriptor de seguridad que permite al usuario 'username' control total de los elementos en la ruta 'C:\Temp'

### -------------------------- EXAMPLE 2 --------------------------
```
Get-ChildItem -Path 'C:\Temp' -Filter '*.txt' -Recurse | Set-AccessRulePolicy -IdentityName 'everyone' -AccessControl 'Deny'
```

Agrega un descriptor de seguridad que deniega el acceso a todos los usuarios a los archivos txt en la ruta 'C:\Temp' incluidos todos los sub-elementos.

### -------------------------- EXAMPLE 3 --------------------------
```
Set-AccessRulePolicy -Path 'C:\Temp' -SidType AnonymousSid -AccessControl Allow -FileSystemRight Read
```

Agrega un descriptor de seguridad que permite a los usuarios en el grupo Anonymous, lectura de los elementos en la ruta 'C:\Temp'

## PARAMETERS

### -Path
Especifica la ruta a un recurso en el sistema de archivos.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FullName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -IdentityName
El nombre de una cuenta de usuario.

```yaml
Type: String
Parameter Sets: FromString
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SidType
Alguno de los valores enumerados de identificadores de seguridad (SID) de uso común.
Este valor no debe ser LogonIdSid.

```yaml
Type: WellKnownSidType
Parameter Sets: FromSid
Aliases: 
Accepted values: NullSid, WorldSid, LocalSid, CreatorOwnerSid, CreatorGroupSid, CreatorOwnerServerSid, CreatorGroupServerSid, NTAuthoritySid, DialupSid, NetworkSid, BatchSid, InteractiveSid, ServiceSid, AnonymousSid, ProxySid, EnterpriseControllersSid, SelfSid, AuthenticatedUserSid, RestrictedCodeSid, TerminalServerSid, RemoteLogonIdSid, LogonIdsSid, LocalSystemSid, LocalServiceSid, NetworkServiceSid, BuiltinDomainSid, BuiltinAdministratorsSid, BuiltinUsersSid, BuiltinGuestsSid, BuiltinPowerUsersSid, BuiltinAccountOperatorsSid, BuiltinSystemOperatorsSid, BuiltinPrintOperatorsSid, BuiltinBackupOperatorsSid, BuiltinReplicatorSid, BuiltinPreWindows2000CompatibleAccessSid, BuiltinRemoteDesktopUsersSid, BuiltinNetworkConfigurationOperatorsSid, AccountAdministratorSid, AccountGuestSid, AccountKrbtgtSid, AccountDomainAdminsSid, AccountDomainUsersSid, AccountDomainGuestsSid, AccountComputersSid, AccountControllersSid, AccountCertAdminsSid, AccountSchemaAdminsSid, AccountEnterpriseAdminsSid, AccountPolicyAdminsSid, AccountRasAndIasServersSid, NtlmAuthenticationSid, DigestAuthenticationSid, SChannelAuthenticationSid, ThisOrganizationSid, OtherOrganizationSid, BuiltinIncomingForestTrustBuildersSid, BuiltinPerformanceMonitoringUsersSid, BuiltinPerformanceLoggingUsersSid, BuiltinAuthorizationAccessSid, WinBuiltinTerminalServerLicenseServersSid, MaxDefined

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DomainSid
SID del dominio.
Este valor es requerido para algunos valores de SidType.
Más información en: https://msdn.microsoft.com/en-us/library/214122bs(v=vs.110).aspx

```yaml
Type: SecurityIdentifier
Parameter Sets: FromSid
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessControl
Especifica si permitir o denegar el acceso al recurso.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileSystemRight
Especifica los derechos de acceso a usar el recurso al crear las reglas de acceso y auditoría.

```yaml
Type: FileSystemRights
Parameter Sets: (All)
Aliases: 
Accepted values: ListDirectory, ReadData, WriteData, CreateFiles, CreateDirectories, AppendData, ReadExtendedAttributes, WriteExtendedAttributes, Traverse, ExecuteFile, DeleteSubdirectoriesAndFiles, ReadAttributes, WriteAttributes, Write, Delete, ReadPermissions, Read, ReadAndExecute, Modify, ChangePermissions, TakeOwnership, Synchronize, FullControl

Required: False
Position: Named
Default value: FullControl
Accept pipeline input: False
Accept wildcard characters: False
```

### -PropagationFlag
Especifica cómo las entradas de control de acceso (ACE) se propagan a objetos secundarios.
\[Más información...\](https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.propagationflags(v=vs.110).aspx)

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InheritanceFlag
Especifica la semántica de la herencia para las entradas de control de acceso (ACE).
Por defecto se establece la herencia para contenedores (carpetas) y archivos.
\[Más información...\](https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.inheritanceflags(v=vs.110).aspx)

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: FullInherit
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### System.Void

## NOTES
Autor: Atorres

## RELATED LINKS


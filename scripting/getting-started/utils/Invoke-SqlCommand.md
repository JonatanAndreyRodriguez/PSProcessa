---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Invoke-SqlCommand

## SYNOPSIS
Permite ejecutar una instrucción de T/SQL o un procedimiento almacenado en una base de datos SQL Server.

## SYNTAX

### FromString (Default)
```
Invoke-SqlCommand -ConnectionString <String> -CommandText <String> [-CommandType <CommandType>]
 [-ArgumentList <PSObject>] [-CommandTimeout <Int32>] [-AsDataSet]
```

### FromConnection
```
Invoke-SqlCommand -SqlConnection <SqlConnection> -CommandText <String> [-CommandType <CommandType>]
 [-ArgumentList <PSObject>] [-CommandTimeout <Int32>] [-AsDataSet]
```

## DESCRIPTION
Ejecuta comandos como INSERT de T/SQL, DELETE, UPDATE e instrucciones SET.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Invoke-SqlCommand -ConnectionString 'Server=(local);Database=master;Trusted_Connection=True;' -CommandText 'select * from sys.tables'
```

Ejecuta una instrucción SELECT simple.

### -------------------------- EXAMPLE 2 --------------------------
```
'select * from sys.tables' | Invoke-SqlCommand -ConnectionString 'Server=(local);Database=master;Trusted_Connection=True;'
```

Ejecuta una instrucción SELECT simple desde el Pipeline.

### -------------------------- EXAMPLE 3 --------------------------
```
'select * from sys.tables where name = @mytable_name' | Invoke-SqlCommand -ConnectionString 'Server=(local);Database=master;Trusted_Connection=True;' -ArgumentList @{mytable_name = 'spt_monitor'}
```

Ejecuta una instrucción SELECT utilizando los valores de parámetros suministrados en ArgumentList.

### -------------------------- EXAMPLE 4 --------------------------
```
'GetHostSettings' | Invoke-SqlCommand -ConnectionString 'Server=(local);Database=dnn_900;Trusted_Connection=True;' -CommandType StoredProcedure
```

Ejecuta un procedimento almacenado.

### -------------------------- EXAMPLE 5 --------------------------
```
'GetPortalSettings' | Invoke-SqlCommand -ConnectionString 'Server=(local);Database=dnn_900;Trusted_Connection=True;' -CommandType StoredProcedure -ArgumentList @{PortalId=0;CultureCode=$null}
```

Ejecuta un procedimento almacenado utilizando los valores de parámetros suministrados en ArgumentList..

### -------------------------- EXAMPLE 6 --------------------------
```
$Dataset = 'select 1 as [dummy]; select 2 as [dummy]; select 3 as [dummy]' | Invoke-SqlCommand -ConnectionString 'Server=(local);Database=master;Trusted_Connection=True;' -AsDataSet

PS C:\>$Dataset.Tables[0]
PS C:\>$Dataset.Tables[1]
PS C:\>$Dataset.Tables[2]
```
Retorna los resultados como un Dataset (tres tablas en este ejemplo).

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el origen de datos.

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

### -SqlConnection
Establece la instancia de la conexión de SQL Server que se utiliza para conectar con el origen de datos.

```yaml
Type: SqlConnection
Parameter Sets: FromConnection
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommandText
Establece la instrucción T/SQL, nombre de tabla o procedimiento almacenado para ejecutar en el origen de datos.
Valor predeterminado Text.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CommandType
Especifica cómo se interpreta $CommandText (StoredProcedure, TableDirect, Text).
Valor predeterminado Text.

```yaml
Type: CommandType
Parameter Sets: (All)
Aliases: 
Accepted values: Text, StoredProcedure, TableDirect

Required: False
Position: Named
Default value: Text
Accept pipeline input: False
Accept wildcard characters: False
```

### -ArgumentList
Establece los valores de los parámetros que se reemplazan en $CommandType.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommandTimeout
Establece la duración en segundos que se espera por la generación de resultados.
Valor predeterminado 60 segundos.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 60
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsDataSet
Interruptor que determina el tipo de resultado del comando.
Si se activa el interruptor, el comando retornará todo el conjunto de datos de la consulta.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de CommandText.

## OUTPUTS

DataRow con los resultados de la ejecución de la instrucción T/SQL o DataSet si se utiliza el interruptor -AsDataSet.

## NOTES
Autor: Atorres

## RELATED LINKS

[New-SqlConnectionDialog](New-SqlConnectionDialog.md)


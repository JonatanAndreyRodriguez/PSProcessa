---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Format-Error

## SYNOPSIS
Formatea la información de un error, como un objeto que muestra información detallada del error.

## SYNTAX

```
Format-Error [[-ErrorRecord] <ErrorRecord>] [-Wrap]
```

## DESCRIPTION
Formatea la información de un error, como un objeto que muestra información detallada del error.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Format-Error
```

#### OUTPUT
```

DateTime         : 2017-07-25 07:16:26 pm
ScriptName       : 
ErrorMessage     : Attempted to divide by zero.
ErrorTypeName    : System.Management.Automation.RuntimeException
LineNumber       : 1
ColumnNumber     : 1
Category         : NotSpecified
ErrorReason      : RuntimeException
Target           : 
StackTrace       :    at System.Management.Automation.IntOps.Divide(Int32 lhs, Int32 rhs)
                      at System.Dynamic.UpdateDelegates.UpdateAndExecute2[T0,T1,TRet](CallSite site, T0 arg0, T1 arg1)
                      at System.Management.Automation.Interpreter.DynamicInstruction`3.Run(InterpretedFrame frame)
                      at System.Management.Automation.Interpreter.EnterTryCatchFinallyInstruction.Run(InterpretedFrame frame)
ScriptStackTrace : at <ScriptBlock>, <No file>: line 1


```


### -------------------------- EXAMPLE 2 --------------------------
```
Format-Error -Wrap
```

## PARAMETERS

### -ErrorRecord
Información del error.

```yaml
Type: ErrorRecord
Parameter Sets: (All)
Aliases: Error, Err

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Wrap
Cuando se estabece, la salida se retorna como un string.

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

Puede canalizar el valor de ErrorRecord.

## OUTPUTS

System.Management.Automation.PSObject

### System.String

## NOTES
Autor: Atorres
2017-06-06: Se modificó el nombre del parámetro Error por ErrorRecord (se agregó un alias para mantener compatibilidad).

## RELATED LINKS


<#
.SYNOPSIS
Invoke a script block under the given culture
.EXAMPLE
PS > Use-Culture zh-CN { Get-Date }
PS > Use-Culture fr-FR { Get-Date }
#>
function Use-Culture {
    param (
        [Parameter(Mandatory = $true)]
        [System.Globalization.CultureInfo]$Culture,
        [Parameter(Mandatory = $true)]
        [scriptblock]$ScriptBlock
    )
    
    Set-StrictMode -Version 3

    function Set-Culture([System.Globalization.CultureInfo]$cultrue) {
    
        [System.Threading.Thread]::CurrentThread.CurrentUICulture = $cultrue
        [System.Threading.Thread]::CurrentThread.CurrentCulture = $cultrue
    }

    $oldCulture = [System.Threading.Thread]::CurrentThread.CurrentUICulture
    trap {
        Set-Culture $oldCulture
    }

    Set-Culture $culture

    & $ScriptBlock

    Set-Culture $oldCulture
}




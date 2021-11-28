"Script's path: $PSCommandPath"
"Script's location: $PSScriptRoot"
"You invoked this script by typing: " + $myInvocation.Line

function Access-InvocationFromFunction {
    Write-Verbose "Enter Access-InvocationFromFunction"
    "Script's path: $PSCommandPath"
    "Script's location: $PSScriptRoot"
    "You invoked this script by typing: " + $myInvocation.Line
    
}

Access-InvocationFromFunction -v
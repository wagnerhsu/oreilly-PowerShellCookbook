Set-StrictMode -Version 3
function BuggyFunction {
    $testVariable = "Hello"
    if ($testVariable -eq "Hello") {
        "Should get here"
    }
    else {
        "Should not get here"
    }
}
BuggyFunction
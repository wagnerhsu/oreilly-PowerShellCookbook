#requires -RunAsAdministrator
Get-Service MSSQLSERVER | Restart-Service -Verbose
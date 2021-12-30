BeforeAll {
    . ..\..\13\13.8\Use-Culture.ps1
}

Describe 'Use Culture Tests' {
    It 'Testing on English' {
        $result = Use-Culture en-US { "quit".ToUpper() }
        $result | Should -Be "QUIT"
    }
    It 'Testing on Turkish' {
        $result = Use-Culture tr-TR {"quit".ToUpper()}
        $result | Should -Not -Be "QUIT"
    }
}
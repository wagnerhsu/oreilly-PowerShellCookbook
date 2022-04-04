BeforeAll {
    'Before test'
}


Describe 'Create Hashtables' {
    It "Add into hashtable" {
        $myHashtable = @{ Key1 = "Value1"; "Key 2" = 1, 2, 3 }
        $myHashtable['Key1'] | Should -Be 'Value1'
    }
}
// Name: Call-by-value w/ Store() doesn't modify Local
// Expect: str => MyString

DefinitionBlock ("", "DSDT", 2, "uTEST", "TESTTABL", 0xF0F0F0F0)
{
    Method (TEST, 1, NotSerialized)
    {
        Arg0 = 0xDEADBEEF
    }

    Method (MAIN, 0, NotSerialized)
    {
        Local0 = "MyString"
        TEST(Local0)
        Return (Local0)
    }
}

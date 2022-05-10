table 60124 TEST_CS
{

    fields
    {
        field(1;ITEM;Code[20])
        {
        }
        field(2;"Serial No";Code[30])
        {
        }
        field(3;Location;Code[10])
        {
        }
        field(4;"Working status";Option)
        {
            OptionMembers = ,WORKING,"NON WORKING";
        }
        field(5;Updated;Integer)
        {
        }
    }

    keys
    {
        key(Key1;ITEM)
        {
        }
    }

    fieldgroups
    {
    }
}


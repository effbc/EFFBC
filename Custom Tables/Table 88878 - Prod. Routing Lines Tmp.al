table 88878 "Prod. Routing Lines Tmp"
{

    fields
    {
        field(1;"Entry No.";Integer)
        {
        }
        field(2;"Prod. Order No.";Code[20])
        {
        }
        field(3;"Prod. Order Line No.";Integer)
        {
        }
        field(4;"Prod. Comp. Line No.";Integer)
        {
        }
        field(5;Type;Option)
        {
            OptionCaption = 'Work Center,Machine Center';
            OptionMembers = "Work Center","Machine Center";
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}


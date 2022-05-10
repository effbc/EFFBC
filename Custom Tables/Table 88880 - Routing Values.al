table 88880 "Routing Values"
{

    fields
    {
        field(1;"Entry No.";Integer)
        {
        }
        field(5;Type;Option)
        {
            OptionCaption = 'Work Center,Machine Center';
            OptionMembers = "Work Center","Machine Center";
        }
        field(10;"No.";Code[20])
        {
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


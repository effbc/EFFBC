table 60019 "Pre Site Check List Parameters"
{
    // version B2B1.0

  //  LookupPageID = 60033;

    fields
    {
        field(1;"Code";Code[20])
        {
            NotBlank = true;
        }
        field(2;Description;Text[250])
        {
        }
    }

    keys
    {
        key(Key1;"Code")
        {
        }
    }

    fieldgroups
    {
    }
}


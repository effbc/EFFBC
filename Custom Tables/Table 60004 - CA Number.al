table 60004 "CA Number"
{
    // version B2B1.0

    LookupPageID = 60008;

    fields
    {
        field(1;"Code";Code[20])
        {
            NotBlank = true;
        }
        field(2;Description;Text[50])
        {
        }
        field(3;"Customer No.";Code[20])
        {
            Editable = false;
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


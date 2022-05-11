table 60028 "Excepted Rcpt.Date Tracking"
{
    // version B2B1.0

    //LookupPageID = 60048;

    fields
    {
        field(1; "Document Type"; Option)
        {
            Editable = false;
            OptionMembers = Quote,"Order";
        }
        field(2; "Document No."; Code[20])
        {
            Editable = false;
        }
        field(3; "Document Line No."; Integer)
        {
            Editable = false;
        }
        field(4; "Item No."; Code[20])
        {
            Editable = false;
        }
        field(5; "Excepted Receipt Old Date"; Date)
        {
            Editable = false;
        }
        field(6; "Excepted Receipt New Date"; Date)
        {
            Editable = false;
        }
        field(7; Reason; Text[250])
        {
        }
        field(8; "Entry No."; Integer)
        {
            Editable = false;
        }
        field(9; "Deviated By"; Option)
        {
            OptionMembers = Vendor,Organisation;
        }
        field(10; "User Id"; Code[50])
        {
            Description = 'Rev01';
        }
        field(11; "Modified Date"; Date)
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Document No.", "Document Line No.")
        {
        }
        key(Key2; "Document No.", "Document Line No.", "Modified Date", "Excepted Receipt Old Date")
        {
        }
    }

    fieldgroups
    {
    }
}


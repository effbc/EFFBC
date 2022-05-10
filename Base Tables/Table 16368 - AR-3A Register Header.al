table 16368 "AR-3A Register Header"
{
    // version NAVIN3.70

    LookupPageID = 16373;

    fields
    {
        field(1;"AR-3A No.";Code[20])
        {
            Editable = false;
            NotBlank = true;
        }
        field(3;"Customer No.";Code[20])
        {
            Editable = false;
        }
        field(4;Name;Text[30])
        {
            Editable = false;
        }
        field(5;"Issue Date";Date)
        {
            Editable = false;
        }
        field(6;"Location Code";Code[20])
        {
            Editable = false;
        }
        field(7;"Expiry Date";Date)
        {
        }
        field(8;"CT-2 No.";Code[20])
        {
            Editable = false;
        }
        field(9;Received;Boolean)
        {
        }
        field(10;"Receipt Date";Date)
        {
        }
        field(11;"Inward Entry No.";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"AR-3A No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        /*
        AR3ALines.SETRANGE("AR-3A No.","AR-3A No.");
        AR3ALines.DELETEALL;
        */

    end;
}


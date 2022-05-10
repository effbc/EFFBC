table 60000 "Form Tracking"
{
    // version B2B1.0

    DrillDownPageID = 60000;
    LookupPageID = 60000;

    fields
    {
        field(1;"Form Code";Code[10])
        {
            Editable = false;
        }
        field(2;"Form No.";Code[20])
        {
            Editable = false;
        }
        field(3;"Line No.";Integer)
        {
            Editable = false;
        }
        field(4;State;Code[10])
        {
            Editable = false;
        }
        field(5;"Document Type";Option)
        {
            Editable = false;
            OptionMembers = "Order",Invoice;
        }
        field(6;"Document No.";Code[20])
        {
            Editable = false;
        }
        field(7;"Vendor / Customer No.";Code[20])
        {
            Editable = false;
        }
        field(8;"Invoice Base Amount";Decimal)
        {
            Editable = false;
        }
        field(9;"Sales Tax Base Amount";Decimal)
        {
            Editable = false;
        }
        field(10;"Sales Tax Amount";Decimal)
        {
            Editable = false;
        }
        field(11;Status;Option)
        {
            OptionMembers = Open,Released;
        }
        field(12;Type;Option)
        {
            Editable = false;
            OptionMembers = Purchase,Sale;
        }
        field(13;"Posting Date";Date)
        {
            Editable = false;
        }
        field(14;"Entry No.";Integer)
        {
            Editable = false;
        }
        field(15;"Release Date";Date)
        {
            Editable = false;
        }
        field(16;"Issue Date";Date)
        {
            Editable = false;
        }
        field(17;"Assign Form No.";Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Form Code","Document No.","Entry No.")
        {
        }
        key(Key2;"Form Code","Form No.","Vendor / Customer No.")
        {
            SumIndexFields = "Sales Tax Base Amount";
        }
    }

    fieldgroups
    {
    }
}


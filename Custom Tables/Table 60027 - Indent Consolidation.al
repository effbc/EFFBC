table 60027 "Indent Consolidation"
{
    // version B2B1.0


    fields
    {
        field(1;"ICN No.";Code[10])
        {
        }
        field(2;"Indent No.";Code[10])
        {
        }
        field(3;"Item No.";Code[20])
        {
        }
        field(4;Describtion;Text[30])
        {
        }
        field(5;Quantity;Decimal)
        {
        }
        field(6;"Vendor No.";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"ICN No.","Vendor No.","Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}


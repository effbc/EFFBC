table 60031 "QCS Header"
{
    // version B2B1.0


    fields
    {
        field(1;"RFQ No.";Code[20])
        {
        }
        field(2;"Vendor No.";Code[20])
        {
        }
        field(3;"Vendor Name";Text[50])
        {
        }
        field(4;"Quote No.";Code[20])
        {
        }
        field(5;"PD Comment";Text[30])
        {
        }
        field(6;"Total Amount";Decimal)
        {
        }
        field(7;"RFQ Date";Date)
        {
        }
    }

    keys
    {
        key(Key1;"RFQ No.","Quote No.")
        {
        }
    }

    fieldgroups
    {
    }
}


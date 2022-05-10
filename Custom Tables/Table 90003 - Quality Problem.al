table 90003 "Quality Problem"
{

    fields
    {
        field(1;"Purch.Rcpt No.";Code[20])
        {
        }
        field(2;"Line No.";Integer)
        {
        }
        field(3;"Qty.Accepted";Decimal)
        {
        }
        field(4;"Qty Rejected";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Purch.Rcpt No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


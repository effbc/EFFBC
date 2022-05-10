table 60070 "Design Check List"
{
    // version B2B1.0


    fields
    {
        field(1;"Tender No.";Code[20])
        {
        }
        field(2;"Line No.";Integer)
        {
        }
        field(3;Description1;Text[250])
        {
        }
        field(4;"QTY.";Decimal)
        {
        }
        field(5;Description2;Text[250])
        {
        }
        field(6;Description3;Text[250])
        {
        }
        field(7;"Item No.";Code[20])
        {
            TableRelation = Item."No.";
        }
        field(8;Remarks;Text[50])
        {
        }
        field(9;Quantity;Decimal)
        {
        }
        field(10;Status;Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Tender No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


table 60108 "Inwards2 data"
{

    fields
    {
        field(1;"Purchase Order";Code[20])
        {
        }
        field(2;Item;Code[20])
        {
        }
        field(3;"Location Code";Code[10])
        {
        }
        field(4;Inward_Qty_Old;Decimal)
        {
        }
        field(5;Inward_Qty_New;Decimal)
        {
        }
        field(6;"Location Code Mismatch";Boolean)
        {
        }
        field(7;"Qty Mismatch";Boolean)
        {
        }
        field(8;"Not Availabel";Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Purchase Order",Item)
        {
        }
    }

    fieldgroups
    {
    }
}


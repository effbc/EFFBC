table 60107 "Purchase Inward Data"
{

    fields
    {
        field(1;"Purchase Order";Code[20])
        {
        }
        field(2;"Posting Date";Date)
        {
        }
        field(3;"Location Code";Code[10])
        {
        }
        field(4;Item;Code[20])
        {
        }
        field(5;Qty;Decimal)
        {
        }
        field(6;"Batch Code";Code[15])
        {
        }
        field(7;"Not Available";Boolean)
        {
        }
        field(8;"Posting Date Mismmatch";Boolean)
        {
        }
        field(9;"location code Mismatch";Boolean)
        {
        }
        field(10;"Qty Mismatch";Boolean)
        {
        }
        field(11;"Batch Code Mismatch";Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Purchase Order","Posting Date","Location Code",Item,Qty,"Batch Code")
        {
            SumIndexFields = Qty;
        }
        key(Key2;"Purchase Order",Item)
        {
            SumIndexFields = Qty;
        }
    }

    fieldgroups
    {
    }
}


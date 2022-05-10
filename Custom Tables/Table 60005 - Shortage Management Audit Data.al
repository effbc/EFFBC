table 60005 "Shortage Management Audit Data"
{

    fields
    {
        field(1;Week;Integer)
        {
        }
        field(2;"Sale Order";Code[30])
        {
        }
        field(3;Customer;Text[50])
        {
        }
        field(4;Product;Text[50])
        {
        }
        field(5;Qty;Integer)
        {
        }
        field(7;"Order Type";Code[20])
        {
        }
        field(8;"Lead Value";Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(0));
        }
        field(9;"2 Days";Text[30])
        {
        }
        field(10;"4 Days";Text[30])
        {
        }
        field(11;"7 Days";Text[30])
        {
        }
        field(12;"15 Dyas";Text[30])
        {
        }
        field(13;"21 Days";Text[30])
        {
        }
        field(14;"25 Dyas";Text[30])
        {
            Caption = '25 Days';
        }
        field(15;"30 Dyas";Text[30])
        {
            Caption = '30 Days';
        }
        field(16;"45 Days";Text[30])
        {
        }
        field(17;"60 Days";Text[30])
        {
        }
        field(18;"90 Days";Text[30])
        {
        }
        field(19;"Customer Type";Code[10])
        {
        }
        field(20;"Order Value";Decimal)
        {
        }
        field(21;"Customer Requested Date";Date)
        {
        }
        field(22;"Production Plan";Text[50])
        {
        }
        field(23;Sale_Order;Code[30])
        {
        }
        field(24;"2 Days_S";Text[10])
        {
        }
        field(25;"4 Days_S";Text[10])
        {
        }
        field(26;"7 Days_S";Text[10])
        {
        }
        field(27;"15 Dyas_S";Text[10])
        {
        }
        field(28;"21 Days_S";Text[10])
        {
        }
        field(29;"25 Dyas_S";Text[10])
        {
            Caption = '25 Days';
        }
        field(30;"30 Dyas_S";Text[10])
        {
            Caption = '30 Days';
        }
        field(31;"45 Days_S";Text[10])
        {
        }
        field(32;"60 Days_S";Text[10])
        {
        }
        field(33;"90 Days_S";Text[10])
        {
        }
        field(34;"No. Of Units";Decimal)
        {
        }
        field(35;Prod;Code[20])
        {
        }
        field(36;Config;Text[30])
        {
        }
        field(37;"Prod Start Date";Date)
        {
        }
        field(38;"Prod Final Date";Date)
        {
        }
    }

    keys
    {
        key(Key1;Week,"Sale Order",Product)
        {
        }
    }

    fieldgroups
    {
    }
}


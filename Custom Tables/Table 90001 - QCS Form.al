table 90001 "QCS Form"
{
    // version B2B1.0


    fields
    {
        field(1;"RFQ No.";Code[20])
        {
            TableRelation = "Alternate Items";
        }
        field(2;"RFQ Date";Date)
        {
        }
        field(3;"Vendor No.";Code[20])
        {
        }
        field(4;"Vendor Name";Text[30])
        {
        }
        field(5;"Quote No.";Code[20])
        {
        }
        field(6;"PD Comment";Text[250])
        {
        }
        field(7;"Total Amount";Decimal)
        {
        }
        field(8;"Item No.";Code[20])
        {
        }
        field(9;Desicription;Text[50])
        {
        }
        field(10;Quantity;Decimal)
        {
        }
        field(11;Rate;Decimal)
        {
        }
        field(12;Amount;Decimal)
        {
        }
        field(13;"Total Basic Value";Decimal)
        {
        }
        field(14;"P & F";Decimal)
        {
        }
        field(15;"Excise Duty";Decimal)
        {
        }
        field(16;"Sales Tax";Decimal)
        {
        }
        field(17;Freight;Decimal)
        {
        }
        field(18;Insurance;Decimal)
        {
        }
        field(19;Discount;Decimal)
        {
        }
        field(20;"Payment Terms";Code[20])
        {
        }
        field(21;"Delivery Date";Date)
        {
        }
        field(22;"Line No.";Integer)
        {
        }
        field(23;VAT;Decimal)
        {
        }
        field(100;"Accept Action Message";Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"RFQ No.")
        {
        }
    }

    fieldgroups
    {
    }
}


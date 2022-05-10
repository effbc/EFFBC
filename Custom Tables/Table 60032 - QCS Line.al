table 60032 "QCS Line"
{
    // version B2B1.0


    fields
    {
        field(1;"Quote No";Code[20])
        {
        }
        field(2;"Item No";Code[20])
        {
        }
        field(3;Description;Text[50])
        {
        }
        field(4;Qty1;Decimal)
        {
        }
        field(5;Rate1;Decimal)
        {
        }
        field(6;Amount1;Decimal)
        {
        }
        field(7;"Total Basic Value1";Decimal)
        {
        }
        field(8;Discount1;Decimal)
        {
        }
        field(9;"P&F1";Decimal)
        {
        }
        field(10;"Excise Duty1";Decimal)
        {
        }
        field(11;"Sales Tax1";Decimal)
        {
        }
        field(12;Freight1;Decimal)
        {
        }
        field(13;Insurence1;Decimal)
        {
        }
        field(14;"Total Amount1";Decimal)
        {
        }
        field(15;"Payment Terms1";Code[20])
        {
        }
        field(16;"Delivery Date1";Date)
        {
        }
        field(21;Qty2;Decimal)
        {
        }
        field(22;Rate2;Decimal)
        {
        }
        field(23;Amount2;Decimal)
        {
        }
        field(24;"Total Basic Value2";Decimal)
        {
        }
        field(25;Discount2;Decimal)
        {
        }
        field(26;"P&F2";Decimal)
        {
        }
        field(27;"Excise Duty2";Decimal)
        {
        }
        field(28;"Sales Tax2";Decimal)
        {
        }
        field(29;Freight2;Decimal)
        {
        }
        field(30;Insurence2;Decimal)
        {
        }
        field(31;"Total Amount2";Decimal)
        {
        }
        field(32;"Payment Terms2";Code[20])
        {
        }
        field(33;"Delivery Date2";Date)
        {
        }
        field(41;Qty3;Decimal)
        {
        }
        field(42;Rate3;Decimal)
        {
        }
        field(43;Amount3;Decimal)
        {
        }
        field(44;"Total Basic Value3";Decimal)
        {
        }
        field(45;Discount3;Decimal)
        {
        }
        field(46;"P&F3";Decimal)
        {
        }
        field(47;"Excise Duty3";Decimal)
        {
        }
        field(48;"Sales Tax3";Decimal)
        {
        }
        field(49;Freight3;Decimal)
        {
        }
        field(50;Insurence3;Decimal)
        {
        }
        field(51;"Total Amount3";Decimal)
        {
        }
        field(52;"Payment Terms3";Code[20])
        {
        }
        field(53;"Delivery Date3";Date)
        {
        }
        field(54;"Line No.";Integer)
        {
        }
        field(55;"RFQ No.";Code[20])
        {
        }
        field(56;VAT1;Decimal)
        {
        }
        field(57;VAT2;Decimal)
        {
        }
        field(58;VAT3;Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"RFQ No.","Quote No","Line No.","Item No")
        {
        }
    }

    fieldgroups
    {
    }
}


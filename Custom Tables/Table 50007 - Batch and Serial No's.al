table 50007 "Batch and Serial No's"
{
    // version MI1.0


    fields
    {
        field(1;"Entry Type";Option)
        {
            OptionMembers = "Material Issues",Transfer,Consumption;
        }
        field(2;"Entry No.";Integer)
        {
        }
        field(3;"ItemLedg Entry No.";Integer)
        {
        }
        field(4;"Item No.";Code[20])
        {
        }
        field(5;Description;Text[50])
        {
        }
        field(6;Quantity;Decimal)
        {
        }
        field(7;"Location Code";Code[20])
        {
        }
        field(8;"Serial No.";Code[20])
        {
        }
        field(9;"Lot No.";Code[20])
        {
        }
        field(10;"Warranty Date";Date)
        {
            Caption = 'Warranty Date';
        }
        field(11;"Expiration Date";Date)
        {
            Caption = 'Expiration Date';
        }
        field(12;"Mfg. Date";Date)
        {
            Caption = 'Manufacturing Date';
        }
        field(13;"Order No.";Code[20])
        {
        }
        field(14;"Order Line No.";Integer)
        {
        }
        field(15;"Posting Date";Date)
        {
        }
        field(16;"Assay Equalent Qty.";Decimal)
        {
        }
        field(17;"Assigned Qty.";Decimal)
        {
            CalcFormula = Sum("Mat.Issue Track. Specification".Quantity WHERE ("Item No."=FIELD("Item No."),
                                                                               "Lot No."=FIELD("Lot No."),
                                                                               "Location Code"=FIELD("Location Code"),
                                                                               "Appl.-to Item Entry"=FIELD("ItemLedg Entry No.")));
            FieldClass = FlowField;
        }
        field(21;"Prod. Order No.";Code[20])
        {
        }
        field(22;"Prod. Line No.";Integer)
        {
        }
        field(23;"Prod. Comp. Line No.";Integer)
        {
        }
    }

    keys
    {
        key(Key1;"Entry Type","Entry No.")
        {
        }
        key(Key2;"Expiration Date","Item No.","Location Code","Posting Date")
        {
        }
        key(Key3;"Item No.","Location Code","Posting Date")
        {
        }
        key(Key4;"Expiration Date","Item No.","Location Code","Lot No.","Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}


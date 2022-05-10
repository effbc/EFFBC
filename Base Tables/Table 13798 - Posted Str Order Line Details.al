table 13798 "Posted Str Order Line Details"
{
    // version NAVIN9.00.00.48067

    CaptionML = ENU='Posted Str Order Line Details',
                ENN='Posted Str Order Line Details';

    fields
    {
        field(1;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = true;
            OptionCaptionML = ENU=' ,Purchase,Sale,Transfer,Service',
                              ENN=' ,Purchase,Sale,Transfer,Service';
            OptionMembers = " ",Purchase,Sale,Transfer,Service;
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = true;
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Invoice No.";Code[20])
        {
            CaptionML = ENU='Invoice No.',
                        ENN='Invoice No.';
            Editable = true;
        }
        field(4;"Item No.";Code[20])
        {
            CaptionML = ENU='Item No.',
                        ENN='Item No.';
            Editable = true;
        }
        field(5;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
            Editable = true;
        }
        field(6;"Structure Code";Code[10])
        {
            CaptionML = ENU='Structure Code',
                        ENN='Structure Code';
            Editable = true;
        }
        field(7;"Calculation Order";Integer)
        {
            CaptionML = ENU='Calculation Order',
                        ENN='Calculation Order';
            Editable = true;
        }
        field(8;"Tax/Charge Type";Option)
        {
            CaptionML = ENU='Tax/Charge Type',
                        ENN='Tax/Charge Type';
            Editable = true;
            OptionCaptionML = ENU='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy',
                              ENN='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy';
            OptionMembers = Charges,"Sales Tax",Excise,"Other Taxes","Service Tax",GST,Dummy;
        }
        field(9;"Tax/Charge Group";Code[10])
        {
            CaptionML = ENU='Tax/Charge Group',
                        ENN='Tax/Charge Group';
            Editable = true;
        }
        field(10;"Tax/Charge Code";Code[10])
        {
            CaptionML = ENU='Tax/Charge Code',
                        ENN='Tax/Charge Code';
            Editable = true;
        }
        field(11;"Calculation Type";Option)
        {
            CaptionML = ENU='Calculation Type',
                        ENN='Calculation Type';
            OptionCaptionML = ENU=' ,Percentage,Amount Per Qty,Fixed Value',
                              ENN=' ,Percentage,Amount Per Qty,Fixed Value';
            OptionMembers = " ",Percentage,"Amount Per Qty","Fixed Value";
        }
        field(12;"Calculation Value";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Calculation Value',
                        ENN='Calculation Value';
            DecimalPlaces = 0:5;
        }
        field(13;"Quantity Per";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Quantity Per',
                        ENN='Quantity Per';
        }
        field(14;"Loading on Inventory";Boolean)
        {
            CaptionML = ENU='Loading on Inventory',
                        ENN='Loading on Inventory';
        }
        field(15;"% Loading on Inventory";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='% Loading on Inventory',
                        ENN='% Loading on Inventory';
            DecimalPlaces = 0:5;
        }
        field(16;"Payable to Third Party";Boolean)
        {
            CaptionML = ENU='Payable to Third Party',
                        ENN='Payable to Third Party';
        }
        field(17;"Third Party Code";Code[20])
        {
            CaptionML = ENU='Third Party Code',
                        ENN='Third Party Code';
            TableRelation = IF (Type=CONST(Purchase)) Vendor
                            ELSE IF (Type=CONST(Sale)) Customer;
        }
        field(18;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            TableRelation = IF ("Tax/Charge Type"=FILTER(Charges|"Other Taxes")) "G/L Account";
        }
        field(19;"Base Formula";Text[80])
        {
            CaptionML = ENU='Base Formula',
                        ENN='Base Formula';
            Editable = true;
        }
        field(20;"Base Amount";Decimal)
        {
            CaptionML = ENU='Base Amount',
                        ENN='Base Amount';
            Editable = true;
        }
        field(21;Amount;Decimal)
        {
            CaptionML = ENU='Amount',
                        ENN='Amount';
            Editable = true;
        }
        field(22;"Include Base";Boolean)
        {
            CaptionML = ENU='Include Base',
                        ENN='Include Base';
            Editable = true;
        }
        field(23;"Include Line Discount";Boolean)
        {
            CaptionML = ENU='Include Line Discount',
                        ENN='Include Line Discount';
            Editable = true;
        }
        field(24;"Include Invoice Discount";Boolean)
        {
            CaptionML = ENU='Include Invoice Discount',
                        ENN='Include Invoice Discount';
            Editable = true;
        }
        field(25;"Charge Basis";Option)
        {
            CaptionML = ENU='Charge Basis',
                        ENN='Charge Basis';
            Editable = true;
            OptionCaptionML = ENU=' ,Equally,Amount',
                              ENN=' ,Equally,Amount';
            OptionMembers = " ",Equally,Amount;
        }
        field(26;"Amount (LCY)";Decimal)
        {
            CaptionML = ENU='Amount (LCY)',
                        ENN='Amount (LCY)';
            Editable = true;
        }
        field(27;"Header/Line";Option)
        {
            CaptionML = ENU='Header/Line',
                        ENN='Header/Line';
            Editable = true;
            OptionCaptionML = ENU='Header,Line',
                              ENN='Header,Line';
            OptionMembers = Header,Line;
        }
        field(28;"Manually Changed";Boolean)
        {
            CaptionML = ENU='Manually Changed',
                        ENN='Manually Changed';
        }
        field(29;LCY;Boolean)
        {
            CaptionML = ENU='LCY',
                        ENN='LCY';
        }
        field(30;"Available for VAT input";Boolean)
        {
            CaptionML = ENU='Available for VAT input',
                        ENN='Available for VAT input';
        }
        field(40;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';
        }
        field(41;"CVD Payable to Third Party";Boolean)
        {
            CaptionML = ENU='CVD Payable to Third Party',
                        ENN='CVD Payable to Third Party';
        }
        field(42;"CVD Third Party Code";Code[20])
        {
            CaptionML = ENU='CVD Third Party Code',
                        ENN='CVD Third Party Code';
            TableRelation = "G/L Account";
        }
        field(47;"Price Inclusive of Tax";Boolean)
        {
            CaptionML = ENU='Price Inclusive of Tax',
                        ENN='Price Inclusive of Tax';
        }
        field(48;"Include PIT Calculation";Boolean)
        {
            CaptionML = ENU='Include PIT Calculation',
                        ENN='Include PIT Calculation';
        }
        field(49;"Include in TDS Base";Boolean)
        {
            CaptionML = ENU='Include in TDS Base',
                        ENN='Include in TDS Base';
        }
        field(50;"Inc. GST in TDS Base";Boolean)
        {
            CaptionML = ENU='Inc. GST in TDS Base',
                        ENN='Inc. GST in TDS Base';
            Editable = false;
        }
    }

    keys
    {
        key(Key1;Type,"Calculation Order","Document Type","Invoice No.","Item No.","Line No.","Tax/Charge Type","Tax/Charge Group","Tax/Charge Code")
        {
        }
        key(Key2;"Invoice No.",Type,"Item No.")
        {
        }
        key(Key3;"Invoice No.","Item No.","Manually Changed")
        {
        }
        key(Key4;Type,"Document Type","Invoice No.","Tax/Charge Type","Tax/Charge Group")
        {
        }
    }

    fieldgroups
    {
    }
}


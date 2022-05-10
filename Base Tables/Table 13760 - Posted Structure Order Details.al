table 13760 "Posted Structure Order Details"
{
    // version NAVIN9.00.00.48067

    CaptionML = ENU='Posted Structure Order Details',
                ENN='Posted Structure Order Details';

    fields
    {
        field(1;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,Purchase,Sale,Transfer,Service',
                              ENN=' ,Purchase,Sale,Transfer,Service';
            OptionMembers = " ",Purchase,Sale,Transfer,Service;
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
        }
        field(4;"Structure Code";Code[10])
        {
            CaptionML = ENU='Structure Code',
                        ENN='Structure Code';
        }
        field(5;"Calculation Order";Integer)
        {
            CaptionML = ENU='Calculation Order',
                        ENN='Calculation Order';
        }
        field(6;"Tax/Charge Type";Option)
        {
            CaptionML = ENU='Tax/Charge Type',
                        ENN='Tax/Charge Type';
            OptionCaptionML = ENU='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy',
                              ENN='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy';
            OptionMembers = Charges,"Sales Tax",Excise,"Other Taxes","Service Tax",GST,Dummy;

            trigger OnValidate();
            begin
                if "Tax/Charge Type" in ["Tax/Charge Type"::"Sales Tax","Tax/Charge Type"::Excise,"Tax/Charge Type"::GST] then
                  "Header/Line" := "Header/Line"::Line;
                if "Tax/Charge Type" = "Tax/Charge Type"::Charges then
                  "Charge Basis" := "Charge Basis"::Amount;
            end;
        }
        field(7;"Tax/Charge Group";Code[10])
        {
            CaptionML = ENU='Tax/Charge Group',
                        ENN='Tax/Charge Group';

            trigger OnValidate();
            begin
                Validate("Tax/Charge Type");
            end;
        }
        field(8;"Tax/Charge Code";Code[10])
        {
            CaptionML = ENU='Tax/Charge Code',
                        ENN='Tax/Charge Code';
        }
        field(9;"Calculation Type";Option)
        {
            CaptionML = ENU='Calculation Type',
                        ENN='Calculation Type';
            OptionCaptionML = ENU=' ,Percentage,Amount Per Qty,Fixed Value',
                              ENN=' ,Percentage,Amount Per Qty,Fixed Value';
            OptionMembers = " ",Percentage,"Amount Per Qty","Fixed Value";

            trigger OnValidate();
            begin
                if "Calculation Type" = "Calculation Type"::"Amount Per Qty" then
                  "Quantity Per" := 1
                else
                  "Quantity Per" := 0;
            end;
        }
        field(10;"Calculation Value";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Calculation Value',
                        ENN='Calculation Value';
            DecimalPlaces = 0:5;
        }
        field(11;"Quantity Per";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Quantity Per',
                        ENN='Quantity Per';
        }
        field(12;"Loading on Inventory";Boolean)
        {
            CaptionML = ENU='Loading on Inventory',
                        ENN='Loading on Inventory';

            trigger OnValidate();
            begin
                if "Tax/Charge Type" in ["Tax/Charge Type"::Excise,"Tax/Charge Type"::GST] then
                  TestField("Loading on Inventory",false);

                if not "Loading on Inventory" then
                  "% Loading on Inventory" := 0;
            end;
        }
        field(13;"% Loading on Inventory";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='% Loading on Inventory',
                        ENN='% Loading on Inventory';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(14;"Payable to Third Party";Boolean)
        {
            CaptionML = ENU='Payable to Third Party',
                        ENN='Payable to Third Party';

            trigger OnValidate();
            begin
                if not "Payable to Third Party" then
                  "Third Party Code" := '';
            end;
        }
        field(15;"Third Party Code";Code[20])
        {
            CaptionML = ENU='Third Party Code',
                        ENN='Third Party Code';
            TableRelation = Vendor;
        }
        field(16;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            Editable = true;
            TableRelation = IF ("Tax/Charge Type"=FILTER(Charges|"Other Taxes")) "G/L Account";
        }
        field(17;"Base Formula";Text[80])
        {
            CaptionML = ENU='Base Formula',
                        ENN='Base Formula';
        }
        field(18;"Include Base";Boolean)
        {
            CaptionML = ENU='Include Base',
                        ENN='Include Base';
        }
        field(19;"Include Line Discount";Boolean)
        {
            CaptionML = ENU='Include Line Discount',
                        ENN='Include Line Discount';
        }
        field(20;"Include Invoice Discount";Boolean)
        {
            CaptionML = ENU='Include Invoice Discount',
                        ENN='Include Invoice Discount';
        }
        field(21;"Charge Basis";Option)
        {
            CaptionML = ENU='Charge Basis',
                        ENN='Charge Basis';
            OptionCaptionML = ENU=' ,Equally,Amount',
                              ENN=' ,Equally,Amount';
            OptionMembers = " ",Equally,Amount;
        }
        field(22;"Header/Line";Option)
        {
            CaptionML = ENU='Header/Line',
                        ENN='Header/Line';
            OptionCaptionML = ENU='Header,Line',
                              ENN='Header,Line';
            OptionMembers = Header,Line;
        }
        field(23;LCY;Boolean)
        {
            CaptionML = ENU='LCY',
                        ENN='LCY';
        }
        field(24;"Available for VAT input";Boolean)
        {
            CaptionML = ENU='Available for VAT input',
                        ENN='Available for VAT input';
        }
        field(25;"Charge Type";Option)
        {
            CaptionML = ENU='Charge Type',
                        ENN='Charge Type';
            OptionCaptionML = ENU=' ,Freight,Insurance,Commission',
                              ENN=' ,Freight,Insurance,Commission';
            OptionMembers = " ",Freight,Insurance,Commission;
        }
        field(30;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';
        }
        field(31;"CVD Payable to Third Party";Boolean)
        {
            CaptionML = ENU='CVD Payable to Third Party',
                        ENN='CVD Payable to Third Party';

            trigger OnValidate();
            begin
                if not "CVD Payable to Third Party" then
                  "CVD Third Party Code" := '';
            end;
        }
        field(32;"CVD Third Party Code";Code[20])
        {
            CaptionML = ENU='CVD Third Party Code',
                        ENN='CVD Third Party Code';
            TableRelation = Vendor;
        }
        field(33;"Document Line No.";Integer)
        {
            CaptionML = ENU='Document Line No.',
                        ENN='Document Line No.';
        }
        field(34;"Price Inclusive of Tax";Boolean)
        {
            CaptionML = ENU='Price Inclusive of Tax',
                        ENN='Price Inclusive of Tax';
        }
        field(35;"Include PIT Calculation";Boolean)
        {
            CaptionML = ENU='Include PIT Calculation',
                        ENN='Include PIT Calculation';
        }
        field(36;"Include in TDS Base";Boolean)
        {
            CaptionML = ENU='Include in TDS Base',
                        ENN='Include in TDS Base';
        }
        field(37;"Inc. GST in TDS Base";Boolean)
        {
            CaptionML = ENU='Inc. GST in TDS Base',
                        ENN='Inc. GST in TDS Base';
            Editable = false;
        }
    }

    keys
    {
        key(Key1;Type,"Calculation Order","Document Type","No.","Structure Code","Tax/Charge Type","Tax/Charge Group","Tax/Charge Code","Document Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


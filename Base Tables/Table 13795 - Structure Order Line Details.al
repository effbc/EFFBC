table 13795 "Structure Order Line Details"
{
    // version NAVIN9.00.00.51418

    // Tax/Charge Type dummy added

    CaptionML = ENU='Structure Order Line Details',
                ENN='Structure Order Line Details';

    fields
    {
        field(1;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Purchase,Sale,Transfer,Service',
                              ENN=' ,Purchase,Sale,Transfer,Service';
            OptionMembers = " ",Purchase,Sale,Transfer,Service;
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = false;
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = false;
        }
        field(4;"Item No.";Code[20])
        {
            CaptionML = ENU='Item No.',
                        ENN='Item No.';
            Editable = false;
        }
        field(5;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
            Editable = false;
        }
        field(6;"Structure Code";Code[10])
        {
            CaptionML = ENU='Structure Code',
                        ENN='Structure Code';
            Editable = false;
        }
        field(7;"Calculation Order";Integer)
        {
            CaptionML = ENU='Calculation Order',
                        ENN='Calculation Order';
            Editable = false;
        }
        field(8;"Tax/Charge Type";Option)
        {
            CaptionML = ENU='Tax/Charge Type',
                        ENN='Tax/Charge Type';
            Editable = false;
            OptionCaptionML = ENU='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy',
                              ENN='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy';
            OptionMembers = Charges,"Sales Tax",Excise,"Other Taxes","Service Tax",GST,Dummy;
        }
        field(9;"Tax/Charge Group";Code[10])
        {
            CaptionML = ENU='Tax/Charge Group',
                        ENN='Tax/Charge Group';
            Editable = false;
        }
        field(10;"Tax/Charge Code";Code[10])
        {
            CaptionML = ENU='Tax/Charge Code',
                        ENN='Tax/Charge Code';
            Editable = false;
        }
        field(11;"Calculation Type";Option)
        {
            CaptionML = ENU='Calculation Type',
                        ENN='Calculation Type';
            OptionCaptionML = ENU=' ,Percentage,Amount Per Qty,Fixed Value',
                              ENN=' ,Percentage,Amount Per Qty,Fixed Value';
            OptionMembers = " ",Percentage,"Amount Per Qty","Fixed Value";

            trigger OnValidate();
            begin
                Calculate;
            end;
        }
        field(12;"Calculation Value";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Calculation Value',
                        ENN='Calculation Value';
            DecimalPlaces = 0:5;

            trigger OnValidate();
            begin
                Calculate;
            end;
        }
        field(13;"Quantity Per";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Quantity Per',
                        ENN='Quantity Per';

            trigger OnValidate();
            begin
                Calculate;
            end;
        }
        field(14;"Loading on Inventory";Boolean)
        {
            CaptionML = ENU='Loading on Inventory',
                        ENN='Loading on Inventory';

            trigger OnValidate();
            begin
                if "Tax/Charge Type" in ["Tax/Charge Type"::Excise,"Tax/Charge Type"::GST] then
                  TestField("Loading on Inventory",false);

                if "Loading on Inventory" then
                  "% Loading on Inventory" := 100
                else
                  "% Loading on Inventory" := 0;

                Calculate;
            end;
        }
        field(15;"% Loading on Inventory";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='% Loading on Inventory',
                        ENN='% Loading on Inventory';
            DecimalPlaces = 0:5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate();
            begin
                Calculate;
            end;
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
            TableRelation = Vendor;

            trigger OnValidate();
            begin
                // Added by Pranavi on 13-May-2016
                if "Third Party Code" <> '' then
                begin
                  if Type = Type::Purchase then
                  begin
                    Vendor.Reset;
                    Vendor.SetRange(Vendor."No.","Third Party Code");
                    if Vendor.FindFirst then
                      "Third Party Name" := Vendor.Name;
                  end;
                end
                else
                  "Third Party Name" := '';
                // End by Pranvi
            end;
        }
        field(18;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            Editable = false;
            TableRelation = IF ("Tax/Charge Type"=FILTER(Charges|"Other Taxes")) "G/L Account";
        }
        field(19;"Base Formula";Text[80])
        {
            CaptionML = ENU='Base Formula',
                        ENN='Base Formula';
            Editable = false;
        }
        field(20;"Base Amount";Decimal)
        {
            CaptionML = ENU='Base Amount',
                        ENN='Base Amount';
            Editable = false;
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

            trigger OnValidate();
            begin
                Calculate;
            end;
        }
        field(23;"Include Line Discount";Boolean)
        {
            CaptionML = ENU='Include Line Discount',
                        ENN='Include Line Discount';
            Editable = false;
        }
        field(24;"Include Invoice Discount";Boolean)
        {
            CaptionML = ENU='Include Invoice Discount',
                        ENN='Include Invoice Discount';
            Editable = false;
        }
        field(25;"Charge Basis";Option)
        {
            CaptionML = ENU='Charge Basis',
                        ENN='Charge Basis';
            Editable = false;
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
            Editable = false;
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

            trigger OnValidate();
            var
                Text16350 : TextConst ENU='VAT input is only available for Purchase Transactions',ENN='VAT input is only available for Purchase Transactions';
                Text16351 : TextConst ENU='VAT input is not available for Charges',ENN='VAT input is not available for Charges';
            begin
                if Type <> Type::Purchase then
                  Error(Text16350);
                if not ("Tax/Charge Type" in ["Tax/Charge Type"::"Other Taxes","Tax/Charge Type"::"Sales Tax",
                                              "Tax/Charge Type"::Excise,"Tax/Charge Type"::GST])
                then
                  Error(Text16351,"Tax/Charge Type");
                "Manually Changed" := true;
            end;
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
        field(43;"Fixed Amount";Decimal)
        {
            CaptionML = ENU='Fixed Amount',
                        ENN='Fixed Amount';
        }
        field(44;"Variable Base Amount";Decimal)
        {
            CaptionML = ENU='Variable Base Amount',
                        ENN='Variable Base Amount';
        }
        field(45;"Fixed Base Amount";Decimal)
        {
            CaptionML = ENU='Fixed Base Amount',
                        ENN='Fixed Base Amount';
        }
        field(46;"Variable Amount";Decimal)
        {
            CaptionML = ENU='Variable Amount',
                        ENN='Variable Amount';
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

            trigger OnValidate();
            begin
                TestField("Tax/Charge Type","Tax/Charge Type"::"Service Tax");
            end;
        }
        field(50;"Inc. GST in TDS Base";Boolean)
        {
            CaptionML = ENU='Inc. GST in TDS Base',
                        ENN='Inc. GST in TDS Base';
            Editable = false;

            trigger OnValidate();
            begin
                TestField("Tax/Charge Type","Tax/Charge Type"::GST);
            end;
        }
        field(16686;"Exclude GST in TCS Base";Boolean)
        {
            CaptionML = ENU='Exclude GST in TCS Base',
                        ENN='Exclude GST in TCS Base';

            trigger OnValidate();
            begin
                if "Tax/Charge Type" <> "Tax/Charge Type"::GST then
                  Error(ExclTCSGSTErr);
            end;
        }
        field(60000;"Expense Charge Type";Option)
        {
            OptionCaption = 'Others ,Packing ,Freight,Insurance,Commission';
            OptionMembers = "Others ",Packing,Freight,Insurance,Commission;
        }
        field(60001;"Third Party Name";Text[50])
        {
        }
    }

    keys
    {
        key(Key1;Type,"Calculation Order","Document Type","Document No.","Item No.","Line No.","Tax/Charge Type","Tax/Charge Group","Tax/Charge Code")
        {
        }
        key(Key2;"Document Type","Document No.","Calculation Order",Type,"Structure Code","Tax/Charge Type","Tax/Charge Group","Tax/Charge Code","Calculation Type")
        {
        }
        key(Key3;"Document Type","Document No.",Type)
        {
        }
        key(Key4;Type,"Document Type","Document No.","Item No.","Line No.")
        {
            SumIndexFields = "Amount (LCY)",Amount;
        }
        key(Key5;Type,"Document Type","Document No.","Structure Code","Item No.","Line No.")
        {
            SumIndexFields = "Fixed Amount","Variable Amount";
        }
        key(Key6;Type,"Document Type","Document No.","Line No.")
        {
            SumIndexFields = "Amount (LCY)";
        }
    }

    fieldgroups
    {
    }

    var
        PurchLine : Record "Purchase Line";
        SalesLine : Record "Sales Line";
        ExclTCSGSTErr : TextConst ENU='Exclude GST in TCS Base can be TRUE where Type is GST in Structure Details line.',ENN='Exclude GST in TCS Base can be TRUE where Type is GST in Structure Details line.';
        Vendor : Record Vendor;

    [LineStart(62122)]
    procedure Calculate();
    begin
        /*IF Type = Type::Purchase THEN BEGIN
          PurchLine.SETRANGE("Document Type","Document Type");
          PurchLine.SETRANGE("Document No.","Document No.");
          PurchLine.SETRANGE("No.","Item No.");
          PurchLine.SETRANGE("Line No.","Line No.");
          IF PurchLine.FINDFIRST THEN BEGIN
            IF "Calculation Type" = "Calculation Type"::"Fixed Value" THEN BEGIN
              Amount := "Calculation Value";
              "Amount (LCY)" := Amount;
            END;
            IF "Calculation Type" = "Calculation Type"::Percentage THEN BEGIN
              IF "Include Base" THEN
                "Base Amount" := PurchLine.Quantity * PurchLine."Direct Unit Cost";
              Amount := "Base Amount" * "Calculation Value" / 100;
              "Amount (LCY)" := Amount;
            END;
            IF "Calculation Type" = "Calculation Type"::"Amount Per Qty" THEN BEGIN
              Amount := PurchLine.Quantity * "Calculation Value" / "Quantity Per";
              "Amount (LCY)" := Amount;
            END;
            IF "Loading on Inventory" THEN BEGIN
              PurchLine."Amount Added to Inventory" := PurchLine."Amount Added to Inventory" + Amount * "% Loading on Inventory" / 100;
              PurchLine.MODIFY;
            END;
            IF "Header/Line" = "Header/Line"::Line THEN
              "Manually Changed" := TRUE;
          END;
        END;
        
        IF Type = Type::Sale THEN BEGIN
          SalesLine.SETRANGE("Document Type","Document Type");
          SalesLine.SETRANGE("Document No.","Document No.");
          SalesLine.SETRANGE("No.","Item No.");
          SalesLine.SETRANGE("Line No.","Line No.");
          IF SalesLine.FINDFIRST THEN BEGIN
            IF "Calculation Type" = "Calculation Type"::"Fixed Value" THEN BEGIN
              Amount := "Calculation Value";
              "Amount (LCY)" := Amount;
            END;
            IF "Calculation Type" = "Calculation Type"::Percentage THEN BEGIN
              IF "Include Base" THEN
                "Base Amount" := SalesLine.Quantity * SalesLine."Unit Price";
              Amount := "Base Amount" * "Calculation Value" / 100;
              "Amount (LCY)" := Amount;
            END;
            IF "Calculation Type" = "Calculation Type"::"Amount Per Qty" THEN BEGIN
              Amount := SalesLine.Quantity * "Calculation Value" / "Quantity Per";
              "Amount (LCY)" := Amount;
            END;
            IF "Header/Line" = "Header/Line"::Line THEN
              "Manually Changed" := TRUE;
          END;
        END;
        */

    end;

    [LineStart(62178)]
    procedure FindLinesInclInTDSBase(var PurchLine : Record "Purchase Line") : Boolean;
    begin
        Reset;
        SetRange(Type,Type::Purchase);
        SetRange("Document Type",PurchLine."Document Type");
        SetRange("Line No.",PurchLine."Line No.");
        SetRange("Document No.",PurchLine."Document No.");
        SetRange("Item No.",PurchLine."No.");
        SetRange(CVD,false);
        SetRange("CVD Payable to Third Party",false);
        SetRange("Include in TDS Base",true);
        exit(FindSet);
    end;

    [LineStart(62190)]
    procedure DoesTDSBaseIncludeServiceTax(PurchHeader : Record "Purchase Header") : Boolean;
    begin
        Reset;
        SetRange(Type,Type::Purchase);
        SetRange("Document Type",PurchHeader."Document Type");
        SetRange("Document No.",PurchHeader."No.");
        SetRange(CVD,false);
        SetRange("CVD Payable to Third Party",false);
        SetRange("Include in TDS Base",true);
        SetRange("Tax/Charge Type","Tax/Charge Type"::"Service Tax");
        exit(not IsEmpty);
    end;

    [LineStart(62201)]
    procedure RoundAmounts(DocumentType : Option;DocumentNo : Code[20];CurrencyFactor : Decimal;CurrencyPrecision : Decimal);
    var
        StructureOrderLineDetails : Record "Structure Order Line Details";
        Remainder : Decimal;
        RemainderLCY : Decimal;
        GLSetup : Record "General Ledger Setup";
    begin
        GLSetup.Get;
        StructureOrderLineDetails.SetRange("Document Type",DocumentType);
        StructureOrderLineDetails.SetRange("Document No.",DocumentNo);
        if StructureOrderLineDetails.FindSet then begin
          repeat
            StructureOrderLineDetails.Amount :=
              CalcRoundedAmount(StructureOrderLineDetails.Amount,Remainder,GLSetup."Amount Rounding Precision");
            StructureOrderLineDetails."Amount (LCY)" :=
              CalcRoundedAmount(StructureOrderLineDetails.Amount / CurrencyFactor,RemainderLCY,CurrencyPrecision);
            StructureOrderLineDetails.Modify(true);
          until StructureOrderLineDetails.Next = 0;
        end;
    end;

    [LineStart(62215)]
    local procedure CalcRoundedAmount(AmountToRound : Decimal;var Remainder : Decimal;Precision : Decimal) : Decimal;
    var
        RoundedAmount : Decimal;
    begin
        AmountToRound += Remainder;
        RoundedAmount := Round(AmountToRound,Precision);
        Remainder := AmountToRound - RoundedAmount;
        exit(RoundedAmount);
    end;

    [LineStart(62221)]
    procedure DoesTDSBaseIncludeGST(PurchaseHeader : Record "Purchase Header") : Boolean;
    begin
        Reset;
        SetRange(Type,Type::Purchase);
        SetRange("Document Type",PurchaseHeader."Document Type");
        SetRange("Document No.",PurchaseHeader."No.");
        SetRange(CVD,false);
        SetRange("CVD Payable to Third Party",false);
        SetRange("Inc. GST in TDS Base",true);
        SetRange("Tax/Charge Type","Tax/Charge Type"::GST);
        exit(not IsEmpty);
    end;

    [LineStart(62232)]
    procedure DoesTCSBaseExcludeGST(SalesHeader : Record "Sales Header") : Boolean;
    begin
        Reset;
        SetRange(Type,Type::Sale);
        SetRange("Document Type",SalesHeader."Document Type");
        SetRange("Document No.",SalesHeader."No.");
        SetRange("Exclude GST in TCS Base",true);
        SetRange("Tax/Charge Type","Tax/Charge Type"::GST);
        exit(not IsEmpty);
    end;
}


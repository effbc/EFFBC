table 13793 "Structure Details"
{
    // version NAVIN9.00.00.51418

    CaptionML = ENU='Structure Details',
                ENN='Structure Details';

    fields
    {
        field(1;"Code";Code[10])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
        }
        field(2;"Calculation Order";Integer)
        {
            CaptionML = ENU='Calculation Order',
                        ENN='Calculation Order';
            Editable = true;
            MaxValue = 100;
            MinValue = 1;
        }
        field(3;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy',
                              ENN='Charges,Sales Tax,Excise,Other Taxes,Service Tax,GST,Dummy';
            OptionMembers = Charges,"Sales Tax",Excise,"Other Taxes","Service Tax",GST,Dummy;

            trigger OnValidate();
            begin
                case Type of
                  Type::"Sales Tax":
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text001;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::Excise:
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text002;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::Charges:
                    begin
                      "Charge Basis" := "Charge Basis"::Amount;
                      "Tax/Charge Code" := '';
                    end;
                  Type::"Service Tax":
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text004;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::GST:
                    begin
                      CheckExciseServiceSalesTax;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := GSTTxt;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  else
                    "Charge Basis" := "Charge Basis"::" ";
                    "Tax/Charge Code" := '';
                end;

                "Include in TDS Base" := false;

                if "Inc. GST in TDS Base" or "Exclude GST in TCS Base" then
                  TestField(Type,Type::GST);
            end;
        }
        field(4;"Tax/Charge Group";Code[10])
        {
            CaptionML = ENU='Tax/Charge Group',
                        ENN='Tax/Charge Group';
            TableRelation = IF (Type=CONST(Charges)) "Tax/Charge Group".Code WHERE ("Other Tax"=CONST(false))
                            ELSE IF (Type=CONST("Other Taxes")) "Tax/Charge Group".Code WHERE ("Other Tax"=CONST(true));

            trigger OnValidate();
            begin
                case Type of
                  Type::"Sales Tax":
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text001;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::Excise:
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text002;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::"Service Tax":
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text004;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::GST:
                    begin
                      CheckExciseServiceSalesTax;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := GSTTxt;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                end;
            end;
        }
        field(5;"Tax/Charge Code";Code[10])
        {
            CaptionML = ENU='Tax/Charge Code',
                        ENN='Tax/Charge Code';
            TableRelation = IF (Type=FILTER(Charges|"Other Taxes")) "Tax/Charge Group Details"."Tax/Charge Code" WHERE ("Tax/Charge Group"=FIELD("Tax/Charge Group"));

            trigger OnValidate();
            begin
                case Type of
                  Type::"Sales Tax":
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text001;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::Excise:
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text002;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::"Service Tax":
                    begin
                      CheckGST;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := Text004;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                  Type::GST:
                    begin
                      CheckExciseServiceSalesTax;
                      "Header/Line" := "Header/Line"::Line;
                      "Tax/Charge Code" := GSTTxt;
                      if "Tax/Charge Group" <> '' then
                        Error(Text005);
                    end;
                end;
            end;
        }
        field(6;"Calculation Type";Option)
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
        field(7;"Calculation Value";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Calculation Value',
                        ENN='Calculation Value';
            DecimalPlaces = 0:5;
            MinValue = 0;
        }
        field(8;"Quantity Per";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Quantity Per',
                        ENN='Quantity Per';
        }
        field(9;"Loading on Inventory";Boolean)
        {
            CaptionML = ENU='Loading on Inventory',
                        ENN='Loading on Inventory';

            trigger OnValidate();
            begin
                if (Type = Type::Excise) or (Type = Type::GST) then
                  TestField("Loading on Inventory",false);
                if "Loading on Inventory" then
                  "% Loading on Inventory" := 100
                else
                  "% Loading on Inventory" := 0;
            end;
        }
        field(10;"% Loading on Inventory";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='% Loading on Inventory',
                        ENN='% Loading on Inventory';
            DecimalPlaces = 0:5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(11;"Payable to Third Party";Boolean)
        {
            CaptionML = ENU='Payable to Third Party',
                        ENN='Payable to Third Party';

            trigger OnValidate();
            begin
                if Type in [Type::Excise,Type::"Sales Tax",Type::"Service Tax",Type::GST] then
                  TestField("Payable to Third Party",false);
            end;
        }
        field(12;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            TableRelation = IF (Type=FILTER(Charges|"Other Taxes")) "G/L Account";
        }
        field(13;"Base Formula";Text[80])
        {
            CaptionML = ENU='Base Formula',
                        ENN='Base Formula';
        }
        field(14;"Include Base";Boolean)
        {
            CaptionML = ENU='Include Base',
                        ENN='Include Base';
        }
        field(15;"Include Line Discount";Boolean)
        {
            CaptionML = ENU='Include Line Discount',
                        ENN='Include Line Discount';
        }
        field(16;"Include Invoice Discount";Boolean)
        {
            CaptionML = ENU='Include Invoice Discount',
                        ENN='Include Invoice Discount';
        }
        field(17;"Charge Basis";Option)
        {
            CaptionML = ENU='Charge Basis',
                        ENN='Charge Basis';
            OptionCaptionML = ENU=' ,Equally,Amount',
                              ENN=' ,Equally,Amount';
            OptionMembers = " ",Equally,Amount;
        }
        field(18;"Header/Line";Option)
        {
            CaptionML = ENU='Header/Line',
                        ENN='Header/Line';
            OptionCaptionML = ENU='Header,Line',
                              ENN='Header,Line';
            OptionMembers = Header,Line;
        }
        field(24;"Available for VAT Input";Boolean)
        {
            CaptionML = ENU='Available for VAT Input',
                        ENN='Available for VAT Input';
        }
        field(25;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';

            trigger OnValidate();
            begin
                if not CVD then begin
                  "CVD Payable to Third Party" := false;
                  "CVD Third Party Code" := '';
                end;
            end;
        }
        field(26;"CVD Payable to Third Party";Boolean)
        {
            CaptionML = ENU='CVD Payable to Third Party',
                        ENN='CVD Payable to Third Party';

            trigger OnValidate();
            begin
                TestField(CVD,true);
                if Type <> Type::Excise then
                  TestField("CVD Payable to Third Party",false);
                if not ((Type = Type::Excise) and CVD)
                then
                  TestField("Payable to Third Party",false);
                if not "CVD Payable to Third Party" then
                  "CVD Third Party Code" := '';
            end;
        }
        field(27;"CVD Third Party Code";Code[20])
        {
            CaptionML = ENU='CVD Third Party Code',
                        ENN='CVD Third Party Code';
            TableRelation = "G/L Account";

            trigger OnValidate();
            begin
                TestField("CVD Payable to Third Party",true);
            end;
        }
        field(28;"Include PIT Calculation";Boolean)
        {
            CaptionML = ENU='Include PIT Calculation',
                        ENN='Include PIT Calculation';

            trigger OnValidate();
            begin
                UpdateInlcPITCalc;
            end;
        }
        field(29;"Include in TDS Base";Boolean)
        {
            CaptionML = ENU='Include in TDS Base',
                        ENN='Include TDS Base Calculation';

            trigger OnValidate();
            begin
                TestField(Type,Type::"Service Tax");
            end;
        }
        field(30;"Inc. GST in TDS Base";Boolean)
        {
            CaptionML = ENU='Inc. GST in TDS Base',
                        ENN='Inc. GST in TDS Base';

            trigger OnValidate();
            begin
                TestField(Type,Type::GST);
            end;
        }
        field(16686;"Exclude GST in TCS Base";Boolean)
        {
            CaptionML = ENU='Exclude GST in TCS Base',
                        ENN='Exclude GST in TCS Base';

            trigger OnValidate();
            begin
                if Type <> Type::GST then
                  Error(ExclTCSGSTErr);
            end;
        }
    }

    keys
    {
        key(Key1;"Code","Calculation Order",Type,"Tax/Charge Group","Tax/Charge Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        StructureDetails.Reset;
        StructureDetails.SetRange(Code,Code);
        if StructureDetails.Find('+') then
          "Calculation Order" := StructureDetails."Calculation Order" + 1
        else
          "Calculation Order" := 1;
    end;

    trigger OnModify();
    begin
        if not ( UserId in ['EFFTRONICS\DURGAMAHESWARI','EFFTRONICS\ANILKUMAR','EFFTRONICS\RAJANI','EFFTRONICS\SITARAJYAM','EFFTRONICS\DMADHAVI','EFFTRONICS\ANANDA','EFFTRONICS\PADMASRI','EFFTRONICS\MARY']) then
          Error('You have no Rights to modify the Tax structure');
    end;

    var
        StructureDetails : Record "Structure Details";
        Text001 : TextConst ENU='Sales Tax',ENN='Sales Tax';
        Text002 : TextConst ENU='Excise',ENN='Excise';
        Text004 : TextConst ENU='ServiceTax',ENN='ServiceTax';
        Text005 : TextConst ENU='Please do not enter Tax/Charge Group code where type is Sales Tax, Excise or Service Tax.',ENN='Please do not enter Tax/Charge Group code where type is Sales Tax, Excise or Service Tax.';
        GSTTxt : TextConst ENU='GST',ENN='GST';
        TaxTypeErr : TextConst ENU='GST and Other taxes (Service Tax/Excise/Sales Tax) cannot be clubbed in same structure.',ENN='GST and Other taxes (Service Tax/Excise/Sales Tax) cannot be clubbed in same structure.';
        ExclTCSGSTErr : TextConst ENU='Exclude GST in TCS Base can be TRUE where Type is GST in Structure Details line.',ENN='Exclude GST in TCS Base can be TRUE where Type is GST in Structure Details line.';

    [LineStart(62085)]
    procedure UpdateInlcPITCalc();
    var
        InclPITCalc : Boolean;
    begin
        InclPITCalc := "Include PIT Calculation";
        LockTable;
        StructureDetails.LockTable;
        StructureDetails.Reset;
        StructureDetails.SetRange(Code,Code);
        StructureDetails := Rec;
        if InclPITCalc then begin
          if StructureDetails.Next(-1) = 0 then
            exit
            ;
          repeat
            StructureDetails."Include PIT Calculation" := InclPITCalc;
            StructureDetails.Modify;
          until StructureDetails.Next(-1) = 0;
        end else begin
          if StructureDetails.Next = 0 then
            exit
            ;
          repeat
            StructureDetails."Include PIT Calculation" := InclPITCalc;
            StructureDetails.Modify;
          until StructureDetails.Next = 0;
        end;
    end;

    [LineStart(62110)]
    local procedure CheckGST();
    begin
        /*IF GSTManagement.CheckGSTStrucure(Code) THEN
          ERROR(TaxTypeErr);
          */

    end;

    [LineStart(62115)]
    local procedure CheckExciseServiceSalesTax();
    var
        StructureDetails : Record "Structure Details";
    begin
        StructureDetails.SetRange(Code,Code);
        StructureDetails.SetFilter(Type,'%1|%2|%3',StructureDetails.Type::Excise,StructureDetails.Type::"Sales Tax",
          StructureDetails.Type::"Service Tax");
        if StructureDetails.FindFirst then
          Error(TaxTypeErr);
    end;
}


table 13762 State
{
    // version NAVIN9.00.00.48067

    CaptionML = ENU='State',
                ENN='State';
    DataCaptionFields = "Code",Description,"State Code (GST Reg. No.)";
    DrillDownPageID = 13789;
    LookupPageID = 13789;

    fields
    {
        field(1;"Code";Code[10])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
            NotBlank = true;

            trigger OnValidate();
            begin
                TestField("State Code (GST Reg. No.)",'');
            end;
        }
        field(2;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(3;"State Code for eTDS/TCS";Code[2])
        {
            CaptionML = ENU='State Code for eTDS/TCS',
                        ENN='State Code for eTDS/TCS';
            Numeric = true;
        }
        field(4;"State Code for TIN";Code[2])
        {
            CaptionML = ENU='State Code for TIN',
                        ENN='State Code for TIN';
        }
        field(5;"Tax Account (Sales)";Code[20])
        {
            CaptionML = ENU='Tax Account (Sales)',
                        ENN='Tax Account (Sales)';
            TableRelation = "G/L Account";
        }
        field(6;"Tax Account (Purchases)";Code[20])
        {
            CaptionML = ENU='Tax Account (Purchases)',
                        ENN='Tax Account (Purchases)';
            TableRelation = "G/L Account";
        }
        field(7;"VAT Deferred Account No.";Code[20])
        {
            CaptionML = ENU='VAT Deferred Account No.',
                        ENN='VAT Deferred Account No.';
            TableRelation = "G/L Account";
        }
        field(8;"VAT Payable Account No.";Code[20])
        {
            CaptionML = ENU='VAT Payable Account No.',
                        ENN='VAT Payable Account No.';
            TableRelation = "G/L Account";
        }
        field(9;"VAT Refund Account No.";Code[20])
        {
            CaptionML = ENU='VAT Refund Account No.',
                        ENN='VAT Refund Account No.';
            TableRelation = "G/L Account";
        }
        field(10;"Excess Cr. C/F Account No.";Code[20])
        {
            CaptionML = ENU='Excess Cr. C/F Account No.',
                        ENN='Excess Cr. C/F Account No.';
            TableRelation = "G/L Account";
        }
        field(11;"Branch Transfer Retention %";Decimal)
        {
            CaptionML = ENU='Branch Transfer Retention %',
                        ENN='Branch Transfer Retention %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(12;"Tax Period";DateFormula)
        {
            CaptionML = ENU='Tax Period',
                        ENN='Tax Period';
        }
        field(13;"Specified Period for Refund";DateFormula)
        {
            CaptionML = ENU='Specified Period for Refund',
                        ENN='Specified Period for Refund';
        }
        field(14;"Period for Debit/Credit Note";DateFormula)
        {
            CaptionML = ENU='Period for Debit/Credit Note',
                        ENN='Period for Debit/Credit Note';
        }
        field(15;"Deferment Period";DateFormula)
        {
            CaptionML = ENU='Deferment Period',
                        ENN='Deferment Period';

            trigger OnValidate();
            begin
                if "Financial Year" and (not (Format("Deferment Period") = '1Y')) then
                  Error(Text16501,FieldCaption("Financial Year"),'No',FieldCaption("Deferment Period"),"Deferment Period");
            end;
        }
        field(16;"Financial Year";Boolean)
        {
            CaptionML = ENU='Financial Year',
                        ENN='Financial Year';

            trigger OnValidate();
            begin
                if "Financial Year" then begin
                  if not (Format("Deferment Period") = '1Y') then
                    Error(Text16500,FieldCaption("Deferment Period"),'1Y');
                end
            end;
        }
        field(17;"CST Account (Sales)";Code[20])
        {
            CaptionML = ENU='CST Account (Sales)',
                        ENN='CST Account (Sales)';
            TableRelation = "G/L Account";
        }
        field(21;"State Code (GST Reg. No.)";Code[2])
        {
            CaptionML = ENU='State Code (GST Reg. No.)',
                        ENN='State Code (GST Reg. No.)';
            Numeric = true;

            trigger OnValidate();
            begin
                TestField(Code);
                CheckUniqueGSTRegNoStateCode;
            end;
        }
    }

    keys
    {
        key(Key1;"Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Code",Description,"State Code (GST Reg. No.)")
        {
        }
    }

    var
        Text16500 : TextConst ENU='%1 should be %2.',ENN='%1 should be %2.';
        Text16501 : TextConst ENU='%1 should be %2 for %3 = %4.',ENN='%1 should be %2 for %3 = %4.';
        GSTStateCodeErr : TextConst Comment='%1 = Initial State Text, %2 = Initial State Code',ENU='%1 %2 is already in use',ENN='%1 %2 is already in use';

    [LineStart(62053)]
    local procedure CheckUniqueGSTRegNoStateCode();
    var
        State : Record State;
    begin
        if "State Code (GST Reg. No.)" <> '' then begin
          State.SetRange("State Code (GST Reg. No.)","State Code (GST Reg. No.)");
          if State.FindFirst and (State.Code <>'NHL') then
            Error(StrSubstNo(GSTStateCodeErr,FieldCaption("State Code (GST Reg. No.)"),"State Code (GST Reg. No.)"));
        end;
    end;
}


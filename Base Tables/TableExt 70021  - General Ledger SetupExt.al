tableextension 70021 GeneralLedgerSetupExt extends "General Ledger Setup"
{
    // version NAVW19.00.00.51883,NAVIN9.00.00.51883,B2B1.0

    fields
    {

        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Filter"(Field 42)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Filter"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cust. Balances Due"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cust. Balances Due"(Field 44)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Balances Due"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Balances Due"(Field 45)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Local Address Format"(Field 57)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Local Cont. Addr. Format"(Field 60)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Local Cont. Addr. Format"(Field 60)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bank Account Nos."(Field 63)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Exchange Rate Adjustment"(Field 72)". Please convert manually.


        //Unsupported feature: Change Editable on ""Global Dimension 1 Code"(Field 79)". Please convert manually.


        //Unsupported feature: Change Editable on ""Global Dimension 2 Code"(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shortcut Dimension 1 Code"(Field 81)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shortcut Dimension 2 Code"(Field 82)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shortcut Dimension 3 Code"(Field 83)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shortcut Dimension 4 Code"(Field 84)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shortcut Dimension 5 Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shortcut Dimension 6 Code"(Field 86)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shortcut Dimension 7 Code"(Field 87)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shortcut Dimension 8 Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Pmt. Disc. Tolerance Posting"(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Payment Tolerance %"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Max. Payment Tolerance Amount"(Field 95)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Adapt Main Menu to Permissions"(Field 96)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Payment Tolerance Posting"(Field 99)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bill-to/Sell-to VAT Calc."(Field 103)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Payroll Trans. Import Format"(Field 160)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Show Amounts"(Field 164)". Please convert manually.


        //Unsupported feature: Deletion on ""Allow Posting To"(Field 3).OnValidate". Please convert manually.


        //Unsupported feature: CodeModification on ""Pmt. Disc. Excl. VAT"(Field 28).OnValidate". Please convert manually.

        //trigger  Disc();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Pmt. Disc. Excl. VAT" THEN
          TESTFIELD("Adjust for Payment Disc.",FALSE)
        ELSE
          TESTFIELD("VAT Tolerance %",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Pmt. Disc. Excl. VAT" then
          TestField("Adjust for Payment Disc.",false)
        else
          TestField("VAT Tolerance %",0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unrealized VAT"(Field 48).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Unrealized VAT" THEN BEGIN
          VATPostingSetup.SETFILTER(
            "Unrealized VAT Type",'>=%1',VATPostingSetup."Unrealized VAT Type"::Percentage);
          IF VATPostingSetup.FINDFIRST THEN
            ERROR(
              Text000,VATPostingSetup.TABLECAPTION,
              VATPostingSetup."VAT Bus. Posting Group",VATPostingSetup."VAT Prod. Posting Group",
              VATPostingSetup.FIELDCAPTION("Unrealized VAT Type"),VATPostingSetup."Unrealized VAT Type");
          TaxJurisdiction.SETFILTER(
            "Unrealized VAT Type",'>=%1',TaxJurisdiction."Unrealized VAT Type"::Percentage);
          IF TaxJurisdiction.FINDFIRST THEN
            ERROR(
              Text001,TaxJurisdiction.TABLECAPTION,
              TaxJurisdiction.Code,TaxJurisdiction.FIELDCAPTION("Unrealized VAT Type"),
              TaxJurisdiction."Unrealized VAT Type");
        END;
        IF "Unrealized VAT" THEN
          "Prepayment Unrealized VAT" := TRUE
        ELSE
          "Prepayment Unrealized VAT" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Unrealized VAT" then begin
          VATPostingSetup.SetFilter(
            "Unrealized VAT Type",'>=%1',VATPostingSetup."Unrealized VAT Type"::Percentage);
          if VATPostingSetup.FindFirst then
            Error(
              Text000,VATPostingSetup.TableCaption,
              VATPostingSetup."VAT Bus. Posting Group",VATPostingSetup."VAT Prod. Posting Group",
              VATPostingSetup.FieldCaption("Unrealized VAT Type"),VATPostingSetup."Unrealized VAT Type");
          TaxJurisdiction.SetFilter(
            "Unrealized VAT Type",'>=%1',TaxJurisdiction."Unrealized VAT Type"::Percentage);
          if TaxJurisdiction.FindFirst then
            Error(
              Text001,TaxJurisdiction.TableCaption,
              TaxJurisdiction.Code,TaxJurisdiction.FieldCaption("Unrealized VAT Type"),
              TaxJurisdiction."Unrealized VAT Type");
        end;
        if "Unrealized VAT" then
          "Prepayment Unrealized VAT" := true
        else
          "Prepayment Unrealized VAT" := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Adjust for Payment Disc."(Field 49).OnValidate". Please convert manually.

        //trigger "(Field 49)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Adjust for Payment Disc." THEN BEGIN
          TESTFIELD("Pmt. Disc. Excl. VAT",FALSE);
          TESTFIELD("VAT Tolerance %",0);
        END ELSE BEGIN
          VATPostingSetup.SETRANGE("Adjust for Payment Discount",TRUE);
          IF VATPostingSetup.FINDFIRST THEN
            ERROR(
              Text002,VATPostingSetup.TABLECAPTION,
              VATPostingSetup."VAT Bus. Posting Group",VATPostingSetup."VAT Prod. Posting Group",
              VATPostingSetup.FIELDCAPTION("Adjust for Payment Discount"));
          TaxJurisdiction.SETRANGE("Adjust for Payment Discount",TRUE);
          IF TaxJurisdiction.FINDFIRST THEN
            ERROR(
              Text003,TaxJurisdiction.TABLECAPTION,
              TaxJurisdiction.Code,TaxJurisdiction.FIELDCAPTION("Adjust for Payment Discount"));
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Adjust for Payment Disc." then begin
          TestField("Pmt. Disc. Excl. VAT",false);
          TestField("VAT Tolerance %",0);
        end else begin
          VATPostingSetup.SetRange("Adjust for Payment Discount",true);
          if VATPostingSetup.FindFirst then
            Error(
              Text002,VATPostingSetup.TableCaption,
              VATPostingSetup."VAT Bus. Posting Group",VATPostingSetup."VAT Prod. Posting Group",
              VATPostingSetup.FieldCaption("Adjust for Payment Discount"));
          TaxJurisdiction.SetRange("Adjust for Payment Discount",true);
          if TaxJurisdiction.FindFirst then
            Error(
              Text003,TaxJurisdiction.TableCaption,
              TaxJurisdiction.Code,TaxJurisdiction.FieldCaption("Adjust for Payment Discount"));
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Inv. Rounding Precision (LCY)"(Field 58).OnValidate". Please convert manually.

        //trigger  Rounding Precision (LCY)"(Field 58)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Amount Rounding Precision" <> 0 THEN
          IF "Inv. Rounding Precision (LCY)" <> ROUND("Inv. Rounding Precision (LCY)","Amount Rounding Precision") THEN
            ERROR(
              Text004,
              FIELDCAPTION("Inv. Rounding Precision (LCY)"),"Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Amount Rounding Precision" <> 0 then
          if "Inv. Rounding Precision (LCY)" <> Round("Inv. Rounding Precision (LCY)","Amount Rounding Precision") then
            Error(
              Text004,
              FieldCaption("Inv. Rounding Precision (LCY)"),"Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Additional Reporting Currency"(Field 68).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Additional Reporting Currency" <> xRec."Additional Reporting Currency") AND
           ("Additional Reporting Currency" <> '')
        THEN BEGIN
          AdjAddReportingCurr.SetAddCurr("Additional Reporting Currency");
          AdjAddReportingCurr.RUNMODAL;
          IF NOT AdjAddReportingCurr.IsExecuted THEN
            "Additional Reporting Currency" := xRec."Additional Reporting Currency";
        END;
        IF ("Additional Reporting Currency" <> xRec."Additional Reporting Currency") AND
           AdjAddReportingCurr.IsExecuted
        THEN
          DeleteIntrastatJnl;
        IF ("Additional Reporting Currency" <> xRec."Additional Reporting Currency") AND
           ("Additional Reporting Currency" <> '') AND
           AdjAddReportingCurr.IsExecuted
        THEN
          DeleteAnalysisView;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Additional Reporting Currency" <> xRec."Additional Reporting Currency") and
           ("Additional Reporting Currency" <> '')
        then begin
          AdjAddReportingCurr.SetAddCurr("Additional Reporting Currency");
          AdjAddReportingCurr.RunModal;
          if not AdjAddReportingCurr.IsExecuted then
            "Additional Reporting Currency" := xRec."Additional Reporting Currency";
        end;
        if ("Additional Reporting Currency" <> xRec."Additional Reporting Currency") and
           AdjAddReportingCurr.IsExecuted
        then
          DeleteIntrastatJnl;
        if ("Additional Reporting Currency" <> xRec."Additional Reporting Currency") and
           ("Additional Reporting Currency" <> '') and
           AdjAddReportingCurr.IsExecuted
        then
          DeleteAnalysisView;
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Tolerance %"(Field 69).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "VAT Tolerance %" <> 0 THEN BEGIN
          TESTFIELD("Adjust for Payment Disc.",FALSE);
          TESTFIELD("Pmt. Disc. Excl. VAT",TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "VAT Tolerance %" <> 0 then begin
          TestField("Adjust for Payment Disc.",false);
          TestField("Pmt. Disc. Excl. VAT",true);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""LCY Code"(Field 71).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Local Currency Symbol" = '' THEN
          "Local Currency Symbol" := Currency.ResolveCurrencySymbol("LCY Code");

        IF "Local Currency Description" = '' THEN
          "Local Currency Description" := COPYSTR(Currency.ResolveCurrencyDescription("LCY Code"),1,MAXSTRLEN("Local Currency Description"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Local Currency Symbol" = '' then
          "Local Currency Symbol" := Currency.ResolveCurrencySymbol("LCY Code");

        if "Local Currency Description" = '' then
          "Local Currency Description" := CopyStr(Currency.ResolveCurrencyDescription("LCY Code"),1,MaxStrLen("Local Currency Description"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount Rounding Precision"(Field 73).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Amount Rounding Precision" <> 0 THEN
          "Inv. Rounding Precision (LCY)" := ROUND("Inv. Rounding Precision (LCY)","Amount Rounding Precision");

        RoundingErrorCheck(FIELDCAPTION("Amount Rounding Precision"));

        IF HideDialog THEN
          MESSAGE(Text021);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Amount Rounding Precision" <> 0 then
          "Inv. Rounding Precision (LCY)" := Round("Inv. Rounding Precision (LCY)","Amount Rounding Precision");

        RoundingErrorCheck(FieldCaption("Amount Rounding Precision"));

        if HideDialog then
          Message(Text021);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit-Amount Rounding Precision"(Field 74).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF HideDialog THEN
          MESSAGE(Text022);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if HideDialog then
          Message(Text022);
        */
        //end;


        //Unsupported feature: CodeModification on ""Max. VAT Difference Allowed"(Field 89).OnValidate". Please convert manually.

        //trigger  VAT Difference Allowed"(Field 89)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Max. VAT Difference Allowed" <> ROUND("Max. VAT Difference Allowed") THEN
          ERROR(
            Text004,
            FIELDCAPTION("Max. VAT Difference Allowed"),"Amount Rounding Precision");

        "Max. VAT Difference Allowed" := ABS("Max. VAT Difference Allowed");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Max. VAT Difference Allowed" <> Round("Max. VAT Difference Allowed") then
          Error(
            Text004,
            FieldCaption("Max. VAT Difference Allowed"),"Amount Rounding Precision");

        "Max. VAT Difference Allowed" := Abs("Max. VAT Difference Allowed");
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment Unrealized VAT"(Field 151).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unrealized VAT" AND xRec."Prepayment Unrealized VAT" THEN
          ERROR(DependentFieldActivatedErr,FIELDCAPTION("Prepayment Unrealized VAT"),FIELDCAPTION("Unrealized VAT"));

        IF NOT "Prepayment Unrealized VAT" THEN BEGIN
          VATPostingSetup.SETFILTER(
            "Unrealized VAT Type",'>=%1',VATPostingSetup."Unrealized VAT Type"::Percentage);
          IF VATPostingSetup.FINDFIRST THEN
            ERROR(
              Text000,VATPostingSetup.TABLECAPTION,
              VATPostingSetup."VAT Bus. Posting Group",VATPostingSetup."VAT Prod. Posting Group",
              VATPostingSetup.FIELDCAPTION("Unrealized VAT Type"),VATPostingSetup."Unrealized VAT Type");
          TaxJurisdiction.SETFILTER(
            "Unrealized VAT Type",'>=%1',TaxJurisdiction."Unrealized VAT Type"::Percentage);
          IF TaxJurisdiction.FINDFIRST THEN
            ERROR(
              Text001,TaxJurisdiction.TABLECAPTION,
              TaxJurisdiction.Code,TaxJurisdiction.FIELDCAPTION("Unrealized VAT Type"),
              TaxJurisdiction."Unrealized VAT Type");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unrealized VAT" and xRec."Prepayment Unrealized VAT" then
          Error(DependentFieldActivatedErr,FieldCaption("Prepayment Unrealized VAT"),FieldCaption("Unrealized VAT"));

        if not "Prepayment Unrealized VAT" then begin
          VATPostingSetup.SetFilter(
            "Unrealized VAT Type",'>=%1',VATPostingSetup."Unrealized VAT Type"::Percentage);
          if VATPostingSetup.FindFirst then
            Error(
              Text000,VATPostingSetup.TableCaption,
              VATPostingSetup."VAT Bus. Posting Group",VATPostingSetup."VAT Prod. Posting Group",
              VATPostingSetup.FieldCaption("Unrealized VAT Type"),VATPostingSetup."Unrealized VAT Type");
          TaxJurisdiction.SetFilter(
            "Unrealized VAT Type",'>=%1',TaxJurisdiction."Unrealized VAT Type"::Percentage);
          if TaxJurisdiction.FindFirst then
            Error(
              Text001,TaxJurisdiction.TableCaption,
              TaxJurisdiction.Code,TaxJurisdiction.FieldCaption("Unrealized VAT Type"),
              TaxJurisdiction."Unrealized VAT Type");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Use Legacy G/L Entry Locking"(Field 152).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Use Legacy G/L Entry Locking" THEN BEGIN
          IF InventorySetup.GET THEN
            IF InventorySetup."Automatic Cost Posting" THEN
              ERROR(Text025,
                FIELDCAPTION("Use Legacy G/L Entry Locking"),
                "Use Legacy G/L Entry Locking",
                InventorySetup.FIELDCAPTION("Automatic Cost Posting"),
                InventorySetup.TABLECAPTION,
                InventorySetup."Automatic Cost Posting");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Use Legacy G/L Entry Locking" then begin
          if InventorySetup.Get then
            if InventorySetup."Automatic Cost Posting" then
              Error(Text025,
                FieldCaption("Use Legacy G/L Entry Locking"),
                "Use Legacy G/L Entry Locking",
                InventorySetup.FieldCaption("Automatic Cost Posting"),
                InventorySetup.TableCaption,
                InventorySetup."Automatic Cost Posting");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Reg. No. Validation URL"(Field 161).OnValidate". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ERROR(ObsoleteErr);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Error(ObsoleteErr);
        */
        //end;
        field(13706; "PLA Account"; Code[20])
        {
            CaptionML = ENU = 'PLA Account',
                        ENN = 'PLA Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(13710; "Excise Rounding Precision"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Rounding Precision',
                        ENN = 'Excise Rounding Precision';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                if "Amount Rounding Precision" <> 0 then
                    if "Inv. Rounding Precision (LCY)" <> Round("Inv. Rounding Precision (LCY)", "Amount Rounding Precision") then;
                /* Error(
                   Text004,
                   FieldCaption("Inv. Rounding Precision (LCY)"), "Amount Rounding Precision");*/
            end;
        }
        field(13711; "Excise Rounding Type"; Option)
        {
            CaptionML = ENU = 'Excise Rounding Type',
                        ENN = 'Excise Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(13712; "TDS Rounding Precision"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Rounding Precision',
                        ENN = 'TDS Rounding Precision';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                if "Amount Rounding Precision" <> 0 then
                    if "Inv. Rounding Precision (LCY)" <> Round("Inv. Rounding Precision (LCY)", "Amount Rounding Precision") then;
                /*Error(
                  Text004,
                  FieldCaption("Inv. Rounding Precision (LCY)"), "Amount Rounding Precision");*/
            end;
        }
        field(13713; "TDS Rounding Type"; Option)
        {
            CaptionML = ENU = 'TDS Rounding Type',
                        ENN = 'TDS Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(13714; "TDS Nil Challan Nos."; Code[10])
        {
            CaptionML = ENU = 'TDS Nil Challan Nos.',
                        ENN = 'TDS Nil Challan Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(13715; "Nil Pay TDS Document Nos."; Code[10])
        {
            CaptionML = ENU = 'Nil Pay TDS Document Nos.',
                        ENN = 'Nil Pay TDS Document Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16350; "VAT Adjustment Nos."; Code[10])
        {
            CaptionML = ENU = 'VAT Adjustment Nos.',
                        ENN = 'VAT Adjustment Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16351; "Excise Expenses Account"; Code[20])
        {
            CaptionML = ENU = 'Excise Expenses Account',
                        ENN = 'Excise Expenses Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(16352; "Service Tax Rounding Precision"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Service Tax Rounding Precision',
                        ENN = 'Service Tax Rounding Precision';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                if "Amount Rounding Precision" <> 0 then
                    if "Inv. Rounding Precision (LCY)" <> Round("Inv. Rounding Precision (LCY)", "Amount Rounding Precision") then;
                /* Error(
                   Text004,
                   FieldCaption("Inv. Rounding Precision (LCY)"), "Amount Rounding Precision");*/
            end;
        }
        field(16353; "Service Tax Rounding Type"; Option)
        {
            CaptionML = ENU = 'Service Tax Rounding Type',
                        ENN = 'Service Tax Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16500; "TCS Rounding Type"; Option)
        {
            CaptionML = ENU = 'TCS Rounding Type',
                        ENN = 'TCS Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16501; "TCS Rounding Precision"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'TCS Rounding Precision',
                        ENN = 'TCS Rounding Precision';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            InitValue = 1;

            trigger OnValidate();
            begin
                if "Amount Rounding Precision" <> 0 then
                    if "Inv. Rounding Precision (LCY)" <> Round("Inv. Rounding Precision (LCY)", "Amount Rounding Precision") then;
                /* Error(
                   Text004,
                   FieldCaption("Inv. Rounding Precision (LCY)"), "Amount Rounding Precision");*/
            end;
        }
        field(16502; "VAT Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'VAT Rounding Precision',
                        ENN = 'VAT Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16503; "FBT Rounding Type"; Option)
        {
            CaptionML = ENU = 'FBT Rounding Type',
                        ENN = 'FBT Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16504; "FBT Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'FBT Rounding Precision',
                        ENN = 'FBT Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16505; "Activate Cheque No."; Boolean)
        {
            CaptionML = ENU = 'Activate Cheque No.',
                        ENN = 'Activate Cheque No.';
            DataClassification = ToBeClassified;
        }
        field(16507; "Service Tax Distribution Nos."; Code[10])
        {
            CaptionML = ENU = 'Service Tax Distribution Nos.',
                        ENN = 'Service Tax Distribution Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16508; "S.T. Posted Distribution Nos."; Code[10])
        {
            CaptionML = ENU = 'S.T. Posted Distribution Nos.',
                        ENN = 'S.T. Posted Distribution Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16509; "Item Charge (VAT Adjustment)"; Code[20])
        {
            CaptionML = ENU = 'Item Charge (VAT Adjustment)',
                        ENN = 'Item Charge (VAT Adjustment)';
            DataClassification = ToBeClassified;
            TableRelation = "Item Charge";
        }
        field(16510; "Excise Expense Acc. - Job Work"; Code[20])
        {
            CaptionML = ENU = 'Excise Expense Acc. - Job Work',
                        ENN = 'Excise Expense Acc. - Job Work';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(16511; "Check Negative RG Balance"; Boolean)
        {
            CaptionML = ENU = 'Check Negative RG Balance',
                        ENN = 'Check Negative RG Balance';
            DataClassification = ToBeClassified;
        }
        field(16512; "TDS Report ID"; Integer)
        {
            CaptionML = ENU = 'TDS Report ID',
                        ENN = 'TDS Report ID';
            DataClassification = ToBeClassified;
            // TableRelation = Object.ID WHERE(Type = CONST(Report));

            trigger OnValidate();
            begin
                //CALCFIELDS("TDS Report Name");
            end;
        }
        field(16513; "TCS Report ID"; Integer)
        {
            CaptionML = ENU = 'TCS Report ID',
                        ENN = 'TCS Report ID';
            DataClassification = ToBeClassified;
            //TableRelation = Object.ID WHERE(Type = CONST(Report));

            trigger OnValidate();
            begin
                //CALCFIELDS("TCS Report Name");
            end;
        }
        field(16514; "TDS Report Name"; Text[80])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Report),
                                                                           "Object ID" = FIELD("TDS Report ID")));
            CaptionML = ENU = 'TDS Report Name',
                        ENN = 'TDS Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16515; "TCS Report Name"; Text[80])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Report),
                                                                           "Object ID" = FIELD("TCS Report ID")));
            CaptionML = ENU = 'TCS Report Name',
                        ENN = 'TCS Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16516; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;
        }
        field(16611; "GST Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Rounding Precision',
                        ENN = 'GST Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16612; "GST Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Rounding Type',
                        ENN = 'GST Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16613; "Sub-Con Interim Account"; Code[20])
        {
            CaptionML = ENU = 'Sub-Con Interim Account',
                        ENN = 'Sub-Con Interim Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account" WHERE(Blocked = CONST(false),
                                                 "Account Type" = FILTER(Posting));
        }
        field(16614; "IGST Payable A/c (Import)"; Code[20])
        {
            CaptionML = ENU = 'IGST Payable A/c (Import)',
                        ENN = 'IGST Payable A/c (Import)';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account" WHERE(Blocked = CONST(false),
                                                 "Account Type" = FILTER(Posting));
        }
        field(16615; "GST Recon. Tolerance"; Decimal)
        {
            CaptionML = ENU = 'GST Recon. Tolerance',
                        ENN = 'GST Recon. Tolerance';
            DataClassification = ToBeClassified;
        }
        field(16616; "GST Distribution Nos."; Code[10])
        {
            CaptionML = ENU = 'GST Distribution Nos.',
                        ENN = 'GST Distribution Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16618; "GST Credit Adj. Jnl Nos."; Code[10])
        {
            CaptionML = ENU = 'GST Credit Adj. Jnl Nos.',
                        ENN = 'GST Credit Adj. Jnl Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16619; "GST Settlement Nos."; Code[10])
        {
            CaptionML = ENU = 'GST Settlement Nos.',
                        ENN = 'GST Settlement Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16620; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16621; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16622; "GST Inv. Rounding Account"; Code[20])
        {
            CaptionML = ENU = 'GST Inv. Rounding Account',
                        ENN = 'GST Inv. Rounding Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account" WHERE(Blocked = CONST(false),
                                                 "Account Type" = FILTER(Posting));
        }
        field(16623; "Generate E-Inv. on Sales Post"; Boolean)
        {
            CaptionML = ENU = 'Generate E-Inv. on Sales Post',
                        ENN = 'Generate E-Inv. on Sales Post';
            DataClassification = ToBeClassified;
        }
        field(50000; "ESPL Attachment Storage Type"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Embedded,Disk File';
            OptionMembers = Embedded,"Disk File";
        }
        field(50001; "ESPL Attmt. Storage Location"; Text[250])
        {
            Description = 'B2B';
        }
        field(50002; "MSPT Cust. Balances Due"; Decimal)
        {
            CalcFormula = Sum("MSPT Dtld. Cust. Ledg. Entry"."MSPT Amount" WHERE("Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "MSPT Due Date" = FIELD("Date Filter")));
            Description = 'MSPT1.0';
            FieldClass = FlowField;
        }
        field(50003; "MSPT Vendor Balances Due"; Decimal)
        {
            CalcFormula = - Sum("MSPT Dtld. Vendor Ledg. Entry"."MSPT Amount" WHERE("Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                    "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                    "MSPT Due Date" = FIELD("Date Filter")));
            Description = 'MSPT1.0';
            FieldClass = FlowField;
        }
        field(50004; "Shortage. Calc. Date"; Date)
        {
        }
        field(50005; "Data Confirmation"; Boolean)
        {
        }
        field(50006; "Sql Connection String"; Text[100])
        {
        }
        field(50007; "Active ERP-CF Connection"; Boolean)
        {
        }
        field(50008; "Expected Orders Data Dump"; Boolean)
        {
        }
        field(50009; "Allow Posting to(15)"; Date)
        {
        }
        field(50010; "Daily Entrires Posting Date"; Date)
        {
        }
        field(50011; "Session Killer Time Setup"; Integer)
        {
            Description = 'B2B';
        }
        field(50012; "Restrict Store Material Issues"; Boolean)
        {
        }
        field(50013; "Production_ Shortage_Status"; Option)
        {
            OptionMembers = nothing,Applied,Accepted,Rejected;
        }
        field(50014; "Production Shortage Date"; Date)
        {
        }
        field(50015; "Day Wise Issues Status"; Option)
        {
            Description = 'Pranavi';
            OptionMembers = Nothing,Applied,Accepted,Rejected;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Primary1; "Primary Key")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
     { IF USERID<>'07TE024' THEN
        ERROR('YOU DONT AHVE PERMISSIONS');    }
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""LCY Code"(Field 71).OnValidate.Currency(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"LCY Code" : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"LCY Code" : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Use Legacy G/L Entry Locking"(Field 152).OnValidate.InventorySetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Use Legacy G/L Entry Locking" : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Use Legacy G/L Entry Locking" : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteIntrastatJnl(PROCEDURE 3).IntrastatJnlBatch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteIntrastatJnl : 262;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteIntrastatJnl : "Intrastat Jnl. Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteIntrastatJnl(PROCEDURE 3).IntrastatJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteIntrastatJnl : 263;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteIntrastatJnl : "Intrastat Jnl. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OptimGLEntLockForMultiuserEnv(PROCEDURE 4).InventorySetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OptimGLEntLockForMultiuserEnv : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OptimGLEntLockForMultiuserEnv : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FirstAllowedPostingDate(PROCEDURE 78).InvtPeriod(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FirstAllowedPostingDate : 5814;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FirstAllowedPostingDate : "Inventory Period";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDimValueGlobalDimNo(PROCEDURE 7).DimensionValue(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDimValueGlobalDimNo : 349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDimValueGlobalDimNo : "Dimension Value";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Dim(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Dim : 348;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Dim : Dimension;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLEntry(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLEntry : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLEntry : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemLedgerEntry(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemLedgerEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemLedgerEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "JobLedgEntry(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //JobLedgEntry : 169;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobLedgEntry : "Job Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResLedgEntry(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResLedgEntry : 203;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResLedgEntry : "Res. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FALedgerEntry(Variable 1026)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FALedgerEntry : 5601;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FALedgerEntry : "FA Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MaintenanceLedgerEntry(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MaintenanceLedgerEntry : 5625;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MaintenanceLedgerEntry : "Maintenance Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsCoverageLedgerEntry(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsCoverageLedgerEntry : 5629;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsCoverageLedgerEntry : "Ins. Coverage Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATPostingSetup(Variable 1029)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATPostingSetup : 325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATPostingSetup : "VAT Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TaxJurisdiction(Variable 1030)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TaxJurisdiction : 320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TaxJurisdiction : "Tax Jurisdiction";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AnalysisView(Variable 1032)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AnalysisView : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnalysisView : "Analysis View";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AnalysisViewEntry(Variable 1033)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AnalysisViewEntry : 365;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnalysisViewEntry : "Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AnalysisViewBudgetEntry(Variable 1034)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AnalysisViewBudgetEntry : 366;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnalysisViewBudgetEntry : "Analysis View Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AdjAddReportingCurr(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AdjAddReportingCurr : 86;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AdjAddReportingCurr : "Adjust Add. Reporting Currency";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupManagement(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupManagement : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupManagement : "User Setup Management";
    //Variable type has not been exported.

    var
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];
        User: Record User;
}


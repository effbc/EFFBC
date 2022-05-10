tableextension 70148 CurrencyExt extends Currency
{
    // version NAVW19.00.00.51640,NAVIN9.00.00.51640

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Adjusted"(Field 3)". Please convert manually.


        //Unsupported feature: Change DecimalPlaces on ""Amount Rounding Precision"(Field 13)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Amount Decimal Places"(Field 17)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Unit-Amount Decimal Places"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Filter"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Filter"(Field 22)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cust. Ledg. Entries in Filter"(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cust. Ledg. Entries in Filter"(Field 24)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Customer Balance"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Balance"(Field 25)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Customer Outstanding Orders"(Field 26)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Customer Outstanding Orders"(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Outstanding Orders"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Customer Shipped Not Invoiced"(Field 27)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Customer Shipped Not Invoiced"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Shipped Not Invoiced"(Field 27)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Customer Balance Due"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Balance Due"(Field 28)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Ledg. Entries in Filter"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Ledg. Entries in Filter"(Field 29)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Balance"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Balance"(Field 30)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Outstanding Orders"(Field 31)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Vendor Outstanding Orders"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Outstanding Orders"(Field 31)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Amt. Rcd. Not Invoiced"(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Vendor Amt. Rcd. Not Invoiced"(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Amt. Rcd. Not Invoiced"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Balance Due"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Balance Due"(Field 33)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Customer Balance (LCY)"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Balance (LCY)"(Field 34)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Vendor Balance (LCY)"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Balance (LCY)"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Factor"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Payment Tolerance %"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Max. Payment Tolerance Amount"(Field 55)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Modified Date Time"(Field 57)". Please convert manually.


        //Unsupported feature: CodeModification on "Code(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Symbol = '' THEN
          Symbol := ResolveCurrencySymbol(Code);

        IF (Code <> '') AND (xRec.Code = '') THEN
          UpdateCurrencyExchangeRates.ShowMissingExchangeRatesNotification(Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Symbol = '' then
          Symbol := ResolveCurrencySymbol(Code);

        if (Code <> '') and (xRec.Code = '') then
          UpdateCurrencyExchangeRates.ShowMissingExchangeRatesNotification(Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""ISO Code"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "ISO Code" = '' THEN
          EXIT;
        IF STRLEN("ISO Code") < MAXSTRLEN("ISO Code") THEN
          ERROR(ISOCodeLengthErr,STRLEN("ISO Code"),MAXSTRLEN("ISO Code"),"ISO Code");
        IF NOT TypeHelper.IsAsciiLetter("ISO Code") THEN
          FIELDERROR("ISO Code",ASCIILetterErr);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "ISO Code" = '' then
          exit;
        if StrLen("ISO Code") < MaxStrLen("ISO Code") then
          Error(ISOCodeLengthErr,StrLen("ISO Code"),MaxStrLen("ISO Code"),"ISO Code");
        if not TypeHelper.IsAsciiLetter("ISO Code") then
          FieldError("ISO Code",ASCIILetterErr);
        */
        //end;


        //Unsupported feature: CodeModification on ""ISO Numeric Code"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "ISO Numeric Code" = '' THEN
          EXIT;
        IF STRLEN("ISO Numeric Code") < MAXSTRLEN("ISO Numeric Code") THEN
          ERROR(ISOCodeLengthErr,STRLEN("ISO Numeric Code"),MAXSTRLEN("ISO Numeric Code"),"ISO Numeric Code");
        IF NOT TypeHelper.IsNumeric("ISO Numeric Code") THEN
          FIELDERROR("ISO Numeric Code",NumericErr);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "ISO Numeric Code" = '' then
          exit;
        if StrLen("ISO Numeric Code") < MaxStrLen("ISO Numeric Code") then
          Error(ISOCodeLengthErr,StrLen("ISO Numeric Code"),MaxStrLen("ISO Numeric Code"),"ISO Numeric Code");
        if not TypeHelper.IsNumeric("ISO Numeric Code") then
          FieldError("ISO Numeric Code",NumericErr);
        */
        //end;


        //Unsupported feature: CodeModification on ""Invoice Rounding Precision"(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Amount Rounding Precision" <> 0 THEN
          IF "Invoice Rounding Precision" <> ROUND("Invoice Rounding Precision","Amount Rounding Precision") THEN
            FIELDERROR(
              "Invoice Rounding Precision",
              STRSUBSTNO(Text000,"Amount Rounding Precision"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Amount Rounding Precision" <> 0 then
          if "Invoice Rounding Precision" <> Round("Invoice Rounding Precision","Amount Rounding Precision") then
            FieldError(
              "Invoice Rounding Precision",
              StrSubstNo(Text000,"Amount Rounding Precision"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount Rounding Precision"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Amount Rounding Precision" <> 0 THEN BEGIN
          "Invoice Rounding Precision" := ROUND("Invoice Rounding Precision","Amount Rounding Precision");
          IF "Amount Rounding Precision" > "Invoice Rounding Precision" THEN
            "Invoice Rounding Precision" := "Amount Rounding Precision";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Amount Rounding Precision" <> 0 then begin
          "Invoice Rounding Precision" := Round("Invoice Rounding Precision","Amount Rounding Precision");
          if "Amount Rounding Precision" > "Invoice Rounding Precision" then
            "Invoice Rounding Precision" := "Amount Rounding Precision";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Max. VAT Difference Allowed"(Field 52).OnValidate". Please convert manually.

        //trigger  VAT Difference Allowed"(Field 52)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Max. VAT Difference Allowed" <> ROUND("Max. VAT Difference Allowed","Amount Rounding Precision") THEN
          ERROR(
            Text001,
            FIELDCAPTION("Max. VAT Difference Allowed"),"Amount Rounding Precision");

        "Max. VAT Difference Allowed" := ABS("Max. VAT Difference Allowed");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Max. VAT Difference Allowed" <> Round("Max. VAT Difference Allowed","Amount Rounding Precision") then
          Error(
            Text001,
            FieldCaption("Max. VAT Difference Allowed"),"Amount Rounding Precision");

        "Max. VAT Difference Allowed" := Abs("Max. VAT Difference Allowed");
        */
        //end;
        field(13700; "Currency Numeric Description"; Code[10])
        {
            CaptionML = ENU = 'Currency Numeric Description',
                        ENN = 'Currency Numeric Description';
            DataClassification = ToBeClassified;
        }
        field(13701; "Currency Decimal Description"; Code[10])
        {
            CaptionML = ENU = 'Currency Decimal Description',
                        ENN = 'Currency Decimal Description';
            DataClassification = ToBeClassified;
        }
        field(13702; "Excise Rounding Type"; Option)
        {
            CaptionML = ENU = 'Excise Rounding Type',
                        ENN = 'Excise Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(13703; "TDS Rounding Type"; Option)
        {
            CaptionML = ENU = 'TDS Rounding Type',
                        ENN = 'TDS Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(13704; "Excise Rounding Precision"; Decimal)
        {
            AutoFormatExpression = Code;
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Rounding Precision',
                        ENN = 'Excise Rounding Precision';
            DataClassification = ToBeClassified;
            InitValue = 1;
        }
        field(13705; "TDS Rounding Precision"; Decimal)
        {
            AutoFormatExpression = Code;
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Rounding Precision',
                        ENN = 'TDS Rounding Precision';
            DataClassification = ToBeClassified;
            InitValue = 1;
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
            AutoFormatExpression = Code;
            AutoFormatType = 1;
            CaptionML = ENU = 'TCS Rounding Precision',
                        ENN = 'TCS Rounding Precision';
            DataClassification = ToBeClassified;
            InitValue = 1;
        }
        field(16600; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16601; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.

    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CustLedgEntry.SETRANGE(Open,TRUE);
    CustLedgEntry.SETRANGE("Currency Code",Code);
    IF NOT CustLedgEntry.ISEMPTY THEN
      ERROR(Text002,CustLedgEntry.TABLECAPTION,TABLECAPTION,Code);

    VendLedgEntry.SETRANGE(Open,TRUE);
    VendLedgEntry.SETRANGE("Currency Code",Code);
    IF NOT VendLedgEntry.ISEMPTY THEN
      ERROR(Text002,VendLedgEntry.TABLECAPTION,TABLECAPTION,Code);

    CurrExchRate.SETRANGE("Currency Code",Code);
    CurrExchRate.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CustLedgEntry.SetRange(Open,true);
    CustLedgEntry.SetRange("Currency Code",Code);
    if not CustLedgEntry.IsEmpty then
      Error(Text002,CustLedgEntry.TableCaption,TableCaption,Code);

    VendLedgEntry.SetRange(Open,true);
    VendLedgEntry.SetRange("Currency Code",Code);
    if not VendLedgEntry.IsEmpty then
      Error(Text002,VendLedgEntry.TableCaption,TableCaption,Code);

    CurrExchRate.SetRange("Currency Code",Code);
    CurrExchRate.DeleteAll;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD(Code);

    "Last Modified Date Time" := CURRENTDATETIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField(Code);

    "Last Modified Date Time" := CurrentDateTime;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    "Last Modified Date Time" := CURRENTDATETIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    "Last Modified Date Time" := CurrentDateTime;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    "Last Modified Date Time" := CURRENTDATETIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    "Last Modified Date Time" := CurrentDateTime;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Code(Field 1).OnValidate.UpdateCurrencyExchangeRates(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Code : 1281;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Code : "Update Currency Exchange Rates";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CustLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.VendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.VendLedgEntry : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.VendLedgEntry : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckGLAcc(PROCEDURE 1).GLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckGLAcc : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckGLAcc : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResolveCurrencySymbol(PROCEDURE 9).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResolveCurrencySymbol : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResolveCurrencySymbol : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResolveCurrencyDescription(PROCEDURE 10).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResolveCurrencyDescription : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResolveCurrencyDescription : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResolveGLCurrencySymbol(PROCEDURE 11).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResolveGLCurrencySymbol : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResolveGLCurrencySymbol : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TypeHelper(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TypeHelper : 10;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TypeHelper : "Type Helper";
    //Variable type has not been exported.
}


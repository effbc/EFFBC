tableextension 70215 StandardGeneralJournalLineExt extends "Standard General Journal Line"
{
    // version NAVW19.00.00.51640

    fields
    {

        //Unsupported feature: Change NotBlank on ""Journal Template Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Journal Template Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Account Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Account No."(Field 4)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT %"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 11)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Balance (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Factor"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to/Pay-to No."(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job No."(Field 42)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Gen. Posting Type"(Field 57)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Calculation Type"(Field 60)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 63)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Gen. Posting Type"(Field 64)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. VAT Calculation Type"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT Calculation Type"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT %"(Field 68)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bank Payment Type"(Field 70)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 78)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to/Order Address Code"(Field 110)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Difference"(Field 111)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT Difference"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""IC Partner Code"(Field 113)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to/Buy-from No."(Field 118)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""Account Type"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner"]) AND
           ("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner"])
        THEN
          ERROR(
            Text000,
            FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type"));

        VALIDATE("Account No.",'');
        VALIDATE("IC Partner G/L Acc. No.",'');

        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] THEN BEGIN
          VALIDATE("Gen. Posting Type","Gen. Posting Type"::" ");
          VALIDATE("Gen. Bus. Posting Group",'');
          VALIDATE("Gen. Prod. Posting Group",'');
        END ELSE
          IF "Bal. Account Type" IN [
                                     "Bal. Account Type"::"G/L Account","Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"]
          THEN
            VALIDATE("Payment Terms Code",'');
        UpdateSource;

        IF xRec."Account Type" IN
           [xRec."Account Type"::Customer,xRec."Account Type"::Vendor]
        THEN BEGIN
          "Bill-to/Pay-to No." := '';
          "Ship-to/Order Address Code" := '';
          "Sell-to/Buy-from No." := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner"]) and
           ("Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner"])
        then
          Error(
            Text000,
            FieldCaption("Account Type"),FieldCaption("Bal. Account Type"));

        Validate("Account No.",'');
        Validate("IC Partner G/L Acc. No.",'');

        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then begin
          Validate("Gen. Posting Type","Gen. Posting Type"::" ");
          Validate("Gen. Bus. Posting Group",'');
          Validate("Gen. Prod. Posting Group",'');
        end else
          if "Bal. Account Type" in [
                                     "Bal. Account Type"::"G/L Account","Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"]
          then
            Validate("Payment Terms Code",'');
        UpdateSource;

        if xRec."Account Type" in
           [xRec."Account Type"::Customer,xRec."Account Type"::Vendor]
        then begin
        #27..29
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Account No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"IC Partner"] THEN
          "IC Partner Code" := '';

        IF "Account No." = '' THEN BEGIN
          UpdateLineBalance;
          UpdateSource;
          CreateDim(
            DimMgt.TypeToTableID1("Account Type"),"Account No.",
            DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
            DATABASE::Job,"Job No.",
            DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
            DATABASE::Campaign,"Campaign No.");
          IF xRec."Account No." <> '' THEN BEGIN
            "Gen. Posting Type" := "Gen. Posting Type"::" ";
            "Gen. Bus. Posting Group" := '';
            "Gen. Prod. Posting Group" := '';
            "VAT Bus. Posting Group" := '';
            "VAT Prod. Posting Group" := '';
            "Tax Area Code" := '';
            "Tax Liable" := FALSE;
            "Tax Group Code" := '';
          END;
          EXIT;
        END;

        CASE "Account Type" OF
          "Account Type"::"G/L Account":
            GetGLAccount;
          "Account Type"::Customer:
        #30..35
            GetFAAccount;
          "Account Type"::"IC Partner":
            GetICPartnerAccount;
        END;

        VALIDATE("Currency Code");
        VALIDATE("VAT Prod. Posting Group");
        UpdateLineBalance;
        UpdateSource;
        CreateDim(
        #46..48
          DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
          DATABASE::Campaign,"Campaign No.");

        VALIDATE("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"IC Partner"] then
          "IC Partner Code" := '';

        if "Account No." = '' then begin
        #5..12
          if xRec."Account No." <> '' then begin
        #14..19
            "Tax Liable" := false;
            "Tax Group Code" := '';
          end;
          exit;
        end;

        case "Account Type" of
        #27..38
        end;

        Validate("Currency Code");
        Validate("VAT Prod. Posting Group");
        #43..51
        Validate("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        */
        //end;


        //Unsupported feature: CodeModification on ""Document Type"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Payment Terms Code");
        IF "Account No." <> '' THEN
          CheckAccount("Account Type","Account No.");
        IF "Bal. Account No." <> '' THEN
          CheckAccount("Bal. Account Type","Bal. Account No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Payment Terms Code");
        if "Account No." <> '' then
          CheckAccount("Account Type","Account No.");
        if "Bal. Account No." <> '' then
          CheckAccount("Bal. Account Type","Bal. Account No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT %"(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            "VAT Amount" :=
              ROUND(
                Amount * "VAT %" / (100 + "VAT %"),
                Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
          "VAT Calculation Type"::"Full VAT":
            "VAT Amount" := Amount;
          "VAT Calculation Type"::"Sales Tax":
            IF ("Gen. Posting Type" = "Gen. Posting Type"::Purchase) AND
               "Use Tax"
            THEN BEGIN
              "VAT Amount" := 0;
              "VAT %" := 0;
            END ELSE BEGIN
              "VAT Amount" :=
                Amount -
                SalesTaxCalculate.ReverseCalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",
                  WORKDATE,Amount,Quantity,"Currency Factor");
              IF Amount - "VAT Amount" <> 0 THEN
                "VAT %" := ROUND(100 * "VAT Amount" / (Amount - "VAT Amount"),0.00001)
              ELSE
                "VAT %" := 0;
              "VAT Amount" :=
                ROUND("VAT Amount",Currency."Amount Rounding Precision");
            END;
        END;
        "VAT Base Amount" := Amount - "VAT Amount";
        "VAT Difference" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        case "VAT Calculation Type" of
        #3..5
              Round(
        #7..11
            if ("Gen. Posting Type" = "Gen. Posting Type"::Purchase) and
               "Use Tax"
            then begin
              "VAT Amount" := 0;
              "VAT %" := 0;
            end else begin
        #18..21
                  WorkDate,Amount,Quantity,"Currency Factor");
              if Amount - "VAT Amount" <> 0 then
                "VAT %" := Round(100 * "VAT Amount" / (Amount - "VAT Amount"),0.00001)
              else
                "VAT %" := 0;
              "VAT Amount" :=
                Round("VAT Amount",Currency."Amount Rounding Precision");
            end;
        end;
        "VAT Base Amount" := Amount - "VAT Amount";
        "VAT Difference" := 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Account No."(Field 11).OnValidate". Please convert manually.

        //trigger  Account No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,
                                        "Bal. Account Type"::"IC Partner"]
        THEN
          "IC Partner Code" := '';

        IF "Bal. Account No." = '' THEN BEGIN
          UpdateLineBalance;
          UpdateSource;
          CreateDim(
            DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
            DimMgt.TypeToTableID1("Account Type"),"Account No.",
            DATABASE::Job,"Job No.",
            DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
            DATABASE::Campaign,"Campaign No.");
          IF xRec."Bal. Account No." <> '' THEN BEGIN
            "Bal. Gen. Posting Type" := "Bal. Gen. Posting Type"::" ";
            "Bal. Gen. Bus. Posting Group" := '';
            "Bal. Gen. Prod. Posting Group" := '';
            "Bal. VAT Bus. Posting Group" := '';
            "Bal. VAT Prod. Posting Group" := '';
            "Bal. Tax Area Code" := '';
            "Bal. Tax Liable" := FALSE;
            "Bal. Tax Group Code" := '';
          END;
          EXIT;
        END;

        CASE "Bal. Account Type" OF
          "Bal. Account Type"::"G/L Account":
            GetGLBalAccount;
          "Bal. Account Type"::Customer:
        #32..37
            GetFABalAccount;
          "Bal. Account Type"::"IC Partner":
            GetICPartnerBalAccount;
        END;

        VALIDATE("Currency Code");
        VALIDATE("Bal. VAT Prod. Posting Group");
        UpdateLineBalance;
        UpdateSource;
        CreateDim(
        #48..50
          DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
          DATABASE::Campaign,"Campaign No.");

        VALIDATE("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,
                                        "Bal. Account Type"::"IC Partner"]
        then
          "IC Partner Code" := '';

        if "Bal. Account No." = '' then begin
        #7..14
          if xRec."Bal. Account No." <> '' then begin
        #16..21
            "Bal. Tax Liable" := false;
            "Bal. Tax Group Code" := '';
          end;
          exit;
        end;

        case "Bal. Account Type" of
        #29..40
        end;

        Validate("Currency Code");
        Validate("Bal. VAT Prod. Posting Group");
        #45..53
        Validate("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        */
        //end;


        //Unsupported feature: CodeModification on ""Currency Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account Type" = "Bal. Account Type"::"Bank Account" THEN BEGIN
          IF BankAcc.GET("Bal. Account No.") AND (BankAcc."Currency Code" <> '')THEN
            BankAcc.TESTFIELD("Currency Code","Currency Code");
        END;
        IF "Account Type" = "Account Type"::"Bank Account" THEN BEGIN
          IF BankAcc.GET("Account No.") AND (BankAcc."Currency Code" <> '') THEN
            BankAcc.TESTFIELD("Currency Code","Currency Code");
        END;

        IF "Currency Code" <> '' THEN BEGIN
          GetCurrency;
          IF ("Currency Code" <> xRec."Currency Code") OR
             (CurrFieldNo = FIELDNO("Currency Code")) OR
             ("Currency Factor" = 0)
          THEN
            "Currency Factor" :=
              CurrExchRate.ExchangeRate(WORKDATE,"Currency Code");
        END ELSE
          "Currency Factor" := 0;
        VALIDATE("Currency Factor");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account Type" = "Bal. Account Type"::"Bank Account" then begin
          if BankAcc.Get("Bal. Account No.") and (BankAcc."Currency Code" <> '')then
            BankAcc.TestField("Currency Code","Currency Code");
        end;
        if "Account Type" = "Account Type"::"Bank Account" then begin
          if BankAcc.Get("Account No.") and (BankAcc."Currency Code" <> '') then
            BankAcc.TestField("Currency Code","Currency Code");
        end;

        if "Currency Code" <> '' then begin
          GetCurrency;
          if ("Currency Code" <> xRec."Currency Code") or
             (CurrFieldNo = FieldNo("Currency Code")) or
             ("Currency Factor" = 0)
          then
            "Currency Factor" :=
              CurrExchRate.ExchangeRate(WorkDate,"Currency Code");
        end else
          "Currency Factor" := 0;
        Validate("Currency Factor");
        */
        //end;


        //Unsupported feature: CodeModification on "Amount(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        IF "Currency Code" = '' THEN
          "Amount (LCY)" := Amount
        ELSE
          "Amount (LCY)" := ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                WORKDATE,"Currency Code",
                Amount,"Currency Factor"));

        Amount := ROUND(Amount,Currency."Amount Rounding Precision");

        VALIDATE("VAT %");
        VALIDATE("Bal. VAT %");
        UpdateLineBalance;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        if "Currency Code" = '' then
          "Amount (LCY)" := Amount
        else
          "Amount (LCY)" := Round(
              CurrExchRate.ExchangeAmtFCYToLCY(
                WorkDate,"Currency Code",
                Amount,"Currency Factor"));

        Amount := Round(Amount,Currency."Amount Rounding Precision");

        Validate("VAT %");
        Validate("Bal. VAT %");
        UpdateLineBalance;
        */
        //end;


        //Unsupported feature: CodeModification on ""Debit Amount"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        "Debit Amount" := ROUND("Debit Amount",Currency."Amount Rounding Precision");
        Correction := "Debit Amount" < 0;
        Amount := "Debit Amount";
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        "Debit Amount" := Round("Debit Amount",Currency."Amount Rounding Precision");
        Correction := "Debit Amount" < 0;
        Amount := "Debit Amount";
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on ""Credit Amount"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        "Credit Amount" := ROUND("Credit Amount",Currency."Amount Rounding Precision");
        Correction := "Credit Amount" < 0;
        Amount := -"Credit Amount";
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        "Credit Amount" := Round("Credit Amount",Currency."Amount Rounding Precision");
        Correction := "Credit Amount" < 0;
        Amount := -"Credit Amount";
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount (LCY)"(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Currency Code" = '' THEN BEGIN
          Amount := "Amount (LCY)";
          VALIDATE(Amount);
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Currency Code" = '' then begin
          Amount := "Amount (LCY)";
          Validate(Amount);
        end
        */
        //end;


        //Unsupported feature: CodeModification on ""Currency Factor"(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Currency Code" = '') AND ("Currency Factor" <> 0) THEN
          FIELDERROR("Currency Factor",STRSUBSTNO(Text002,FIELDCAPTION("Currency Code")));
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Currency Code" = '') and ("Currency Factor" <> 0) then
          FieldError("Currency Factor",StrSubstNo(Text002,FieldCaption("Currency Code")));
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to/Pay-to No."(Field 22).OnValidate". Please convert manually.

        //trigger "(Field 22)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bill-to/Pay-to No." <> xRec."Bill-to/Pay-to No." THEN
          "Ship-to/Order Address Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bill-to/Pay-to No." <> xRec."Bill-to/Pay-to No." then
          "Ship-to/Order Address Code" := '';
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 43).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Amount"(Field 44).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT ("VAT Calculation Type" IN
                ["VAT Calculation Type"::"Normal VAT","VAT Calculation Type"::"Reverse Charge VAT"])
        THEN
          ERROR(
            Text010,FIELDCAPTION("VAT Calculation Type"),
            "VAT Calculation Type"::"Normal VAT","VAT Calculation Type"::"Reverse Charge VAT");
        IF "VAT Amount" <> 0 THEN BEGIN
          TESTFIELD("VAT %");
          TESTFIELD(Amount);
        END;

        GetCurrency;
        "VAT Amount" := ROUND("VAT Amount",Currency."Amount Rounding Precision",Currency.VATRoundingDirection);

        IF "VAT Amount" * Amount < 0 THEN
          IF "VAT Amount" > 0 THEN
            ERROR(Text011,FIELDCAPTION("VAT Amount"))
          ELSE
            ERROR(Text012,FIELDCAPTION("VAT Amount"));

        "VAT Base Amount" := Amount - "VAT Amount";

        "VAT Difference" :=
          "VAT Amount" -
          ROUND(
            Amount * "VAT %" / (100 + "VAT %"),
            Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
        IF ABS("VAT Difference") > Currency."Max. VAT Difference Allowed" THEN
          ERROR(Text013,FIELDCAPTION("VAT Difference"),Currency."Max. VAT Difference Allowed");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not ("VAT Calculation Type" in
                ["VAT Calculation Type"::"Normal VAT","VAT Calculation Type"::"Reverse Charge VAT"])
        then
          Error(
            Text010,FieldCaption("VAT Calculation Type"),
            "VAT Calculation Type"::"Normal VAT","VAT Calculation Type"::"Reverse Charge VAT");
        if "VAT Amount" <> 0 then begin
          TestField("VAT %");
          TestField(Amount);
        end;

        GetCurrency;
        "VAT Amount" := Round("VAT Amount",Currency."Amount Rounding Precision",Currency.VATRoundingDirection);

        if "VAT Amount" * Amount < 0 then
          if "VAT Amount" > 0 then
            Error(Text011,FieldCaption("VAT Amount"))
          else
            Error(Text012,FieldCaption("VAT Amount"));
        #20..24
          Round(
            Amount * "VAT %" / (100 + "VAT %"),
            Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
        if Abs("VAT Difference") > Currency."Max. VAT Difference Allowed" then
          Error(Text013,FieldCaption("VAT Difference"),Currency."Max. VAT Difference Allowed");
        */
        //end;


        //Unsupported feature: CodeModification on ""Payment Terms Code"(Field 47).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Payment Discount %" := 0;
        IF ("Account Type" <> "Account Type"::"G/L Account") OR
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account")
        THEN
          CASE "Document Type" OF
            "Document Type"::Invoice:
              IF "Payment Terms Code" <> '' THEN BEGIN
                PaymentTerms.GET("Payment Terms Code");
                "Payment Discount %" := PaymentTerms."Discount %";
              END;
            "Document Type"::"Credit Memo":
              IF "Payment Terms Code" <> '' THEN BEGIN
                PaymentTerms.GET("Payment Terms Code");
                IF PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" THEN
                  "Payment Discount %" := PaymentTerms."Discount %";
              END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Payment Discount %" := 0;
        if ("Account Type" <> "Account Type"::"G/L Account") or
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account")
        then
          case "Document Type" of
            "Document Type"::Invoice:
              if "Payment Terms Code" <> '' then begin
                PaymentTerms.Get("Payment Terms Code");
                "Payment Discount %" := PaymentTerms."Discount %";
              end;
            "Document Type"::"Credit Memo":
              if "Payment Terms Code" <> '' then begin
                PaymentTerms.Get("Payment Terms Code");
                if PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" then
                  "Payment Discount %" := PaymentTerms."Discount %";
              end;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Posting Type"(Field 57).OnValidate". Please convert manually.

        //trigger  Posting Type"(Field 57)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] THEN
          TESTFIELD("Gen. Posting Type","Gen. Posting Type"::" ");
        IF ("Gen. Posting Type" = "Gen. Posting Type"::Settlement) AND (CurrFieldNo <> 0) THEN
          ERROR(Text006,"Gen. Posting Type");
        IF "Gen. Posting Type" > 0 THEN
          VALIDATE("VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("Gen. Posting Type","Gen. Posting Type"::" ");
        if ("Gen. Posting Type" = "Gen. Posting Type"::Settlement) and (CurrFieldNo <> 0) then
          Error(Text006,"Gen. Posting Type");
        if "Gen. Posting Type" > 0 then
          Validate("VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 58).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] THEN
          TESTFIELD("Gen. Bus. Posting Group",'');
        IF xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            VALIDATE("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("Gen. Bus. Posting Group",'');
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Prod. Posting Group"(Field 59).OnValidate". Please convert manually.

        //trigger  Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] THEN
          TESTFIELD("Gen. Prod. Posting Group",'');
        IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("Gen. Prod. Posting Group",'');
        if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Account Type"(Field 63).OnValidate". Please convert manually.

        //trigger  Account Type"(Field 63)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner"]) AND
           ("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner"])
        THEN
          ERROR(
            Text000,
            FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type"));

        VALIDATE("Bal. Account No.",'');
        IF "Bal. Account Type" IN
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"]
        THEN BEGIN
          VALIDATE("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::" ");
          VALIDATE("Bal. Gen. Bus. Posting Group",'');
          VALIDATE("Bal. Gen. Prod. Posting Group",'');
        END ELSE
          IF "Account Type" IN [
                                "Bal. Account Type"::"G/L Account","Account Type"::"Bank Account","Account Type"::"Fixed Asset"]
          THEN
            VALIDATE("Payment Terms Code",'');
        UpdateSource;

        IF xRec."Bal. Account Type" IN
           [xRec."Bal. Account Type"::Customer,xRec."Bal. Account Type"::Vendor]
        THEN BEGIN
          "Bill-to/Pay-to No." := '';
          "Ship-to/Order Address Code" := '';
          "Sell-to/Buy-from No." := '';
        END;
        IF ("Account Type" IN [
                               "Account Type"::"G/L Account","Account Type"::"Bank Account","Account Type"::"Fixed Asset"]) AND
           ("Bal. Account Type" IN [
                                    "Bal. Account Type"::"G/L Account","Bal. Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"])
        THEN
          VALIDATE("Payment Terms Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner"]) and
           ("Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner"])
        then
          Error(
            Text000,
            FieldCaption("Account Type"),FieldCaption("Bal. Account Type"));

        Validate("Bal. Account No.",'');
        if "Bal. Account Type" in
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"]
        then begin
          Validate("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::" ");
          Validate("Bal. Gen. Bus. Posting Group",'');
          Validate("Bal. Gen. Prod. Posting Group",'');
        end else
          if "Account Type" in [
                                "Bal. Account Type"::"G/L Account","Account Type"::"Bank Account","Account Type"::"Fixed Asset"]
          then
            Validate("Payment Terms Code",'');
        UpdateSource;

        if xRec."Bal. Account Type" in
           [xRec."Bal. Account Type"::Customer,xRec."Bal. Account Type"::Vendor]
        then begin
        #27..29
        end;
        if ("Account Type" in [
                               "Account Type"::"G/L Account","Account Type"::"Bank Account","Account Type"::"Fixed Asset"]) and
           ("Bal. Account Type" in [
                                    "Bal. Account Type"::"G/L Account","Bal. Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"])
        then
          Validate("Payment Terms Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Gen. Posting Type"(Field 64).OnValidate". Please convert manually.

        //trigger  Gen();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"] THEN
          TESTFIELD("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::" ");
        IF ("Bal. Gen. Posting Type" = "Gen. Posting Type"::Settlement) AND (CurrFieldNo <> 0) THEN
          ERROR(Text006,"Bal. Gen. Posting Type");
        IF "Bal. Gen. Posting Type" > 0 THEN
          VALIDATE("Bal. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"] then
          TestField("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::" ");
        if ("Bal. Gen. Posting Type" = "Gen. Posting Type"::Settlement) and (CurrFieldNo <> 0) then
          Error(Text006,"Bal. Gen. Posting Type");
        if "Bal. Gen. Posting Type" > 0 then
          Validate("Bal. VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Gen. Bus. Posting Group"(Field 65).OnValidate". Please convert manually.

        //trigger  Gen();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"] THEN
          TESTFIELD("Bal. Gen. Bus. Posting Group",'');
        IF xRec."Bal. Gen. Bus. Posting Group" <> "Bal. Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Bal. Gen. Bus. Posting Group") THEN
            VALIDATE("Bal. VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"] then
          TestField("Bal. Gen. Bus. Posting Group",'');
        if xRec."Bal. Gen. Bus. Posting Group" <> "Bal. Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Bal. Gen. Bus. Posting Group") then
            Validate("Bal. VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Gen. Prod. Posting Group"(Field 66).OnValidate". Please convert manually.

        //trigger  Gen();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"] THEN
          TESTFIELD("Bal. Gen. Prod. Posting Group",'');
        IF xRec."Bal. Gen. Prod. Posting Group" <> "Bal. Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Bal. Gen. Prod. Posting Group") THEN
            VALIDATE("Bal. VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"] then
          TestField("Bal. Gen. Prod. Posting Group",'');
        if xRec."Bal. Gen. Prod. Posting Group" <> "Bal. Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Bal. Gen. Prod. Posting Group") then
            Validate("Bal. VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. VAT %"(Field 68).OnValidate". Please convert manually.

        //trigger  VAT %"(Field 68)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        CASE "Bal. VAT Calculation Type" OF
          "Bal. VAT Calculation Type"::"Normal VAT",
          "Bal. VAT Calculation Type"::"Reverse Charge VAT":
            "Bal. VAT Amount" :=
              ROUND(
                -Amount * "Bal. VAT %" / (100 + "Bal. VAT %"),
                Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
          "Bal. VAT Calculation Type"::"Full VAT":
            "Bal. VAT Amount" := -Amount;
          "Bal. VAT Calculation Type"::"Sales Tax":
            IF ("Bal. Gen. Posting Type" = "Bal. Gen. Posting Type"::Purchase) AND
               "Bal. Use Tax"
            THEN BEGIN
              "Bal. VAT Amount" := 0;
              "Bal. VAT %" := 0;
            END ELSE BEGIN
              "Bal. VAT Amount" :=
                -(Amount -
                  SalesTaxCalculate.ReverseCalculateTax(
                    "Bal. Tax Area Code","Bal. Tax Group Code","Bal. Tax Liable",
                    WORKDATE,Amount,Quantity,"Currency Factor"));
              IF Amount + "Bal. VAT Amount" <> 0 THEN
                "Bal. VAT %" := ROUND(100 * -"Bal. VAT Amount" / (Amount + "Bal. VAT Amount"),0.00001)
              ELSE
                "Bal. VAT %" := 0;
              "Bal. VAT Amount" :=
                ROUND("Bal. VAT Amount",Currency."Amount Rounding Precision");
            END;
        END;
        "Bal. VAT Base Amount" := -(Amount + "Bal. VAT Amount");
        "Bal. VAT Difference" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        case "Bal. VAT Calculation Type" of
        #3..5
              Round(
        #7..11
            if ("Bal. Gen. Posting Type" = "Bal. Gen. Posting Type"::Purchase) and
               "Bal. Use Tax"
            then begin
              "Bal. VAT Amount" := 0;
              "Bal. VAT %" := 0;
            end else begin
        #18..21
                    WorkDate,Amount,Quantity,"Currency Factor"));
              if Amount + "Bal. VAT Amount" <> 0 then
                "Bal. VAT %" := Round(100 * -"Bal. VAT Amount" / (Amount + "Bal. VAT Amount"),0.00001)
              else
                "Bal. VAT %" := 0;
              "Bal. VAT Amount" :=
                Round("Bal. VAT Amount",Currency."Amount Rounding Precision");
            end;
        end;
        "Bal. VAT Base Amount" := -(Amount + "Bal. VAT Amount");
        "Bal. VAT Difference" := 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. VAT Amount"(Field 69).OnValidate". Please convert manually.

        //trigger  VAT Amount"(Field 69)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT ("Bal. VAT Calculation Type" IN
                ["Bal. VAT Calculation Type"::"Normal VAT","Bal. VAT Calculation Type"::"Reverse Charge VAT"])
        THEN
          ERROR(
            Text010,FIELDCAPTION("Bal. VAT Calculation Type"),
            "Bal. VAT Calculation Type"::"Normal VAT","Bal. VAT Calculation Type"::"Reverse Charge VAT");
        IF "Bal. VAT Amount" <> 0 THEN BEGIN
          TESTFIELD("Bal. VAT %");
          TESTFIELD(Amount);
        END;

        GetCurrency;
        "Bal. VAT Amount" :=
          ROUND("Bal. VAT Amount",Currency."Amount Rounding Precision",Currency.VATRoundingDirection);

        IF "Bal. VAT Amount" * Amount > 0 THEN
          IF "Bal. VAT Amount" > 0 THEN
            ERROR(Text011,FIELDCAPTION("Bal. VAT Amount"))
          ELSE
            ERROR(Text012,FIELDCAPTION("Bal. VAT Amount"));

        "Bal. VAT Base Amount" := -(Amount + "Bal. VAT Amount");

        "Bal. VAT Difference" :=
          "Bal. VAT Amount" -
          ROUND(
            -Amount * "Bal. VAT %" / (100 + "Bal. VAT %"),
            Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
        IF ABS("Bal. VAT Difference") > Currency."Max. VAT Difference Allowed" THEN
          ERROR(
            Text013,FIELDCAPTION("Bal. VAT Difference"),Currency."Max. VAT Difference Allowed");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not ("Bal. VAT Calculation Type" in
                ["Bal. VAT Calculation Type"::"Normal VAT","Bal. VAT Calculation Type"::"Reverse Charge VAT"])
        then
          Error(
            Text010,FieldCaption("Bal. VAT Calculation Type"),
            "Bal. VAT Calculation Type"::"Normal VAT","Bal. VAT Calculation Type"::"Reverse Charge VAT");
        if "Bal. VAT Amount" <> 0 then begin
          TestField("Bal. VAT %");
          TestField(Amount);
        end;
        #11..13
          Round("Bal. VAT Amount",Currency."Amount Rounding Precision",Currency.VATRoundingDirection);

        if "Bal. VAT Amount" * Amount > 0 then
          if "Bal. VAT Amount" > 0 then
            Error(Text011,FieldCaption("Bal. VAT Amount"))
          else
            Error(Text012,FieldCaption("Bal. VAT Amount"));
        #21..25
          Round(
            -Amount * "Bal. VAT %" / (100 + "Bal. VAT %"),
            Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
        if Abs("Bal. VAT Difference") > Currency."Max. VAT Difference Allowed" then
          Error(
            Text013,FieldCaption("Bal. VAT Difference"),Currency."Max. VAT Difference Allowed");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bank Payment Type"(Field 70).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Bank Payment Type" <> "Bank Payment Type"::" ") AND
           ("Account Type" <> "Account Type"::"Bank Account") AND
           ("Bal. Account Type" <> "Bal. Account Type"::"Bank Account")
        THEN
          ERROR(
            Text007,
            FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type"));
        IF ("Account Type" = "Account Type"::"Fixed Asset") AND
           ("Bank Payment Type" <> "Bank Payment Type"::" ")
        THEN
          FIELDERROR("Account Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Bank Payment Type" <> "Bank Payment Type"::" ") and
           ("Account Type" <> "Account Type"::"Bank Account") and
           ("Bal. Account Type" <> "Bal. Account Type"::"Bank Account")
        then
          Error(
            Text007,
            FieldCaption("Account Type"),FieldCaption("Bal. Account Type"));
        if ("Account Type" = "Account Type"::"Fixed Asset") and
           ("Bank Payment Type" <> "Bank Payment Type"::" ")
        then
          FieldError("Account Type");
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Base Amount"(Field 71).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        "VAT Base Amount" := ROUND("VAT Base Amount",Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            Amount :=
              ROUND(
                "VAT Base Amount" * (1 + "VAT %" / 100),
                Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
          "VAT Calculation Type"::"Full VAT":
            IF "VAT Base Amount" <> 0 THEN
              FIELDERROR(
                "VAT Base Amount",
                STRSUBSTNO(
                  Text008,FIELDCAPTION("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            IF ("Gen. Posting Type" = "Gen. Posting Type"::Purchase) AND
               "Use Tax"
            THEN BEGIN
              "VAT Amount" := 0;
              "VAT %" := 0;
              Amount := "VAT Base Amount" + "VAT Amount";
            END ELSE BEGIN
              "VAT Amount" :=
                SalesTaxCalculate.CalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",WORKDATE,
                  "VAT Base Amount",Quantity,"Currency Factor");
              IF "VAT Base Amount" <> 0 THEN
                "VAT %" := ROUND(100 * "VAT Amount" / "VAT Base Amount",0.00001)
              ELSE
                "VAT %" := 0;
              "VAT Amount" :=
                ROUND("VAT Amount",Currency."Amount Rounding Precision");
              Amount := "VAT Base Amount" + "VAT Amount";
            END;
        END;
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        "VAT Base Amount" := Round("VAT Base Amount",Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
        #4..6
              Round(
        #8..10
            if "VAT Base Amount" <> 0 then
              FieldError(
                "VAT Base Amount",
                StrSubstNo(
                  Text008,FieldCaption("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            if ("Gen. Posting Type" = "Gen. Posting Type"::Purchase) and
               "Use Tax"
            then begin
        #21..23
            end else begin
              "VAT Amount" :=
                SalesTaxCalculate.CalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",WorkDate,
                  "VAT Base Amount",Quantity,"Currency Factor");
              if "VAT Base Amount" <> 0 then
                "VAT %" := Round(100 * "VAT Amount" / "VAT Base Amount",0.00001)
              else
                "VAT %" := 0;
              "VAT Amount" :=
                Round("VAT Amount",Currency."Amount Rounding Precision");
              Amount := "VAT Base Amount" + "VAT Amount";
            end;
        end;
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. VAT Base Amount"(Field 72).OnValidate". Please convert manually.

        //trigger  VAT Base Amount"(Field 72)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetCurrency;
        "Bal. VAT Base Amount" := ROUND("Bal. VAT Base Amount",Currency."Amount Rounding Precision");
        CASE "Bal. VAT Calculation Type" OF
          "Bal. VAT Calculation Type"::"Normal VAT",
          "Bal. VAT Calculation Type"::"Reverse Charge VAT":
            Amount :=
              ROUND(
                -"Bal. VAT Base Amount" * (1 + "Bal. VAT %" / 100),
                Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
          "Bal. VAT Calculation Type"::"Full VAT":
            IF "Bal. VAT Base Amount" <> 0 THEN
              FIELDERROR(
                "Bal. VAT Base Amount",
                STRSUBSTNO(
                  Text008,FIELDCAPTION("Bal. VAT Calculation Type"),
                  "Bal. VAT Calculation Type"));
          "Bal. VAT Calculation Type"::"Sales Tax":
            IF ("Bal. Gen. Posting Type" = "Bal. Gen. Posting Type"::Purchase) AND
               "Bal. Use Tax"
            THEN BEGIN
              "Bal. VAT Amount" := 0;
              "Bal. VAT %" := 0;
              Amount := -"Bal. VAT Base Amount" - "Bal. VAT Amount";
            END ELSE BEGIN
              "Bal. VAT Amount" :=
                SalesTaxCalculate.CalculateTax(
                  "Bal. Tax Area Code","Bal. Tax Group Code","Bal. Tax Liable",
                  WORKDATE,"Bal. VAT Base Amount",Quantity,"Currency Factor");
              IF "Bal. VAT Base Amount" <> 0 THEN
                "Bal. VAT %" := ROUND(100 * "Bal. VAT Amount" / "Bal. VAT Base Amount",0.00001)
              ELSE
                "Bal. VAT %" := 0;
              "Bal. VAT Amount" :=
                ROUND("Bal. VAT Amount",Currency."Amount Rounding Precision");
              Amount := -"Bal. VAT Base Amount" - "Bal. VAT Amount";
            END;
        END;
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        "Bal. VAT Base Amount" := Round("Bal. VAT Base Amount",Currency."Amount Rounding Precision");
        case "Bal. VAT Calculation Type" of
        #4..6
              Round(
        #8..10
            if "Bal. VAT Base Amount" <> 0 then
              FieldError(
                "Bal. VAT Base Amount",
                StrSubstNo(
                  Text008,FieldCaption("Bal. VAT Calculation Type"),
                  "Bal. VAT Calculation Type"));
          "Bal. VAT Calculation Type"::"Sales Tax":
            if ("Bal. Gen. Posting Type" = "Bal. Gen. Posting Type"::Purchase) and
               "Bal. Use Tax"
            then begin
        #21..23
            end else begin
        #25..27
                  WorkDate,"Bal. VAT Base Amount",Quantity,"Currency Factor");
              if "Bal. VAT Base Amount" <> 0 then
                "Bal. VAT %" := Round(100 * "Bal. VAT Amount" / "Bal. VAT Base Amount",0.00001)
              else
                "Bal. VAT %" := 0;
              "Bal. VAT Amount" :=
                Round("Bal. VAT Amount",Currency."Amount Rounding Precision");
              Amount := -"Bal. VAT Base Amount" - "Bal. VAT Amount";
            end;
        end;
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on "Correction(Field 73).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE(Amount);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate(Amount);
        */
        //end;


        //Unsupported feature: CodeModification on ""Source Type"(Field 78).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Account Type" <> "Account Type"::"G/L Account") AND ("Account No." <> '') OR
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account") AND ("Bal. Account No." <> '')
        THEN
          UpdateSource
        ELSE
          "Source No." := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" <> "Account Type"::"G/L Account") and ("Account No." <> '') or
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account") and ("Bal. Account No." <> '')
        then
          UpdateSource
        else
          "Source No." := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Source No."(Field 79).OnValidate". Please convert manually.

        //trigger "(Field 79)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Account Type" <> "Account Type"::"G/L Account") AND ("Account No." <> '') OR
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account") AND ("Bal. Account No." <> '')
        THEN
          UpdateSource;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" <> "Account Type"::"G/L Account") and ("Account No." <> '') or
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account") and ("Bal. Account No." <> '')
        then
          UpdateSource;
        */
        //end;


        //Unsupported feature: CodeModification on ""Tax Area Code"(Field 82).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Tax Group Code"(Field 84).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Tax Area Code"(Field 86).OnValidate". Please convert manually.

        //trigger  Tax Area Code"(Field 86)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Tax Liable"(Field 87).OnValidate". Please convert manually.

        //trigger  Tax Liable"(Field 87)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Tax Group Code"(Field 88).OnValidate". Please convert manually.

        //trigger  Tax Group Code"(Field 88)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Use Tax"(Field 89).OnValidate". Please convert manually.

        //trigger  Use Tax"(Field 89)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::Purchase);
        VALIDATE("Bal. VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::Purchase);
        Validate("Bal. VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Bus. Posting Group"(Field 90).OnValidate". Please convert manually.

        //trigger  Posting Group"(Field 90)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] THEN
          TESTFIELD("VAT Bus. Posting Group",'');

        VALIDATE("VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("VAT Bus. Posting Group",'');

        Validate("VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Prod. Posting Group"(Field 91).OnValidate". Please convert manually.

        //trigger  Posting Group"(Field 91)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] THEN
          TESTFIELD("VAT Prod. Posting Group",'');

        "VAT %" := 0;
        "VAT Calculation Type" := "VAT Calculation Type"::"Normal VAT";
        IF "Gen. Posting Type" <> 0 THEN BEGIN
          IF NOT VATPostingSetup.GET("VAT Bus. Posting Group","VAT Prod. Posting Group") THEN
            VATPostingSetup.INIT;
          "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
          CASE "VAT Calculation Type" OF
            "VAT Calculation Type"::"Normal VAT":
              "VAT %" := VATPostingSetup."VAT %";
            "VAT Calculation Type"::"Full VAT":
              CASE "Gen. Posting Type" OF
                "Gen. Posting Type"::Sale:
                  TESTFIELD("Account No.",VATPostingSetup.GetSalesAccount(FALSE));
                "Gen. Posting Type"::Purchase:
                  TESTFIELD("Account No.",VATPostingSetup.GetPurchAccount(FALSE));
              END;
          END;
        END;
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("VAT Prod. Posting Group",'');
        #3..5
        if "Gen. Posting Type" <> 0 then begin
          if not VATPostingSetup.Get("VAT Bus. Posting Group","VAT Prod. Posting Group") then
            VATPostingSetup.Init;
          "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
          case "VAT Calculation Type" of
        #11..13
              case "Gen. Posting Type" of
                "Gen. Posting Type"::Sale:
                  TestField("Account No.",VATPostingSetup.GetSalesAccount(false));
                "Gen. Posting Type"::Purchase:
                  TestField("Account No.",VATPostingSetup.GetPurchAccount(false));
              end;
          end;
        end;
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. VAT Bus. Posting Group"(Field 92).OnValidate". Please convert manually.

        //trigger  VAT Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account Type" IN
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"]
        THEN
          TESTFIELD("Bal. VAT Bus. Posting Group",'');

        VALIDATE("Bal. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account Type" in
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"]
        then
          TestField("Bal. VAT Bus. Posting Group",'');

        Validate("Bal. VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. VAT Prod. Posting Group"(Field 93).OnValidate". Please convert manually.

        //trigger  VAT Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account Type" IN
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"]
        THEN
          TESTFIELD("Bal. VAT Prod. Posting Group",'');

        "Bal. VAT %" := 0;
        "Bal. VAT Calculation Type" := "Bal. VAT Calculation Type"::"Normal VAT";
        IF "Bal. Gen. Posting Type" <> 0 THEN BEGIN
          IF NOT VATPostingSetup.GET("Bal. VAT Bus. Posting Group","Bal. VAT Prod. Posting Group") THEN
            VATPostingSetup.INIT;
          "Bal. VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
          CASE "Bal. VAT Calculation Type" OF
            "Bal. VAT Calculation Type"::"Normal VAT":
              "Bal. VAT %" := VATPostingSetup."VAT %";
            "Bal. VAT Calculation Type"::"Full VAT":
              CASE "Bal. Gen. Posting Type" OF
                "Bal. Gen. Posting Type"::Sale:
                  TESTFIELD("Bal. Account No.",VATPostingSetup.GetSalesAccount(FALSE));
                "Bal. Gen. Posting Type"::Purchase:
                  TESTFIELD("Bal. Account No.",VATPostingSetup.GetPurchAccount(FALSE));
              END;
          END;
        END;
        VALIDATE("Bal. VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account Type" in
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"]
        then
          TestField("Bal. VAT Prod. Posting Group",'');
        #5..7
        if "Bal. Gen. Posting Type" <> 0 then begin
          if not VATPostingSetup.Get("Bal. VAT Bus. Posting Group","Bal. VAT Prod. Posting Group") then
            VATPostingSetup.Init;
          "Bal. VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
          case "Bal. VAT Calculation Type" of
        #13..15
              case "Bal. Gen. Posting Type" of
                "Bal. Gen. Posting Type"::Sale:
                  TestField("Bal. Account No.",VATPostingSetup.GetSalesAccount(false));
                "Bal. Gen. Posting Type"::Purchase:
                  TestField("Bal. Account No.",VATPostingSetup.GetPurchAccount(false));
              end;
          end;
        end;
        Validate("Bal. VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Partner G/L Acc. No."(Field 116).OnValidate". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "IC Partner G/L Acc. No." <> '' THEN BEGIN
          GenJnlTemplate.GET("Journal Template Name");
          GenJnlTemplate.TESTFIELD(Type,GenJnlTemplate.Type::Intercompany);
          IF ICGLAccount.GET("IC Partner G/L Acc. No.") THEN
            ICGLAccount.TESTFIELD(Blocked,FALSE);
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "IC Partner G/L Acc. No." <> '' then begin
          GenJnlTemplate.Get("Journal Template Name");
          GenJnlTemplate.TestField(Type,GenJnlTemplate.Type::Intercompany);
          if ICGLAccount.Get("IC Partner G/L Acc. No.") then
            ICGLAccount.TestField(Blocked,false);
        end
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Journal Template Name,Standard Journal Code,Line No."(Key)". Please convert manually.

        key(Key1; "Journal Template Name", "Standard Journal Code", "Line No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text001,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text001,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Currency Code"(Field 12).OnValidate.BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Currency Code" : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Currency Code" : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Payment Terms Code"(Field 47).OnValidate.PaymentTerms(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Payment Terms Code" : 3;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Payment Terms Code" : "Payment Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Gen. Bus. Posting Group"(Field 58).OnValidate.GenBusPostingGrp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Gen. Bus. Posting Group" : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Gen. Bus. Posting Group" : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Gen. Prod. Posting Group"(Field 59).OnValidate.GenProdPostingGrp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Gen. Prod. Posting Group" : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Gen. Prod. Posting Group" : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bal. Gen. Bus. Posting Group"(Field 65).OnValidate.GenBusPostingGrp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bal. Gen. Bus. Posting Group" : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bal. Gen. Bus. Posting Group" : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bal. Gen. Prod. Posting Group"(Field 66).OnValidate.GenProdPostingGrp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bal. Gen. Prod. Posting Group" : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bal. Gen. Prod. Posting Group" : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner G/L Acc. No."(Field 116).OnValidate.ICGLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner G/L Acc. No." : 410;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner G/L Acc. No." : "IC G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner G/L Acc. No."(Field 116).OnValidate.GenJnlTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner G/L Acc. No." : 80;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner G/L Acc. No." : "Gen. Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAccount(PROCEDURE 5).GLAcc(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAccount : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAccount : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAccount(PROCEDURE 5).Cust(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAccount : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAccount : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAccount(PROCEDURE 5).Vend(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAccount : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAccount : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAccount(PROCEDURE 5).ICPartner(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAccount : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAccount : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAccount(PROCEDURE 5).BankAcc(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAccount : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAccount : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAccount(PROCEDURE 5).FA(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAccount : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAccount : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckICPartner(PROCEDURE 128).ICPartner(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckICPartner : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckICPartner : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCurrencyCode(PROCEDURE 4).Cust(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCurrencyCode : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCurrencyCode : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCurrencyCode(PROCEDURE 4).Vend(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCurrencyCode : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCurrencyCode : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCurrencyCode(PROCEDURE 4).BankAcc(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCurrencyCode : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCurrencyCode : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultICPartnerGLAccNo(PROCEDURE 1058).GLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultICPartnerGLAccNo : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultICPartnerGLAccNo : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetGLAccount(PROCEDURE 8).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetGLAccount : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetGLAccount : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetGLBalAccount(PROCEDURE 19).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetGLBalAccount : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetGLBalAccount : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerAccount(PROCEDURE 9).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerAccount : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerAccount : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerAccount(PROCEDURE 9).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerBalAccount(PROCEDURE 20).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerBalAccount : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerBalAccount : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerBalAccount(PROCEDURE 20).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerBalAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerBalAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorAccount(PROCEDURE 10).Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorAccount : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorAccount : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorAccount(PROCEDURE 10).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorBalAccount(PROCEDURE 21).Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorBalAccount : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorBalAccount : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorBalAccount(PROCEDURE 21).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorBalAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorBalAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBankAccount(PROCEDURE 11).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBankAccount : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBankAccount : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBankBalAccount(PROCEDURE 22).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBankBalAccount : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBankBalAccount : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAAccount(PROCEDURE 12).FA(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAAccount : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAAccount : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFABalAccount(PROCEDURE 23).FA(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFABalAccount : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFABalAccount : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetICPartnerAccount(PROCEDURE 17).ICPartner(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetICPartnerAccount : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetICPartnerAccount : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetICPartnerBalAccount(PROCEDURE 24).ICPartner(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetICPartnerBalAccount : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetICPartnerBalAccount : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATPostingSetup(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATPostingSetup : 325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATPostingSetup : "VAT Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesTaxCalculate(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesTaxCalculate : 398;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesTaxCalculate : "Sales Tax Calculate";
    //Variable type has not been exported.
}


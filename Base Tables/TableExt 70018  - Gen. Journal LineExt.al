tableextension 70018 GenJournalLineExt extends "Gen. Journal Line"
{
    // version NAVW19.00.00.51947,NAVIN9.00.00.51947,TFS223871,DIM1.0,Rev01,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change OptionString on ""Account Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Account No."(Field 4)". Please convert manually.

        modify("Posting Date")
        {
            ClosingDates = true;
        }

        //Unsupported feature: Change OptionString on ""Document Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change Description on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT %"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 11)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Balance (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Factor"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to/Pay-to No."(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to/Pay-to No."(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""System-Created Entry"(Field 30)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 35)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Posting"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Posting"(Field 45)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Journal Batch Name"(Field 51)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Recurring Method"(Field 53)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Recurring Method"(Field 53)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Allocated Amt. (LCY)"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Allocated Amt. (LCY)"(Field 56)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Gen. Posting Type"(Field 57)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Calculation Type"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""EU 3-Party Trade"(Field 61)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Application"(Field 62)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 63)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Gen. Posting Type"(Field 64)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. VAT Calculation Type"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT Calculation Type"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT %"(Field 68)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bank Payment Type"(Field 70)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bank Payment Type"(Field 70)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Check Printed"(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Check Printed"(Field 75)". Please convert manually.

        modify("Document Date")
        {
            ClosingDates = true;
        }

        //Unsupported feature: Change OptionString on ""Source Type"(Field 78)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 79)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Additional-Currency Posting"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional-Currency Posting"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Currency Code"(Field 99)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Source Currency Amount"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Currency Amount"(Field 100)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Source Curr. VAT Base Amount"(Field 101)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Curr. VAT Base Amount"(Field 101)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Source Curr. VAT Amount"(Field 102)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Curr. VAT Amount"(Field 102)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Discount %"(Field 103)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Amount (LCY)"(Field 104)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Amount (LCY)"(Field 105)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT Amount (LCY)"(Field 106)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT Base Amount (LCY)"(Field 107)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reversing Entry"(Field 108)". Please convert manually.


        //Unsupported feature: Change Editable on ""Allow Zero-Amount Posting"(Field 109)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to/Order Address Code"(Field 110)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Difference"(Field 111)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bal. VAT Difference"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""IC Partner Code"(Field 113)". Please convert manually.


        //Unsupported feature: Change Editable on ""IC Partner Transaction No."(Field 117)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to/Buy-from No."(Field 118)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 120)". Please convert manually.


        //Unsupported feature: Change Editable on ""Financial Void"(Field 122)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy VAT Setup to Jnl. Lines"(Field 123)". Please convert manually.


        //Unsupported feature: Change Editable on ""Copy VAT Setup to Jnl. Lines"(Field 123)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Before Pmt. Disc."(Field 125)". Please convert manually.


        //Unsupported feature: Change Numeric on ""Payment Reference"(Field 171)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Recipient Bank Account"(Field 288)". Please convert manually.


        //Unsupported feature: Change Data type on ""Message to Recipient"(Field 289)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exported to Payment File"(Field 290)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Has Payment Export Error"(Field 291)". Please convert manually.


        //Unsupported feature: Change Editable on ""Has Payment Export Error"(Field 291)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Unit Price (LCY)"(Field 1002)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Unit Price (LCY)"(Field 1002)". Please convert manually.


        //Unsupported feature: CodeModification on ""Job Total Price (LCY)"(Field 1003)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Total Price (LCY)"(Field 1003)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Quantity"(Field 1004)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Unit Cost (LCY)"(Field 1005)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Unit Cost (LCY)"(Field 1005)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Discount %"(Field 1006)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Line Disc. Amount (LCY)"(Field 1007)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Type"(Field 1009)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Line Type"(Field 1009)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Unit Price"(Field 1010)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Total Price"(Field 1011)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Total Price"(Field 1011)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Unit Cost"(Field 1012)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Unit Cost"(Field 1012)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Total Cost"(Field 1013)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Total Cost"(Field 1013)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Discount Amount"(Field 1014)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Amount"(Field 1015)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Total Cost (LCY)"(Field 1016)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Total Cost (LCY)"(Field 1016)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Amount (LCY)"(Field 1017)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Line Amount (LCY)"(Field 1017)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Planning Line No."(Field 1020)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Planning Line No."(Field 1020)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Remaining Qty."(Field 1030)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Direct Debit Mandate ID"(Field 1200)". Please convert manually.


        //Unsupported feature: Change Editable on ""Data Exch. Entry No."(Field 1220)". Please convert manually.


        //Unsupported feature: Change Editable on ""Data Exch. Line No."(Field 1223)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prod. Order No."(Field 5400)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order No."(Field 5400)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Posting Date"(Field 5600)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Salvage Value"(Field 5603)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""No. of Depreciation Days"(Field 5604)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""No. of Depreciation Days"(Field 5604)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Depr. until FA Posting Date"(Field 5605)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Depr. Acquisition Cost"(Field 5606)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use Duplication List"(Field 5613)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Reclassification Entry"(Field 5614)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""FA Error Entry No."(Field 5615)". Please convert manually.


        //Unsupported feature: CodeModification on ""Account Type"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner","Account Type"::Employee]) AND
           ("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner","Bal. Account Type"::Employee])
        THEN
          ERROR(
            Text000,
            FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type"));

        IF ("Account Type" = "Account Type"::Employee) AND ("Currency Code" <> '') THEN
          ERROR(OnlyLocalCurrencyForEmployeeErr);

        VALIDATE("Account No.",'');
        VALIDATE(Description,'');
        VALIDATE("IC Partner G/L Acc. No.",'');
        IF "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account","Account Type"::Employee] THEN BEGIN
          VALIDATE("Gen. Posting Type","Gen. Posting Type"::" ");
          VALIDATE("Gen. Bus. Posting Group",'');
          VALIDATE("Gen. Prod. Posting Group",'');
        END ELSE
          IF "Bal. Account Type" IN [
                                     "Bal. Account Type"::"G/L Account","Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"]
          THEN
            VALIDATE("Payment Terms Code",'');
        UpdateSource;

        IF ("Account Type" <> "Account Type"::"Fixed Asset") AND
           ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
        THEN BEGIN
          "Depreciation Book Code" := '';
          VALIDATE("FA Posting Type","FA Posting Type"::" ");
        END;
        IF xRec."Account Type" IN
           [xRec."Account Type"::Customer,xRec."Account Type"::Vendor]
        THEN BEGIN
          "Bill-to/Pay-to No." := '';
          "Ship-to/Order Address Code" := '';
          "Sell-to/Buy-from No." := '';
          "VAT Registration No." := '';
        END;

        IF "Journal Template Name" <> '' THEN
          IF "Account Type" = "Account Type"::"IC Partner" THEN BEGIN
            GetTemplate;
            IF GenJnlTemplate.Type <> GenJnlTemplate.Type::Intercompany THEN
              FIELDERROR("Account Type");
          END;

        VALIDATE("Deferral Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner","Account Type"::Employee]) and
           ("Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner","Bal. Account Type"::Employee])
        then
          Error(
            Text000,
            FieldCaption("Account Type"),FieldCaption("Bal. Account Type"));

        if ("Account Type" = "Account Type"::Employee) and ("Currency Code" <> '') then
          Error(OnlyLocalCurrencyForEmployeeErr);

        Validate("Account No.",'');
        Validate(Description,'');
        Validate("IC Partner G/L Acc. No.",'');
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account","Account Type"::Employee] then begin
          Validate("Gen. Posting Type","Gen. Posting Type"::" ");
          Validate("Gen. Bus. Posting Group",'');
          Validate("Gen. Prod. Posting Group",'');
        end else
          if "Bal. Account Type" in [
                                     "Bal. Account Type"::"G/L Account","Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"]
          then
            Validate("Payment Terms Code",'');
        UpdateSource;

        if ("Account Type" <> "Account Type"::"Fixed Asset") and
           ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
        then begin
          "Depreciation Book Code" := '';
          Validate("FA Posting Type","FA Posting Type"::" ");
        end;
        if xRec."Account Type" in
           [xRec."Account Type"::Customer,xRec."Account Type"::Vendor]
        then begin
        #36..39
        end;

        if "Journal Template Name" <> '' then
          if "Account Type" = "Account Type"::"IC Partner" then begin
            GetTemplate;
            if GenJnlTemplate.Type <> GenJnlTemplate.Type::Intercompany then
              FieldError("Account Type");
          end;

        Validate("Deferral Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Account No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account No." <> xRec."Account No." THEN BEGIN
          ClearAppliedAutomatically;
          VALIDATE("Job No.",'');
        END;

        IF xRec."Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"IC Partner"] THEN
          "IC Partner Code" := '';

        IF "Account No." = '' THEN BEGIN
          CleanLine;
          EXIT;
        END;

        OnValidateAccountNoOnBeforeAssignValue(Rec,xRec);

        CASE "Account Type" OF
          "Account Type"::"G/L Account":
            GetGLAccount;
          "Account Type"::Customer:
            GetCustomerAccount;
          "Account Type"::Vendor:
            GetVendorAccount;
          "Account Type"::Employee:
            GetEmployeeAccount;
          "Account Type"::"Bank Account":
            GetBankAccount;
          "Account Type"::"Fixed Asset":
            GetFAAccount;
          "Account Type"::"IC Partner":
            GetICPartnerAccount;
        END;

        OnValidateAccountNoOnAfterAssignValue(Rec,xRec);

        VALIDATE("Currency Code");
        VALIDATE("VAT Prod. Posting Group");
        UpdateLineBalance;
        UpdateSource;
        CreateDim(
          DimMgt.TypeToTableID1("Account Type"),"Account No.",
          DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
          DATABASE::Job,"Job No.",
          DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
          DATABASE::Campaign,"Campaign No.");

        VALIDATE("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        ValidateApplyRequirements(Rec);

        CASE "Account Type" OF
          "Account Type"::"G/L Account":
            UpdateAccountID;
          "Account Type"::Customer:
            UpdateCustomerID;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account No." <> xRec."Account No." then begin
          ClearAppliedAutomatically;
          Validate("Job No.",'');
        end;

        if xRec."Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"IC Partner"] then
          "IC Partner Code" := '';

        if "Account No." = '' then begin
          CleanLine;
          exit;
        end;
        #13..15
        case "Account Type" of
        #17..30
        end;
        #32..34
        Validate("Currency Code");
        Validate("VAT Prod. Posting Group");
        #37..45
        Validate("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        ValidateApplyRequirements(Rec);

        case "Account Type" of
        #50..53
        end;
        */
        //end;

        //Unsupported feature: Deletion on ""Posting Date"(Field 5).OnValidate". Please convert manually.



        //Unsupported feature: CodeModification on ""Document Type"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Payment Terms Code");
        IF "Account No." <> '' THEN
          CASE "Account Type" OF
            "Account Type"::Customer:
              BEGIN
                Cust.GET("Account No.");
                Cust.CheckBlockedCustOnJnls(Cust,"Document Type",FALSE);
              END;
            "Account Type"::Vendor:
              BEGIN
                Vend.GET("Account No.");
                Vend.CheckBlockedVendOnJnls(Vend,"Document Type",FALSE);
              END;
          END;
        IF "Bal. Account No." <> '' THEN
          CASE "Bal. Account Type" OF
            "Account Type"::Customer:
              BEGIN
                Cust.GET("Bal. Account No.");
                Cust.CheckBlockedCustOnJnls(Cust,"Document Type",FALSE);
              END;
            "Account Type"::Vendor:
              BEGIN
                Vend.GET("Bal. Account No.");
                Vend.CheckBlockedVendOnJnls(Vend,"Document Type",FALSE);
              END;
          END;
        UpdateSalesPurchLCY;
        ValidateApplyRequirements(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Payment Terms Code");
        if "Account No." <> '' then
          case "Account Type" of
            "Account Type"::Customer:
              begin
                Cust.Get("Account No.");
                Cust.CheckBlockedCustOnJnls(Cust,"Document Type",false);
              end;
            "Account Type"::Vendor:
              begin
                Vend.Get("Account No.");
                Vend.CheckBlockedVendOnJnls(Vend,"Document Type",false);
              end;
          end;
        if "Bal. Account No." <> '' then
          case "Bal. Account Type" of
            "Account Type"::Customer:
              begin
                Cust.Get("Bal. Account No.");
                Cust.CheckBlockedCustOnJnls(Cust,"Document Type",false);
              end;
            "Account Type"::Vendor:
              begin
                Vend.Get("Bal. Account No.");
                Vend.CheckBlockedVendOnJnls(Vend,"Document Type",false);
              end;
          end;
        UpdateSalesPurchLCY;
        ValidateApplyRequirements(Rec);
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
            BEGIN
              "VAT Amount" :=
                ROUND(Amount * "VAT %" / (100 + "VAT %"),Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
              "VAT Base Amount" :=
                ROUND(Amount - "VAT Amount",Currency."Amount Rounding Precision");
            END;
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
                  "Posting Date",Amount,Quantity,"Currency Factor");
              OnAfterSalesTaxCalculateReverseCalculateTax(Rec,CurrFieldNo);
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

        "VAT Amount (LCY)" := CalcVATAmountLCY;
        "VAT Base Amount (LCY)" := "Amount (LCY)" - "VAT Amount (LCY)";

        OnValidateVATPctOnBeforeUpdateSalesPurchLCY(Rec,Currency);
        UpdateSalesPurchLCY;

        IF "Deferral Code" <> '' THEN
          VALIDATE("Deferral Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              "VAT Amount" :=
                Round(Amount * "VAT %" / (100 + "VAT %"),Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
              "VAT Base Amount" :=
                Round(Amount - "VAT Amount",Currency."Amount Rounding Precision");
            end;
        #11..13
            if ("Gen. Posting Type" = "Gen. Posting Type"::Purchase) and
               "Use Tax"
            then begin
              "VAT Amount" := 0;
              "VAT %" := 0;
            end else begin
        #20..25
              if Amount - "VAT Amount" <> 0 then
                "VAT %" := Round(100 * "VAT Amount" / (Amount - "VAT Amount"),0.00001)
              else
                "VAT %" := 0;
              "VAT Amount" :=
                Round("VAT Amount",Currency."Amount Rounding Precision");
            end;
        end;
        #34..42
        if "Deferral Code" <> '' then
          Validate("Deferral Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Account No."(Field 11).OnValidate". Please convert manually.

        //trigger  Account No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Job No.",'');

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
          IF NOT ("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor]) THEN
            "Recipient Bank Account" := '';
          IF xRec."Bal. Account No." <> '' THEN BEGIN
            ClearBalancePostingGroups;
            "Bal. Tax Area Code" := '';
            "Bal. Tax Liable" := FALSE;
            "Bal. Tax Group Code" := '';
            ClearCurrencyCode;
          END;
          EXIT;
        END;

        OnValidateBalAccountNoOnBeforeAssignValue(Rec,xRec);

        CASE "Bal. Account Type" OF
          "Bal. Account Type"::"G/L Account":
            GetGLBalAccount;
          "Bal. Account Type"::Customer:
            GetCustomerBalAccount;
          "Bal. Account Type"::Vendor:
            GetVendorBalAccount;
          "Bal. Account Type"::Employee:
            GetEmployeeBalAccount;
          "Bal. Account Type"::"Bank Account":
            GetBankBalAccount;
          "Bal. Account Type"::"Fixed Asset":
            GetFABalAccount;
          "Bal. Account Type"::"IC Partner":
            GetICPartnerBalAccount;
        END;

        OnValidateBalAccountNoOnAfterAssignValue(Rec,xRec);

        VALIDATE("Currency Code");
        VALIDATE("Bal. VAT Prod. Posting Group");
        UpdateLineBalance;
        UpdateSource;
        CreateDim(
          DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
          DimMgt.TypeToTableID1("Account Type"),"Account No.",
          DATABASE::Job,"Job No.",
          DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
          DATABASE::Campaign,"Campaign No.");

        VALIDATE("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        ValidateApplyRequirements(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //VALIDATE("Job No.",'');
        //
        //IF xRec."Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,
        //                                "Bal. Account Type"::"IC Partner"]
        //THEN
        //  "IC Partner Code" := '';
        //
        //IF "Bal. Account No." = '' THEN BEGIN
        //  UpdateLineBalance;
        //  UpdateSource;
        //  CreateDim(
        //    DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
        //    DimMgt.TypeToTableID1("Account Type"),"Account No.",
        //    DATABASE::Job,"Job No.",
        //    DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
        //    DATABASE::Campaign,"Campaign No.");
        //  IF NOT ("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor]) THEN
        //    "Recipient Bank Account" := '';
        //  IF xRec."Bal. Account No." <> '' THEN BEGIN
        //    ClearBalancePostingGroups;
        //    "Bal. Tax Area Code" := '';
        //    "Bal. Tax Liable" := FALSE;
        //    "Bal. Tax Group Code" := '';
        //    ClearCurrencyCode;
        //  END;
        //  EXIT;
        //END;
        //
        //OnValidateBalAccountNoOnBeforeAssignValue(Rec,xRec);
        //
        //CASE "Bal. Account Type" OF
        //  "Bal. Account Type"::"G/L Account":
        //    GetGLBalAccount;
        //  "Bal. Account Type"::Customer:
        //{>>>>>>>} ORIGINAL
        //    BEGIN
        //      Cust.GET("Bal. Account No.");
        //      Cust.CheckBlockedCustOnJnls(Cust,"Document Type",FALSE);
        //      IF Cust."IC Partner Code" <> '' THEN BEGIN
        //        IF GenJnlTemplate.GET("Journal Template Name") THEN;
        //        IF (Cust."IC Partner Code" <> '') AND ICPartner.GET(Cust."IC Partner Code") THEN BEGIN
        //          ICPartner.CheckICPartnerIndirect(FORMAT("Bal. Account Type"),"Bal. Account No.");
        //          "IC Partner Code" := Cust."IC Partner Code";
        //        END;
        //      END;
        //      IF "Account No." = '' THEN
        //        Description := Cust.Name;
        //      "Payment Method Code" := Cust."Payment Method Code";
        //      VALIDATE("Recipient Bank Account",Cust."Preferred Bank Account");
        //      "Posting Group" := Cust."Customer Posting Group";
        //      "Salespers./Purch. Code" := Cust."Salesperson Code";
        //      "Payment Terms Code" := Cust."Payment Terms Code";
        //      VALIDATE("Bill-to/Pay-to No.","Bal. Account No.");
        //      VALIDATE("Sell-to/Buy-from No.","Bal. Account No.");
        //      IF ("Account No." = '') OR ("Account Type" = "Account Type"::"G/L Account") THEN
        //        "Currency Code" := Cust."Currency Code";
        //      IF ("Account Type" = "Account Type"::"Bank Account") AND ("Currency Code" = '') THEN
        //        "Currency Code" := Cust."Currency Code";
        //      ClearBalancePostingGroups;
        //      IF (Cust."Bill-to Customer No." <> '') AND (Cust."Bill-to Customer No." <> "Bal. Account No.") THEN
        //        IF NOT CONFIRM(Text014,FALSE,Cust.TABLECAPTION,Cust."No.",Cust.FIELDCAPTION("Bill-to Customer No."),
        //             Cust."Bill-to Customer No.")
        //        THEN
        //          ERROR('');
        //      VALIDATE("Payment Terms Code");
        //      CheckPaymentTolerance;
        //      UpdateGSTfromPartyVendCust("Bal. Account No.",FALSE,TRUE);
        //      "Journal Entry" := TRUE;
        //    END;
        //{=======} MODIFIED
        //    GetCustomerBalAccount;
        //{=======} TARGET
        //    BEGIN
        //      Cust.GET("Bal. Account No.");
        //      Cust.CheckBlockedCustOnJnls(Cust,"Document Type",FALSE);
        //      IF Cust."IC Partner Code" <> '' THEN BEGIN
        //        IF GenJnlTemplate.GET("Journal Template Name") THEN;
        //        IF (Cust."IC Partner Code" <> '') AND ICPartner.GET(Cust."IC Partner Code") THEN BEGIN
        //          ICPartner.CheckICPartnerIndirect(FORMAT("Bal. Account Type"),"Bal. Account No.");
        //          "IC Partner Code" := Cust."IC Partner Code";
        //        END;
        //      END;
        //
        //      IF "Account No." = '' THEN
        //        Description := Cust.Name;
        //
        //      "Payment Method Code" := Cust."Payment Method Code";
        //      VALIDATE("Recipient Bank Account",Cust."Preferred Bank Account");
        //      "Posting Group" := Cust."Customer Posting Group";
        //      "Salespers./Purch. Code" := Cust."Salesperson Code";
        //      "Payment Terms Code" := Cust."Payment Terms Code";
        //      VALIDATE("Bill-to/Pay-to No.","Bal. Account No.");
        //      VALIDATE("Sell-to/Buy-from No.","Bal. Account No.");
        //      IF ("Account No." = '') OR ("Account Type" = "Account Type"::"G/L Account") THEN
        //        "Currency Code" := Cust."Currency Code";
        //      IF ("Account Type" = "Account Type"::"Bank Account") AND ("Currency Code" = '') THEN
        //        "Currency Code" := Cust."Currency Code";
        //      ClearBalancePostingGroups;
        //      IF (Cust."Bill-to Customer No." <> '') AND (Cust."Bill-to Customer No." <> "Bal. Account No.") THEN
        //        IF NOT CONFIRM(Text014,FALSE,Cust.TABLECAPTION,Cust."No.",Cust.FIELDCAPTION("Bill-to Customer No."),
        //             Cust."Bill-to Customer No.")
        //        THEN
        //          ERROR('');
        //      VALIDATE("Payment Terms Code");
        //      CheckPaymentTolerance;
        //      UpdateGSTfromPartyVendCust("Bal. Account No.",FALSE,TRUE);
        //      "Journal Entry" := TRUE;
        //    END;
        //{<<<<<<<}
        //  "Bal. Account Type"::Vendor:
        //    GetVendorBalAccount;
        //  "Bal. Account Type"::Employee:
        //    GetEmployeeBalAccount;
        //  "Bal. Account Type"::"Bank Account":
        //    GetBankBalAccount;
        //  "Bal. Account Type"::"Fixed Asset":
        //    GetFABalAccount;
        //  "Bal. Account Type"::"IC Partner":
        //    GetICPartnerBalAccount;
        //END;
        //
        //OnValidateBalAccountNoOnAfterAssignValue(Rec,xRec);
        //
        //{>>>>>>>} ORIGINAL
        //      IF ("Account No." = '') OR ("Account Type" = "Account Type"::"G/L Account") THEN
        //        "Currency Code" := ICPartner."Currency Code";
        //      IF ("Account Type" = "Account Type"::"Bank Account") AND ("Currency Code" = '') THEN
        //        "Currency Code" := ICPartner."Currency Code";
        //      ClearBalancePostingGroups;
        //      "IC Partner Code" := "Bal. Account No.";
        //    END;
        //END;
        //{=======} MODIFIED
        //{=======} TARGET
        //      IF ("Account No." = '') OR ("Account Type" = "Account Type"::"G/L Account") THEN
        //        "Currency Code" := ICPartner."Currency Code";
        //      IF ("Account Type" = "Account Type"::"Bank Account") AND ("Currency Code" = '') THEN
        //        "Currency Code" := ICPartner."Currency Code";
        //      ClearBalancePostingGroups;
        //      "IC Partner Code" := "Bal. Account No.";
        //    END;
        //END;
        //
        //{<<<<<<<}
        //VALIDATE("Currency Code");
        //VALIDATE("Bal. VAT Prod. Posting Group");
        //UpdateLineBalance;
        //UpdateSource;
        //CreateDim(
        //  DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
        //  DimMgt.TypeToTableID1("Account Type"),"Account No.",
        //  DATABASE::Job,"Job No.",
        //  DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
        //  DATABASE::Campaign,"Campaign No.");
        //
        //VALIDATE("IC Partner G/L Acc. No.",GetDefaultICPartnerGLAccNo);
        //ValidateApplyRequirements(Rec);
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
        IF ("Recurring Method" IN
            ["Recurring Method"::"B  Balance","Recurring Method"::"RB Reversing Balance"]) AND
           ("Currency Code" <> '')
        THEN
          ERROR(
            Text001,
            FIELDCAPTION("Currency Code"),FIELDCAPTION("Recurring Method"),"Recurring Method");

        IF "Currency Code" <> '' THEN BEGIN
          IF ("Bal. Account Type" = "Bal. Account Type"::Employee) OR ("Account Type" = "Account Type"::Employee) THEN
            ERROR(OnlyLocalCurrencyForEmployeeErr);
          GetCurrency;
          IF ("Currency Code" <> xRec."Currency Code") OR
             ("Posting Date" <> xRec."Posting Date") OR
             (CurrFieldNo = FIELDNO("Currency Code")) OR
             ("Currency Factor" = 0)
          THEN
            "Currency Factor" :=
              CurrExchRate.ExchangeRate("Posting Date","Currency Code");
        END ELSE
          "Currency Factor" := 0;
        VALIDATE("Currency Factor");

        IF NOT CustVendAccountNosModified THEN
          IF ("Currency Code" <> xRec."Currency Code") AND (Amount <> 0) THEN
            PaymentToleranceMgt.PmtTolGenJnl(Rec);
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
        if ("Recurring Method" in
            ["Recurring Method"::"B  Balance","Recurring Method"::"RB Reversing Balance"]) and
           ("Currency Code" <> '')
        then
          Error(
            Text001,
            FieldCaption("Currency Code"),FieldCaption("Recurring Method"),"Recurring Method");

        if "Currency Code" <> '' then begin
          if ("Bal. Account Type" = "Bal. Account Type"::Employee) or ("Account Type" = "Account Type"::Employee) then
            Error(OnlyLocalCurrencyForEmployeeErr);
          GetCurrency;
          if ("Currency Code" <> xRec."Currency Code") or
             ("Posting Date" <> xRec."Posting Date") or
             (CurrFieldNo = FieldNo("Currency Code")) or
             ("Currency Factor" = 0)
          then
            "Currency Factor" :=
              CurrExchRate.ExchangeRate("Posting Date","Currency Code");
        end else
          "Currency Factor" := 0;
        Validate("Currency Factor");

        if not CustVendAccountNosModified then
          if ("Currency Code" <> xRec."Currency Code") and (Amount <> 0) then
            PaymentToleranceMgt.PmtTolGenJnl(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on "Amount(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateAmount;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {ProvisionalEntryAlreadyAppliedErr;
        "Provisional Entry" := FALSE;
        GetCurrency;
        IF "Currency Code" = '' THEN
          "Amount (LCY)" := Amount
        ELSE
          "Amount (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                "Posting Date","Currency Code",
                Amount,"Currency Factor"));

        Amount := ROUND(Amount,Currency."Amount Rounding Precision");
        IF (CurrFieldNo <> 0) AND
           (CurrFieldNo <> FIELDNO("Applies-to Doc. No.")) AND
           ((("Account Type" = "Account Type"::Customer) AND
             ("Account No." <> '') AND (Amount > 0) AND
             (CurrFieldNo <> FIELDNO("Bal. Account No."))) OR
            (("Bal. Account Type" = "Bal. Account Type"::Customer) AND
             ("Bal. Account No." <> '') AND (Amount < 0) AND
             (CurrFieldNo <> FIELDNO("Account No."))))
        THEN
          CustCheckCreditLimit.GenJnlLineCheck(Rec);

        IF ("Amount Excl. GST" <> 0) AND ("Document Type" = "Document Type"::Payment) AND ("Party Code" <> '') AND ("TDS Nature of Deduction" <> '') AND
           ("Amount Excl. GST" > Amount)
        THEN
          ERROR(AmtLessThanTDSAmtErr,"Amount Excl. GST");

        IF ("GST TDS/TCS Base Amount" <> 0) AND ("Document Type" = "Document Type"::Payment) AND
           (ABS("GST TDS/TCS Base Amount") > ABS(Amount))
        THEN
          ERROR(AmtLessthanGSTTDSTCSErr);

        IF "Pay TDS" OR "Pay TCS" OR "Pay Work Tax" OR "Pay Sales Tax" OR "Pay Excise" THEN
          IF xRec.Amount <> Amount THEN
            ERROR(Text13704);

        IF xRec."Service Tax Base Amount (LCY)" = "Service Tax Base Amount (LCY)" THEN BEGIN
          CalculateServiceTax;
          CalculateTDS;
        END;
        CalculateTCS;
        VALIDATE("VAT %");
        VALIDATE("Bal. VAT %");
        UpdateLineBalance;
        IF "Deferral Code" <> '' THEN
          VALIDATE("Deferral Code");

        IF Amount <> xRec.Amount THEN BEGIN
          IF ("Applies-to Doc. No." <> '') OR ("Applies-to ID" <> '') THEN
            SetApplyToAmount;
          IF NOT "GST in Journal" THEN
            IF (xRec.Amount <> 0) OR (xRec."Applies-to Doc. No." <> '') OR (xRec."Applies-to ID" <> '') THEN
              PaymentToleranceMgt.PmtTolGenJnl(Rec);
        END;

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        END;
        "TDS Line Amount" := Amount;

        IF "GST on Advance Payment" THEN
          CalculateGSTAmounts;

        IF ("Document Type" = "Document Type"::Refund) AND ("Applies-to Doc. No." <> '') THEN BEGIN
          DetailedGSTLedgerEntry.SETRANGE("Document Type","Applies-to Doc. Type");
          DetailedGSTLedgerEntry.SETRANGE("Document No.","Applies-to Doc. No.");
          IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
            IF ("Amount (LCY)" <> 0) AND (xRec."Amount (LCY)" <> Rec."Amount (LCY)") THEN BEGIN
              IF "Account Type" = "Account Type"::Customer THEN BEGIN
                CustLedgEntry1.SETCURRENTKEY("Customer No.","Document Type","Document No.","GST on Advance Payment");
                CustLedgEntry1.SETRANGE("Customer No.","Account No.");
                CustLedgEntry1.SETRANGE("Document Type","Applies-to Doc. Type");
                CustLedgEntry1.SETRANGE("Document No.","Applies-to Doc. No.");
                CustLedgEntry1.SETRANGE("GST on Advance Payment",TRUE);
                CustLedgEntry1.SETRANGE("HSN/SAC Code","HSN/SAC Code");
                IF CustLedgEntry1.FINDFIRST THEN
                  CustLedgEntry1.CALCFIELDS("Remaining Amt. (LCY)");
                IF CustLedgEntry1."Remaining Amt. (LCY)" <> 0 THEN
                  GetGSTAmounts(CustLedgEntry1."Document No.",
                    "Amount (LCY)" / CustLedgEntry1."Remaining Amt. (LCY)",TransactionType::Sales,
                    CustLedgEntry1."Entry No.");
              END ELSE IF "Account Type" = "Account Type"::Vendor THEN BEGIN
                VendLedgEntry1.SETCURRENTKEY("Buy-from Vendor No.","Document Type","Document No.","GST on Advance Payment");
                VendLedgEntry1.SETRANGE("Buy-from Vendor No.","Account No.");
                VendLedgEntry1.SETRANGE("Document Type","Applies-to Doc. Type");
                VendLedgEntry1.SETRANGE("Document No.","Applies-to Doc. No.");
                VendLedgEntry1.SETRANGE("GST on Advance Payment",TRUE);
                VendLedgEntry1.SETRANGE("HSN/SAC Code","HSN/SAC Code");
                IF VendLedgEntry1.FINDFIRST THEN
                  VendLedgEntry1.CALCFIELDS("Remaining Amt. (LCY)");
                IF VendLedgEntry1."Remaining Amt. (LCY)" <> 0 THEN
                  GetGSTAmounts(VendLedgEntry1."Document No.",
                    "Amount (LCY)" / VendLedgEntry1."Remaining Amt. (LCY)",TransactionType::Purchase,VendLedgEntry1."Entry No.");
              END;
            END;
          IF ("Currency Code" <> '' ) AND ("HSN/SAC Code" <> '') THEN BEGIN
            VALIDATE("GST Base Amount","GST Base Amount" * "Currency Factor");
            VALIDATE("Total GST Amount","Total GST Amount" * "Currency Factor");
          END;
          END;
        END;
        VALIDATE("Bank Charge","Bank Charge");
        }
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
        IF ("Credit Amount" = 0) OR ("Debit Amount" <> 0) THEN BEGIN
          Amount := "Debit Amount";
          VALIDATE(Amount);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        "Debit Amount" := Round("Debit Amount",Currency."Amount Rounding Precision");
        Correction := "Debit Amount" < 0;
        if ("Credit Amount" = 0) or ("Debit Amount" <> 0) then begin
          Amount := "Debit Amount";
          Validate(Amount);
        end;
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
        IF ("Debit Amount" = 0) OR ("Credit Amount" <> 0) THEN BEGIN
          Amount := -"Credit Amount";
          VALIDATE(Amount);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        "Credit Amount" := Round("Credit Amount",Currency."Amount Rounding Precision");
        Correction := "Credit Amount" < 0;
        if ("Debit Amount" = 0) or ("Credit Amount" <> 0) then begin
          Amount := -"Credit Amount";
          Validate(Amount);
        end;
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
        END ELSE BEGIN
          IF CheckFixedCurrency THEN BEGIN
            GetCurrency;
            Amount := ROUND(
                CurrExchRate.ExchangeAmtLCYToFCY(
                  "Posting Date","Currency Code",
                  "Amount (LCY)","Currency Factor"),
                Currency."Amount Rounding Precision")
          END ELSE BEGIN
            TESTFIELD("Amount (LCY)");
            TESTFIELD(Amount);
            "Currency Factor" := Amount / "Amount (LCY)";
          END;

          VALIDATE("VAT %");
          VALIDATE("Bal. VAT %");
          UpdateLineBalance;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Currency Code" = '' then begin
          Amount := "Amount (LCY)";
          Validate(Amount);
        end else begin
          if CheckFixedCurrency then begin
            GetCurrency;
            Amount := Round(
        #8..11
          end else begin
            TestField("Amount (LCY)");
            TestField(Amount);
            "Currency Factor" := Amount / "Amount (LCY)";
          end;

          Validate("VAT %");
          Validate("Bal. VAT %");
          UpdateLineBalance;
        end;
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
        ReadGLSetup;
        IF GLSetup."Bill-to/Sell-to VAT Calc." = GLSetup."Bill-to/Sell-to VAT Calc."::"Bill-to/Pay-to No." THEN
          UpdateCountryCodeAndVATRegNo("Bill-to/Pay-to No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bill-to/Pay-to No." <> xRec."Bill-to/Pay-to No." then
          "Ship-to/Order Address Code" := '';
        ReadGLSetup;
        if GLSetup."Bill-to/Sell-to VAT Calc." = GLSetup."Bill-to/Sell-to VAT Calc."::"Bill-to/Pay-to No." then
          UpdateCountryCodeAndVATRegNo("Bill-to/Pay-to No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. Type"(Field 35).OnValidate". Please convert manually.

        //trigger  Type"(Field 35)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Applies-to Doc. Type" <> xRec."Applies-to Doc. Type" THEN
          VALIDATE("Applies-to Doc. No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Applies-to Doc. Type" <> xRec."Applies-to Doc. Type" then
          Validate("Applies-to Doc. No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 36).OnLookup". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        xRec.Amount := Amount;
        xRec."Currency Code" := "Currency Code";
        xRec."Posting Date" := "Posting Date";

        GetAccTypeAndNo(Rec,AccType,AccNo);
        CLEAR(CustLedgEntry);
        CLEAR(VendLedgEntry);

        CASE AccType OF
          AccType::Customer:
            LookUpAppliesToDocCust(AccNo);
          AccType::Vendor:
            LookUpAppliesToDocVend(AccNo);
          AccType::Employee:
            LookUpAppliesToDocEmpl(AccNo);
        END;
        SetJournalLineFieldsFromApplication;

        IF xRec.Amount <> 0 THEN
          IF NOT PaymentToleranceMgt.PmtTolGenJnl(Rec) THEN
            EXIT;

        IF "Applies-to Doc. Type" = "Applies-to Doc. Type"::Invoice THEN
          UpdateAppliesToInvoiceID;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..5
        Clear(CustLedgEntry);
        Clear(VendLedgEntry);

        case AccType of
        #10..15
        end;
        SetJournalLineFieldsFromApplication;

        if xRec.Amount <> 0 then
          if not PaymentToleranceMgt.PmtTolGenJnl(Rec) then
            exit;

        if "Applies-to Doc. Type" = "Applies-to Doc. Type"::Invoice then
          UpdateAppliesToInvoiceID;
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 36).OnValidate". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF SuppressCommit THEN
          PaymentToleranceMgt.SetSuppressCommit(TRUE);

        IF "Applies-to Doc. No." <> xRec."Applies-to Doc. No." THEN
        #5..88
        SetJournalLineFieldsFromApplication;

        IF "Applies-to Doc. Type" = "Applies-to Doc. Type"::Invoice THEN
          UpdateAppliesToInvoiceID;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {IF SuppressCommit THEN
        #2..91
          UpdateAppliesToInvoiceID;}
        */
        //end;


        //Unsupported feature: CodeModification on ""Job No."(Field 42).OnValidate". Please convert manually.

        //trigger "(Field 42)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job No." = xRec."Job No." THEN
          EXIT;

        SourceCodeSetup.GET;
        IF "Source Code" <> SourceCodeSetup."Job G/L WIP" THEN
          VALIDATE("Job Task No.",'');
        IF "Job No." = '' THEN BEGIN
          CreateDim(
            DATABASE::Job,"Job No.",
            DimMgt.TypeToTableID1("Account Type"),"Account No.",
            DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
            DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
            DATABASE::Campaign,"Campaign No.");
          EXIT;
        END;

        TESTFIELD("Account Type","Account Type"::"G/L Account");

        IF "Bal. Account No." <> '' THEN
          IF NOT ("Bal. Account Type" IN ["Bal. Account Type"::"G/L Account","Bal. Account Type"::"Bank Account"]) THEN
            ERROR(Text016,FIELDCAPTION("Bal. Account Type"));

        Job.GET("Job No.");
        Job.TestBlocked;
        "Job Currency Code" := Job."Currency Code";

        CreateDim(
          DATABASE::Job,"Job No.",
          DimMgt.TypeToTableID1("Account Type"),"Account No.",
          DimMgt.TypeToTableID1("Bal. Account Type"),"Bal. Account No.",
          DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
          DATABASE::Campaign,"Campaign No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job No." = xRec."Job No." then
          exit;

        SourceCodeSetup.Get;
        if "Source Code" <> SourceCodeSetup."Job G/L WIP" then
          Validate("Job Task No.",'');
        if "Job No." = '' then begin
        #8..13
          exit;
        end;

        TestField("Account Type","Account Type"::"G/L Account");

        if "Bal. Account No." <> '' then
          if not ("Bal. Account Type" in ["Bal. Account Type"::"G/L Account","Bal. Account Type"::"Bank Account"]) then
            Error(Text016,FieldCaption("Bal. Account Type"));

        Job.Get("Job No.");
        #24..32
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
        GenJnlBatch.GET("Journal Template Name","Journal Batch Name");
        GenJnlBatch.TESTFIELD("Allow VAT Difference",TRUE);
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

        "VAT Amount (LCY)" := CalcVATAmountLCY;
        "VAT Base Amount (LCY)" := "Amount (LCY)" - "VAT Amount (LCY)";

        UpdateSalesPurchLCY;

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        END;

        IF "Deferral Code" <> '' THEN
          VALIDATE("Deferral Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GenJnlBatch.Get("Journal Template Name","Journal Batch Name");
        GenJnlBatch.TestField("Allow VAT Difference",true);
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
        #22..26
          Round(
            Amount * "VAT %" / (100 + "VAT %"),
            Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
        if Abs("VAT Difference") > Currency."Max. VAT Difference Allowed" then
          Error(Text013,FieldCaption("VAT Difference"),Currency."Max. VAT Difference Allowed");
        #32..37
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        end;

        if "Deferral Code" <> '' then
          Validate("Deferral Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Payment Terms Code"(Field 47).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Due Date" := 0D;
        "Pmt. Discount Date" := 0D;
        "Payment Discount %" := 0;
        IF ("Account Type" <> "Account Type"::"G/L Account") OR
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account")
        THEN
          CASE "Document Type" OF
            "Document Type"::Invoice:
              IF ("Payment Terms Code" <> '') AND ("Document Date" <> 0D) THEN BEGIN
                PaymentTerms.GET("Payment Terms Code");
                IsHandled := FALSE;
                OnValidatePaymentTermsCodeOnBeforeCalculateDueDate(Rec,PaymentTerms,IsHandled);
                IF NOT IsHandled THEN
                  "Due Date" := CALCDATE(PaymentTerms."Due Date Calculation","Document Date");
                IsHandled := FALSE;
                OnValidatePaymentTermsCodeOnBeforeCalculatePmtDiscountDate(Rec,PaymentTerms,IsHandled);
                IF NOT IsHandled THEN
                  "Pmt. Discount Date" := CALCDATE(PaymentTerms."Discount Date Calculation","Document Date");
                "Payment Discount %" := PaymentTerms."Discount %";
              END ELSE
                "Due Date" := "Document Date";
            "Document Type"::"Credit Memo":
              IF ("Payment Terms Code" <> '') AND ("Document Date" <> 0D) THEN BEGIN
                PaymentTerms.GET("Payment Terms Code");
                IF PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" THEN BEGIN
                  "Due Date" := CALCDATE(PaymentTerms."Due Date Calculation","Document Date");
                  "Pmt. Discount Date" :=
                    CALCDATE(PaymentTerms."Discount Date Calculation","Document Date");
                  "Payment Discount %" := PaymentTerms."Discount %";
                END ELSE
                  "Due Date" := "Document Date";
              END ELSE
                "Due Date" := "Document Date";
            ELSE
              "Due Date" := "Document Date";
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if ("Account Type" <> "Account Type"::"G/L Account") or
           ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account")
        then
          case "Document Type" of
            "Document Type"::Invoice:
              if ("Payment Terms Code" <> '') and ("Document Date" <> 0D) then begin
                PaymentTerms.Get("Payment Terms Code");
                IsHandled := false;
                OnValidatePaymentTermsCodeOnBeforeCalculateDueDate(Rec,PaymentTerms,IsHandled);
                if not IsHandled then
                  "Due Date" := CalcDate(PaymentTerms."Due Date Calculation","Document Date");
                IsHandled := false;
                OnValidatePaymentTermsCodeOnBeforeCalculatePmtDiscountDate(Rec,PaymentTerms,IsHandled);
                if not IsHandled then
                  "Pmt. Discount Date" := CalcDate(PaymentTerms."Discount Date Calculation","Document Date");
                "Payment Discount %" := PaymentTerms."Discount %";
              end else
                "Due Date" := "Document Date";
            "Document Type"::"Credit Memo":
              if ("Payment Terms Code" <> '') and ("Document Date" <> 0D) then begin
                PaymentTerms.Get("Payment Terms Code");
                if PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" then begin
                  "Due Date" := CalcDate(PaymentTerms."Due Date Calculation","Document Date");
                  "Pmt. Discount Date" :=
                    CalcDate(PaymentTerms."Discount Date Calculation","Document Date");
                  "Payment Discount %" := PaymentTerms."Discount %";
                end else
                  "Due Date" := "Document Date";
              end else
                "Due Date" := "Document Date";
            else
              "Due Date" := "Document Date";
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to ID"(Field 48).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Applies-to ID" <> xRec."Applies-to ID") AND (xRec."Applies-to ID" <> '') THEN
          ClearCustVendApplnEntry;
        SetJournalLineFieldsFromApplication;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Applies-to ID" <> xRec."Applies-to ID") and (xRec."Applies-to ID" <> '') then
          ClearCustVendApplnEntry;
        SetJournalLineFieldsFromApplication;
        */
        //end;


        //Unsupported feature: CodeModification on ""Recurring Method"(Field 53).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Recurring Method" IN
           ["Recurring Method"::"B  Balance","Recurring Method"::"RB Reversing Balance"]
        THEN
          TESTFIELD("Currency Code",'');
        UpdateSalesPurchLCY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Recurring Method" in
           ["Recurring Method"::"B  Balance","Recurring Method"::"RB Reversing Balance"]
        then
          TestField("Currency Code",'');
        UpdateSalesPurchLCY;
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Posting Type"(Field 57).OnValidate". Please convert manually.

        //trigger  Posting Type"(Field 57)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIfFieldIsEmpty := "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"];
        OnBeforeValidateGenPostingType(Rec,CheckIfFieldIsEmpty);
        IF CheckIfFieldIsEmpty THEN
          TESTFIELD("Gen. Posting Type","Gen. Posting Type"::" ");
        IF ("Gen. Posting Type" = "Gen. Posting Type"::Settlement) AND (CurrFieldNo <> 0) THEN
          ERROR(Text006,"Gen. Posting Type");
        CheckVATInAlloc;
        IF "Gen. Posting Type" > 0 THEN
          VALIDATE("VAT Prod. Posting Group");
        IF "Gen. Posting Type" <> "Gen. Posting Type"::Purchase THEN
          VALIDATE("Use Tax",FALSE)
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIfFieldIsEmpty := "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"];
        OnBeforeValidateGenPostingType(Rec,CheckIfFieldIsEmpty);
        if CheckIfFieldIsEmpty then
          TestField("Gen. Posting Type","Gen. Posting Type"::" ");
        if ("Gen. Posting Type" = "Gen. Posting Type"::Settlement) and (CurrFieldNo <> 0) then
          Error(Text006,"Gen. Posting Type");
        CheckVATInAlloc;
        if "Gen. Posting Type" > 0 then
          Validate("VAT Prod. Posting Group");
        if "Gen. Posting Type" <> "Gen. Posting Type"::Purchase then
          Validate("Use Tax",false)
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 58).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIfFieldIsEmpty := "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"];
        OnBeforeValidateGenBusPostingGroup(Rec,CheckIfFieldIsEmpty);
        IF CheckIfFieldIsEmpty THEN
          TESTFIELD("Gen. Bus. Posting Group",'');
        IF xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            VALIDATE("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIfFieldIsEmpty := "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"];
        OnBeforeValidateGenBusPostingGroup(Rec,CheckIfFieldIsEmpty);
        if CheckIfFieldIsEmpty then
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
        CheckIfFieldIsEmpty := "Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"];
        OnBeforeValidateGenProdPostingGroup(Rec,CheckIfFieldIsEmpty);
        IF CheckIfFieldIsEmpty THEN
          TESTFIELD("Gen. Prod. Posting Group",'');
        IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIfFieldIsEmpty := "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"];
        OnBeforeValidateGenProdPostingGroup(Rec,CheckIfFieldIsEmpty);
        if CheckIfFieldIsEmpty then
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
                               "Account Type"::"IC Partner","Account Type"::Employee]) AND
           ("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner","Bal. Account Type"::Employee])
        THEN
          ERROR(
            Text000,
            FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type"));

        IF ("Bal. Account Type" = "Bal. Account Type"::Employee) AND ("Currency Code" <> '') THEN
          ERROR(OnlyLocalCurrencyForEmployeeErr);

        VALIDATE("Bal. Account No.",'');
        VALIDATE("IC Partner G/L Acc. No.",'');
        IF "Bal. Account Type" IN
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account","Bal. Account Type"::Employee]
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
        IF ("Account Type" <> "Account Type"::"Fixed Asset") AND
           ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
        THEN BEGIN
          "Depreciation Book Code" := '';
          VALIDATE("FA Posting Type","FA Posting Type"::" ");
        END;
        IF xRec."Bal. Account Type" IN
           [xRec."Bal. Account Type"::Customer,xRec."Bal. Account Type"::Vendor]
        THEN BEGIN
          "Bill-to/Pay-to No." := '';
          "Ship-to/Order Address Code" := '';
          "Sell-to/Buy-from No." := '';
          "VAT Registration No." := '';
        END;
        IF ("Account Type" IN [
                               "Account Type"::"G/L Account","Account Type"::"Bank Account","Account Type"::"Fixed Asset"]) AND
           ("Bal. Account Type" IN [
                                    "Bal. Account Type"::"G/L Account","Bal. Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"])
        THEN
          VALIDATE("Payment Terms Code",'');

        IF "Bal. Account Type" = "Bal. Account Type"::"IC Partner" THEN BEGIN
          GetTemplate;
          IF GenJnlTemplate.Type <> GenJnlTemplate.Type::Intercompany THEN
            FIELDERROR("Bal. Account Type");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset",
                               "Account Type"::"IC Partner","Account Type"::Employee]) and
           ("Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset",
                                    "Bal. Account Type"::"IC Partner","Bal. Account Type"::Employee])
        then
          Error(
            Text000,
            FieldCaption("Account Type"),FieldCaption("Bal. Account Type"));

        if ("Bal. Account Type" = "Bal. Account Type"::Employee) and ("Currency Code" <> '') then
          Error(OnlyLocalCurrencyForEmployeeErr);

        Validate("Bal. Account No.",'');
        Validate("IC Partner G/L Acc. No.",'');
        if "Bal. Account Type" in
           ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account","Bal. Account Type"::Employee]
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
        if ("Account Type" <> "Account Type"::"Fixed Asset") and
           ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
        then begin
          "Depreciation Book Code" := '';
          Validate("FA Posting Type","FA Posting Type"::" ");
        end;
        if xRec."Bal. Account Type" in
           [xRec."Bal. Account Type"::Customer,xRec."Bal. Account Type"::Vendor]
        then begin
        #37..40
        end;
        if ("Account Type" in [
                               "Account Type"::"G/L Account","Account Type"::"Bank Account","Account Type"::"Fixed Asset"]) and
           ("Bal. Account Type" in [
                                    "Bal. Account Type"::"G/L Account","Bal. Account Type"::"Bank Account","Bal. Account Type"::"Fixed Asset"])
        then
          Validate("Payment Terms Code",'');

        if "Bal. Account Type" = "Bal. Account Type"::"IC Partner" then begin
          GetTemplate;
          if GenJnlTemplate.Type <> GenJnlTemplate.Type::Intercompany then
            FieldError("Bal. Account Type");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Gen. Posting Type"(Field 64).OnValidate". Please convert manually.

        //trigger  Gen();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIfFieldIsEmpty :=
          "Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"];
        OnBeforeValidateBalGenPostingType(Rec,CheckIfFieldIsEmpty);
        IF CheckIfFieldIsEmpty THEN
          TESTFIELD("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::" ");
        IF ("Bal. Gen. Posting Type" = "Gen. Posting Type"::Settlement) AND (CurrFieldNo <> 0) THEN
          ERROR(Text006,"Bal. Gen. Posting Type");
        IF "Bal. Gen. Posting Type" > 0 THEN
          VALIDATE("Bal. VAT Prod. Posting Group");

        IF ("Account Type" <> "Account Type"::"Fixed Asset") AND
           ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
        THEN BEGIN
          "Depreciation Book Code" := '';
          VALIDATE("FA Posting Type","FA Posting Type"::" ");
        END;
        IF "Bal. Gen. Posting Type" <> "Bal. Gen. Posting Type"::Purchase THEN
          VALIDATE("Bal. Use Tax",FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIfFieldIsEmpty :=
          "Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"];
        OnBeforeValidateBalGenPostingType(Rec,CheckIfFieldIsEmpty);
        if CheckIfFieldIsEmpty then
          TestField("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::" ");
        if ("Bal. Gen. Posting Type" = "Gen. Posting Type"::Settlement) and (CurrFieldNo <> 0) then
          Error(Text006,"Bal. Gen. Posting Type");
        if "Bal. Gen. Posting Type" > 0 then
          Validate("Bal. VAT Prod. Posting Group");

        if ("Account Type" <> "Account Type"::"Fixed Asset") and
           ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
        then begin
          "Depreciation Book Code" := '';
          Validate("FA Posting Type","FA Posting Type"::" ");
        end;
        if "Bal. Gen. Posting Type" <> "Bal. Gen. Posting Type"::Purchase then
          Validate("Bal. Use Tax",false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Gen. Bus. Posting Group"(Field 65).OnValidate". Please convert manually.

        //trigger  Gen();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIfFieldIsEmpty :=
          "Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"];
        OnBeforeValidateBalGenBusPostingGroup(Rec,CheckIfFieldIsEmpty);
        IF CheckIfFieldIsEmpty THEN
          TESTFIELD("Bal. Gen. Bus. Posting Group",'');
        IF xRec."Bal. Gen. Bus. Posting Group" <> "Bal. Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Bal. Gen. Bus. Posting Group") THEN
            VALIDATE("Bal. VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIfFieldIsEmpty :=
          "Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"];
        OnBeforeValidateBalGenBusPostingGroup(Rec,CheckIfFieldIsEmpty);
        if CheckIfFieldIsEmpty then
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
        CheckIfFieldIsEmpty :=
          "Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"];
        OnBeforeValidateBalGenProdPostingGroup(Rec,CheckIfFieldIsEmpty);
        IF CheckIfFieldIsEmpty THEN
          TESTFIELD("Bal. Gen. Prod. Posting Group",'');
        IF xRec."Bal. Gen. Prod. Posting Group" <> "Bal. Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Bal. Gen. Prod. Posting Group") THEN
            VALIDATE("Bal. VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIfFieldIsEmpty :=
          "Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Bank Account"];
        OnBeforeValidateBalGenProdPostingGroup(Rec,CheckIfFieldIsEmpty);
        if CheckIfFieldIsEmpty then
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
            BEGIN
              "Bal. VAT Amount" :=
                ROUND(-Amount * "Bal. VAT %" / (100 + "Bal. VAT %"),Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
              "Bal. VAT Base Amount" :=
                ROUND(-Amount - "Bal. VAT Amount",Currency."Amount Rounding Precision");
            END;
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
                    "Posting Date",Amount,Quantity,"Currency Factor"));
              OnAfterSalesTaxCalculateReverseCalculateTax(Rec,CurrFieldNo);
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

        IF "Currency Code" = '' THEN
          "Bal. VAT Amount (LCY)" := "Bal. VAT Amount"
        ELSE
          "Bal. VAT Amount (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY("Posting Date","Currency Code","Bal. VAT Amount","Currency Factor"));
        OnValidateBalVATPctOnAfterAssignBalVATAmountLCY("Bal. VAT Amount (LCY)");
        "Bal. VAT Base Amount (LCY)" := -("Amount (LCY)" + "Bal. VAT Amount (LCY)");

        OnValidateVATPctOnBeforeUpdateSalesPurchLCY(Rec,Currency);
        UpdateSalesPurchLCY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetCurrency;
        case "Bal. VAT Calculation Type" of
          "Bal. VAT Calculation Type"::"Normal VAT",
          "Bal. VAT Calculation Type"::"Reverse Charge VAT":
            begin
              "Bal. VAT Amount" :=
                Round(-Amount * "Bal. VAT %" / (100 + "Bal. VAT %"),Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
              "Bal. VAT Base Amount" :=
                Round(-Amount - "Bal. VAT Amount",Currency."Amount Rounding Precision");
            end;
        #11..13
            if ("Bal. Gen. Posting Type" = "Bal. Gen. Posting Type"::Purchase) and
               "Bal. Use Tax"
            then begin
              "Bal. VAT Amount" := 0;
              "Bal. VAT %" := 0;
            end else begin
        #20..25
              if Amount + "Bal. VAT Amount" <> 0 then
                "Bal. VAT %" := Round(100 * -"Bal. VAT Amount" / (Amount + "Bal. VAT Amount"),0.00001)
              else
                "Bal. VAT %" := 0;
              "Bal. VAT Amount" :=
                Round("Bal. VAT Amount",Currency."Amount Rounding Precision");
            end;
        end;
        #34..36
        if "Currency Code" = '' then
          "Bal. VAT Amount (LCY)" := "Bal. VAT Amount"
        else
          "Bal. VAT Amount (LCY)" :=
            Round(
        #42..47
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. VAT Amount"(Field 69).OnValidate". Please convert manually.

        //trigger  VAT Amount"(Field 69)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GenJnlBatch.GET("Journal Template Name","Journal Batch Name");
        GenJnlBatch.TESTFIELD("Allow VAT Difference",TRUE);
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

        IF "Currency Code" = '' THEN
          "Bal. VAT Amount (LCY)" := "Bal. VAT Amount"
        ELSE
          "Bal. VAT Amount (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                "Posting Date","Currency Code",
                "Bal. VAT Amount","Currency Factor"));
        "Bal. VAT Base Amount (LCY)" := -("Amount (LCY)" + "Bal. VAT Amount (LCY)");

        UpdateSalesPurchLCY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GenJnlBatch.Get("Journal Template Name","Journal Batch Name");
        GenJnlBatch.TestField("Allow VAT Difference",true);
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
        #13..15
          Round("Bal. VAT Amount",Currency."Amount Rounding Precision",Currency.VATRoundingDirection);

        if "Bal. VAT Amount" * Amount > 0 then
          if "Bal. VAT Amount" > 0 then
            Error(Text011,FieldCaption("Bal. VAT Amount"))
          else
            Error(Text012,FieldCaption("Bal. VAT Amount"));
        #23..27
          Round(
            -Amount * "Bal. VAT %" / (100 + "Bal. VAT %"),
            Currency."Amount Rounding Precision",Currency.VATRoundingDirection);
        if Abs("Bal. VAT Difference") > Currency."Max. VAT Difference Allowed" then
          Error(
            Text013,FieldCaption("Bal. VAT Difference"),Currency."Max. VAT Difference Allowed");

        if "Currency Code" = '' then
          "Bal. VAT Amount (LCY)" := "Bal. VAT Amount"
        else
          "Bal. VAT Amount (LCY)" :=
            Round(
        #40..45
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
                  "Tax Area Code","Tax Group Code","Tax Liable","Posting Date",
                  "VAT Base Amount",Quantity,"Currency Factor");
              OnAfterSalesTaxCalculateCalculateTax(Rec,CurrFieldNo);
              IF "VAT Base Amount" <> 0 THEN
                "VAT %" := ROUND(100 * "VAT Amount" / "VAT Base Amount",0.00001)
              ELSE
                "VAT %" := 0;
              "VAT Amount" :=
                ROUND("VAT Amount",Currency."Amount Rounding Precision");
              Amount := "VAT Base Amount" + "VAT Amount";
            END;
        END;
        OnValidateVATBaseAmountOnBeforeValidateAmount(Rec,Currency);
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
        #25..29
              if "VAT Base Amount" <> 0 then
                "VAT %" := Round(100 * "VAT Amount" / "VAT Base Amount",0.00001)
              else
                "VAT %" := 0;
              "VAT Amount" :=
                Round("VAT Amount",Currency."Amount Rounding Precision");
              Amount := "VAT Base Amount" + "VAT Amount";
            end;
        end;
        OnValidateVATBaseAmountOnBeforeValidateAmount(Rec,Currency);
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
                  "Posting Date","Bal. VAT Base Amount",Quantity,"Currency Factor");
              OnAfterSalesTaxCalculateCalculateTax(Rec,CurrFieldNo);
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
        #25..29
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


        //Unsupported feature: CodeModification on ""Document Date"(Field 76).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Payment Terms Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Payment Terms Code");
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


        //Unsupported feature: CodeModification on ""Tax Liable"(Field 83).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Use Tax"(Field 85).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Use Tax" THEN
          EXIT;
        TESTFIELD("Gen. Posting Type","Gen. Posting Type"::Purchase);
        VALIDATE("VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Use Tax" then
          exit;
        TestField("Gen. Posting Type","Gen. Posting Type"::Purchase);
        Validate("VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Tax Area Code"(Field 86).OnValidate". Please convert manually.

        //trigger  Tax Area Code"(Field 86)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Bal. VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Bal. VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Tax Liable"(Field 87).OnValidate". Please convert manually.

        //trigger  Tax Liable"(Field 87)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Bal. VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Bal. VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Tax Group Code"(Field 88).OnValidate". Please convert manually.

        //trigger  Tax Group Code"(Field 88)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Bal. VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Bal. VAT %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Use Tax"(Field 89).OnValidate". Please convert manually.

        //trigger  Use Tax"(Field 89)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Bal. Use Tax" THEN
          EXIT;
        TESTFIELD("Bal. Gen. Posting Type","Bal. Gen. Posting Type"::Purchase);
        VALIDATE("Bal. VAT %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Bal. Use Tax" then
          exit;
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

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("VAT Bus. Posting Group",'');

        Validate("VAT Prod. Posting Group");

        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        end
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

        CheckVATInAlloc;

        "VAT %" := 0;
        "VAT Calculation Type" := "VAT Calculation Type"::"Normal VAT";
        IsHandled := FALSE;
        OnValidateVATProdPostingGroupOnBeforeVATCalculationCheck(Rec,VATPostingSetup,IsHandled);
        IF NOT IsHandled THEN
          IF "Gen. Posting Type" <> 0 THEN BEGIN
            GetVATPostingSetup("VAT Bus. Posting Group","VAT Prod. Posting Group");
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

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Type" in ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Bank Account"] then
          TestField("VAT Prod. Posting Group",'');
        #3..7
        IsHandled := false;
        OnValidateVATProdPostingGroupOnBeforeVATCalculationCheck(Rec,VATPostingSetup,IsHandled);
        if not IsHandled then
          if "Gen. Posting Type" <> 0 then begin
            GetVATPostingSetup("VAT Bus. Posting Group","VAT Prod. Posting Group");
            "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
            case "VAT Calculation Type" of
        #15..17
                case "Gen. Posting Type" of
                  "Gen. Posting Type"::Sale:
                    TestField("Account No.",VATPostingSetup.GetSalesAccount(false));
                  "Gen. Posting Type"::Purchase:
                    TestField("Account No.",VATPostingSetup.GetPurchAccount(false));
                end;
            end;
          end;
        Validate("VAT %");

        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        end
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
          GetVATPostingSetup("Bal. VAT Bus. Posting Group","Bal. VAT Prod. Posting Group");
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
          GetVATPostingSetup("Bal. VAT Bus. Posting Group","Bal. VAT Prod. Posting Group");
          "Bal. VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
          case "Bal. VAT Calculation Type" of
        #12..14
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
        IF "Journal Template Name" <> '' THEN
          IF "IC Partner G/L Acc. No." <> '' THEN BEGIN
            GetTemplate;
            GenJnlTemplate.TESTFIELD(Type,GenJnlTemplate.Type::Intercompany);
            IF ICGLAccount.GET("IC Partner G/L Acc. No.") THEN
              ICGLAccount.TESTFIELD(Blocked,FALSE);
          END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Journal Template Name" <> '' then
          if "IC Partner G/L Acc. No." <> '' then begin
            GetTemplate;
            GenJnlTemplate.TestField(Type,GenJnlTemplate.Type::Intercompany);
            if ICGLAccount.Get("IC Partner G/L Acc. No.") then
              ICGLAccount.TestField(Blocked,false);
          end
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to/Buy-from No."(Field 118).OnValidate". Please convert manually.

        //trigger "(Field 118)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReadGLSetup;
        IF GLSetup."Bill-to/Sell-to VAT Calc." = GLSetup."Bill-to/Sell-to VAT Calc."::"Sell-to/Buy-from No." THEN
          UpdateCountryCodeAndVATRegNo("Sell-to/Buy-from No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ReadGLSetup;
        if GLSetup."Bill-to/Sell-to VAT Calc." = GLSetup."Bill-to/Sell-to VAT Calc."::"Sell-to/Buy-from No." then
          UpdateCountryCodeAndVATRegNo("Sell-to/Buy-from No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Country/Region Code"(Field 120).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT Registration No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT Registration No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Incoming Document Entry No."(Field 165).OnValidate". Please convert manually.

        //trigger "(Field 165)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Description = '' THEN
          Description := COPYSTR(IncomingDocument.Description,1,MAXSTRLEN(Description));
        IF "Incoming Document Entry No." = xRec."Incoming Document Entry No." THEN
          EXIT;

        IF "Incoming Document Entry No." = 0 THEN
          IncomingDocument.RemoveReferenceToWorkingDocument(xRec."Incoming Document Entry No.")
        ELSE
          IncomingDocument.SetGenJournalLine(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Description = '' then
          Description := CopyStr(IncomingDocument.Description,1,MaxStrLen(Description));
        if "Incoming Document Entry No." = xRec."Incoming Document Entry No." then
          exit;

        if "Incoming Document Entry No." = 0 then
          IncomingDocument.RemoveReferenceToWorkingDocument(xRec."Incoming Document Entry No.")
        else
          IncomingDocument.SetGenJournalLine(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Recipient Bank Account"(Field 288).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Recipient Bank Account" = '' THEN
          EXIT;
        IF ("Document Type" IN ["Document Type"::Invoice,"Document Type"::" ","Document Type"::"Credit Memo"]) AND
           (("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor]) OR
            ("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor]))
        THEN
          "Recipient Bank Account" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Recipient Bank Account" = '' then
          exit;
        if ("Document Type" in ["Document Type"::Invoice,"Document Type"::" ","Document Type"::"Credit Memo"]) and
           (("Account Type" in ["Account Type"::Customer,"Account Type"::Vendor]) or
            ("Bal. Account Type" in ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor]))
        then
          "Recipient Bank Account" := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Task No."(Field 1001).OnValidate". Please convert manually.

        //trigger "(Field 1001)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Task No." <> xRec."Job Task No." THEN
          VALIDATE("Job Planning Line No.",0);
        IF "Job Task No." = '' THEN BEGIN
          "Job Quantity" := 0;
          "Job Currency Factor" := 0;
          "Job Currency Code" := '';
        #7..17
          "Job Line Disc. Amount (LCY)" := 0;
          "Job Unit Cost (LCY)" := 0;
          "Job Total Cost (LCY)" := 0;
          EXIT;
        END;

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          CopyDimensionsFromJobTaskLine;
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Task No." <> xRec."Job Task No." then
          Validate("Job Planning Line No.",0);
        if "Job Task No." = '' then begin
        #4..20
          exit;
        end;

        if JobTaskIsSet then begin
        #25..27
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Quantity"(Field 1004).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          IF "Job Planning Line No." <> 0 THEN
            VALIDATE("Job Planning Line No.");
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          if "Job Planning Line No." <> 0 then
            Validate("Job Planning Line No.");
          CreateTempJobJnlLine;
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Discount %"(Field 1006).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          TempJobJnlLine.VALIDATE("Line Discount %","Job Line Discount %");
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          TempJobJnlLine.Validate("Line Discount %","Job Line Discount %");
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Disc. Amount (LCY)"(Field 1007).OnValidate". Please convert manually.

        //trigger  Amount (LCY)"(Field 1007)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          TempJobJnlLine.VALIDATE("Line Discount Amount (LCY)","Job Line Disc. Amount (LCY)");
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          TempJobJnlLine.Validate("Line Discount Amount (LCY)","Job Line Disc. Amount (LCY)");
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Type"(Field 1009).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Planning Line No." <> 0 THEN
          ERROR(Text019,FIELDCAPTION("Job Line Type"),FIELDCAPTION("Job Planning Line No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Planning Line No." <> 0 then
          Error(Text019,FieldCaption("Job Line Type"),FieldCaption("Job Planning Line No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Unit Price"(Field 1010).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          TempJobJnlLine.VALIDATE("Unit Price","Job Unit Price");
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          TempJobJnlLine.Validate("Unit Price","Job Unit Price");
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Discount Amount"(Field 1014).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          TempJobJnlLine.VALIDATE("Line Discount Amount","Job Line Discount Amount");
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          TempJobJnlLine.Validate("Line Discount Amount","Job Line Discount Amount");
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Amount"(Field 1015).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          TempJobJnlLine.VALIDATE("Line Amount","Job Line Amount");
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          TempJobJnlLine.Validate("Line Amount","Job Line Amount");
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Amount (LCY)"(Field 1017).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine;
          TempJobJnlLine.VALIDATE("Line Amount (LCY)","Job Line Amount (LCY)");
          UpdatePricesFromJobJnlLine;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if JobTaskIsSet then begin
          CreateTempJobJnlLine;
          TempJobJnlLine.Validate("Line Amount (LCY)","Job Line Amount (LCY)");
          UpdatePricesFromJobJnlLine;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Currency Code"(Field 1019).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Job Currency Code" <> xRec."Job Currency Code") OR ("Job Currency Code" <> '') THEN
          IF JobTaskIsSet THEN BEGIN
            CreateTempJobJnlLine;
            UpdatePricesFromJobJnlLine;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Job Currency Code" <> xRec."Job Currency Code") or ("Job Currency Code" <> '') then
          if JobTaskIsSet then begin
            CreateTempJobJnlLine;
            UpdatePricesFromJobJnlLine;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Planning Line No."(Field 1020).OnLookup". Please convert manually.

        //trigger "(Field 1020)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        JobPlanningLine.SETRANGE("Job No.","Job No.");
        JobPlanningLine.SETRANGE("Job Task No.","Job Task No.");
        JobPlanningLine.SETRANGE(Type,JobPlanningLine.Type::"G/L Account");
        JobPlanningLine.SETRANGE("No.","Account No.");
        JobPlanningLine.SETRANGE("Usage Link",TRUE);
        JobPlanningLine.SETRANGE("System-Created Entry",FALSE);

        IF PAGE.RUNMODAL(0,JobPlanningLine) = ACTION::LookupOK THEN
          VALIDATE("Job Planning Line No.",JobPlanningLine."Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        JobPlanningLine.SetRange("Job No.","Job No.");
        JobPlanningLine.SetRange("Job Task No.","Job Task No.");
        JobPlanningLine.SetRange(Type,JobPlanningLine.Type::"G/L Account");
        JobPlanningLine.SetRange("No.","Account No.");
        JobPlanningLine.SetRange("Usage Link",true);
        JobPlanningLine.SetRange("System-Created Entry",false);

        if PAGE.RunModal(0,JobPlanningLine) = ACTION::LookupOK then
          Validate("Job Planning Line No.",JobPlanningLine."Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Planning Line No."(Field 1020).OnValidate". Please convert manually.

        //trigger "(Field 1020)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Planning Line No." <> 0 THEN BEGIN
          JobPlanningLine.GET("Job No.","Job Task No.","Job Planning Line No.");
          JobPlanningLine.TESTFIELD("Job No.","Job No.");
          JobPlanningLine.TESTFIELD("Job Task No.","Job Task No.");
          JobPlanningLine.TESTFIELD(Type,JobPlanningLine.Type::"G/L Account");
          JobPlanningLine.TESTFIELD("No.","Account No.");
          JobPlanningLine.TESTFIELD("Usage Link",TRUE);
          JobPlanningLine.TESTFIELD("System-Created Entry",FALSE);
          "Job Line Type" := JobPlanningLine."Line Type" + 1;
          VALIDATE("Job Remaining Qty.",JobPlanningLine."Remaining Qty." - "Job Quantity");
        END ELSE
          VALIDATE("Job Remaining Qty.",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Planning Line No." <> 0 then begin
          JobPlanningLine.Get("Job No.","Job Task No.","Job Planning Line No.");
          JobPlanningLine.TestField("Job No.","Job No.");
          JobPlanningLine.TestField("Job Task No.","Job Task No.");
          JobPlanningLine.TestField(Type,JobPlanningLine.Type::"G/L Account");
          JobPlanningLine.TestField("No.","Account No.");
          JobPlanningLine.TestField("Usage Link",true);
          JobPlanningLine.TestField("System-Created Entry",false);
          "Job Line Type" := JobPlanningLine."Line Type" + 1;
          Validate("Job Remaining Qty.",JobPlanningLine."Remaining Qty." - "Job Quantity");
        end else
          Validate("Job Remaining Qty.",0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Remaining Qty."(Field 1030).OnValidate". Please convert manually.

        //trigger "(Field 1030)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Job Remaining Qty." <> 0) AND ("Job Planning Line No." = 0) THEN
          ERROR(Text018,FIELDCAPTION("Job Remaining Qty."),FIELDCAPTION("Job Planning Line No."));

        IF "Job Planning Line No." <> 0 THEN BEGIN
          JobPlanningLine.GET("Job No.","Job Task No.","Job Planning Line No.");
          IF JobPlanningLine.Quantity >= 0 THEN BEGIN
            IF "Job Remaining Qty." < 0 THEN
              "Job Remaining Qty." := 0;
          END ELSE BEGIN
            IF "Job Remaining Qty." > 0 THEN
              "Job Remaining Qty." := 0;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Job Remaining Qty." <> 0) and ("Job Planning Line No." = 0) then
          Error(Text018,FieldCaption("Job Remaining Qty."),FieldCaption("Job Planning Line No."));

        if "Job Planning Line No." <> 0 then begin
          JobPlanningLine.Get("Job No.","Job Task No.","Job Planning Line No.");
          if JobPlanningLine.Quantity >= 0 then begin
            if "Job Remaining Qty." < 0 then
              "Job Remaining Qty." := 0;
          end else begin
            if "Job Remaining Qty." > 0 then
              "Job Remaining Qty." := 0;
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Direct Debit Mandate ID"(Field 1200).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Direct Debit Mandate ID" = '' THEN
          EXIT;
        TESTFIELD("Account Type","Account Type"::Customer);
        SEPADirectDebitMandate.GET("Direct Debit Mandate ID");
        SEPADirectDebitMandate.TESTFIELD("Customer No.","Account No.");
        "Recipient Bank Account" := SEPADirectDebitMandate."Customer Bank Account Code";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Direct Debit Mandate ID" = '' then
          exit;
        TestField("Account Type","Account Type"::Customer);
        SEPADirectDebitMandate.Get("Direct Debit Mandate ID");
        SEPADirectDebitMandate.TestField("Customer No.","Account No.");
        "Recipient Bank Account" := SEPADirectDebitMandate."Customer Bank Account Code";
        */
        //end;


        //Unsupported feature: CodeModification on ""Deferral Code"(Field 1700).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Deferral Code" <> '' THEN
          TESTFIELD("Account Type","Account Type"::"G/L Account");

        DeferralUtilities.DeferralCodeOnValidate("Deferral Code",DeferralDocType::"G/L","Journal Template Name","Journal Batch Name",
          0,'',"Line No.",GetDeferralAmount,"Posting Date",Description,"Currency Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Deferral Code" <> '' then
          TestField("Account Type","Account Type"::"G/L Account");
        #3..5
        */
        //end;


        //Unsupported feature: CodeModification on ""FA Posting Type"(Field 5601).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF  NOT (("Account Type" = "Account Type"::"Fixed Asset") OR
                 ("Bal. Account Type" = "Bal. Account Type"::"Fixed Asset")) AND
           ("FA Posting Type" = "FA Posting Type"::" ")
        THEN BEGIN
          "FA Posting Date" := 0D;
          "Salvage Value" := 0;
          "No. of Depreciation Days" := 0;
          "Depr. until FA Posting Date" := FALSE;
          "Depr. Acquisition Cost" := FALSE;
          "Maintenance Code" := '';
          "Insurance No." := '';
          "Budgeted FA No." := '';
          "Duplicate in Depreciation Book" := '';
          "Use Duplication List" := FALSE;
          "FA Reclassification Entry" := FALSE;
          "FA Error Entry No." := 0;
        END;

        IF "FA Posting Type" <> "FA Posting Type"::"Acquisition Cost" THEN
          TESTFIELD("Insurance No.",'');
        IF "FA Posting Type" <> "FA Posting Type"::Maintenance THEN
          TESTFIELD("Maintenance Code",'');
        GetFAVATSetup;
        GetFAAddCurrExchRate;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if  not (("Account Type" = "Account Type"::"Fixed Asset") or
                 ("Bal. Account Type" = "Bal. Account Type"::"Fixed Asset")) and
           ("FA Posting Type" = "FA Posting Type"::" ")
        then begin
        #5..7
          "Depr. until FA Posting Date" := false;
          "Depr. Acquisition Cost" := false;
        #10..13
          "Use Duplication List" := false;
          "FA Reclassification Entry" := false;
          "FA Error Entry No." := 0;
        end;

        if "FA Posting Type" <> "FA Posting Type"::"Acquisition Cost" then
          TestField("Insurance No.",'');
        if "FA Posting Type" <> "FA Posting Type"::Maintenance then
          TestField("Maintenance Code",'');
        GetFAVATSetup;
        GetFAAddCurrExchRate;
        */
        //end;


        //Unsupported feature: CodeModification on ""Depreciation Book Code"(Field 5602).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Depreciation Book Code" = '' THEN
          EXIT;

        IF ("Account No." <> '') AND
           ("Account Type" = "Account Type"::"Fixed Asset")
        THEN BEGIN
          FADeprBook.GET("Account No.","Depreciation Book Code");
          "Posting Group" := FADeprBook."FA Posting Group";
        END;

        IF ("Bal. Account No." <> '') AND
           ("Bal. Account Type" = "Bal. Account Type"::"Fixed Asset")
        THEN BEGIN
          FADeprBook.GET("Bal. Account No.","Depreciation Book Code");
          "Posting Group" := FADeprBook."FA Posting Group";
        END;
        GetFAVATSetup;
        GetFAAddCurrExchRate;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Depreciation Book Code" = '' then
          exit;

        if ("Account No." <> '') and
           ("Account Type" = "Account Type"::"Fixed Asset")
        then begin
          FADeprBook.Get("Account No.","Depreciation Book Code");
          "Posting Group" := FADeprBook."FA Posting Group";
        end;

        if ("Bal. Account No." <> '') and
           ("Bal. Account Type" = "Bal. Account Type"::"Fixed Asset")
        then begin
          FADeprBook.Get("Bal. Account No.","Depreciation Book Code");
          "Posting Group" := FADeprBook."FA Posting Group";
        end;
        GetFAVATSetup;
        GetFAAddCurrExchRate;
        */
        //end;


        //Unsupported feature: Change InitValue on ""Maintenance Code"(Field 5609).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Maintenance Code" <> '' THEN
          TESTFIELD("FA Posting Type","FA Posting Type"::Maintenance);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Maintenance Code" <> '' then
          TestField("FA Posting Type","FA Posting Type"::Maintenance);
        */
        //end;


        //Unsupported feature: CodeModification on ""Insurance No."(Field 5610).OnValidate". Please convert manually.

        //trigger "(Field 5610)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Insurance No." <> '' THEN
          TESTFIELD("FA Posting Type","FA Posting Type"::"Acquisition Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Insurance No." <> '' then
          TestField("FA Posting Type","FA Posting Type"::"Acquisition Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Budgeted FA No."(Field 5611).OnValidate". Please convert manually.

        //trigger "(Field 5611)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Budgeted FA No." <> '' THEN BEGIN
          FA.GET("Budgeted FA No.");
          FA.TESTFIELD("Budgeted Asset",TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Budgeted FA No." <> '' then begin
          FA.Get("Budgeted FA No.");
          FA.TestField("Budgeted Asset",true);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Duplicate in Depreciation Book"(Field 5612).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Use Duplication List" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Use Duplication List" := false;
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Journal Batch Id"(Field 8006)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Payment Method Id"(Field 8007)". Please convert manually.

        field(13701; "Source Curr. Excise Amount"; Decimal)
        {
            CaptionML = ENU = 'Source Curr. Excise Amount',
                        ENN = 'Source Curr. Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13702; "Source Curr. Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Source Curr. Tax Amount',
                        ENN = 'Source Curr. Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13703; "State Code"; Code[10])
        {
            CaptionML = ENU = 'State Code',
                        ENN = 'State Code';
            DataClassification = ToBeClassified;
        }
        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
        }
        field(13707; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
        }
        field(13708; "Excise Amount"; Decimal)
        {
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13709; "BED %"; Decimal)
        {
            CaptionML = ENU = 'BED %',
                        ENN = 'BED %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13710; "BED Calculation Type"; Option)
        {
            CaptionML = ENU = 'BED Calculation Type',
                        ENN = 'BED Calculation Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN = 'Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(13711; "Amount Including Excise"; Decimal)
        {
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13712; "Excise Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13716; "TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS Amount',
                        ENN = 'TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13717; "Service Tax"; Decimal)
        {
            CaptionML = ENU = 'Service Tax',
                        ENN = 'Service Tax';
            DataClassification = ToBeClassified;
        }
        field(13718; "Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 4;
        }
        field(13736; PLA; Boolean)
        {
            CaptionML = ENU = 'PLA',
                        ENN = 'PLA';
            DataClassification = ToBeClassified;
        }
        field(13737; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
        }
        field(13744; "Tax Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
        }
        field(13746; Cenvat; Boolean)
        {
            CaptionML = ENU = 'Cenvat',
                        ENN = 'Cenvat';
            DataClassification = ToBeClassified;
        }
        field(13747; "Location Code"; Code[10])
        {
            CaptionML = ENU = 'Location Code',
                        ENN = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;

            trigger OnValidate();
            var
                GenJournalBatch: Record "Gen. Journal Batch";
                // GSTComponent: Record "GST Component";
                Location2: Record Location;
                LocationARNNo: Code[15];
            begin
            end;
        }
        field(13750; "Source Curr. Tax Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Source Curr. Tax Base Amount',
                        ENN = 'Source Curr. Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13753; "Tax Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount (LCY)',
                        ENN = 'Tax Amount (LCY)';
            DataClassification = ToBeClassified;
        }
        field(13754; "Tax Base Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'Tax Base Amount (LCY)',
                        ENN = 'Tax Base Amount (LCY)';
            DataClassification = ToBeClassified;
        }
        field(13758; "TDS Nature of Deduction"; Code[10])
        {
            CaptionML = ENU = 'TDS Nature of Deduction',
                        ENN = 'TDS Nature of Deduction';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";

            trigger OnValidate();
            var
                CompanyInfo: Record "Company Information";
                Location: Record Location;
            begin
            end;
        }
        field(13759; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            Editable = false;
            //TableRelation = "Assessee Code";
        }
        field(13760; "TDS/TCS %"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS %',
                        ENN = 'TDS/TCS %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 3;
            Editable = false;
        }
        field(13761; "TDS/TCS Amt Incl Surcharge"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS Amt Incl Surcharge',
                        ENN = 'TDS/TCS Amt Incl Surcharge';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13763; "Bal. TDS/TCS Including SHECESS"; Decimal)
        {
            CaptionML = ENU = 'Bal. TDS/TCS Including SHECESS',
                        ENN = 'Bal. TDS/TCS Including SHECESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13764; "Party Type"; Option)
        {
            BlankNumbers = DontBlank;
            CaptionML = ENU = 'Party Type',
                        ENN = 'Party Type';
            DataClassification = ToBeClassified;
            InitValue = " ";
            OptionCaptionML = ENU = ' ,Party,Customer,Vendor',
                              ENN = ' ,Party,Customer,Vendor';
            OptionMembers = " ",Party,Customer,Vendor;
        }
        field(13765; "Party Code"; Code[20])
        {
            CaptionML = ENU = 'Party Code',
                        ENN = 'Party Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Party Type" = CONST(Party)) Party.Code
            ELSE
            IF ("Party Type" = CONST(Vendor)) Vendor."No."
            ELSE
            IF ("Party Type" = CONST(Customer)) Customer."No.";
        }
        field(13773; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            //TableRelation = "Form Codes";
        }
        field(13774; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Forms Details";
        }
        field(13779; "LC No."; Code[20])
        {
            CaptionML = ENU = 'LC No.',
                        ENN = 'LC No.';
            DataClassification = ToBeClassified;
            /*TableRelation = "LC Detail"."No." WHERE(Closed = CONST(false),
                                                     Released = CONST(true));*/
        }
        field(13780; "Work Tax Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Work Tax Base Amount',
                        ENN = 'Work Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13781; "Work Tax %"; Decimal)
        {
            CaptionML = ENU = 'Work Tax %',
                        ENN = 'Work Tax %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13782; "Work Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Work Tax Amount',
                        ENN = 'Work Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13786; "TDS Category"; Option)
        {
            CaptionML = ENU = 'TDS Category',
                        ENN = 'TDS Category';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,C,S,T',
                              ENN = ' ,A,C,S,T';
            OptionMembers = " ",A,C,S,T;
        }
        field(13787; "Surcharge %"; Decimal)
        {
            CaptionML = ENU = 'Surcharge %',
                        ENN = 'Surcharge %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13788; "Surcharge Amount"; Decimal)
        {
            CaptionML = ENU = 'Surcharge Amount',
                        ENN = 'Surcharge Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13789; "Concessional Code"; Code[10])
        {
            CaptionML = ENU = 'Concessional Code',
                        ENN = 'Concessional Code';
            DataClassification = ToBeClassified;
            Editable = false;
            //TableRelation = "Concessional Codes";
        }
        field(13790; "Work Tax Paid"; Boolean)
        {
            CaptionML = ENU = 'Work Tax Paid',
                        ENN = 'Work Tax Paid';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16301; "Pay TDS"; Boolean)
        {
            CaptionML = ENU = 'Pay TDS',
                        ENN = 'Pay TDS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16302; "Pay Work Tax"; Boolean)
        {
            CaptionML = ENU = 'Pay Work Tax',
                        ENN = 'Pay Work Tax';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16303; "TDS Entry"; Boolean)
        {
            CaptionML = ENU = 'TDS Entry',
                        ENN = 'TDS Entry';
            DataClassification = ToBeClassified;
        }
        field(16304; "Pay Excise"; Boolean)
        {
            CaptionML = ENU = 'Pay Excise',
                        ENN = 'Pay Excise';
            DataClassification = ToBeClassified;
        }
        field(16307; "TDS/TCS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS Base Amount',
                        ENN = 'TDS/TCS Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16308; "Challan No."; Code[20])
        {
            CaptionML = ENU = 'Challan No.',
                        ENN = 'Challan No.';
            DataClassification = ToBeClassified;
        }
        field(16309; "Challan Date"; Date)
        {
            CaptionML = ENU = 'Challan Date',
                        ENN = 'Challan Date';
            DataClassification = ToBeClassified;
        }
        field(16310; Adjustment; Boolean)
        {
            CaptionML = ENU = 'Adjustment',
                        ENN = 'Adjustment';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16312; "Pay Sales Tax"; Boolean)
        {
            CaptionML = ENU = 'Pay Sales Tax',
                        ENN = 'Pay Sales Tax';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16313; "E.C.C. No."; Code[20])
        {
            CaptionML = ENU = 'E.C.C. No.',
                        ENN = 'E.C.C. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "E.C.C. Nos.";
        }
        field(16340; "Balance Work Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Balance Work Tax Amount',
                        ENN = 'Balance Work Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16350; "Pay VAT"; Boolean)
        {
            CaptionML = ENU = 'Pay VAT',
                        ENN = 'Pay VAT';
            DataClassification = ToBeClassified;
        }
        field(16351; "VAT Claim Amount"; Decimal)
        {
            CaptionML = ENU = 'VAT Claim Amount',
                        ENN = 'VAT Claim Amount';
            DataClassification = ToBeClassified;
        }
        field(16352; "Refund VAT"; Boolean)
        {
            CaptionML = ENU = 'Refund VAT',
                        ENN = 'Refund VAT';
            DataClassification = ToBeClassified;
        }
        field(16353; "Balance Surcharge Amount"; Decimal)
        {
            CaptionML = ENU = 'Balance Surcharge Amount',
                        ENN = 'Balance Surcharge Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16354; "Cheque Date"; Date)
        {
            CaptionML = ENU = 'Cheque Date',
                        ENN = 'Cheque Date';
            DataClassification = ToBeClassified;
        }
        field(16358; "Surcharge Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Surcharge Base Amount',
                        ENN = 'Surcharge Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16359; "TDS Group"; Option)
        {
            CaptionML = ENU = 'TDS Group',
                        ENN = 'TDS Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods;
        }
        field(16360; "Work Tax Nature Of Deduction"; Code[10])
        {
            CaptionML = ENU = 'Work Tax Nature Of Deduction',
                        ENN = 'Work Tax Nature Of Deduction';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";

            trigger OnLookup();
            begin
                /*NODLines.RESET;
                CASE "Party Type" OF
                  "Party Type"::Vendor:
                    NODLines.SETRANGE(Type,NODLines.Type::Vendor);
                  "Party Type"::Customer:
                    NODLines.SETRANGE(Type,NODLines.Type::Customer);
                  "Party Type"::Party:
                    NODLines.SETRANGE(Type,NODLines.Type::Party);
                END;
                NODLines.SETRANGE("No.","Party Code");
                NODLines.SETRANGE("TDS Group",NODLines."TDS Group"::Others);
                IF NODLines.FIND('-') THEN
                  REPEAT
                    TDSNOD.RESET;
                    TDSNOD.SETRANGE(Code,NODLines."NOD/NOC");
                    IF TDSNOD.FINDFIRST THEN
                      TDSNOD.MODIFYALL(Mark,TRUE);
                    COMMIT;
                  UNTIL NODLines.NEXT = 0;
                
                TDSNOD.RESET;
                TDSNOD.SETRANGE(Mark,TRUE);
                
                IF PAGE.RUNMODAL(PAGE::"TDS Nature of Deductions",TDSNOD) = ACTION::LookupOK THEN BEGIN
                  NODLines.RESET;
                  CASE "Party Type" OF
                    "Party Type"::Vendor:
                      NODLines.SETRANGE(Type,NODLines.Type::Vendor);
                    "Party Type"::Customer:
                      NODLines.SETRANGE(Type,NODLines.Type::Customer);
                    "Party Type"::Party:
                      NODLines.SETRANGE(Type,NODLines.Type::Party);
                  END;
                
                  NODLines.SETRANGE("No.","Party Code");
                  NODLines.SETRANGE("NOD/NOC",TDSNOD.Code);
                  IF (NOT NODLines.FIND('-')) AND (TDSNOD.Code <> '') THEN
                    FIELDERROR("TDS Nature of Deduction",Text13701);
                  "Work Tax Nature Of Deduction" := TDSNOD.Code;
                END;
                
                VALIDATE("Work Tax Nature Of Deduction");
                */

            end;

            trigger OnValidate();
            begin
                /*TESTFIELD("GST on Advance Payment",FALSE);
                TDSNOD.MODIFYALL(Mark,FALSE);
                NODLines.RESET;
                CASE "Party Type" OF
                  "Party Type"::Vendor:
                    NODLines.SETRANGE(Type,NODLines.Type::Vendor);
                  "Party Type"::Customer:
                    NODLines.SETRANGE(Type,NODLines.Type::Customer);
                  "Party Type"::Party:
                    NODLines.SETRANGE(Type,NODLines.Type::Party);
                END;
                NODLines.SETRANGE("No.","Party Code");
                NODLines.SETRANGE("NOD/NOC","Work Tax Nature Of Deduction");
                NODLines.SETRANGE("TDS Group",NODLines."TDS Group"::Others);
                IF (NOT NODLines.FIND('-')) AND ("Work Tax Nature Of Deduction" <> '') THEN
                  FIELDERROR("Work Tax Nature Of Deduction",Text13701);
                IF TDSNOD.GET("Work Tax Nature Of Deduction") THEN
                  "Work Tax Group" := TDSNOD."TDS Group"
                ELSE
                  "Work Tax Group" := "Work Tax Group"::" ";
                CalculateTDS;
                */

            end;
        }
        field(16361; "Work Tax Group"; Option)
        {
            CaptionML = ENU = 'Work Tax Group',
                        ENN = 'Work Tax Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(16362; "Balance TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'Balance TDS/TCS Amount',
                        ENN = 'Balance TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16363; "Temp TDS/TCS Base"; Decimal)
        {
            CaptionML = ENU = 'Temp TDS/TCS Base',
                        ENN = 'Temp TDS/TCS Base';
            DataClassification = ToBeClassified;
        }
        field(16364; "Excise Posting"; Boolean)
        {
            CaptionML = ENU = 'Excise Posting',
                        ENN = 'Excise Posting';
            DataClassification = ToBeClassified;
        }
        field(16365; "Product Type"; Option)
        {
            CaptionML = ENU = 'Product Type',
                        ENN = 'Product Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ',Item,FA',
                              ENN = ',Item,FA';
            OptionMembers = ,Item,FA;
        }
        field(16366; "Excise Charge"; Boolean)
        {
            CaptionML = ENU = 'Excise Charge',
                        ENN = 'Excise Charge';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF "Excise Charge" = TRUE THEN BEGIN
                  "Pay Excise" := FALSE;
                  "Pay Work Tax" := FALSE;
                  "Pay TDS" := FALSE;
                  "Pay VAT" := FALSE;
                  "Refund VAT" := FALSE;
                  TESTFIELD(PLA,FALSE);
                  TESTFIELD("Account Type","Account Type"::"G/L Account");
                  TESTFIELD("Bal. Account Type","Bal. Account Type"::"G/L Account");
                END;
                */

            end;
        }
        field(16370; "Deferred Claim FA Excise"; Boolean)
        {
            CaptionML = ENU = 'Deferred Claim FA Excise',
                        ENN = 'Deferred Claim FA Excise';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16372; "Cheque No."; Code[10])
        {
            CaptionML = ENU = 'Cheque No.',
                        ENN = 'Cheque No.';
            DataClassification = ToBeClassified;
        }
        field(16374; Deferred; Boolean)
        {
            CaptionML = ENU = 'Deferred',
                        ENN = 'Deferred';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF Deferred THEN
                  TESTFIELD("ADC VAT Amount",0);
                  */

            end;
        }
        field(16375; "Service Tax Type"; Option)
        {
            CaptionML = ENU = 'Service Tax Type',
                        ENN = 'Service Tax Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Sale,Purchase,Charge',
                              ENN = 'Sale,Purchase,Charge';
            OptionMembers = Sale,Purchase,Charge;

            trigger OnValidate();
            begin
                //CalculateServiceTax;
                //CalculateTDS;
            end;
        }
        field(16376; "Service Tax Group Code"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group Code',
                        ENN = 'Service Tax Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "Service Tax Groups".Code;
        }
        field(16377; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16378; "Service Tax Base Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base Amount (LCY)',
                        ENN = 'Service Tax Base Amount (LCY)';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            var
                ServiceTaxSetup: Record "Service Tax Setup";
            begin
            end;
        }
        field(16379; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16382; "Service Tax Entry"; Boolean)
        {
            CaptionML = ENU = 'Service Tax Entry',
                        ENN = 'Service Tax Entry';
            DataClassification = ToBeClassified;
        }
        field(16383; "eCESS %"; Decimal)
        {
            CaptionML = ENU = 'eCESS %',
                        ENN = 'eCESS %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16384; "eCESS on TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'eCESS on TDS/TCS Amount',
                        ENN = 'eCESS on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16385; "Total TDS/TCS Incl. SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS/TCS Incl. SHE CESS',
                        ENN = 'Total TDS/TCS Incl. SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16388; "Balance eCESS on TDS/TCS Amt"; Decimal)
        {
            CaptionML = ENU = 'Balance eCESS on TDS/TCS Amt',
                        ENN = 'Balance eCESS on TDS/TCS Amt';
            DataClassification = ToBeClassified;
        }
        field(16389; "Per Contract"; Boolean)
        {
            CaptionML = ENU = 'Per Contract',
                        ENN = 'Per Contract';
            DataClassification = ToBeClassified;
        }
        field(16390; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
        }
        field(16391; "Item No."; Code[20])
        {
            CaptionML = ENU = 'Item No.',
                        ENN = 'Item No.';
            DataClassification = ToBeClassified;
        }
        field(16406; "Service Tax eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess Amount',
                        ENN = 'Service Tax eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16460; "Goes to Excise Entry"; Boolean)
        {
            CaptionML = ENU = 'Goes to Excise Entry',
                        ENN = 'Goes to Excise Entry';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16461; "From Excise"; Boolean)
        {
            CaptionML = ENU = 'From Excise',
                        ENN = 'From Excise';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16478; "T.A.N. No."; Code[10])
        {
            CaptionML = ENU = 'T.A.N. No.',
                        ENN = 'T.A.N. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "T.A.N. Nos.";
        }
        field(16491; "VAT Type"; Option)
        {
            CaptionML = ENU = 'VAT Type',
                        ENN = 'VAT Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Item,Capital Goods',
                              ENN = ' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16492; "TDS From Orders"; Boolean)
        {
            CaptionML = ENU = 'TDS From Orders',
                        ENN = 'TDS From Orders';
            DataClassification = ToBeClassified;
        }
        field(16493; "Consignment Note No."; Code[20])
        {
            CaptionML = ENU = 'Consignment Note No.',
                        ENN = 'Consignment Note No.';
            DataClassification = ToBeClassified;
        }
        field(16494; "Declaration Form (GTA)"; Boolean)
        {
            CaptionML = ENU = 'Declaration Form (GTA)',
                        ENN = 'Declaration Form (GTA)';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //CalculateServiceTax;
            end;
        }
        field(16496; "Service Type (Rev. Chrg.)"; Option)
        {
            CaptionML = ENU = 'Service Type (Rev. Chrg.)',
                        ENN = 'Service Type (Rev. Chrg.)';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Inward,Outward Stock Transfer,Outward Input Service,Outward',
                              ENN = ' ,Inward,Outward Stock Transfer,Outward Input Service,Outward';
            OptionMembers = " ",Inward,"Outward Stock Transfer","Outward Input Service",Outward;
        }
        field(16500; "TCS Nature of Collection"; Code[10])
        {
            CaptionML = ENU = 'TCS Nature of Collection',
                        ENN = 'TCS Nature of Collection';
            DataClassification = ToBeClassified;
            // TableRelation = "TCS Nature Of Collection";

            trigger OnLookup();
            var
            //NatureOfCollection: Record "TCS Nature Of Collection";
            //TempNatureOfCollection: Record "TCS Nature Of Collection" temporary;
            begin
                /*NOCLine.RESET;
                NOCLine.SETRANGE(Type,"Party Type");
                NOCLine.SETRANGE("No.","Party Code");
                NOCLine.SETRANGE("TDS for Customer",FALSE);
                IF "Party Type" = "Party Type"::Party THEN
                  NOCLine.SETRANGE("TCS Party",TRUE);
                IF NOCLine.FIND('-') THEN
                  REPEAT
                    NatureOfCollection.GET(NOCLine."NOD/NOC");
                    TempNatureOfCollection := NatureOfCollection;
                    TempNatureOfCollection.INSERT;
                  UNTIL NOCLine.NEXT = 0;
                
                IF PAGE.RUNMODAL(PAGE::"TCS Nature of Collections",TempNatureOfCollection) = ACTION::LookupOK THEN
                  "TCS Nature of Collection" := TempNatureOfCollection.Code;
                VALIDATE("TCS Nature of Collection");
                */

            end;

            trigger OnValidate();
            var
                CompanyInfo: Record "Company Information";
                Location: Record Location;
            begin
            end;
        }
        field(16502; "Pay TCS"; Boolean)
        {
            CaptionML = ENU = 'Pay TCS',
                        ENN = 'Pay TCS';
            DataClassification = ToBeClassified;
        }
        field(16503; "TCS Entry"; Boolean)
        {
            CaptionML = ENU = 'TCS Entry',
                        ENN = 'TCS Entry';
            DataClassification = ToBeClassified;
        }
        field(16504; "TCS Type"; Option)
        {
            CaptionML = ENU = 'TCS Type',
                        ENN = 'TCS Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H',
                              ENN = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,"1H";
        }
        field(16505; "T.C.A.N. No."; Code[10])
        {
            CaptionML = ENU = 'T.C.A.N. No.',
                        ENN = 'T.C.A.N. No.';
            DataClassification = ToBeClassified;
            // TableRelation = "T.C.A.N. No.";
        }
        field(16506; "TCS From Orders"; Boolean)
        {
            CaptionML = ENU = 'TCS From Orders',
                        ENN = 'TCS From Orders';
            DataClassification = ToBeClassified;
        }
        field(16507; "FA Shift Line No."; Integer)
        {
            CaptionML = ENU = 'FA Shift Line No.',
                        ENN = 'FA Shift Line No.';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
            //FAShift: Record "FA Shift";
            begin
            end;
        }
        field(16508; "Non ITC Claimable Usage %"; Decimal)
        {
            CaptionML = ENU = 'Non ITC Claimable Usage %',
                        ENN = 'Non ITC Claimable Usage %';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16509; "Input Credit/Output Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Input Credit/Output Tax Amount',
                        ENN = 'Input Credit/Output Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16510; "Amount Loaded on Item"; Decimal)
        {
            CaptionML = ENU = 'Amount Loaded on Item',
                        ENN = 'Amount Loaded on Item';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16518; "Tax Amount Loaded on Inventory"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount Loaded on Inventory',
                        ENN = 'Tax Amount Loaded on Inventory';
            DataClassification = ToBeClassified;
        }
        field(16519; Deferment; Boolean)
        {
            CaptionML = ENU = 'Deferment',
                        ENN = 'Deferment';
            DataClassification = ToBeClassified;
        }
        field(16520; "VAT Entry"; Boolean)
        {
            CaptionML = ENU = 'VAT Entry',
                        ENN = 'VAT Entry';
            DataClassification = ToBeClassified;
        }
        field(16521; "Standard Deduction Amount"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction Amount',
                        ENN = 'Standard Deduction Amount';
            DataClassification = ToBeClassified;
        }
        field(16522; "Service Tax Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Rounding Precision',
                        ENN = 'Service Tax Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16523; "Service Tax Rounding Type"; Option)
        {
            CaptionML = ENU = 'Service Tax Rounding Type',
                        ENN = 'Service Tax Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16525; "Standard Deduction Amount(ACY)"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction Amount(ACY)',
                        ENN = 'Standard Deduction Amount(ACY)';
            DataClassification = ToBeClassified;
        }
        field(16526; "Input/Output Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Input/Output Tax Amount',
                        ENN = 'Input/Output Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16527; "Excise Refund"; Boolean)
        {
            CaptionML = ENU = 'Excise Refund',
                        ENN = 'Excise Refund';
            DataClassification = ToBeClassified;
        }
        field(16528; "VAT Adjustment Entry"; Boolean)
        {
            CaptionML = ENU = 'VAT Adjustment Entry',
                        ENN = 'VAT Adjustment Entry';
            DataClassification = ToBeClassified;
        }
        field(16529; Trading; Boolean)
        {
            CaptionML = ENU = 'Trading',
                        ENN = 'Trading';
            DataClassification = ToBeClassified;
        }
        field(16530; "Sales Return Order"; Boolean)
        {
            CaptionML = ENU = 'Sales Return Order',
                        ENN = 'Sales Return Order';
            DataClassification = ToBeClassified;
        }
        field(16531; "Excise as Service Tax Credit"; Boolean)
        {
            CaptionML = ENU = 'Excise as Service Tax Credit',
                        ENN = 'Excise as Service Tax Credit';
            DataClassification = ToBeClassified;
        }
        field(16532; "Serv. Tax on Advance Payment"; Boolean)
        {
            CaptionML = ENU = 'Serv. Tax on Advance Payment',
                        ENN = 'Serv. Tax on Advance Payment';
            DataClassification = ToBeClassified;
        }
        field(16533; "Transaction No. Serv. Tax"; Integer)
        {
            CaptionML = ENU = 'Transaction No. Serv. Tax',
                        ENN = 'Transaction No. Serv. Tax';
            DataClassification = ToBeClassified;
        }
        field(16534; "ADC VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16537; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16539; "Source Curr. ADC VAT Amount"; Decimal)
        {
            CaptionML = ENU = 'Source Curr. ADC VAT Amount',
                        ENN = 'Source Curr. ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16547; "Service Tax SHE Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SHE Cess Amount',
                        ENN = 'Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16548; "SHE Cess % on TDS/TCS"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess % on TDS/TCS',
                        ENN = 'SHE Cess % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16549; "SHE Cess on TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess on TDS/TCS Amount',
                        ENN = 'SHE Cess on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16553; "Bal. SHE Cess on TDS/TCS Amt"; Decimal)
        {
            CaptionML = ENU = 'Bal. SHE Cess on TDS/TCS Amt',
                        ENN = 'Bal. SHE Cess on TDS/TCS Amt';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16554; "TDS Certificate Receivable"; Boolean)
        {
            CaptionML = ENU = 'TDS Certificate Receivable',
                        ENN = 'TDS Certificate Receivable';
            DataClassification = ToBeClassified;
        }
        field(16555; "Input Service Distribution"; Boolean)
        {
            CaptionML = ENU = 'Input Service Distribution',
                        ENN = 'Input Service Distribution';
            DataClassification = ToBeClassified;
        }
        field(16556; "Stale Cheque"; Boolean)
        {
            CaptionML = ENU = 'Stale Cheque',
                        ENN = 'Stale Cheque';
            DataClassification = ToBeClassified;
        }
        field(16557; "ST Pure Agent"; Boolean)
        {
            CaptionML = ENU = 'ST Pure Agent',
                        ENN = 'ST Pure Agent';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                // CalculateServiceTax;
            end;
        }
        field(16558; "Nature of Services"; Option)
        {
            CaptionML = ENU = 'Nature of Services',
                        ENN = 'Nature of Services';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Exempted,Export',
                              ENN = ' ,Exempted,Export';
            OptionMembers = " ",Exempted,Export;

            trigger OnValidate();
            begin
                // CalculateServiceTax;
            end;
        }
        field(16559; "Work Tax % Applied"; Decimal)
        {
            CaptionML = ENU = 'Work Tax % Applied',
                        ENN = 'Work Tax % Applied';
            DataClassification = ToBeClassified;
        }
        field(16560; "W.T Amount"; Decimal)
        {
            CaptionML = ENU = 'W.T Amount',
                        ENN = 'W.T Amount';
            DataClassification = ToBeClassified;
        }
        field(16561; "Works Tax"; Boolean)
        {
            CaptionML = ENU = 'Work Tax',
                        ENN = 'Work Tax';
            DataClassification = ToBeClassified;
        }
        field(16562; "Reverse Work Tax"; Boolean)
        {
            CaptionML = ENU = 'Reverse Work Tax',
                        ENN = 'Reverse Work Tax';
            DataClassification = ToBeClassified;
        }
        field(16563; "CWIP G/L Type"; Option)
        {
            CaptionML = ENU = 'CWIP G/L Type',
                        ENN = 'CWIP G/L Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Labor,Material,Overheads',
                              ENN = ' ,Labor,Material,Overheads';
            OptionMembers = " ",Labor,Material,Overheads;
        }
        field(16564; CWIP; Boolean)
        {
            CaptionML = ENU = 'CWIP',
                        ENN = 'CWIP';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16565; "Shift Type"; Option)
        {
            CaptionML = ENU = 'Shift Type',
                        ENN = 'Shift Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Single,Double,Triple',
                              ENN = 'Single,Double,Triple';
            OptionMembers = Single,Double,Triple;
        }
        field(16566; "Industry Type"; Option)
        {
            CaptionML = ENU = 'Industry Type',
                        ENN = 'Industry Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Normal,Non Seasonal,Seasonal',
                              ENN = 'Normal,Non Seasonal,Seasonal';
            OptionMembers = Normal,"Non Seasonal",Seasonal;
        }
        field(16567; "No. of Days for Shift"; Integer)
        {
            CaptionML = ENU = 'No. of Days for Shift',
                        ENN = 'No. of Days for Shift';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16568; "VATable Purchase Tax"; Decimal)
        {
            CaptionML = ENU = 'VATable Purchase Tax',
                        ENN = 'VATable Purchase Tax';
            DataClassification = ToBeClassified;
        }
        field(16569; "Sale Return Type"; Option)
        {
            CaptionML = ENU = 'Sale Return Type',
                        ENN = 'Sale Return Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales  Cancellation',
                              ENN = ' ,Sales  Cancellation';
            OptionMembers = " ","Sales  Cancellation";
        }
        field(16570; "RG/Service Tax Set Off Date"; Date)
        {
            CaptionML = ENU = 'RG/Service Tax Set Off Date',
                        ENN = 'RG/Service Tax Set Off Date';
            DataClassification = ToBeClassified;
        }
        field(16571; "PLA Set Off Date"; Date)
        {
            CaptionML = ENU = 'PLA Set Off Date',
                        ENN = 'PLA Set Off Date';
            DataClassification = ToBeClassified;
        }
        field(16572; "Insert S.T Recoverable"; Boolean)
        {
            CaptionML = ENU = 'Insert S.T Recoverable',
                        ENN = 'Insert S.T Recoverable';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16573; "Offline Application"; Boolean)
        {
            CaptionML = ENU = 'Offline Application',
                        ENN = 'Offline Application';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16574; "S.T From Order"; Boolean)
        {
            CaptionML = ENU = 'S.T From Order',
                        ENN = 'S.T From Order';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16575; "Un Application Entry"; Boolean)
        {
            CaptionML = ENU = 'Un Application Entry',
                        ENN = 'Un Application Entry';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16576; "Include Serv. Tax in TDS Base"; Boolean)
        {
            CaptionML = ENU = 'Include Serv. Tax in TDS Base',
                        ENN = 'Include Serv. Tax in TDS Base';
            DataClassification = ToBeClassified;
        }
        field(16577; "TDS Line Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS Line Amount',
                        ENN = 'TDS Line Amount';
            DataClassification = ToBeClassified;
        }
        field(16578; Posting; Boolean)
        {
            CaptionML = ENU = 'Posting',
                        ENN = 'Posting';
            DataClassification = ToBeClassified;
        }
        field(16579; "Applied TDS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Applied TDS Base Amount',
                        ENN = 'Applied TDS Base Amount';
            DataClassification = ToBeClassified;
        }
        field(16580; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;
        }
        field(16581; "TDS/TCS Base Amount Applied"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS Base Amount Applied',
                        ENN = 'TDS/TCS Base Amount Applied';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16582; "TDS/TCS Base Amount Adjusted"; Boolean)
        {
            CaptionML = ENU = 'TDS/TCS Base Amount Adjusted',
                        ENN = 'TDS/TCS Base Amount Adjusted';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16583; "Work Tax Base Amount Applied"; Decimal)
        {
            CaptionML = ENU = 'Work Tax Base Amount Applied',
                        ENN = 'Work Tax Base Amount Applied';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16584; "Work Tax Base Amount Adjusted"; Boolean)
        {
            CaptionML = ENU = 'Work Tax Base Amount Adjusted',
                        ENN = 'Work Tax Base Amount Adjusted';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16585; "Tot. Serv Tax Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Tot. Serv Tax Amount (Intm)',
                        ENN = 'Tot. Serv Tax Amount (Intm)';
            DataClassification = ToBeClassified;
        }
        field(16586; "Nature of Remittance"; Code[10])
        {
            CaptionML = ENU = 'Nature of Remittance',
                        ENN = 'Nature of Remittance';
            DataClassification = ToBeClassified;
            //TableRelation = "TDS Nature of Remittance";

            trigger OnLookup();
            var
            // NatureOfRemittance: Record "TDS Nature of Remittance";
            begin
            end;
        }
        field(16587; "Act Applicable"; Option)
        {
            CaptionML = ENU = 'Act Applicable',
                        ENN = 'Act Applicable';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,IT,DTAA',
                              ENN = ' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;
        }
        field(16588; "Country Code"; Code[10])
        {
            CaptionML = ENU = 'Country Code',
                        ENN = 'Country Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(16589; "Service Tax SBC %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC %',
                        ENN = 'Service Tax SBC %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16590; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(LCY)',
                        ENN = 'Service Tax SBC Amount(LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16591; "Service Tax SBC Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(Intm)',
                        ENN = 'Service Tax SBC Amount(Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16592; "SBC G/L Account"; Code[20])
        {
            CaptionML = ENU = 'SBC G/L Account',
                        ENN = 'SBC G/L Account';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16593; "KK Cess%"; Decimal)
        {
            CaptionML = ENU = 'KK Cess%',
                        ENN = 'KK Cess%';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16594; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16595; "KK Cess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount (Intm)',
                        ENN = 'KK Cess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16596; "KK Cess G/L Account"; Code[20])
        {
            CaptionML = ENU = 'KK Cess G/L Account',
                        ENN = 'KK Cess G/L Account';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16601; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            // TableRelation = "GST Group";

            trigger OnValidate();
            var
                // GSTGroup: Record "GST Group";
                SalesReceivablesSetup: Record "Sales & Receivables Setup";
                GenJournalLine2: Record "Gen. Journal Line";
            begin
            end;
        }
        field(16603; "GST Group Type"; Option)
        {
            CaptionML = ENU = 'GST Group Type',
                        ENN = 'GST Group Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Goods,Service',
                              ENN = 'Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(16604; "GST Base Amount"; Decimal)
        {
            CaptionML = ENU = 'GST Base Amount',
                        ENN = 'GST Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16605; "GST %"; Decimal)
        {
            CaptionML = ENU = 'GST %',
                        ENN = 'GST %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16606; "Total GST Amount"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount',
                        ENN = 'Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607; "GST Place of Supply"; Option)
        {
            CaptionML = ENU = 'GST Place of Supply',
                        ENN = 'GST Place of Supply';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN = ' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";
        }
        field(16608; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(16609; "GST Vendor Type"; Option)
        {
            CaptionML = ENU = 'GST Vendor Type',
                        ENN = 'GST Vendor Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Composite,Unregistered,Import,Exempted,SEZ',
                              ENN = ' ,Registered,Composite,Unregistered,Import,Exempted,SEZ';
            OptionMembers = " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;
        }
        field(16611; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));

            trigger OnValidate();
            var
                GenJournalLine: Record "Gen. Journal Line";
            begin
            end;
        }
        field(16612; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
        }
        field(16613; "GST Component Code"; Code[10])
        {
            CaptionML = ENU = 'GST Component Code',
                        ENN = 'GST Component Code';
            DataClassification = ToBeClassified;
            // TableRelation = "GST Component";

            trigger OnValidate();
            var
                // GSTComponent: Record "GST Component";
                Location2: Record Location;
                LocationARNNo: Code[15];
            begin
            end;
        }
        field(16614; "GST on Advance Payment"; Boolean)
        {
            CaptionML = ENU = 'GST on Advance Payment',
                        ENN = 'GST on Advance Payment';
            DataClassification = ToBeClassified;
        }
        field(16615; "Ship-to Code"; Code[10])
        {
            CaptionML = ENU = 'Ship-to Code',
                        ENN = 'Ship-to Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Account Type" = CONST(Customer)) "Ship-to Address".Code WHERE("Customer No." = FIELD("Account No."));
        }
        field(16616; "Tax Type"; Option)
        {
            CaptionML = ENU = 'Tax Type',
                        ENN = 'Tax Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Tax,Excise,Service Tax,GST Credit,GST Liability,GST TDS Credit,GST TCS Credit',
                              ENN = ' ,Sales Tax,Excise,Service Tax,GST Credit,GST Liability,GST TDS Credit,GST TCS Credit';
            OptionMembers = " ","Sales Tax",Excise,"Service Tax","GST Credit","GST Liability","GST TDS Credit","GST TCS Credit";

            trigger OnValidate();
            var
            //GSTComponent: Record "GST Component";
            begin
            end;
        }
        field(16617; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Intrastate,Interstate',
                              ENN = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16618; "Adv. Pmt. Adjustment"; Boolean)
        {
            CaptionML = ENU = 'Adv. Pmt. Adjustment',
                        ENN = 'Adv. Pmt. Adjustment';
            DataClassification = ToBeClassified;
        }
        field(16619; "GST Bill-to/BuyFrom State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Bill-to/BuyFrom State Code',
                        ENN = 'GST Bill-to/BuyFrom State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16620; "GST Ship-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Ship-to State Code',
                        ENN = 'GST Ship-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16621; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16622; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16623; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16624; "GST Input Service Distribution"; Boolean)
        {
            CaptionML = ENU = 'GST Input Service Distribution',
                        ENN = 'GST Input Service Distribution';
            DataClassification = ToBeClassified;
        }
        field(16625; "GST Reverse Charge"; Boolean)
        {
            CaptionML = ENU = 'GST Reverse Charge',
                        ENN = 'GST Reverse Charge';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16626; "GST Reason Type"; Option)
        {
            CaptionML = ENU = 'GST Reason Type',
                        ENN = 'GST Reason Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others',
                              ENN = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others';
            OptionMembers = " ","Sales Return","Post Sale Discount","Deficiency in Service","Correction in Invoice","Change in POS","Finalization of Provisional Assessment",Others;
        }
        field(16627; "Bank Charge"; Boolean)
        {
            CaptionML = ENU = 'Bank Charge',
                        ENN = 'Bank Charge';
            DataClassification = ToBeClassified;
        }
        field(16628; "Total GST Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount (LCY)',
                        ENN = 'Total GST Amount (LCY)';
            DataClassification = ToBeClassified;
        }
        field(16629; "RCM Exempt"; Boolean)
        {
            CaptionML = ENU = 'RCM Exempt',
                        ENN = 'RCM Exempt';
            DataClassification = ToBeClassified;
        }
        field(16630; "Order Address Code"; Code[10])
        {
            CaptionML = ENU = 'Order Address Code',
                        ENN = 'Order Address Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Account Type" = CONST(Vendor)) "Order Address".Code WHERE("Vendor No." = FIELD("Account No."));

            trigger OnValidate();
            var
                DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
                Vendor: Record Vendor;
                OrderAddress: Record "Order Address";
            begin
            end;
        }
        field(16631; "Vendor GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Vendor GST Reg. No.',
                        ENN = 'Vendor GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16632; "Associated Enterprises"; Boolean)
        {
            CaptionML = ENU = 'Associated Enterprises',
                        ENN = 'Associated Enterprises';
            DataClassification = ToBeClassified;
        }
        field(16633; "Purch. Invoice Type"; Option)
        {
            CaptionML = ENU = 'Purch. Invoice Type',
                        ENN = 'Purch. Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Self Invoice,Debit Note,Supplementary,Non-GST',
                              ENN = ' ,Self Invoice,Debit Note,Supplementary,Non-GST';
            OptionMembers = " ","Self Invoice","Debit Note",Supplementary,"Non-GST";
        }
        field(16634; "Inc. GST in TDS Base"; Boolean)
        {
            CaptionML = ENU = 'Inc. GST in TDS Base',
                        ENN = 'Inc. GST in TDS Base';
            DataClassification = ToBeClassified;
        }
        field(16635; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16636; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;
        }
        field(16637; "Sales Invoice Type"; Option)
        {
            CaptionML = ENU = 'Sales Invoice Type',
                        ENN = 'Sales Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;

            trigger OnValidate();
            var
                GenJournalLine: Record "Gen. Journal Line";
                TotalNoOfLines: Integer;
            begin
            end;
        }
        field(16638; "Bill Of Export No."; Text[20])
        {
            CaptionML = ENU = 'Bill Of Export No.',
                        ENN = 'Bill Of Export No.';
            DataClassification = ToBeClassified;
        }
        field(16639; "Bill Of Export Date"; Date)
        {
            CaptionML = ENU = 'Bill Of Export Date',
                        ENN = 'Bill Of Export Date';
            DataClassification = ToBeClassified;
        }
        field(16640; "e-Commerce Customer"; Code[20])
        {
            CaptionML = ENU = 'e-Commerce Customer',
                        ENN = 'e-Commerce Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer WHERE("e-Commerce Operator" = CONST(true));
        }
        field(16641; "e-Commerce Merchant Id"; Code[30])
        {
            CaptionML = ENU = 'e-Commerce Merchant Id',
                        ENN = 'e-Commerce Merchant Id';
            DataClassification = ToBeClassified;
            /*TableRelation = "e-Commerce Merchant Id"."Merchant Id" WHERE("Merchant Id" = FIELD("e-Commerce Merchant Id"),
                                                                          "Customer No." = FIELD("e-Commerce Customer"));*/
        }
        field(16642; "Custom Duty Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom Duty Amount',
                        ENN = 'Custom Duty Amount';
            DataClassification = ToBeClassified;
        }
        field(16643; "GST Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value',
                        ENN = 'GST Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16644; "GST in Journal"; Boolean)
        {
            CaptionML = ENU = 'GST in Journal',
                        ENN = 'GST in Journal';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16645; "GST Transaction Type"; Option)
        {
            CaptionML = ENU = 'GST Transaction Type',
                        ENN = 'GST Transaction Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Purchase,Sale',
                              ENN = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(16646; "Journal Entry"; Boolean)
        {
            CaptionML = ENU = 'Journal Entry',
                        ENN = 'Journal Entry';
            DataClassification = ToBeClassified;
        }
        field(16647; "Custom Duty Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'Custom Duty Amount (LCY)',
                        ENN = 'Custom Duty Amount (LCY)';
            DataClassification = ToBeClassified;
        }
        field(16648; "Bill of Entry No."; Text[20])
        {
            CaptionML = ENU = 'Bill of Entry No.',
                        ENN = 'Bill of Entry No.';
            DataClassification = ToBeClassified;
        }
        field(16649; "Bill of Entry Date"; Date)
        {
            CaptionML = ENU = 'Bill of Entry Date',
                        ENN = 'Bill of Entry Date';
            DataClassification = ToBeClassified;
        }
        field(16650; "GST in Journal Allocations"; Boolean)
        {
            CaptionML = ENU = 'GST in Journal Allocations',
                        ENN = 'GST in Journal Allocations';
            DataClassification = ToBeClassified;
        }
        field(16651; "Allocation Line No."; Integer)
        {
            CaptionML = ENU = 'Allocation Line No.',
                        ENN = 'Allocation Line No.';
            DataClassification = ToBeClassified;
        }
        field(16652; "Journal Line No."; Integer)
        {
            CaptionML = ENU = 'Journal Line No.',
                        ENN = 'Journal Line No.';
            DataClassification = ToBeClassified;
        }
        field(16653; "Journal Alloc. Template Name"; Code[10])
        {
            CaptionML = ENU = 'Journal Alloc. Template Name',
                        ENN = 'Journal Alloc. Template Name';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Journal Template";
        }
        field(16654; "Old Document No."; Code[20])
        {
            CaptionML = ENU = 'Old Document No.',
                        ENN = 'Old Document No.';
            DataClassification = ToBeClassified;
        }
        field(16655; "GST Adjustment Entry"; Boolean)
        {
            CaptionML = ENU = 'GST Adjustment Entry',
                        ENN = 'GST Adjustment Entry';
            DataClassification = ToBeClassified;
        }
        field(16656; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";

            trigger OnValidate();
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
                Location: Record Location;
                //GSTComponent: Record "GST Component";
                Location2: Record Location;
            begin
            end;
        }
        field(16657; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16658; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16659; "Order Address GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Order Address GST Reg. No.',
                        ENN = 'Order Address GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16660; "Order Address State Code"; Code[10])
        {
            CaptionML = ENU = 'Order Address State Code',
                        ENN = 'Order Address State Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16661; "Bill to-Location(POS)"; Code[10])
        {
            CaptionML = ENU = 'Bill to-Location(POS)',
                        ENN = 'Bill to-Location(POS)';
            DataClassification = ToBeClassified;
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(16662; "Reference Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Reference Invoice No.',
                        ENN = 'Reference Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16663; "Without Bill Of Entry"; Boolean)
        {
            CaptionML = ENU = 'Without Bill Of Entry',
                        ENN = 'Without Bill Of Entry';
            DataClassification = ToBeClassified;
        }
        field(16664; "Amount Excl. GST"; Decimal)
        {
            CaptionML = ENU = 'Amount Excl. GST',
                        ENN = 'Amount Excl. GST';
            DataClassification = ToBeClassified;
        }
        field(16665; "GST TDS"; Boolean)
        {
            CaptionML = ENU = 'GST TDS',
                        ENN = 'GST TDS';
            DataClassification = ToBeClassified;
        }
        field(16666; "GST TDS/TCS %"; Decimal)
        {
            CaptionML = ENU = 'GST TDS/TCS %',
                        ENN = 'GST TDS/TCS %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16667; "GST TDS/TCS Base Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'GST TDS/TCS Base Amount (LCY)',
                        ENN = 'GST TDS/TCS Base Amount (LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16668; "GST TDS/TCS Amount (LCY)"; Decimal)
        {
            CaptionML = ENU = 'GST TDS/TCS Amount (LCY)',
                        ENN = 'GST TDS/TCS Amount (LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16669; "GST TCS"; Boolean)
        {
            CaptionML = ENU = 'GST TCS',
                        ENN = 'GST TCS';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
            // GSTGroup: Record "GST Group";
            begin
            end;
        }
        field(16670; "GST TCS State Code"; Code[10])
        {
            CaptionML = ENU = 'GST TCS State Code',
                        ENN = 'GST TCS State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(16671; "GST TDS/TCS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'GST TDS/TCS Base Amount',
                        ENN = 'GST TDS/TCS Base Amount';
            DataClassification = ToBeClassified;
        }
        field(16680; "Supply Finish Date"; Option)
        {
            CaptionML = ENU = 'Supply Finish Date',
                        ENN = 'Supply Finish Date';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Before Rate Change,After Rate Change',
                              ENN = ' ,Before Rate Change,After Rate Change';
            OptionMembers = " ","Before Rate Change","After Rate Change";
        }
        field(16682; "Payment Date"; Option)
        {
            CaptionML = ENU = 'Payment Date',
                        ENN = 'Payment Date';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Before Rate Change,After Rate Change',
                              ENN = ' ,Before Rate Change,After Rate Change';
            OptionMembers = " ","Before Rate Change","After Rate Change";
        }
        field(16683; "Rate Change Applicable"; Boolean)
        {
            CaptionML = ENU = 'Rate Change Applicable',
                        ENN = 'Rate Change Applicable';
            DataClassification = ToBeClassified;
        }
        field(16684; "POS as Vendor State"; Boolean)
        {
            CaptionML = ENU = 'POS as Vendor State',
                        ENN = 'POS as Vendor State';
            DataClassification = ToBeClassified;
        }
        field(16685; "TDS Adjustment"; Boolean)
        {
            CaptionML = ENU = 'TDS Adjustment',
                        ENN = 'TDS Adjustment';
            DataClassification = ToBeClassified;
        }
        field(16686; "Exclude GST in TCS Base"; Boolean)
        {
            CaptionML = ENU = 'Exclude GST in TCS Base',
                        ENN = 'Exclude GST in TCS Base';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //CheckValidationforExclGSTTCSBase;
            end;
        }
        field(16687; "GST On Assessable Value"; Boolean)
        {
            CaptionML = ENU = 'GST On Assessable Value',
                        ENN = 'GST On Assessable Value';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
            //GSTGroup: Record "GST Group";
            begin
            end;
        }
        field(16688; "GST Assessable Value Sale(LCY)"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value Sale(LCY)',
                        ENN = 'GST Assessable Value Sale(LCY)';
            DataClassification = ToBeClassified;
        }
        field(16689; "Provisional Entry"; Boolean)
        {
            CaptionML = ENU = 'Provisional Entry',
                        ENN = 'Provisional Entry';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                LineCnt: Integer;
            begin
            end;
        }
        field(16690; "Applied Provisional Entry"; Integer)
        {
            CaptionML = ENU = 'Applied Provisional Entry',
                        ENN = 'Applied Provisional Entry';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16691; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                GenJournalLine: Record "Gen. Journal Line";
                GenJournalLine2: Record "Gen. Journal Line";
                ConfigType: Option Vendor,Customer;
                GSTVendorType: Option " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;
                GSTCustType: Option " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
            begin
            end;
        }
        field(16692; "Sales Amount"; Decimal)
        {
            CaptionML = ENU = 'Sales Amount',
                        ENN = 'Sales Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60019; "Vendor Invoice Date"; Date)
        {
        }
        field(60061; "Sale Order No"; Code[20])
        {
            TableRelation = "Sales Header"."No.";
        }
        field(60062; "Sale invoice order no"; Code[20])
        {
            TableRelation = "Sales Invoice Header"."No.";
        }
        field(60063; "Customer Ord no"; Code[65])
        {
        }
        field(60064; "Payment Type"; Option)
        {
            OptionCaption = ',Supply Payment,AMC Amount,Final Payment,Inst.Payment,Advance,Receipt,Contra,Payment,Journal';
            OptionMembers = ,"Supply Payment","AMC Amount","Final Payment","Inst.Payment",Advance,Receipt,Contra,Payment,Journal;
        }
        field(60065; "Sale Invoice No"; Code[20])
        {
            TableRelation = "Sales Invoice Header"."No." WHERE("Order No." = FIELD("Sale Order No"));
        }
        field(60066; "Invoice no"; Code[10])
        {
        }
        field(60067; "Purchase Order No."; Code[30])
        {
            Enabled = false;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = FILTER(Order),
                                                           "Buy-from Vendor No." = FIELD("Account No."));
        }
        field(60068; "Amount Percentage"; Decimal)
        {
        }
        field(60069; "From Date"; Date)
        {
        }
        field(60070; "To Date"; Date)
        {
        }
        field(60071; "Validate Posting"; Boolean)
        {
        }
        field(60072; "Apply Entry No"; Integer)
        {

            trigger OnLookup();
            begin
                //code added by sreenivas

                //DIM1.0 Start
                //Code Commnet
                /*
                GL.MARKEDONLY(FALSE);
                
                JLD.RESET;
                JLD.SETRANGE(JLD."Journal Line No.","Line No.");
                JLD.SETRANGE(JLD."Journal Batch Name","Journal Batch Name");
                JLD.SETFILTER(JLD."Table ID",'81');
                JLD.SETFILTER(JLD."Dimension Code",'EMPLOYEE CODES');
                IF JLD.FIND('-') THEN
                BEGIN
                LED.SETRANGE(LED."Dimension Value Code",JLD."Dimension Value Code");
                LED.SETFILTER(LED."Table ID",'17');
                LED.SETFILTER(LED."Dimension Code",'EMPLOYEE CODES');//removed comment sgs
                IF LED.FIND('-') THEN
                REPEAT
                IF GL.GET(LED."Entry No.") THEN
                GL.MARK(TRUE);
                UNTIL LED.NEXT=0;
                END;
                 */

                GL.MarkedOnly(false);
                DimensionSetEntryGRec.Reset;
                DimensionSetEntryGRec.SetRange("Dimension Set ID", "Dimension Set ID");
                DimensionSetEntryGRec.SetRange("Dimension Code", 'EMPLOYEE CODES');
                if DimensionSetEntryGRec.FindFirst then
                    DimValue := DimensionSetEntryGRec."Dimension Value Code";

                DimensionSetEntryGRec.Reset;
                DimensionSetEntryGRec.SetRange("Dimension Code", 'EMPLOYEE CODES');
                DimensionSetEntryGRec.SetRange("Dimension Value Code", DimValue);
                if DimensionSetEntryGRec.FindSet then
                    repeat
                        //GLRec.RESET;
                        GLRec.SetRange("Dimension Set ID", DimensionSetEntryGRec."Dimension Set ID");
                        if GLRec.FindSet then
                            repeat
                                GL.Get(GLRec."Entry No.");
                                GL.Mark(true);
                            until GLRec.Next = 0;
                    until DimensionSetEntryGRec.Next = 0;
                //DIM1.0 End

                GL.MarkedOnly(true);

                GL.SetRange(GL."Posting Date", (20090401D), (20100331D));
                GL.SetFilter(GL."Document No.", 'CPV*|BPV*');
                GL.SetFilter(GL.Amount, '>0');
                if PAGE.RunModal(88888, GL) = ACTION::LookupOK then


                    /*
                    BEGIN

                    IF GL.MARK THEN
                    totamt+=GL.Amount;
                    END;
                    */


                "Apply Entry No" := GL."Entry No.";
                /*
                //"Apply Entry No":=totamt;    //code added after comparsion with 12nov db
                 */
            end;
        }
        field(60073; "DD/FDR No."; Code[20])
        {
            Description = 'Rev01';
        }
        field(60074; "Payment Through"; Option)
        {
            Description = 'Rev01';
            OptionCaption = '" ,Cheque,Cash,DD,FDR,RTGS,FTT,Credit-Card"';
            OptionMembers = " ",Cheque,Cash,DD,FDR,RTGS,FTT,"Credit-Card";
        }
        field(60075; "Tender No"; Code[20])
        {
            TableRelation = "Tender Header"."Tender No.";
        }
        field(60076; "Final Bill Payment"; Boolean)
        {
            Description = 'Added by Pranavi for SD Tracking';
        }
        field(60077; "Currency Amount"; Decimal)
        {
            Description = 'Added by Pranavi for foreign currency tracking';
        }
        field(60078; "Currency Rate"; Decimal)
        {
            Description = 'Added by Pranavi for foreign currency tracking';
        }
        field(60079; "Old Order"; Boolean)
        {
        }
        field(60080; Printed; Boolean)
        {
        }
        field(60081; Vertical; Option)
        {
            Description = 'Added by Vijaya for vertical expenditure';
            OptionCaption = '" ,Smart Signalling,Smart Cities,Smart Building,IOT,other,AMC"';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other,AMC;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Journal Template Name,Journal Batch Name,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Journal Template Name,Journal Batch Name,Posting Date,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Account Type,Account No.,Applies-to Doc. Type,Applies-to Doc. No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Incoming Document Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date,Source Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Data Exch. Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Journal Batch Name,Journal Template Name"(Key)". Please convert manually.

        key(Journal1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
        }
        key(JournalBatch; "Journal Template Name", "Journal Batch Name", "Posting Date", "Document No.")
        {
            MaintainSQLIndex = false;
        }
        key(AccountType3; "Account Type", "Account No.", "Applies-to Doc. Type", "Applies-to Doc. No.")
        {
        }
        key(DocumentNo4; "Document No.")
        {
        }
        key(Incoming5; "Incoming Document Entry No.")
        {
        }
        key(POsting6; "Document No.", "Posting Date", "Source Code")
        {
            MaintainSQLIndex = false;
            SumIndexFields = "VAT Amount (LCY)", "Bal. VAT Amount (LCY)";
        }
        key(Data7; "Data Exch. Entry No.")
        {
        }
        key(Journal8; "Journal Batch Name", "Journal Template Name")
        {
            SumIndexFields = "Balance (LCY)";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ApprovalsMgmt.OnCancelGeneralJournalLineApprovalRequest(Rec);

    // Lines are deleted 1 by 1, this actually check if this is the last line in the General journal Bach
    GenJournalLine.SETRANGE("Journal Template Name","Journal Template Name");
    GenJournalLine.SETRANGE("Journal Batch Name","Journal Batch Name");
    IF GenJournalLine.COUNT = 1 THEN
      IF GenJournalBatch.GET("Journal Template Name","Journal Batch Name") THEN
        ApprovalsMgmt.OnCancelGeneralJournalBatchApprovalRequest(GenJournalBatch);

    TESTFIELD("Check Printed",FALSE);

    ClearCustVendApplnEntry;
    ClearAppliedGenJnlLine;
    DeletePaymentFileErrors;
    ClearDataExchangeEntries(FALSE);

    GenJnlAlloc.SETRANGE("Journal Template Name","Journal Template Name");
    GenJnlAlloc.SETRANGE("Journal Batch Name","Journal Batch Name");
    GenJnlAlloc.SETRANGE("Journal Line No.","Line No.");
    IF NOT GenJnlAlloc.ISEMPTY THEN
      GenJnlAlloc.DELETEALL;

    DeferralUtilities.DeferralCodeOnDelete(
      DeferralDocType::"G/L",
      "Journal Template Name",
      "Journal Batch Name",0,'',"Line No.");

    VALIDATE("Incoming Document Entry No.",0);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    GenJournalLine.SetRange("Journal Template Name","Journal Template Name");
    GenJournalLine.SetRange("Journal Batch Name","Journal Batch Name");
    if GenJournalLine.Count = 1 then
      if GenJournalBatch.Get("Journal Template Name","Journal Batch Name") then
        ApprovalsMgmt.OnCancelGeneralJournalBatchApprovalRequest(GenJournalBatch);

    TestField("Check Printed",false);
    #11..14
    ClearDataExchangeEntries(false);

    GenJnlAlloc.SetRange("Journal Template Name","Journal Template Name");
    GenJnlAlloc.SetRange("Journal Batch Name","Journal Batch Name");
    GenJnlAlloc.SetRange("Journal Line No.","Line No.");
    if not GenJnlAlloc.IsEmpty then
      GenJnlAlloc.DeleteAll;
    #22..27
    Validate("Incoming Document Entry No.",0);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GenJnlAlloc.LOCKTABLE;
    LOCKTABLE;

    SetLastModifiedDateTime;

    GenJnlTemplate.GET("Journal Template Name");
    GenJnlBatch.GET("Journal Template Name","Journal Batch Name");
    "Copy VAT Setup to Jnl. Lines" := GenJnlBatch."Copy VAT Setup to Jnl. Lines";
    "Posting No. Series" := GenJnlBatch."Posting No. Series";
    "Check Printed" := FALSE;

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GenJnlAlloc.LockTable;
    LockTable;
    #3..5
    GenJnlTemplate.Get("Journal Template Name");
    GenJnlBatch.Get("Journal Template Name","Journal Batch Name");
    "Copy VAT Setup to Jnl. Lines" := GenJnlBatch."Copy VAT Setup to Jnl. Lines";
    "Posting No. Series" := GenJnlBatch."Posting No. Series";
    "Check Printed" := false;
    #11..13
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetLastModifiedDateTime;

    IsHandled := FALSE;
    OnModifyOnBeforeTestCheckPrinted(Rec,IsHandled);
    IF NOT IsHandled THEN
      TESTFIELD("Check Printed",FALSE);

    IF ("Applies-to ID" = '') AND (xRec."Applies-to ID" <> '') THEN
      ClearCustVendApplnEntry;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SetLastModifiedDateTime;

    IsHandled := false;
    OnModifyOnBeforeTestCheckPrinted(Rec,IsHandled);
    if not IsHandled then
      TestField("Check Printed",false);

    if ("Applies-to ID" = '') and (xRec."Applies-to ID" <> '') then
      ClearCustVendApplnEntry;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ApprovalsMgmt.OnRenameRecordInApprovalRequest(xRec.RECORDID,RECORDID);

    TESTFIELD("Check Printed",FALSE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ApprovalsMgmt.OnRenameRecordInApprovalRequest(xRec.RecordId,RecordId);

    TestField("Check Printed",false);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Document Type"(Field 6).OnValidate.Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Document Type" : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Document Type" : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Document Type"(Field 6).OnValidate.Vend(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Document Type" : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Document Type" : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Currency Code"(Field 12).OnValidate.BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Currency Code" : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Currency Code" : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 36).OnLookup.PaymentToleranceMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 426;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Payment Tolerance Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 36).OnLookup.AccType(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner,Employee;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner",Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 36).OnValidate.CustLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 36).OnValidate.VendLedgEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 36).OnValidate.TempGenJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner G/L Acc. No."(Field 116).OnValidate.ICGLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner G/L Acc. No." : 410;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner G/L Acc. No." : "IC G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 119).OnValidate.VATRegNoFormat(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 381;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration No. Format";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Incoming Document Entry No."(Field 165).OnValidate.IncomingDocument(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Incoming Document Entry No." : 130;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Incoming Document Entry No." : "Incoming Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1020).OnLookup.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1020).OnValidate.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Remaining Qty."(Field 1030).OnValidate.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Remaining Qty." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Remaining Qty." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Direct Debit Mandate ID"(Field 1200).OnValidate.SEPADirectDebitMandate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Direct Debit Mandate ID" : 1230;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Direct Debit Mandate ID" : "SEPA Direct Debit Mandate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Deferral Code"(Field 1700).OnValidate.DeferralUtilities(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Deferral Code" : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Deferral Code" : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Depreciation Book Code"(Field 5602).OnValidate.FADeprBook(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Depreciation Book Code" : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Depreciation Book Code" : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Budgeted FA No."(Field 5611).OnValidate.FA(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Budgeted FA No." : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Budgeted FA No." : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.GenJournalBatch(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.GenJournalBatch : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.GenJournalBatch : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.GenJournalLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.GenJournalLine : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.GenJournalLine : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDocNoOnLines(PROCEDURE 78).GenJnlBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDocNoOnLines : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDocNoOnLines : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDocNoOnLines(PROCEDURE 78).GenJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDocNoOnLines : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDocNoOnLines : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberDocumentNo(PROCEDURE 68).GenJnlLine2(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberDocumentNo : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberDocumentNo : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberDocNoOnLines(PROCEDURE 69).LastGenJnlLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberDocNoOnLines : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberDocNoOnLines : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberDocNoOnLines(PROCEDURE 69).GenJnlLine3(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberDocNoOnLines : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberDocNoOnLines : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberAppliesToID(PROCEDURE 70).CustLedgEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberAppliesToID : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberAppliesToID : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberAppliesToID(PROCEDURE 70).CustLedgEntry2(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberAppliesToID : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberAppliesToID : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberAppliesToID(PROCEDURE 70).VendLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberAppliesToID : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberAppliesToID : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenumberAppliesToID(PROCEDURE 70).VendLedgEntry2(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenumberAppliesToID : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenumberAppliesToID : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCurrencyCode(PROCEDURE 4).BankAcc(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCurrencyCode : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCurrencyCode : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckICPartner(PROCEDURE 128).ICPartner(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckICPartner : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckICPartner : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAAddCurrExchRate(PROCEDURE 8).DeprBook(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAAddCurrExchRate : 5611;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAAddCurrExchRate : "Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAAddCurrExchRate(PROCEDURE 8).FADeprBook(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAAddCurrExchRate : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAAddCurrExchRate : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearCustVendApplnEntry(PROCEDURE 11).TempCustLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearCustVendApplnEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearCustVendApplnEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearCustVendApplnEntry(PROCEDURE 11).TempVendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearCustVendApplnEntry : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearCustVendApplnEntry : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearCustVendApplnEntry(PROCEDURE 11).AccType(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearCustVendApplnEntry : G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner,Employee;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearCustVendApplnEntry : "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner",Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckFixedCurrency(PROCEDURE 12).CurrExchRate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckFixedCurrency : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckFixedCurrency : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAVATSetup(PROCEDURE 17).LocalGLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAVATSetup : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAVATSetup : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAVATSetup(PROCEDURE 17).FAPostingGr(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAVATSetup : 5606;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAVATSetup : "FA Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFADeprBook(PROCEDURE 114).FASetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFADeprBook : 5603;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFADeprBook : "FA Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFADeprBook(PROCEDURE 114).FADeprBook(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFADeprBook : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFADeprBook : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFADeprBook(PROCEDURE 114).DefaultFADeprBook(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFADeprBook : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFADeprBook : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpAppliesToDocCust(PROCEDURE 35).ApplyCustEntries(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpAppliesToDocCust : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpAppliesToDocCust : "Apply Customer Entries";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpAppliesToDocVend(PROCEDURE 36).ApplyVendEntries(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpAppliesToDocVend : 233;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpAppliesToDocVend : "Apply Vendor Entries";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpAppliesToDocEmpl(PROCEDURE 171).ApplyEmplEntries(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpAppliesToDocEmpl : 234;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpAppliesToDocEmpl : "Apply Employee Entries";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCountryCodeAndVATRegNo(PROCEDURE 25).Cust(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCountryCodeAndVATRegNo : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCountryCodeAndVATRegNo : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCountryCodeAndVATRegNo(PROCEDURE 25).Vend(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCountryCodeAndVATRegNo : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCountryCodeAndVATRegNo : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultICPartnerGLAccNo(PROCEDURE 1058).GLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultICPartnerGLAccNo : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultICPartnerGLAccNo : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DataCaption(PROCEDURE 29).GenJnlBatch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DataCaption : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DataCaption : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCurrencyCode(PROCEDURE 143).ConfirmManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCurrencyCode : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCurrencyCode : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConvertAmtFCYToLCYForSourceCurrency(PROCEDURE 39).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConvertAmtFCYToLCYForSourceCurrency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConvertAmtFCYToLCYForSourceCurrency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConvertAmtFCYToLCYForSourceCurrency(PROCEDURE 39).CurrExchRate(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConvertAmtFCYToLCYForSourceCurrency : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConvertAmtFCYToLCYForSourceCurrency : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearDataExchangeEntries(PROCEDURE 42).DataExchField(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearDataExchangeEntries : 1221;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearDataExchangeEntries : "Data Exch. Field";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearDataExchangeEntries(PROCEDURE 42).GenJournalLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearDataExchangeEntries : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearDataExchangeEntries : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearAppliedGenJnlLine(PROCEDURE 49).GenJournalLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearAppliedGenJnlLine : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearAppliedGenJnlLine : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetIncomingDocumentURL(PROCEDURE 50).IncomingDocument(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetIncomingDocumentURL : 130;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetIncomingDocumentURL : "Incoming Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertPaymentFileError(PROCEDURE 64).PaymentJnlExportErrorText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertPaymentFileError : 1228;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertPaymentFileError : "Payment Jnl. Export Error Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertPaymentFileErrorWithDetails(PROCEDURE 83).PaymentJnlExportErrorText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertPaymentFileErrorWithDetails : 1228;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertPaymentFileErrorWithDetails : "Payment Jnl. Export Error Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeletePaymentFileBatchErrors(PROCEDURE 67).PaymentJnlExportErrorText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeletePaymentFileBatchErrors : 1228;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeletePaymentFileBatchErrors : "Payment Jnl. Export Error Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeletePaymentFileErrors(PROCEDURE 61).PaymentJnlExportErrorText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeletePaymentFileErrors : 1228;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeletePaymentFileErrors : "Payment Jnl. Export Error Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasPaymentFileErrors(PROCEDURE 24).PaymentJnlExportErrorText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasPaymentFileErrors : 1228;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasPaymentFileErrors : "Payment Jnl. Export Error Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasPaymentFileErrorsInBatch(PROCEDURE 65).PaymentJnlExportErrorText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasPaymentFileErrorsInBatch : 1228;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasPaymentFileErrorsInBatch : "Payment Jnl. Export Error Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).GLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).Customer(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).Vendor(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).BankAccount(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).FixedAsset(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).ICPartner(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAdHocDescription(PROCEDURE 44).Employee(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAdHocDescription : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAdHocDescription : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToDocEntryNo(PROCEDURE 63).CustLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToDocEntryNo : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToDocEntryNo : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToDocEntryNo(PROCEDURE 63).VendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToDocEntryNo : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToDocEntryNo : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToDocEntryNo(PROCEDURE 63).AccType(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToDocEntryNo : G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner,Employee;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToDocEntryNo : "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner",Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToDocDueDate(PROCEDURE 62).CustLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToDocDueDate : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToDocDueDate : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToDocDueDate(PROCEDURE 62).VendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToDocDueDate : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToDocDueDate : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToDocDueDate(PROCEDURE 62).AccType(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToDocDueDate : G/L Account,Customer,Vendor,Bank Account,Fixed Asset;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToDocDueDate : "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: Change Editable on "SetJournalLineFieldsFromApplication(PROCEDURE 51).AccType(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetJournalLineFieldsFromApplication : G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner,Employee;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetJournalLineFieldsFromApplication : "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner",Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsPaymentJournallLineExported(PROCEDURE 80).GenJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsPaymentJournallLineExported : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsPaymentJournallLineExported : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAppliedToVendorLedgerEntryExported(PROCEDURE 79).GenJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAppliedToVendorLedgerEntryExported : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAppliedToVendorLedgerEntryExported : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAppliedToVendorLedgerEntryExported(PROCEDURE 79).VendLedgerEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAppliedToVendorLedgerEntryExported : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAppliedToVendorLedgerEntryExported : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculatePostingDate(PROCEDURE 76).GenJnlLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalculatePostingDate : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalculatePostingDate : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ImportBankStatement(PROCEDURE 73).ProcessGenJnlLines(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ImportBankStatement : 1247;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ImportBankStatement : "Process Gen. Journal  Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportPaymentFile(PROCEDURE 81).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportPaymentFile : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportPaymentFile : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportPaymentFile(PROCEDURE 81).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportPaymentFile : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportPaymentFile : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TotalExportedAmount(PROCEDURE 85).CreditTransferEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TotalExportedAmount : 1206;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TotalExportedAmount : "Credit Transfer Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownExportedAmount(PROCEDURE 95).CreditTransferEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownExportedAmount : 1206;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownExportedAmount : "Credit Transfer Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsOpenedFromBatch(PROCEDURE 87).GenJournalBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsOpenedFromBatch : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsOpenedFromBatch : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDeferrals(PROCEDURE 108).DeferralUtilities(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDeferrals : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDeferrals : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IncrementDocumentNo(PROCEDURE 120).NoSeriesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IncrementDocumentNo : 309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IncrementDocumentNo : "No. Series Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsRecurring(PROCEDURE 199).GenJournalTemplate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsRecurring : 80;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsRecurring : "Gen. Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SuggestBalancingAmount(PROCEDURE 46).GenJournalLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SuggestBalancingAmount : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SuggestBalancingAmount : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetGLAccount(PROCEDURE 146).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetGLAccount : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetGLAccount : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetGLBalAccount(PROCEDURE 121).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetGLBalAccount : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetGLBalAccount : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerAccount(PROCEDURE 47).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerAccount : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerAccount : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerAccount(PROCEDURE 47).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerBalAccount(PROCEDURE 122).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerBalAccount : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerBalAccount : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerBalAccount(PROCEDURE 122).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerBalAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerBalAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorAccount(PROCEDURE 115).Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorAccount : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorAccount : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorAccount(PROCEDURE 115).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetEmployeeAccount(PROCEDURE 188).Employee(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetEmployeeAccount : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetEmployeeAccount : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorBalAccount(PROCEDURE 123).Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorBalAccount : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorBalAccount : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorBalAccount(PROCEDURE 123).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorBalAccount : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorBalAccount : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetEmployeeBalAccount(PROCEDURE 177).Employee(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetEmployeeBalAccount : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetEmployeeBalAccount : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBankAccount(PROCEDURE 116).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBankAccount : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBankAccount : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBankBalAccount(PROCEDURE 124).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBankBalAccount : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBankBalAccount : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAAccount(PROCEDURE 117).FA(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAAccount : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAAccount : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFABalAccount(PROCEDURE 125).FA(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFABalAccount : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFABalAccount : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetICPartnerAccount(PROCEDURE 118).ICPartner(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetICPartnerAccount : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetICPartnerAccount : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetICPartnerBalAccount(PROCEDURE 126).ICPartner(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetICPartnerBalAccount : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetICPartnerBalAccount : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateFAAcquisitionLines(PROCEDURE 131).BalancingGenJnlLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateFAAcquisitionLines : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateFAAcquisitionLines : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateFAAcquisitionLines(PROCEDURE 131).LocalGLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateFAAcquisitionLines : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateFAAcquisitionLines : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateFAAcquisitionLines(PROCEDURE 131).FAPostingGr(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateFAAcquisitionLines : 5606;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateFAAcquisitionLines : "FA Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenerateLineDocNo(PROCEDURE 132).GenJournalBatch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenerateLineDocNo : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenerateLineDocNo : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenerateLineDocNo(PROCEDURE 132).NoSeriesManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenerateLineDocNo : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenerateLineDocNo : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNewLineNo(PROCEDURE 136).GenJournalLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNewLineNo : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNewLineNo : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VoidPaymentFile(PROCEDURE 139).TempGenJnlLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VoidPaymentFile : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VoidPaymentFile : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VoidPaymentFile(PROCEDURE 139).GenJournalLine2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VoidPaymentFile : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VoidPaymentFile : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VoidPaymentFile(PROCEDURE 139).VoidTransmitElecPmnts(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VoidPaymentFile : 9200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VoidPaymentFile : "Void/Transmit Elec. Pmnts";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransmitPaymentFile(PROCEDURE 142).TempGenJnlLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransmitPaymentFile : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransmitPaymentFile : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransmitPaymentFile(PROCEDURE 142).VoidTransmitElecPmnts(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransmitPaymentFile : 9200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransmitPaymentFile : "Void/Transmit Elec. Pmnts";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIfPrivacyBlocked(PROCEDURE 208).Customer(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIfPrivacyBlocked : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIfPrivacyBlocked : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIfPrivacyBlocked(PROCEDURE 208).Vendor(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIfPrivacyBlocked : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIfPrivacyBlocked : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIfPrivacyBlocked(PROCEDURE 208).Employee(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIfPrivacyBlocked : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIfPrivacyBlocked : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearCurrencyCode(PROCEDURE 211).BankAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearCurrencyCode : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearCurrencyCode : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcVATAmountLCY(PROCEDURE 270).LCYCurrency(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcVATAmountLCY : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcVATAmountLCY : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetLastModifiedDateTime(PROCEDURE 1165)."DotNet_DateTimeOffset"(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetLastModifiedDateTime : 3006;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetLastModifiedDateTime : DotNet_DateTimeOffset;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAccountID(PROCEDURE 1166).GLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAccountID : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAccountID : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAccountNo(PROCEDURE 1164).GLAccount(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAccountNo : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAccountNo : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCustomerID(PROCEDURE 175).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCustomerID : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCustomerID : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCustomerNo(PROCEDURE 174).Customer(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCustomerNo : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCustomerNo : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAppliesToInvoiceID(PROCEDURE 167).SalesInvoiceHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAppliesToInvoiceID : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAppliesToInvoiceID : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAppliesToInvoiceNo(PROCEDURE 165).SalesInvoiceHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAppliesToInvoiceNo : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAppliesToInvoiceNo : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateGraphContactId(PROCEDURE 170).Customer(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateGraphContactId : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateGraphContactId : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateGraphContactId(PROCEDURE 170).Contact(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateGraphContactId : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateGraphContactId : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateGraphContactId(PROCEDURE 170).GraphIntContact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateGraphContactId : 5461;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateGraphContactId : "Graph Int. - Contact";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateJournalBatchID(PROCEDURE 173).GenJournalBatch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateJournalBatchID : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateJournalBatchID : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateJournalBatchName(PROCEDURE 172).GenJournalBatch(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateJournalBatchName : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateJournalBatchName : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePaymentMethodId(PROCEDURE 198).PaymentMethod(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePaymentMethodId : 289;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePaymentMethodId : "Payment Method";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePaymentMethodCode(PROCEDURE 185).PaymentMethod(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePaymentMethodCode : 289;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePaymentMethodCode : "Payment Method";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlTemplate(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlTemplate : 80;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlTemplate : "Gen. Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlBatch(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlBatch : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlBatch : "Gen. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlLine(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlLine : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlLine : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PaymentTerms(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PaymentTerms : 3;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PaymentTerms : "Payment Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VendLedgEntry(Variable 1026)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VendLedgEntry : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VendLedgEntry : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlAlloc(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlAlloc : 221;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlAlloc : "Gen. Jnl. Allocation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATPostingSetup(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATPostingSetup : 325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATPostingSetup : "VAT Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1035)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenBusPostingGrp : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenBusPostingGrp : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenProdPostingGrp(Variable 1036)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenProdPostingGrp : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenProdPostingGrp : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1037)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Job(Variable 1060)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Job : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Job : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SourceCodeSetup(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SourceCodeSetup : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SourceCodeSetup : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempJobJnlLine(Variable 1059)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempJobJnlLine : 210;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempJobJnlLine : "Job Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalespersonPurchaser(Variable 1932)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalespersonPurchaser : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalespersonPurchaser : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1040)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustCheckCreditLimit(Variable 1041)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustCheckCreditLimit : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustCheckCreditLimit : "Cust-Check Cr. Limit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesTaxCalculate(Variable 1042)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesTaxCalculate : 398;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesTaxCalculate : "Sales Tax Calculate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlApply(Variable 1043)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlApply : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlApply : "Gen. Jnl.-Apply";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlShowCTEntries(Variable 1039)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlShowCTEntries : 16;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlShowCTEntries : "Gen. Jnl.-Show CT Entries";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustEntrySetApplID(Variable 1044)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustEntrySetApplID : 101;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustEntrySetApplID : "Cust. Entry-SetAppl.ID";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VendEntrySetApplID(Variable 1045)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VendEntrySetApplID : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VendEntrySetApplID : "Vend. Entry-SetAppl.ID";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmplEntrySetApplID(Variable 1029)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmplEntrySetApplID : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmplEntrySetApplID : "Empl. Entry-SetAppl.ID";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1046)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PaymentToleranceMgt(Variable 1053)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PaymentToleranceMgt : 426;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PaymentToleranceMgt : "Payment Tolerance Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralUtilities(Variable 1051)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ApprovalsMgmt(Variable 1069)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ApprovalsMgmt : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApprovalsMgmt : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralDocType(Variable 1050)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralDocType : Purchase,Sales,G/L;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralDocType : Purchase,Sales,"G/L";
    //Variable type has not been exported.

    var
        "---B2B--": Integer;
        PH: Record "Purchase Header";
        GL: Record "G/L Entry";
        GL1: Record "G/L Entry";
        EntryArray: array[300] of Integer;
        i: Integer;
        j: Integer;
        totamt: Decimal;
        "-DIM1.0-": Integer;
        DimensionSetEntryGRec: Record "Dimension Set Entry";
        DimValue: Code[20];
        GLRec: Record "G/L Entry";
}


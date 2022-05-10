tableextension 70211 ServiceContractLineExt extends "Service Contract Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Contract No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Contract Status"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Response Time (Hours)"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Planned Service Date"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Preventive Maint. Date"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoiced to Date"(Field 18)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line Value"(Field 22)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line Discount %"(Field 23)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line Amount"(Field 24)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Starting Date"(Field 29)". Please convert manually.


        //Unsupported feature: Change InitValue on ""New Line"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Line"(Field 30)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line Cost"(Field 32)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line Discount Amount"(Field 33)". Please convert manually.


        //Unsupported feature: Change BlankZero on "Profit(Field 34)". Please convert manually.


        //Unsupported feature: CodeModification on ""Service Item No."(Field 5).OnValidate". Please convert manually.

        //trigger "(Field 5)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        GetServContractHeader;
        IF ServContractHeader."Last Invoice Date" <> 0D THEN BEGIN
          LastInvoiceDate := ServContractHeader."Last Invoice Date";
          EVALUATE(InvoicePeriod,ServContractMgt.GetInvoicePeriodText(ServContractHeader."Invoice Period"));
          NewLastInvoiceDate := CALCDATE(InvoicePeriod,LastInvoiceDate);
          IF (ServContractHeader."Expiration Date" <> 0D) AND
             (NewLastInvoiceDate > ServContractHeader."Expiration Date")
          THEN
            ERROR(Text025,ServiceItemLine.TABLECAPTION,ServContractHeader.FIELDCAPTION("Expiration Date"));
        END;
        IF (ServContractHeader.Status = ServContractHeader.Status::Signed) AND
           (NOT "New Line")
        THEN
          ERROR(Text013,FIELDCAPTION("Service Item No."));

        IF "Service Item No." <> '' THEN BEGIN
          GetServItem;
          TESTFIELD("Customer No.");
          IF ServItem."Customer No." <> ServContractHeader."Customer No." THEN
            ERROR(Text000,"Customer No.");

          ServContractLine.RESET;
          ServContractLine.SETRANGE("Contract No.","Contract No.");
          ServContractLine.SETRANGE("Contract Type","Contract Type");
          ServContractLine.SETRANGE("Service Item No.","Service Item No.");
          ServContractLine.SETFILTER("Line No.",'<>%1',"Line No.");
          IF NOT ServContractLine.ISEMPTY THEN
            ERROR(Text003);

          IF NOT HideDialog THEN BEGIN
            ServContractLine.RESET;
            ServContractLine.SETCURRENTKEY("Service Item No.","Contract Status");
            ServContractLine.SETRANGE("Service Item No.","Service Item No.");
            ServContractLine.SETFILTER("Contract Status",'<>%1',ServContractLine."Contract Status"::Cancelled);
            ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SETFILTER("Contract No.",'<>%1',"Contract No.");
            IF NOT ServContractLine.ISEMPTY THEN BEGIN
              IF NOT ConfirmManagement.ConfirmProcess(
                   STRSUBSTNO(Text019,"Service Item No."),TRUE)
              THEN BEGIN
                "Service Item No." := xRec."Service Item No.";
                EXIT
              END;
            END ELSE BEGIN
              ServContractLine.RESET;
              ServContractLine.SETCURRENTKEY("Service Item No.");
              ServContractLine.SETRANGE("Service Item No.","Service Item No.");
              ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Quote);
              ServContractLine.SETFILTER("Contract No.",'<>%1',"Contract No.");
              IF NOT ServContractLine.ISEMPTY THEN
                IF NOT ConfirmManagement.ConfirmProcess(
                     STRSUBSTNO(Text019,"Service Item No."),TRUE)
                THEN BEGIN
                  "Service Item No." := xRec."Service Item No.";
                  EXIT
                END;
            END;
          END;

          IF (ServItem."Ship-to Code" <> ServContractHeader."Ship-to Code") AND
             NOT HideDialog
          THEN
            IF NOT ConfirmManagement.ConfirmProcess(
                 STRSUBSTNO(Text001,"Service Item No."),TRUE)
            THEN BEGIN
              "Service Item No." := xRec."Service Item No.";
              EXIT;
            END;
          "Ship-to Code" := ServItem."Ship-to Code";
        END;
        ServContractLine := Rec;
        INIT;
        "Starting Date" := ServContractLine."Starting Date";
        "Contract Expiration Date" := ServContractLine."Contract Expiration Date";
        "Credit Memo Date" := ServContractLine."Credit Memo Date";
        "Next Planned Service Date" := ServContractLine."Next Planned Service Date";
        "Service Period" := ServContractLine."Service Period";
        "Customer No." := ServContractLine."Customer No.";
        IF ServContractLine."Service Item No." <> '' THEN
          "Ship-to Code" := ServContractLine."Ship-to Code"
        ELSE
          "Ship-to Code" := ServContractHeader."Ship-to Code";
        "Contract Status" := ServContractLine."Contract Status";
        "Service Item No." := ServContractLine."Service Item No.";
        IF "Service Item No." = '' THEN
          EXIT;
        Description := ServItem.Description;
        "Serial No." := ServItem."Serial No.";
        "Service Item Group Code" := ServItem."Service Item Group Code";
        "Item No." := ServItem."Item No.";
        "Variant Code" := ServItem."Variant Code";
        "Unit of Measure Code" := ServItem."Unit of Measure Code";
        IF (ServContractHeader."Response Time (Hours)" < ServItem."Response Time (Hours)") AND
           (ServContractHeader."Response Time (Hours)" <> 0)
        THEN
          "Response Time (Hours)" := ServContractHeader."Response Time (Hours)"
        ELSE
          IF ServItem."Response Time (Hours)" <> 0 THEN
            "Response Time (Hours)" := ServItem."Response Time (Hours)"
          ELSE
            "Response Time (Hours)" := ServContractHeader."Response Time (Hours)";
        ServMgtSetup.GET;
        VALIDATE("Line Cost",ServItem."Default Contract Cost");
        VALIDATE("Line Value",ServItem."Default Contract Value");
        VALIDATE("Line Discount %",ServItem."Default Contract Discount %");

        IF ServContractLine.GET("Contract Type","Contract No.","Line No.") THEN BEGIN
          UseServContractLineAsxRec := TRUE;
          MODIFY(TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GetServContractHeader;
        if ServContractHeader."Last Invoice Date" <> 0D then begin
          LastInvoiceDate := ServContractHeader."Last Invoice Date";
          Evaluate(InvoicePeriod,ServContractMgt.GetInvoicePeriodText(ServContractHeader."Invoice Period"));
          NewLastInvoiceDate := CalcDate(InvoicePeriod,LastInvoiceDate);
          if (ServContractHeader."Expiration Date" <> 0D) and
             (NewLastInvoiceDate > ServContractHeader."Expiration Date")
          then
            Error(Text025,ServiceItemLine.TableCaption,ServContractHeader.FieldCaption("Expiration Date"));
        end;
        if (ServContractHeader.Status = ServContractHeader.Status::Signed) and
           (not "New Line")
        then
          Error(Text013,FieldCaption("Service Item No."));

        if "Service Item No." <> '' then begin
          GetServItem;
          TestField("Customer No.");
          if ServItem."Customer No." <> ServContractHeader."Customer No." then
            Error(Text000,"Customer No.");

          ServContractLine.Reset;
          ServContractLine.SetRange("Contract No.","Contract No.");
          ServContractLine.SetRange("Contract Type","Contract Type");
          ServContractLine.SetRange("Service Item No.","Service Item No.");
          ServContractLine.SetFilter("Line No.",'<>%1',"Line No.");
          if not ServContractLine.IsEmpty then
            Error(Text003);

          if not HideDialog then begin
            ServContractLine.Reset;
            ServContractLine.SetCurrentKey("Service Item No.","Contract Status");
            ServContractLine.SetRange("Service Item No.","Service Item No.");
            ServContractLine.SetFilter("Contract Status",'<>%1',ServContractLine."Contract Status"::Cancelled);
            ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SetFilter("Contract No.",'<>%1',"Contract No.");
            if not ServContractLine.IsEmpty then begin
              if not ConfirmManagement.ConfirmProcess(
                   StrSubstNo(Text019,"Service Item No."),true)
              then begin
                "Service Item No." := xRec."Service Item No.";
                exit
              end;
            end else begin
              ServContractLine.Reset;
              ServContractLine.SetCurrentKey("Service Item No.");
              ServContractLine.SetRange("Service Item No.","Service Item No.");
              ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Quote);
              ServContractLine.SetFilter("Contract No.",'<>%1',"Contract No.");
              if not ServContractLine.IsEmpty then
                if not ConfirmManagement.ConfirmProcess(
                     StrSubstNo(Text019,"Service Item No."),true)
                then begin
                  "Service Item No." := xRec."Service Item No.";
                  exit
                end;
            end;
          end;

          if (ServItem."Ship-to Code" <> ServContractHeader."Ship-to Code") and
             not HideDialog
          then
            if not ConfirmManagement.ConfirmProcess(
                 StrSubstNo(Text001,"Service Item No."),true)
            then begin
              "Service Item No." := xRec."Service Item No.";
              exit;
            end;
          "Ship-to Code" := ServItem."Ship-to Code";
        end;
        ServContractLine := Rec;
        Init;
        #74..79
        if ServContractLine."Service Item No." <> '' then
          "Ship-to Code" := ServContractLine."Ship-to Code"
        else
        #83..85
        if "Service Item No." = '' then
          exit;
        #88..93
        if (ServContractHeader."Response Time (Hours)" < ServItem."Response Time (Hours)") and
           (ServContractHeader."Response Time (Hours)" <> 0)
        then
          "Response Time (Hours)" := ServContractHeader."Response Time (Hours)"
        else
          if ServItem."Response Time (Hours)" <> 0 then
            "Response Time (Hours)" := ServItem."Response Time (Hours)"
          else
            "Response Time (Hours)" := ServContractHeader."Response Time (Hours)";
        ServMgtSetup.Get;
        Validate("Line Cost",ServItem."Default Contract Cost");
        Validate("Line Value",ServItem."Default Contract Value");
        Validate("Line Discount %",ServItem."Default Contract Discount %");

        if ServContractLine.Get("Contract Type","Contract No.","Line No.") then begin
          UseServContractLineAsxRec := true;
          Modify(true);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 7).OnValidate". Please convert manually.

        //trigger "(Field 7)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("Item No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Item No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item Group Code"(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("Service Item No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Service Item No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Item No." <> xRec."Item No." THEN
          TESTFIELD("Service Item No.",'');

        IF "Item No." <> '' THEN BEGIN
          Item.GET("Item No.");
          Currency.InitRoundingPrecision;
          Description := Item.Description;
          "Unit of Measure Code" := Item."Sales Unit of Measure";
          GetServContractHeader;
          "Response Time (Hours)" := ServContractHeader."Response Time (Hours)";
          ServMgtSetup.GET;
          "Line Cost" :=
            ROUND(Item."Unit Cost" * ServMgtSetup."Contract Value %" / 100,
              Currency."Amount Rounding Precision");
          "Line Discount %" := 0;
          CASE ServMgtSetup."Contract Value Calc. Method" OF
            ServMgtSetup."Contract Value Calc. Method"::"Based on Unit Price":
              "Line Value" :=
                ROUND(Item."Unit Price" * ServMgtSetup."Contract Value %" / 100,
                  Currency."Amount Rounding Precision");
            ServMgtSetup."Contract Value Calc. Method"::"Based on Unit Cost":
              "Line Value" :=
                ROUND(Item."Unit Cost" * ServMgtSetup."Contract Value %" / 100,
                  Currency."Amount Rounding Precision");
          END;
          VALIDATE("Line Value","Line Value");
        END ELSE BEGIN
          "Unit of Measure Code" := '';
          "Variant Code" := '';
          "Serial No." := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Item No." <> xRec."Item No." then
          TestField("Service Item No.",'');

        if "Item No." <> '' then begin
          Item.Get("Item No.");
        #7..11
          ServMgtSetup.Get;
          "Line Cost" :=
            Round(Item."Unit Cost" * ServMgtSetup."Contract Value %" / 100,
              Currency."Amount Rounding Precision");
          "Line Discount %" := 0;
          case ServMgtSetup."Contract Value Calc. Method" of
            ServMgtSetup."Contract Value Calc. Method"::"Based on Unit Price":
              "Line Value" :=
                Round(Item."Unit Price" * ServMgtSetup."Contract Value %" / 100,
        #21..23
                Round(Item."Unit Cost" * ServMgtSetup."Contract Value %" / 100,
                  Currency."Amount Rounding Precision");
          end;
          Validate("Line Value","Line Value");
        end else begin
        #29..31
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Unit of Measure Code" <> xRec."Unit of Measure Code" THEN BEGIN
          TESTFIELD("Service Item No.",'');
          TESTFIELD("Item No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Unit of Measure Code" <> xRec."Unit of Measure Code" then begin
          TestField("Service Item No.",'');
          TestField("Item No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Next Planned Service Date"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Next Planned Service Date" <> 0D) AND
           ("Next Planned Service Date" < "Starting Date")
        THEN
          ERROR(Text009,FIELDCAPTION("Next Planned Service Date"),FIELDCAPTION("Starting Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Next Planned Service Date" <> 0D) and
           ("Next Planned Service Date" < "Starting Date")
        then
          Error(Text009,FieldCaption("Next Planned Service Date"),FieldCaption("Starting Date"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Credit Memo Date"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        TESTFIELD(Credited,FALSE);

        IF "Credit Memo Date" <> 0D THEN BEGIN
          IF "Credit Memo Date" > "Contract Expiration Date" THEN
            ERROR(
              Text008,
              FIELDCAPTION("Credit Memo Date"),FIELDCAPTION("Contract Expiration Date"));
        END;

        IF "Credit Memo Date" <> xRec."Credit Memo Date" THEN
          IF "Credit Memo Date" = 0D THEN
            ERROR(Text018,FIELDCAPTION("Credit Memo Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        TestField(Credited,false);

        if "Credit Memo Date" <> 0D then begin
          if "Credit Memo Date" > "Contract Expiration Date" then
            Error(
              Text008,
              FieldCaption("Credit Memo Date"),FieldCaption("Contract Expiration Date"));
        end;

        if "Credit Memo Date" <> xRec."Credit Memo Date" then
          if "Credit Memo Date" = 0D then
            Error(Text018,FieldCaption("Credit Memo Date"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Contract Expiration Date"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := FALSE;
        OnBeforeValidateContractExpirationDate(Rec,xRec,CurrFieldNo,IsHandled);
        IF IsHandled THEN
          EXIT;

        TESTFIELD(Credited,FALSE);

        ServContractHeader.GET("Contract Type","Contract No.");

        IF (NOT ServContractHeader.Prepaid) AND
           (xRec."Contract Expiration Date" <= "Invoiced to Date") AND
           (xRec."Contract Expiration Date" <> 0D)
        THEN
          IF ("Contract Expiration Date" > "Invoiced to Date") OR
             ("Contract Expiration Date" = 0D)
          THEN
            ERROR(
              Text024,
              FIELDCAPTION("Contract Expiration Date"));

        IF "Contract Expiration Date" = 0D THEN BEGIN
          "Credit Memo Date" := 0D;
          EXIT;
        END;

        IF "Contract Expiration Date" < "Starting Date" THEN
          ERROR(
            Text009,
            FIELDCAPTION("Contract Expiration Date"),
            FIELDCAPTION("Starting Date"));

        IF ServContractHeader."Expiration Date" <> 0D THEN
          IF "Contract Expiration Date" > ServContractHeader."Expiration Date" THEN
            ERROR(
              Text017,
              FIELDCAPTION("Contract Expiration Date"),
              ServContractHeader.FIELDCAPTION("Expiration Date"));

        IF "Contract Expiration Date" < "Credit Memo Date" THEN
          ERROR(
            Text009,
            FIELDCAPTION("Contract Expiration Date"),
            FIELDCAPTION("Credit Memo Date"));

        IF "Credit Memo Date" = 0D THEN
          "Credit Memo Date" := "Contract Expiration Date";

        IF NOT ServContractHeader."Automatic Credit Memos" THEN BEGIN
          ServLedgEntry.RESET;
          ServLedgEntry.SETCURRENTKEY(Type,"No.","Entry Type","Moved from Prepaid Acc.","Posting Date",Open);
          ServLedgEntry.SETRANGE(Type,ServLedgEntry.Type::"Service Contract");
          ServLedgEntry.SETRANGE("No.","Contract No.");
          ServLedgEntry.SETRANGE("Moved from Prepaid Acc.",FALSE);
          ServLedgEntry.SETRANGE(Open,FALSE);
          ServLedgEntry.CALCSUMS("Amount (LCY)");
          IF ServLedgEntry."Amount (LCY)" <> 0 THEN
            MESSAGE(Text011,"Contract No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := false;
        OnBeforeValidateContractExpirationDate(Rec,xRec,CurrFieldNo,IsHandled);
        if IsHandled then
          exit;

        TestField(Credited,false);

        ServContractHeader.Get("Contract Type","Contract No.");

        if (not ServContractHeader.Prepaid) and
           (xRec."Contract Expiration Date" <= "Invoiced to Date") and
           (xRec."Contract Expiration Date" <> 0D)
        then
          if ("Contract Expiration Date" > "Invoiced to Date") or
             ("Contract Expiration Date" = 0D)
          then
            Error(
              Text024,
              FieldCaption("Contract Expiration Date"));

        if "Contract Expiration Date" = 0D then begin
          "Credit Memo Date" := 0D;
          exit;
        end;

        if "Contract Expiration Date" < "Starting Date" then
          Error(
            Text009,
            FieldCaption("Contract Expiration Date"),
            FieldCaption("Starting Date"));

        if ServContractHeader."Expiration Date" <> 0D then
          if "Contract Expiration Date" > ServContractHeader."Expiration Date" then
            Error(
              Text017,
              FieldCaption("Contract Expiration Date"),
              ServContractHeader.FieldCaption("Expiration Date"));

        if "Contract Expiration Date" < "Credit Memo Date" then
          Error(
            Text009,
            FieldCaption("Contract Expiration Date"),
            FieldCaption("Credit Memo Date"));

        if "Credit Memo Date" = 0D then
          "Credit Memo Date" := "Contract Expiration Date";

        if not ServContractHeader."Automatic Credit Memos" then begin
          ServLedgEntry.Reset;
          ServLedgEntry.SetCurrentKey(Type,"No.","Entry Type","Moved from Prepaid Acc.","Posting Date",Open);
          ServLedgEntry.SetRange(Type,ServLedgEntry.Type::"Service Contract");
          ServLedgEntry.SetRange("No.","Contract No.");
          ServLedgEntry.SetRange("Moved from Prepaid Acc.",false);
          ServLedgEntry.SetRange(Open,false);
          ServLedgEntry.CalcSums("Amount (LCY)");
          if ServLedgEntry."Amount (LCY)" <> 0 then
            Message(Text011,"Contract No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Value"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Line Value" < 0 THEN
          FIELDERROR("Line Value");

        VALIDATE("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Line Value" < 0 then
          FieldError("Line Value");

        Validate("Line Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount %"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := FALSE;
        OnBeforeValidateLineDiscountPercent(Rec,xRec,CurrFieldNo,IsHandled);
        IF IsHandled THEN
          EXIT;

        Currency.InitRoundingPrecision;
        "Line Value" := ROUND("Line Value",Currency."Amount Rounding Precision");
        "Line Amount" :=
          ROUND("Line Value" - "Line Value" * "Line Discount %" / 100,
            Currency."Amount Rounding Precision");
        "Line Discount Amount" :=
          ROUND("Line Value" - "Line Amount",Currency."Amount Rounding Precision");
        Profit := ROUND("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := false;
        OnBeforeValidateLineDiscountPercent(Rec,xRec,CurrFieldNo,IsHandled);
        if IsHandled then
          exit;

        Currency.InitRoundingPrecision;
        "Line Value" := Round("Line Value",Currency."Amount Rounding Precision");
        "Line Amount" :=
          Round("Line Value" - "Line Value" * "Line Discount %" / 100,
            Currency."Amount Rounding Precision");
        "Line Discount Amount" :=
          Round("Line Value" - "Line Amount",Currency."Amount Rounding Precision");
        Profit := Round("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Amount"(Field 24).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("Line Value");
        Currency.InitRoundingPrecision;
        "Line Discount Amount" := ROUND("Line Value" - "Line Amount",Currency."Amount Rounding Precision");
        "Line Discount %" := "Line Discount Amount" / "Line Value" * 100;
        Profit := ROUND("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Line Value");
        Currency.InitRoundingPrecision;
        "Line Discount Amount" := Round("Line Value" - "Line Amount",Currency."Amount Rounding Precision");
        "Line Discount %" := "Line Discount Amount" / "Line Value" * 100;
        Profit := Round("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on "Credited(Field 31).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("Contract Expiration Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Contract Expiration Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Cost"(Field 32).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        Currency.InitRoundingPrecision;
        Profit := ROUND("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        Currency.InitRoundingPrecision;
        Profit := Round("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount Amount"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        Currency.InitRoundingPrecision;
        IF "Line Value" <> 0 THEN
          "Line Discount %" := "Line Discount Amount" / "Line Value" * 100
        ELSE
          "Line Discount %" := 0;
        "Line Amount" :=
          ROUND("Line Value" - "Line Value" * "Line Discount %" / 100,Currency."Amount Rounding Precision");
        Profit := ROUND("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        Currency.InitRoundingPrecision;
        if "Line Value" <> 0 then
          "Line Discount %" := "Line Discount Amount" / "Line Value" * 100
        else
          "Line Discount %" := 0;
        "Line Amount" :=
          Round("Line Value" - "Line Value" * "Line Discount %" / 100,Currency."Amount Rounding Precision");
        Profit := Round("Line Amount" - "Line Cost",Currency."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on "Profit(Field 34).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        Currency.InitRoundingPrecision;
        "Line Amount" := ROUND(Profit + "Line Cost",Currency."Amount Rounding Precision");
        "Line Discount Amount" := ROUND("Line Value" - "Line Amount",Currency."Amount Rounding Precision");
        IF "Line Value" <> 0 THEN
          "Line Discount %" := "Line Discount Amount" / "Line Value" * 100;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        Currency.InitRoundingPrecision;
        "Line Amount" := Round(Profit + "Line Cost",Currency."Amount Rounding Precision");
        "Line Discount Amount" := Round("Line Value" - "Line Amount",Currency."Amount Rounding Precision");
        if "Line Value" <> 0 then
          "Line Discount %" := "Line Discount Amount" / "Line Value" * 100;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Contract Type,Contract No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contract No.,Line No.,Contract Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No.,Contract Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contract Type,Contract No.,Credited,New Line"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Ship-to Code"(Key)". Please convert manually.

        key(Key1; "Contract Type", "Contract No.", "Line No.")
        {
        }
        key(Key2; "Contract No.", "Line No.", "Contract Type")
        {
        }
        key(Key3; "Service Item No.", "Contract Status")
        {
        }
        key(Key4; "Contract Type", "Contract No.", Credited, "New Line")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Line Amount", Profit;
        }
        key(Key5; "Customer No.", "Ship-to Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;
    IF "Contract Type" = "Contract Type"::Contract THEN BEGIN
      GetServContractHeader;
      IF ServContractHeader.Status = ServContractHeader.Status::Canceled THEN
        ERROR(Text015,ServContractHeader.Status);
      IF (ServContractHeader.Status = ServContractHeader.Status::Signed) AND
         (NOT "New Line") AND
         ServContractHeader."Automatic Credit Memos"
      THEN BEGIN
        TESTFIELD("Contract Expiration Date");
        CODEUNIT.RUN(CODEUNIT::CreateCreditfromContractLines,Rec);
      END;

      IF (ServContractHeader.Status = ServContractHeader.Status::Signed) AND
         (NOT "New Line") AND
         (NOT ServContractHeader."Automatic Credit Memos")
      THEN
        IF CreditMemoBaseExists AND
           (NOT StatusCheckSuspended)
        THEN
          IF NOT ConfirmManagement.ConfirmProcess(Text022,TRUE) THEN
            ERROR(Text023);
      ServMgtSetup.GET;
      IF "Service Item No." <> '' THEN BEGIN
        IF ServMgtSetup."Register Contract Changes" THEN
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FIELDCAPTION("Service Item No."),2,
            FORMAT("Service Item No."),'',"Service Item No.","Line No.");
        ServLogMgt.ServItemRemovedFromContract(Rec);
      END ELSE
        IF ServMgtSetup."Register Contract Changes" THEN
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FIELDCAPTION(Description),2,Description,'','',"Line No.");

      GetServContractHeader;
      IF (NOT ServContractHeader."Allow Unbalanced Amounts") AND
         (ServContractHeader.Status = ServContractHeader.Status::Signed)
      THEN
        ContractGainLossEntry.AddEntry(1,"Contract Type","Contract No.",-"Line Amount",'');
    END;

    ServCommentLine.SETRANGE("Table Name",ServCommentLine."Table Name"::"Service Contract");
    ServCommentLine.SETRANGE("Table Subtype","Contract Type");
    ServCommentLine.SETRANGE("No.","Contract No.");
    ServCommentLine.SETRANGE(Type,ServCommentLine.Type::General);
    ServCommentLine.SETRANGE("Table Line No.","Line No.");
    ServCommentLine.DELETEALL;

    UpdateContractAnnualAmount(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatusOpen;
    if "Contract Type" = "Contract Type"::Contract then begin
      GetServContractHeader;
      if ServContractHeader.Status = ServContractHeader.Status::Canceled then
        Error(Text015,ServContractHeader.Status);
      if (ServContractHeader.Status = ServContractHeader.Status::Signed) and
         (not "New Line") and
         ServContractHeader."Automatic Credit Memos"
      then begin
        TestField("Contract Expiration Date");
        CODEUNIT.Run(CODEUNIT::CreateCreditfromContractLines,Rec);
      end;

      if (ServContractHeader.Status = ServContractHeader.Status::Signed) and
         (not "New Line") and
         (not ServContractHeader."Automatic Credit Memos")
      then
        if CreditMemoBaseExists and
           (not StatusCheckSuspended)
        then
          if not ConfirmManagement.ConfirmProcess(Text022,true) then
            Error(Text023);
      ServMgtSetup.Get;
      if "Service Item No." <> '' then begin
        if ServMgtSetup."Register Contract Changes" then
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FieldCaption("Service Item No."),2,
            Format("Service Item No."),'',"Service Item No.","Line No.");
        ServLogMgt.ServItemRemovedFromContract(Rec);
      end else
        if ServMgtSetup."Register Contract Changes" then
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FieldCaption(Description),2,Description,'','',"Line No.");

      GetServContractHeader;
      if (not ServContractHeader."Allow Unbalanced Amounts") and
         (ServContractHeader.Status = ServContractHeader.Status::Signed)
      then
        ContractGainLossEntry.AddEntry(1,"Contract Type","Contract No.",-"Line Amount",'');
    end;

    ServCommentLine.SetRange("Table Name",ServCommentLine."Table Name"::"Service Contract");
    ServCommentLine.SetRange("Table Subtype","Contract Type");
    ServCommentLine.SetRange("No.","Contract No.");
    ServCommentLine.SetRange(Type,ServCommentLine.Type::General);
    ServCommentLine.SetRange("Table Line No.","Line No.");
    ServCommentLine.DeleteAll;

    UpdateContractAnnualAmount(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD(Description);
    GetServContractHeader;
    ServContractHeader.TESTFIELD("Customer No.");
    ServContractHeader.TESTFIELD("Contract No.");
    ServContractHeader.TESTFIELD("Starting Date");
    IF "Service Item No." <> '' THEN BEGIN
      ServContractHeader.TESTFIELD("Service Period");
      ServContractHeader.TESTFIELD("First Service Date");
    END;

    ServMgtSetup.GET;

    UpdateContractAnnualAmount(FALSE);

    IF ("Service Item No." = '') AND ("Response Time (Hours)" = 0) THEN
      "Response Time (Hours)" := ServContractHeader."Response Time (Hours)";

    IF "Contract Type" = "Contract Type"::Contract THEN BEGIN
      IF "Service Item No." <> '' THEN BEGIN
        IF ServMgtSetup."Register Contract Changes" THEN
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FIELDCAPTION("Service Item No."),1,'',
            FORMAT("Service Item No."),"Service Item No.","Line No.");
        ServLogMgt.ServItemAddToContract(Rec);
      END ELSE
        IF ServMgtSetup."Register Contract Changes" THEN
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FIELDCAPTION(Description),1,'',Description,'',"Line No.");
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField(Description);
    GetServContractHeader;
    ServContractHeader.TestField("Customer No.");
    ServContractHeader.TestField("Contract No.");
    ServContractHeader.TestField("Starting Date");
    if "Service Item No." <> '' then begin
      ServContractHeader.TestField("Service Period");
      ServContractHeader.TestField("First Service Date");
    end;

    ServMgtSetup.Get;

    UpdateContractAnnualAmount(false);

    if ("Service Item No." = '') and ("Response Time (Hours)" = 0) then
      "Response Time (Hours)" := ServContractHeader."Response Time (Hours)";

    if "Contract Type" = "Contract Type"::Contract then begin
      if "Service Item No." <> '' then begin
        if ServMgtSetup."Register Contract Changes" then
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FieldCaption("Service Item No."),1,'',
            Format("Service Item No."),"Service Item No.","Line No.");
        ServLogMgt.ServItemAddToContract(Rec);
      end else
        if ServMgtSetup."Register Contract Changes" then
          ContractChangeLog.LogContractChange(
            "Contract No.",1,FieldCaption(Description),1,'',Description,'',"Line No.");
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF UseServContractLineAsxRec THEN BEGIN
      xRec := ServContractLine;
      UseServContractLineAsxRec := FALSE;
    END;

    IF ("Service Item No." = '') AND
       ("Item No." = '') AND
       (Description = '')
    THEN
      ERROR(Text016,FIELDCAPTION(Description));

    ServMgtSetup.GET;
    IF ServMgtSetup."Register Contract Changes" THEN
      IF "Contract Type" = "Contract Type"::Contract THEN
        LogContractLineChanges(xRec);

    IF "Line Amount" <> xRec."Line Amount" THEN
      UpdateContractAnnualAmount(FALSE);

    IF "Service Item No." <> xRec."Service Item No." THEN BEGIN
      ServLogMgt.ServItemAddToContract(Rec);
      ServLogMgt.ServItemRemovedFromContract(xRec);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if UseServContractLineAsxRec then begin
      xRec := ServContractLine;
      UseServContractLineAsxRec := false;
    end;

    if ("Service Item No." = '') and
       ("Item No." = '') and
       (Description = '')
    then
      Error(Text016,FieldCaption(Description));

    ServMgtSetup.Get;
    if ServMgtSetup."Register Contract Changes" then
      if "Contract Type" = "Contract Type"::Contract then
        LogContractLineChanges(xRec);

    if "Line Amount" <> xRec."Line Amount" then
      UpdateContractAnnualAmount(false);

    if "Service Item No." <> xRec."Service Item No." then begin
      ServLogMgt.ServItemAddToContract(Rec);
      ServLogMgt.ServItemRemovedFromContract(xRec);
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Service Item No."(Field 5).OnValidate.ServiceItemLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Service Item No." : 5901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Service Item No." : "Service Item Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Item No."(Field 5).OnValidate.ServContractMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Service Item No." : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Service Item No." : ServContractManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Item No."(Field 5).OnValidate.ConfirmManagement(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Service Item No." : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Service Item No." : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ConfirmManagement : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ConfirmManagement : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateContractAnnualAmount(PROCEDURE 4).OldServContractHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateContractAnnualAmount : 5965;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateContractAnnualAmount : "Service Contract Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateContractAnnualAmount(PROCEDURE 4).ServContractLine2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateContractAnnualAmount : 5964;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateContractAnnualAmount : "Service Contract Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreditMemoBaseExists(PROCEDURE 7).ServContractMgt(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreditMemoBaseExists : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreditMemoBaseExists : ServContractManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1036)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServMgtSetup(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServMgtSetup : 5911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServMgtSetup : "Service Mgt. Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServLedgEntry(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServLedgEntry : 5907;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServLedgEntry : "Service Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServContractHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServContractHeader : 5965;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServContractHeader : "Service Contract Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServContractLine(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServContractLine : 5964;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServContractLine : "Service Contract Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItem(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServItem : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServItem : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ContractChangeLog(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ContractChangeLog : 5967;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ContractChangeLog : "Contract Change Log";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ContractGainLossEntry(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ContractGainLossEntry : 5969;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ContractGainLossEntry : "Contract Gain/Loss Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServCommentLine(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServCommentLine : 5906;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServCommentLine : "Service Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServLogMgt(Variable 1030)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServLogMgt : 5906;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServLogMgt : ServLogManagement;
    //Variable type has not been exported.
}


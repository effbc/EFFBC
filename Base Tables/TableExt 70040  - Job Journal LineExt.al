tableextension 70040 JobJournalLineExt extends "Job Journal Line"
{
    // version NAVW19.00.00.50785,NAVIN9.00.00.50785

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 9)". Please convert manually.


        //Unsupported feature: Change Description on "Description(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost (LCY)"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Cost (LCY)"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Price (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Price (LCY)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Resource Group No."(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change InitValue on "Chargeable(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Applies-to Entry"(Field 37)". Please convert manually.


        //Unsupported feature: Change Editable on ""Entry Type"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Code"(Field 62)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Journal Batch Name"(Field 73)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Recurring Method"(Field 75)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 82)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 83)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Currency Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Currency Total Cost"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Currency Total Price"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Currency Line Amount"(Field 96)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Time Sheet Line No."(Field 951)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Time Sheet Date"(Field 952)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1000)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Cost"(Field 1001)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Line Type"(Field 1003)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 1008)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Factor"(Field 1010)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Amount (LCY)"(Field 1012)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Discount Amount (LCY)"(Field 1013)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Price"(Field 1014)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Factor"(Field 1015)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Ledger Entry Type"(Field 1017)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ledger Entry No."(Field 1018)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Ledger Entry No."(Field 1018)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Planning Line No."(Field 1019)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 5468)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reserved Qty. (Base)"(Field 5468)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 5468)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lot No."(Field 6501)". Please convert manually.


        //Unsupported feature: CodeModification on ""Job No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job No." = '' THEN BEGIN
          VALIDATE("Currency Code",'');
          VALIDATE("Job Task No.",'');
          CreateDim(
            DATABASE::Job,"Job No.",
            DimMgt.TypeToTableID2(Type),"No.",
            DATABASE::"Resource Group","Resource Group No.");
          EXIT;
        END;

        GetJob;
        Job.TestBlocked;
        IsHandled := FALSE;
        OnValidateJobNoOnBeforeCheckJob(Rec,xRec,Cust,IsHandled);
        IF NOT IsHandled THEN BEGIN
          Job.TESTFIELD("Bill-to Customer No.");
          Cust.GET(Job."Bill-to Customer No.");
          VALIDATE("Job Task No.",'');
        END;
        "Customer Price Group" := Job."Customer Price Group";
        VALIDATE("Currency Code",Job."Currency Code");
        CreateDim(
          DATABASE::Job,"Job No.",
          DimMgt.TypeToTableID2(Type),"No.",
          DATABASE::"Resource Group","Resource Group No.");
        VALIDATE("Country/Region Code",Job."Bill-to Country/Region Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job No." = '' then begin
          Validate("Currency Code",'');
          Validate("Job Task No.",'');
        #4..7
          exit;
        end;
        #10..12
        IsHandled := false;
        OnValidateJobNoOnBeforeCheckJob(Rec,xRec,Cust,IsHandled);
        if not IsHandled then begin
          Job.TestField("Bill-to Customer No.");
          Cust.Get(Job."Bill-to Customer No.");
          Validate("Job Task No.",'');
        end;
        "Customer Price Group" := Job."Customer Price Group";
        Validate("Currency Code",Job."Currency Code");
        #22..25
        Validate("Country/Region Code",Job."Bill-to Country/Region Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting Date"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT ISTEMPORARY THEN
          TESTFIELD("Posting Date");
        VALIDATE("Document Date","Posting Date");
        IF "Currency Code" <> '' THEN BEGIN
          UpdateCurrencyFactor;
          UpdateAllAmounts;
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not IsTemporary then
          TestField("Posting Date");
        Validate("Document Date","Posting Date");
        if "Currency Code" <> '' then begin
          UpdateCurrencyFactor;
          UpdateAllAmounts;
        end
        */
        //end;


        //Unsupported feature: CodeModification on "Type(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("No.",'');
        IF Type = Type::Item THEN BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Directed Put-away and Pick",FALSE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("No.",'');
        if Type = Type::Item then begin
          GetLocation("Location Code");
          Location.TestField("Directed Put-away and Pick",false);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 8).OnValidate". Please convert manually.

        //trigger "(Field 8)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("No." = '') OR ("No." <> xRec."No.") THEN BEGIN
          Description := '';
          "Unit of Measure Code" := '';
          "Qty. per Unit of Measure" := 1;
          "Variant Code" := '';
          "Work Type Code" := '';
          DeleteAmounts;
          "Cost Factor" := 0;
          "Applies-to Entry" := 0;
          "Applies-from Entry" := 0;
          CheckedAvailability := FALSE;
          "Job Planning Line No." := 0;
          IF "No." = '' THEN BEGIN
            UpdateDimensions;
            EXIT;
          END
        END;

        CASE Type OF
          Type::Resource:
            CopyFromResource;
          Type::Item:
            CopyFromItem;
          Type::"G/L Account":
            CopyFromGLAccount;
        END;

        VALIDATE(Quantity);
        UpdateDimensions;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("No." = '') or ("No." <> xRec."No.") then begin
        #2..10
          CheckedAvailability := false;
          "Job Planning Line No." := 0;
          if "No." = '' then begin
            UpdateDimensions;
            exit;
          end
        end;

        case Type of
        #20..25
        end;

        Validate(Quantity);
        UpdateDimensions;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Quantity (Base)" := UOMMgt.CalcBaseQty(Quantity,"Qty. per Unit of Measure");
        UpdateAllAmounts;

        IF "Job Planning Line No." <> 0 THEN
          VALIDATE("Job Planning Line No.");

        CheckItemAvailable;
        IF Item."Item Tracking Code" <> '' THEN
          ReserveJobJnlLine.VerifyQuantity(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if "Job Planning Line No." <> 0 then
          Validate("Job Planning Line No.");

        CheckItemAvailable;
        if Item."Item Tracking Code" <> '' then
          ReserveJobJnlLine.VerifyQuantity(Rec,xRec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost (LCY)"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type = Type::Item) AND
           Item.GET("No.") AND
           (Item."Costing Method" = Item."Costing Method"::Standard)
        THEN
          UpdateAllAmounts
        ELSE BEGIN
          InitRoundingPrecisions;
          "Unit Cost" := ROUND(
              CurrExchRate.ExchangeAmtLCYToFCY(
                "Posting Date","Currency Code",
                "Unit Cost (LCY)","Currency Factor"),
              UnitAmountRoundingPrecisionFCY);
          UpdateAllAmounts;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type = Type::Item) and
           Item.Get("No.") and
           (Item."Costing Method" = Item."Costing Method"::Standard)
        then
          UpdateAllAmounts
        else begin
          InitRoundingPrecisions;
          "Unit Cost" := Round(
        #9..13
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Price (LCY)"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        InitRoundingPrecisions;
        "Unit Price" := ROUND(
            CurrExchRate.ExchangeAmtLCYToFCY(
              "Posting Date","Currency Code",
              "Unit Price (LCY)","Currency Factor"),
            UnitAmountRoundingPrecisionFCY);
        UpdateAllAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        InitRoundingPrecisions;
        "Unit Price" := Round(
        #3..7
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetGLSetup;
        CASE Type OF
          Type::Item:
            BEGIN
              Item.GET("No.");
              "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
              OnAfterAssignItemUoM(Rec,Item);
            END;
          Type::Resource:
            BEGIN
              IF CurrFieldNo <> FIELDNO("Work Type Code") THEN
                IF "Work Type Code" <> '' THEN BEGIN
                  WorkType.GET("Work Type Code");
                  IF WorkType."Unit of Measure Code" <> '' THEN
                    TESTFIELD("Unit of Measure Code",WorkType."Unit of Measure Code");
                END ELSE
                  TESTFIELD("Work Type Code",'');
              IF "Unit of Measure Code" = '' THEN BEGIN
                Resource.GET("No.");
                "Unit of Measure Code" := Resource."Base Unit of Measure";
              END;
              ResUnitofMeasure.GET("No.","Unit of Measure Code");
              "Qty. per Unit of Measure" := ResUnitofMeasure."Qty. per Unit of Measure";
              "Quantity (Base)" := Quantity * "Qty. per Unit of Measure";
              OnAfterAssignResourceUoM(Rec,Res);
            END;
          Type::"G/L Account":
            BEGIN
              "Qty. per Unit of Measure" := 1;
              OnAfterAssignGLAccountUoM(Rec);
            END;
        END;
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetGLSetup;
        case Type of
          Type::Item:
            begin
              Item.Get("No.");
              "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
              OnAfterAssignItemUoM(Rec,Item);
            end;
          Type::Resource:
            begin
              if CurrFieldNo <> FieldNo("Work Type Code") then
                if "Work Type Code" <> '' then begin
                  WorkType.Get("Work Type Code");
                  if WorkType."Unit of Measure Code" <> '' then
                    TestField("Unit of Measure Code",WorkType."Unit of Measure Code");
                end else
                  TestField("Work Type Code",'');
              if "Unit of Measure Code" = '' then begin
                Resource.Get("No.");
                "Unit of Measure Code" := Resource."Base Unit of Measure";
              end;
              ResUnitofMeasure.Get("No.","Unit of Measure Code");
        #23..25
            end;
          Type::"G/L Account":
            begin
              "Qty. per Unit of Measure" := 1;
              OnAfterAssignGLAccountUoM(Rec);
            end;
        end;
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Bin Code" := '';
        IF "Location Code" <> '' THEN
          IF IsNonInventoriableItem THEN
            Item.TESTFIELD(Type,Item.Type::Inventory);
        GetLocation("Location Code");
        Location.TESTFIELD("Directed Put-away and Pick",FALSE);
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Bin Code" := '';
        if "Location Code" <> '' then
          if IsNonInventoriableItem then
            Item.TestField(Type,Item.Type::Inventory);
        GetLocation("Location Code");
        Location.TestField("Directed Put-away and Pick",false);
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on "Chargeable(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Chargeable <> xRec.Chargeable THEN
          IF NOT Chargeable THEN
            VALIDATE("Unit Price",0)
          ELSE
            VALIDATE("No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Chargeable <> xRec.Chargeable then
          if not Chargeable then
            Validate("Unit Price",0)
          else
            Validate("No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Work Type Code"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Resource);
        VALIDATE("Line Discount %",0);
        IF ("Work Type Code" = '') AND (xRec."Work Type Code" <> '') THEN BEGIN
          Res.GET("No.");
          "Unit of Measure Code" := Res."Base Unit of Measure";
          VALIDATE("Unit of Measure Code");
        END;
        IF WorkType.GET("Work Type Code") THEN
          IF WorkType."Unit of Measure Code" <> '' THEN BEGIN
            "Unit of Measure Code" := WorkType."Unit of Measure Code";
            IF ResUnitofMeasure.GET("No.","Unit of Measure Code") THEN
              "Qty. per Unit of Measure" := ResUnitofMeasure."Qty. per Unit of Measure";
          END ELSE BEGIN
            Res.GET("No.");
            "Unit of Measure Code" := Res."Base Unit of Measure";
            VALIDATE("Unit of Measure Code");
          END;
        OnBeforeValidateWorkTypeCodeQty(Rec,xRec,Res,WorkType);
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Resource);
        Validate("Line Discount %",0);
        if ("Work Type Code" = '') and (xRec."Work Type Code" <> '') then begin
          Res.Get("No.");
          "Unit of Measure Code" := Res."Base Unit of Measure";
          Validate("Unit of Measure Code");
        end;
        if WorkType.Get("Work Type Code") then
          if WorkType."Unit of Measure Code" <> '' then begin
            "Unit of Measure Code" := WorkType."Unit of Measure Code";
            if ResUnitofMeasure.Get("No.","Unit of Measure Code") then
              "Qty. per Unit of Measure" := ResUnitofMeasure."Qty. per Unit of Measure";
          end else begin
            Res.Get("No.");
            "Unit of Measure Code" := Res."Base Unit of Measure";
            Validate("Unit of Measure Code");
          end;
        OnBeforeValidateWorkTypeCodeQty(Rec,xRec,Res,WorkType);
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Customer Price Group"(Field 34).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type = Type::Item) AND ("No." <> '') THEN
          UpdateAllAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type = Type::Item) and ("No." <> '') then
          UpdateAllAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Entry"(Field 37).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectItemEntry(FIELDNO("Applies-to Entry"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectItemEntry(FieldNo("Applies-to Entry"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Entry"(Field 37).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        InitRoundingPrecisions;
        TESTFIELD(Type,Type::Item);
        IF "Applies-to Entry" <> 0 THEN BEGIN
          ItemLedgEntry.GET("Applies-to Entry");
          TESTFIELD(Quantity);
          IF Quantity < 0 THEN
            FIELDERROR(Quantity,Text002);
          ItemLedgEntry.TESTFIELD(Open,TRUE);
          ItemLedgEntry.TESTFIELD(Positive,TRUE);
          "Location Code" := ItemLedgEntry."Location Code";
          "Variant Code" := ItemLedgEntry."Variant Code";
          GetItem;
          IF Item."Costing Method" <> Item."Costing Method"::Standard THEN BEGIN
            "Unit Cost" := ROUND(
                CurrExchRate.ExchangeAmtLCYToFCY(
                  "Posting Date","Currency Code",
                  CalcUnitCost(ItemLedgEntry),"Currency Factor"),
                UnitAmountRoundingPrecisionFCY);
            UpdateAllAmounts;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        InitRoundingPrecisions;
        TestField(Type,Type::Item);
        if "Applies-to Entry" <> 0 then begin
          ItemLedgEntry.Get("Applies-to Entry");
          TestField(Quantity);
          if Quantity < 0 then
            FieldError(Quantity,Text002);
          ItemLedgEntry.TestField(Open,true);
          ItemLedgEntry.TestField(Positive,true);
        #10..12
          if Item."Costing Method" <> Item."Costing Method"::Standard then begin
            "Unit Cost" := Round(
        #15..19
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 91).OnLookup". Please convert manually.

        //trigger "(Field 91)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Item);
        SelectItemEntry(FIELDNO("Serial No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Item);
        SelectItemEntry(FieldNo("Serial No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Task No."(Field 1000).OnValidate". Please convert manually.

        //trigger "(Field 1000)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Job Task No." = '') OR (("Job Task No." <> xRec."Job Task No.") AND (xRec."Job Task No." <> '')) THEN BEGIN
          VALIDATE("No.",'');
          EXIT;
        END;

        TESTFIELD("Job No.");
        JobTask.GET("Job No.","Job Task No.");
        JobTask.TESTFIELD("Job Task Type",JobTask."Job Task Type"::Posting);
        UpdateDimensions;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Job Task No." = '') or (("Job Task No." <> xRec."Job Task No.") and (xRec."Job Task No." <> '')) then begin
          Validate("No.",'');
          exit;
        end;

        TestField("Job No.");
        JobTask.Get("Job No.","Job Task No.");
        JobTask.TestField("Job Task Type",JobTask."Job Task Type"::Posting);
        UpdateDimensions;
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Type"(Field 1003).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Planning Line No." <> 0 THEN
          ERROR(Text006,FIELDCAPTION("Line Type"),FIELDCAPTION("Job Planning Line No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Planning Line No." <> 0 then
          Error(Text006,FieldCaption("Line Type"),FieldCaption("Job Planning Line No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-from Entry"(Field 1004).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectItemEntry(FIELDNO("Applies-from Entry"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectItemEntry(FieldNo("Applies-from Entry"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-from Entry"(Field 1004).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        InitRoundingPrecisions;
        TESTFIELD(Type,Type::Item);
        IF "Applies-from Entry" <> 0 THEN BEGIN
          TESTFIELD(Quantity);
          IF Quantity > 0 THEN
            FIELDERROR(Quantity,Text003);
          ItemLedgEntry.GET("Applies-from Entry");
          ItemLedgEntry.TESTFIELD(Positive,FALSE);
          IF Item."Costing Method" <> Item."Costing Method"::Standard THEN BEGIN
            "Unit Cost" := ROUND(
                CurrExchRate.ExchangeAmtLCYToFCY(
                  "Posting Date","Currency Code",
                  CalcUnitCostFrom(ItemLedgEntry),"Currency Factor"),
                UnitAmountRoundingPrecisionFCY);
            UpdateAllAmounts;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        InitRoundingPrecisions;
        TestField(Type,Type::Item);
        if "Applies-from Entry" <> 0 then begin
          TestField(Quantity);
          if Quantity > 0 then
            FieldError(Quantity,Text003);
          ItemLedgEntry.Get("Applies-from Entry");
          ItemLedgEntry.TestField(Positive,false);
          if Item."Costing Method" <> Item."Costing Method"::Standard then begin
            "Unit Cost" := Round(
        #11..15
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Currency Factor"(Field 1010).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Currency Code" = '') AND ("Currency Factor" <> 0) THEN
          FIELDERROR("Currency Factor",STRSUBSTNO(Text001,FIELDCAPTION("Currency Code")));
        UpdateAllAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Currency Code" = '') and ("Currency Factor" <> 0) then
          FieldError("Currency Factor",StrSubstNo(Text001,FieldCaption("Currency Code")));
        UpdateAllAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Amount (LCY)"(Field 1012).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        InitRoundingPrecisions;
        "Line Amount" := ROUND(
            CurrExchRate.ExchangeAmtLCYToFCY(
              "Posting Date","Currency Code",
              "Line Amount (LCY)","Currency Factor"),
            AmountRoundingPrecisionFCY);
        UpdateAllAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        InitRoundingPrecisions;
        "Line Amount" := Round(
        #3..7
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount Amount (LCY)"(Field 1013).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        InitRoundingPrecisions;
        "Line Discount Amount" := ROUND(
            CurrExchRate.ExchangeAmtLCYToFCY(
              "Posting Date","Currency Code",
              "Line Discount Amount (LCY)","Currency Factor"),
            AmountRoundingPrecisionFCY);
        UpdateAllAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        InitRoundingPrecisions;
        "Line Discount Amount" := Round(
        #3..7
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Planning Line No."(Field 1019).OnLookup". Please convert manually.

        //trigger "(Field 1019)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        JobPlanningLine.SETRANGE("Job No.","Job No.");
        JobPlanningLine.SETRANGE("Job Task No.","Job Task No.");
        JobPlanningLine.SETRANGE(Type,Type);
        JobPlanningLine.SETRANGE("No.","No.");
        JobPlanningLine.SETRANGE("Usage Link",TRUE);
        JobPlanningLine.SETRANGE("System-Created Entry",FALSE);
        IF Type = Type::Resource THEN BEGIN
          Filter := Resource.GetUnitOfMeasureFilter("No.","Unit of Measure Code");
          JobPlanningLine.SETFILTER("Unit of Measure Code",Filter);
        END;

        IF PAGE.RUNMODAL(0,JobPlanningLine) = ACTION::LookupOK THEN
          VALIDATE("Job Planning Line No.",JobPlanningLine."Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        JobPlanningLine.SetRange("Job No.","Job No.");
        JobPlanningLine.SetRange("Job Task No.","Job Task No.");
        JobPlanningLine.SetRange(Type,Type);
        JobPlanningLine.SetRange("No.","No.");
        JobPlanningLine.SetRange("Usage Link",true);
        JobPlanningLine.SetRange("System-Created Entry",false);
        if Type = Type::Resource then begin
          Filter := Resource.GetUnitOfMeasureFilter("No.","Unit of Measure Code");
          JobPlanningLine.SetFilter("Unit of Measure Code",Filter);
        end;

        if PAGE.RunModal(0,JobPlanningLine) = ACTION::LookupOK then
          Validate("Job Planning Line No.",JobPlanningLine."Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Planning Line No."(Field 1019).OnValidate". Please convert manually.

        //trigger "(Field 1019)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Planning Line No." <> 0 THEN BEGIN
          ValidateJobPlanningLineLink;
          JobPlanningLine.GET("Job No.","Job Task No.","Job Planning Line No.");

          JobPlanningLine.TESTFIELD("Job No.","Job No.");
          JobPlanningLine.TESTFIELD("Job Task No.","Job Task No.");
          JobPlanningLine.TESTFIELD(Type,Type);
          JobPlanningLine.TESTFIELD("No.","No.");
          JobPlanningLine.TESTFIELD("Usage Link",TRUE);
          JobPlanningLine.TESTFIELD("System-Created Entry",FALSE);

          "Line Type" := JobPlanningLine."Line Type" + 1;
          VALIDATE("Remaining Qty.",CalcQtyFromBaseQty(JobPlanningLine."Remaining Qty. (Base)" - "Quantity (Base)"));
        END ELSE
          VALIDATE("Remaining Qty.",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Planning Line No." <> 0 then begin
          ValidateJobPlanningLineLink;
          JobPlanningLine.Get("Job No.","Job Task No.","Job Planning Line No.");

          JobPlanningLine.TestField("Job No.","Job No.");
          JobPlanningLine.TestField("Job Task No.","Job Task No.");
          JobPlanningLine.TestField(Type,Type);
          JobPlanningLine.TestField("No.","No.");
          JobPlanningLine.TestField("Usage Link",true);
          JobPlanningLine.TestField("System-Created Entry",false);

          "Line Type" := JobPlanningLine."Line Type" + 1;
          Validate("Remaining Qty.",CalcQtyFromBaseQty(JobPlanningLine."Remaining Qty. (Base)" - "Quantity (Base)"));
        end else
          Validate("Remaining Qty.",0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Remaining Qty."(Field 1030).OnValidate". Please convert manually.

        //trigger "(Field 1030)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Remaining Qty." <> 0) AND ("Job Planning Line No." = 0) THEN
          ERROR(Text004,FIELDCAPTION("Remaining Qty."),FIELDCAPTION("Job Planning Line No."));

        IF "Job Planning Line No." <> 0 THEN BEGIN
          JobPlanningLine.GET("Job No.","Job Task No.","Job Planning Line No.");
          IF JobPlanningLine.Quantity >= 0 THEN BEGIN
            IF "Remaining Qty." < 0 THEN
              "Remaining Qty." := 0;
          END ELSE BEGIN
            IF "Remaining Qty." > 0 THEN
              "Remaining Qty." := 0;
          END;
        END;
        "Remaining Qty. (Base)" := UOMMgt.CalcBaseQty("Remaining Qty.","Qty. per Unit of Measure");

        CheckItemAvailable;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Remaining Qty." <> 0) and ("Job Planning Line No." = 0) then
          Error(Text004,FieldCaption("Remaining Qty."),FieldCaption("Job Planning Line No."));

        if "Job Planning Line No." <> 0 then begin
          JobPlanningLine.Get("Job No.","Job Task No.","Job Planning Line No.");
          if JobPlanningLine.Quantity >= 0 then begin
            if "Remaining Qty." < 0 then
              "Remaining Qty." := 0;
          end else begin
            if "Remaining Qty." > 0 then
              "Remaining Qty." := 0;
          end;
        end;
        #14..16
        */
        //end;


        //Unsupported feature: CodeModification on ""Remaining Qty. (Base)"(Field 1031).OnValidate". Please convert manually.

        //trigger  (Base)"(Field 1031)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Remaining Qty.",CalcQtyFromBaseQty("Remaining Qty. (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Remaining Qty.",CalcQtyFromBaseQty("Remaining Qty. (Base)"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" = '' THEN BEGIN
          IF Type = Type::Item THEN BEGIN
            Item.GET("No.");
            Description := Item.Description;
            "Description 2" := Item."Description 2";
            GetItemTranslation;
          END;
          EXIT;
        END;

        TESTFIELD(Type,Type::Item);

        ItemVariant.GET("No.","Variant Code");
        Description := ItemVariant.Description;
        "Description 2" := ItemVariant."Description 2";

        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" = '' then begin
          if Type = Type::Item then begin
            Item.Get("No.");
        #4..6
          end;
          exit;
        end;

        TestField(Type,Type::Item);

        ItemVariant.Get("No.","Variant Code");
        Description := ItemVariant."Part No";
        "Description 2" := ItemVariant.Description;

        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 5403).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Location Code");
        TESTFIELD(Type,Type::Item);
        BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code");
        IF BinCode <> '' THEN
          VALIDATE("Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Location Code");
        TestField(Type,Type::Item);
        BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code");
        if BinCode <> '' then
          Validate("Bin Code",BinCode);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 5403).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Location Code");
        IF "Bin Code" <> '' THEN BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Bin Mandatory");
        END;
        TESTFIELD(Type,Type::Item);
        CheckItemAvailable;
        WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Location Code");
        if "Bin Code" <> '' then begin
          GetLocation("Location Code");
          Location.TestField("Bin Mandatory");
        end;
        TestField(Type,Type::Item);
        CheckItemAvailable;
        WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 5410).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE(Quantity,CalcQtyFromBaseQty("Quantity (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate(Quantity,CalcQtyFromBaseQty("Quantity (Base)"));
        */
        //end;
        field(16500; "CWIP G/L Type"; Option)
        {
            CaptionML = ENU = 'CWIP G/L Type',
                        ENN = 'CWIP G/L Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Labor,Material,Overheads',
                              ENN = ' ,Labor,Material,Overheads';
            OptionMembers = " ",Labor,Material,Overheads;
        }
        field(60001; "End Date"; Date)
        {
            Description = 'B2B';
        }
        field(60002; "Start Date"; Date)
        {
            Description = 'B2B';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Journal Template Name,Journal Batch Name,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Journal Template Name,Journal Batch Name,Type,No.,Unit of Measure Code,Work Type Code"(Key)". Please convert manually.

        key(Journal1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
        }
        key(JournalTemp2; "Journal Template Name", "Journal Batch Name", Type, "No.", "Unit of Measure Code", "Work Type Code")
        {
            MaintainSQLIndex = false;
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Type = Type::Item THEN
      ReserveJobJnlLine.DeleteLine(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Type = Type::Item then
      ReserveJobJnlLine.DeleteLine(Rec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LOCKTABLE;
    JobJnlTemplate.GET("Journal Template Name");
    JobJnlBatch.GET("Journal Template Name","Journal Batch Name");

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    JobJnlTemplate.Get("Journal Template Name");
    JobJnlBatch.Get("Journal Template Name","Journal Batch Name");
    #4..6
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF (Type = Type::Item) AND (xRec.Type = Type::Item) THEN
      ReserveJobJnlLine.VerifyChange(Rec,xRec)
    ELSE
      IF (Type <> Type::Item) AND (xRec.Type = Type::Item) THEN
        ReserveJobJnlLine.DeleteLine(xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if (Type = Type::Item) and (xRec.Type = Type::Item) then
      ReserveJobJnlLine.VerifyChange(Rec,xRec)
    else
      if (Type <> Type::Item) and (xRec.Type = Type::Item) then
        ReserveJobJnlLine.DeleteLine(xRec);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 18).OnValidate.Resource(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Entry"(Field 37).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Entry" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Entry" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Task No."(Field 1000).OnValidate.JobTask(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Task No." : 1001;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Task No." : "Job Task";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-from Entry"(Field 1004).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-from Entry" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-from Entry" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1019).OnLookup.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1019).OnLookup.Resource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1019).OnValidate.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Remaining Qty."(Field 1030).OnValidate.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Remaining Qty." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Remaining Qty." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromResource(PROCEDURE 27).Resource(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromResource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromResource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailable(PROCEDURE 5).JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailable : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailable : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitRoundingPrecisions(PROCEDURE 23).Currency(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitRoundingPrecisions : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitRoundingPrecisions : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcUnitCost(PROCEDURE 5809).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcUnitCost : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcUnitCost : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcUnitCostFrom(PROCEDURE 5804).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcUnitCostFrom : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcUnitCostFrom : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 1).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 1).JobJnlLine2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 210;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Job Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindPriceAndDiscount(PROCEDURE 33).SalesPriceCalcMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindPriceAndDiscount : 7000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindPriceAndDiscount : "Sales Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindPriceAndDiscount(PROCEDURE 33).PurchPriceCalcMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindPriceAndDiscount : 7010;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindPriceAndDiscount : "Purch. Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateJobPlanningLineLink(PROCEDURE 3).JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateJobPlanningLineLink : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateJobPlanningLineLink : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateJobPlanningLineLink(PROCEDURE 3).JobJournalLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateJobPlanningLineLink : 210;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateJobPlanningLineLink : "Job Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsOpenedFromBatch(PROCEDURE 22).JobJournalBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsOpenedFromBatch : 237;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsOpenedFromBatch : "Job Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 44).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Res(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Res : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Res : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cust(Variable 1039)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemJnlLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemJnlLine : 83;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemJnlLine : "Item Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLAcc(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLAcc : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLAcc : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Job(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Job : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Job : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WorkType(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WorkType : 200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WorkType : "Work Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "JobJnlTemplate(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //JobJnlTemplate : 209;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobJnlTemplate : "Job Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "JobJnlBatch(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //JobJnlBatch : 237;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobJnlBatch : "Job Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "JobJnlLine(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //JobJnlLine : 210;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobJnlLine : "Job Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResUnitofMeasure(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResUnitofMeasure : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResUnitofMeasure : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResCost(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResCost : 202;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResCost : "Resource Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTranslation(Variable 1040)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTranslation : 30;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTranslation : "Item Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1029)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKU(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemCheckAvail(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemCheckAvail : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemCheckAvail : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReserveJobJnlLine(Variable 1032)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReserveJobJnlLine : 99000844;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReserveJobJnlLine : "Job Jnl. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSManagement(Variable 1035)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSManagement : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSManagement : "WMS Management";
    //Variable type has not been exported.
}


tableextension 70216 StandardItemJournalLineExt extends "Standard Item Journal Line"
{
    // version NAVW19.00.00.49968

    fields
    {

        //Unsupported feature: Change NotBlank on ""Journal Template Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Item No."(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inventory Posting Group"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 49)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Calculated)"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys. Inventory"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Originally Ordered Var. Code"(Field 5702)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Value Entry Type"(Field 5800)". Please convert manually.


        //Unsupported feature: Change Editable on ""Work Center No."(Field 5839)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 3).OnLookup". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Entry Type" <> "Entry Type"::Output THEN
          IF Item.GET("Item No.") OR Item.GET(xRec."Item No.") THEN;
        Item.SETRANGE(Blocked,FALSE);
        IF PAGE.RUNMODAL(PAGE::"Item List",Item) = ACTION::LookupOK THEN
          VALIDATE("Item No.",Item."No.");
        Item.SETRANGE(Blocked);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Entry Type" <> "Entry Type"::Output then
          if Item.Get("Item No.") or Item.Get(xRec."Item No.") then;
        Item.SetRange(Blocked,false);
        if PAGE.RunModal(PAGE::"Item List",Item) = ACTION::LookupOK then
          Validate("Item No.",Item."No.");
        Item.SetRange(Blocked);
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> xRec."Item No." THEN BEGIN
          "Variant Code" := '';
          "Bin Code" := '';
          IF ("Location Code" <> '') AND ("Item No." <> '') THEN BEGIN
            GetLocation("Location Code");
            IF Location."Bin Mandatory" AND NOT Location."Directed Put-away and Pick" THEN
              WMSManagement.GetDefaultBin("Item No.","Variant Code","Location Code","Bin Code")
          END;
        END;

        IF "Item No." = '' THEN BEGIN
          CreateDim(
            DATABASE::Item,"Item No.",
            DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
            DATABASE::"Work Center","Work Center No.");
          EXIT;
        END;

        GetItem;
        Item.TESTFIELD(Blocked,FALSE);
        Description := Item.Description;
        "Inventory Posting Group" := Item."Inventory Posting Group";
        "Item Category Code" := Item."Item Category Code";

        IF ("Value Entry Type" <> "Value Entry Type"::"Direct Cost") OR
           ("Item Charge No." <> '')
        THEN BEGIN
          IF "Item No." <> xRec."Item No." THEN BEGIN
            RetrieveCosts;
            "Indirect Cost %" := 0;
            "Overhead Rate" := 0;
          END;
        END ELSE BEGIN
          "Indirect Cost %" := Item."Indirect Cost %";
          "Overhead Rate" := Item."Overhead Rate";
          IF NOT "Phys. Inventory" THEN BEGIN
            RetrieveCosts;
            "Unit Cost" := UnitCost;
          END ELSE
            UnitCost := "Unit Cost";
        END;

        IF "Entry Type" <> "Entry Type"::Output THEN
          "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";

        CASE "Entry Type" OF
          "Entry Type"::Purchase,
          "Entry Type"::Output:
            PurchPriceCalcMgt.FindStdItemJnlLinePrice(Rec,FIELDNO("Item No."));
          "Entry Type"::"Positive Adjmt.",
          "Entry Type"::"Negative Adjmt.",
          "Entry Type"::Consumption:
            "Unit Amount" := UnitCost;
          "Entry Type"::Sale:
            SalesPriceCalcMgt.FindStdItemJnlLinePrice(Rec,FIELDNO("Item No."));
          "Entry Type"::Transfer:
            BEGIN
              "Unit Amount" := 0;
              "Unit Cost" := 0;
              Amount := 0;
            END;
        END;

        CASE "Entry Type" OF
          "Entry Type"::Purchase:
            "Unit of Measure Code" := Item."Purch. Unit of Measure";
          "Entry Type"::Sale:
            "Unit of Measure Code" := Item."Sales Unit of Measure";
          ELSE
            "Unit of Measure Code" := Item."Base Unit of Measure";
        END;

        VALIDATE("Unit of Measure Code");
        IF "Variant Code" <> '' THEN
          VALIDATE("Variant Code");
        IF "Bin Code" <> '' THEN
          VALIDATE("Bin Code");

        CreateDim(
          DATABASE::Item,"Item No.",
          DATABASE::"Salesperson/Purchaser","Salespers./Purch. Code",
          DATABASE::"Work Center","Work Center No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then begin
          "Variant Code" := '';
          "Bin Code" := '';
          if ("Location Code" <> '') and ("Item No." <> '') then begin
            GetLocation("Location Code");
            if Location."Bin Mandatory" and not Location."Directed Put-away and Pick" then
              WMSManagement.GetDefaultBin("Item No.","Variant Code","Location Code","Bin Code")
          end;
        end;

        if "Item No." = '' then begin
        #12..15
          exit;
        end;

        GetItem;
        Item.TestField(Blocked,false);
        #21..24
        if ("Value Entry Type" <> "Value Entry Type"::"Direct Cost") or
           ("Item Charge No." <> '')
        then begin
          if "Item No." <> xRec."Item No." then begin
        #29..31
          end;
        end else begin
          "Indirect Cost %" := Item."Indirect Cost %";
          "Overhead Rate" := Item."Overhead Rate";
          if not "Phys. Inventory" then begin
            RetrieveCosts;
            "Unit Cost" := UnitCost;
          end else
            UnitCost := "Unit Cost";
        end;

        if "Entry Type" <> "Entry Type"::Output then
          "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";

        case "Entry Type" of
          "Entry Type"::Purchase,
          "Entry Type"::Output:
            PurchPriceCalcMgt.FindStdItemJnlLinePrice(Rec,FieldNo("Item No."));
        #50..54
            SalesPriceCalcMgt.FindStdItemJnlLinePrice(Rec,FieldNo("Item No."));
          "Entry Type"::Transfer:
            begin
        #58..60
            end;
        end;

        case "Entry Type" of
        #65..68
          else
            "Unit of Measure Code" := Item."Base Unit of Measure";
        end;

        Validate("Unit of Measure Code");
        if "Variant Code" <> '' then
          Validate("Variant Code");
        if "Bin Code" <> '' then
          Validate("Bin Code");
        #78..82
        */
        //end;


        //Unsupported feature: CodeModification on ""Entry Type"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT ("Entry Type" IN ["Entry Type"::"Positive Adjmt.","Entry Type"::"Negative Adjmt."]) THEN
          TESTFIELD("Phys. Inventory",FALSE);

        CASE "Entry Type" OF
          "Entry Type"::Purchase:
            "Location Code" := UserMgt.GetLocation(1,'',UserMgt.GetPurchasesFilter);
          "Entry Type"::Sale:
            "Location Code" := UserMgt.GetLocation(0,'',UserMgt.GetSalesFilter);
        END;

        IF "Item No." <> '' THEN
          VALIDATE("Location Code");

        VALIDATE("Item No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not ("Entry Type" in ["Entry Type"::"Positive Adjmt.","Entry Type"::"Negative Adjmt."]) then
          TestField("Phys. Inventory",false);

        case "Entry Type" of
        #5..8
        end;

        if "Item No." <> '' then
          Validate("Location Code");

        Validate("Item No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Location Code" <> xRec."Location Code" THEN BEGIN
          "Bin Code" := '';
          IF ("Location Code" <> '') AND ("Item No." <> '') THEN BEGIN
            GetLocation("Location Code");
            IF Location."Bin Mandatory" AND NOT Location."Directed Put-away and Pick" THEN
              WMSManagement.GetDefaultBin("Item No.","Variant Code","Location Code","Bin Code");
          END;
        END;

        VALIDATE("Unit of Measure Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Location Code" <> xRec."Location Code" then begin
          "Bin Code" := '';
          if ("Location Code" <> '') and ("Item No." <> '') then begin
            GetLocation("Location Code");
            if Location."Bin Mandatory" and not Location."Directed Put-away and Pick" then
              WMSManagement.GetDefaultBin("Item No.","Variant Code","Location Code","Bin Code");
          end;
        end;

        Validate("Unit of Measure Code");
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        "Quantity (Base)" := CalcBaseQty(Quantity);

        GetUnitAmount(FIELDNO(Quantity));
        UpdateAmount;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);
        #3..5
        GetUnitAmount(FieldNo(Quantity));
        UpdateAmount;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Amount"(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateAmount;
        IF "Item No." <> '' THEN
          IF "Value Entry Type" = "Value Entry Type"::Revaluation THEN
            "Unit Cost" := "Unit Amount"
          ELSE
            CASE "Entry Type" OF
              "Entry Type"::Purchase,
              "Entry Type"::"Positive Adjmt.":
                BEGIN
                  IF "Entry Type" = "Entry Type"::"Positive Adjmt." THEN BEGIN
                    GetItem;
                    IF (CurrFieldNo = FIELDNO("Unit Amount")) AND
                       (Item."Costing Method" = Item."Costing Method"::Standard)
                    THEN
                      ERROR(
                        Text002,
                        FIELDCAPTION("Unit Amount"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
                  END;

                  ReadGLSetup;
                  IF "Entry Type" = "Entry Type"::Purchase THEN
                    "Unit Cost" := "Unit Amount";
                  IF "Entry Type" = "Entry Type"::"Positive Adjmt." THEN
                    "Unit Cost" :=
                      ROUND("Unit Amount" * (1 + "Indirect Cost %" / 100),GLSetup."Unit-Amount Rounding Precision") +
                      "Overhead Rate" * "Qty. per Unit of Measure";
                  IF ("Value Entry Type" = "Value Entry Type"::"Direct Cost") AND
                     ("Item Charge No." = '')
                  THEN
                    VALIDATE("Unit Cost");
                END;
              "Entry Type"::"Negative Adjmt.",
              "Entry Type"::Consumption:
                BEGIN
                  GetItem;
                  IF (CurrFieldNo = FIELDNO("Unit Amount")) AND
                     (Item."Costing Method" = Item."Costing Method"::Standard)
                  THEN
                    ERROR(
                      Text002,
                      FIELDCAPTION("Unit Amount"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
                  "Unit Cost" := "Unit Amount";
                  IF ("Value Entry Type" = "Value Entry Type"::"Direct Cost") AND
                     ("Item Charge No." = '')
                  THEN
                    VALIDATE("Unit Cost");
                END;
            END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateAmount;
        if "Item No." <> '' then
          if "Value Entry Type" = "Value Entry Type"::Revaluation then
            "Unit Cost" := "Unit Amount"
          else
            case "Entry Type" of
              "Entry Type"::Purchase,
              "Entry Type"::"Positive Adjmt.":
                begin
                  if "Entry Type" = "Entry Type"::"Positive Adjmt." then begin
                    GetItem;
                    if (CurrFieldNo = FieldNo("Unit Amount")) and
                       (Item."Costing Method" = Item."Costing Method"::Standard)
                    then
                      Error(
                        Text002,
                        FieldCaption("Unit Amount"),Item.FieldCaption("Costing Method"),Item."Costing Method");
                  end;

                  ReadGLSetup;
                  if "Entry Type" = "Entry Type"::Purchase then
                    "Unit Cost" := "Unit Amount";
                  if "Entry Type" = "Entry Type"::"Positive Adjmt." then
                    "Unit Cost" :=
                      Round("Unit Amount" * (1 + "Indirect Cost %" / 100),GLSetup."Unit-Amount Rounding Precision") +
                      "Overhead Rate" * "Qty. per Unit of Measure";
                  if ("Value Entry Type" = "Value Entry Type"::"Direct Cost") and
                     ("Item Charge No." = '')
                  then
                    Validate("Unit Cost");
                end;
              "Entry Type"::"Negative Adjmt.",
              "Entry Type"::Consumption:
                begin
                  GetItem;
                  if (CurrFieldNo = FieldNo("Unit Amount")) and
                     (Item."Costing Method" = Item."Costing Method"::Standard)
                  then
                    Error(
                      Text002,
                      FieldCaption("Unit Amount"),Item.FieldCaption("Costing Method"),Item."Costing Method");
                  "Unit Cost" := "Unit Amount";
                  if ("Value Entry Type" = "Value Entry Type"::"Direct Cost") and
                     ("Item Charge No." = '')
                  then
                    Validate("Unit Cost");
                end;
            end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Item No.");
        RetrieveCosts;
        IF "Entry Type" IN ["Entry Type"::Purchase,"Entry Type"::"Positive Adjmt.","Entry Type"::Consumption] THEN
          IF Item."Costing Method" = Item."Costing Method"::Standard THEN BEGIN
            IF CurrFieldNo = FIELDNO("Unit Cost") THEN
              ERROR(
                Text002,
                FIELDCAPTION("Unit Cost"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");

            "Unit Cost" := ROUND(UnitCost * "Qty. per Unit of Measure",GLSetup."Unit-Amount Rounding Precision");
          END;

        IF ("Item Charge No." = '') AND
           ("Value Entry Type" = "Value Entry Type"::"Direct Cost") AND
           (CurrFieldNo = FIELDNO("Unit Cost"))
        THEN BEGIN
          CASE "Entry Type" OF
            "Entry Type"::Purchase:
              "Unit Amount" := "Unit Cost";
            "Entry Type"::"Positive Adjmt.":
              BEGIN
                ReadGLSetup;
                "Unit Amount" :=
                  ROUND(
                    ("Unit Cost" - "Overhead Rate" * "Qty. per Unit of Measure") / (1 + "Indirect Cost %" / 100),
                    GLSetup."Unit-Amount Rounding Precision")
              END;
            "Entry Type"::"Negative Adjmt.",
            "Entry Type"::Consumption:
              BEGIN
                IF Item."Costing Method" = Item."Costing Method"::Standard THEN
                  ERROR(
                    Text002,
                    FIELDCAPTION("Unit Cost"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
                "Unit Amount" := "Unit Cost";
              END;
          END;
          UpdateAmount;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Item No.");
        RetrieveCosts;
        if "Entry Type" in ["Entry Type"::Purchase,"Entry Type"::"Positive Adjmt.","Entry Type"::Consumption] then
          if Item."Costing Method" = Item."Costing Method"::Standard then begin
            if CurrFieldNo = FieldNo("Unit Cost") then
              Error(
                Text002,
                FieldCaption("Unit Cost"),Item.FieldCaption("Costing Method"),Item."Costing Method");

            "Unit Cost" := Round(UnitCost * "Qty. per Unit of Measure",GLSetup."Unit-Amount Rounding Precision");
          end;

        if ("Item Charge No." = '') and
           ("Value Entry Type" = "Value Entry Type"::"Direct Cost") and
           (CurrFieldNo = FieldNo("Unit Cost"))
        then begin
          case "Entry Type" of
        #18..20
              begin
                ReadGLSetup;
                "Unit Amount" :=
                  Round(
                    ("Unit Cost" - "Overhead Rate" * "Qty. per Unit of Measure") / (1 + "Indirect Cost %" / 100),
                    GLSetup."Unit-Amount Rounding Precision")
              end;
            "Entry Type"::"Negative Adjmt.",
            "Entry Type"::Consumption:
              begin
                if Item."Costing Method" = Item."Costing Method"::Standard then
                  Error(
                    Text002,
                    FieldCaption("Unit Cost"),Item.FieldCaption("Costing Method"),Item."Costing Method");
                "Unit Amount" := "Unit Cost";
              end;
          end;
          UpdateAmount;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Amount(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Quantity);
        "Unit Amount" := Amount / Quantity;
        VALIDATE("Unit Amount");
        ReadGLSetup;
        "Unit Amount" := ROUND("Unit Amount",GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Quantity);
        "Unit Amount" := Amount / Quantity;
        Validate("Unit Amount");
        ReadGLSetup;
        "Unit Amount" := Round("Unit Amount",GLSetup."Unit-Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Indirect Cost %"(Field 37).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Item No.");
        TESTFIELD("Value Entry Type","Value Entry Type"::"Direct Cost");
        TESTFIELD("Item Charge No.",'');
        IF "Entry Type" IN ["Entry Type"::Sale,"Entry Type"::"Negative Adjmt."] THEN
          ERROR(
            Text003,
            "Entry Type",FIELDCAPTION("Entry Type"),FIELDCAPTION("Indirect Cost %"));

        GetItem;
        IF Item."Costing Method" = Item."Costing Method"::Standard THEN
          ERROR(
            Text002,
            FIELDCAPTION("Indirect Cost %"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");

        "Unit Cost" :=
          ROUND(
            "Unit Amount" * (1 + "Indirect Cost %" / 100) +
            "Overhead Rate" * "Qty. per Unit of Measure",GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Item No.");
        TestField("Value Entry Type","Value Entry Type"::"Direct Cost");
        TestField("Item Charge No.",'');
        if "Entry Type" in ["Entry Type"::Sale,"Entry Type"::"Negative Adjmt."] then
          Error(
            Text003,
            "Entry Type",FieldCaption("Entry Type"),FieldCaption("Indirect Cost %"));

        GetItem;
        if Item."Costing Method" = Item."Costing Method"::Standard then
          Error(
            Text002,
            FieldCaption("Indirect Cost %"),Item.FieldCaption("Costing Method"),Item."Costing Method");

        "Unit Cost" :=
          Round(
            "Unit Amount" * (1 + "Indirect Cost %" / 100) +
            "Overhead Rate" * "Qty. per Unit of Measure",GLSetup."Unit-Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Calculated)"(Field 53).OnValidate". Please convert manually.

        //trigger  (Calculated)"(Field 53)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Qty. (Phys. Inventory)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Qty. (Phys. Inventory)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Phys. Inventory)"(Field 54).OnValidate". Please convert manually.

        //trigger  (Phys();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Phys. Inventory",TRUE);

        PhysInvtEntered := TRUE;
        Quantity := 0;
        IF "Qty. (Phys. Inventory)" >= "Qty. (Calculated)" THEN BEGIN
          VALIDATE("Entry Type","Entry Type"::"Positive Adjmt.");
          VALIDATE(Quantity,"Qty. (Phys. Inventory)" - "Qty. (Calculated)");
        END ELSE BEGIN
          VALIDATE("Entry Type","Entry Type"::"Negative Adjmt.");
          VALIDATE(Quantity,"Qty. (Calculated)" - "Qty. (Phys. Inventory)");
        END;
        PhysInvtEntered := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Phys. Inventory",true);

        PhysInvtEntered := true;
        Quantity := 0;
        if "Qty. (Phys. Inventory)" >= "Qty. (Calculated)" then begin
          Validate("Entry Type","Entry Type"::"Positive Adjmt.");
          Validate(Quantity,"Qty. (Phys. Inventory)" - "Qty. (Calculated)");
        end else begin
          Validate("Entry Type","Entry Type"::"Negative Adjmt.");
          Validate(Quantity,"Qty. (Calculated)" - "Qty. (Phys. Inventory)");
        end;
        PhysInvtEntered := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" <> xRec."Variant Code" THEN BEGIN
          "Bin Code" := '';
          IF ("Location Code" <> '') AND ("Item No." <> '') THEN BEGIN
            GetLocation("Location Code");
            IF Location."Bin Mandatory" AND NOT Location."Directed Put-away and Pick" THEN
              WMSManagement.GetDefaultBin("Item No.","Variant Code","Location Code","Bin Code")
          END;
        END;

        IF ("Value Entry Type" = "Value Entry Type"::"Direct Cost") AND
           ("Item Charge No." = '')
        THEN BEGIN
          GetUnitAmount(FIELDNO("Variant Code"));
          "Unit Cost" := UnitCost;
          VALIDATE("Unit Amount");
          VALIDATE("Unit of Measure Code");
        END;

        IF "Variant Code" = '' THEN
          EXIT;

        ItemVariant.GET("Item No.","Variant Code");
        Description := ItemVariant.Description;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> xRec."Variant Code" then begin
          "Bin Code" := '';
          if ("Location Code" <> '') and ("Item No." <> '') then begin
            GetLocation("Location Code");
            if Location."Bin Mandatory" and not Location."Directed Put-away and Pick" then
              WMSManagement.GetDefaultBin("Item No.","Variant Code","Location Code","Bin Code")
          end;
        end;

        if ("Value Entry Type" = "Value Entry Type"::"Direct Cost") and
           ("Item Charge No." = '')
        then begin
          GetUnitAmount(FieldNo("Variant Code"));
          "Unit Cost" := UnitCost;
          Validate("Unit Amount");
          Validate("Unit of Measure Code");
        end;

        if "Variant Code" = '' then
          exit;

        ItemVariant.Get("Item No.","Variant Code");
        Description := ItemVariant."Part No";
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 5403).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bin Code" <> xRec."Bin Code" THEN BEGIN
          TESTFIELD("Location Code");
          IF "Bin Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            Location.TESTFIELD("Bin Mandatory");
            Location.TESTFIELD("Directed Put-away and Pick",FALSE);
            GetBin("Location Code","Bin Code");
            TESTFIELD("Location Code",Bin."Location Code");
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Code" <> xRec."Bin Code" then begin
          TestField("Location Code");
          if "Bin Code" <> '' then begin
            GetLocation("Location Code");
            Location.TestField("Bin Mandatory");
            Location.TestField("Directed Put-away and Pick",false);
            GetBin("Location Code","Bin Code");
            TestField("Location Code",Bin."Location Code");
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5407).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetItem;
        "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
        GetUnitAmount(FIELDNO("Unit of Measure Code"));
        ReadGLSetup;
        "Unit Cost" := ROUND(UnitCost * "Qty. per Unit of Measure",GLSetup."Unit-Amount Rounding Precision");

        VALIDATE("Unit Amount");
        IF "Entry Type" <> "Entry Type"::Output THEN
          VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetItem;
        "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
        GetUnitAmount(FieldNo("Unit of Measure Code"));
        ReadGLSetup;
        "Unit Cost" := Round(UnitCost * "Qty. per Unit of Measure",GLSetup."Unit-Amount Rounding Precision");

        Validate("Unit Amount");
        if "Entry Type" <> "Entry Type"::Output then
          Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 5413).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Quantity (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Overhead Rate"(Field 99000755).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Value Entry Type" <> "Value Entry Type"::"Direct Cost") OR
           ("Item Charge No." <> '')
        THEN BEGIN
          "Overhead Rate" := 0;
          VALIDATE("Indirect Cost %",0);
        END ELSE
          VALIDATE("Indirect Cost %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Value Entry Type" <> "Value Entry Type"::"Direct Cost") or
           ("Item Charge No." <> '')
        then begin
          "Overhead Rate" := 0;
          Validate("Indirect Cost %",0);
        end else
          Validate("Indirect Cost %");
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



    //Unsupported feature: PropertyModification on "Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKU(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSManagement(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSManagement : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSManagement : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchPriceCalcMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchPriceCalcMgt : 7010;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchPriceCalcMgt : "Purch. Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesPriceCalcMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesPriceCalcMgt : 7000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesPriceCalcMgt : "Sales Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserMgt : "User Setup Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


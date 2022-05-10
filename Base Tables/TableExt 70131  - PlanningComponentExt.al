tableextension 70131 PlanningComponentExt extends "Planning Component"
{
    // version NAVW19.00.00.51685

    fields
    {

        //Unsupported feature: Change TableRelation on ""Worksheet Batch Name"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Worksheet Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line No."(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Item No."(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Quantity"(Field 25)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Flushing Method"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Supplied-by Line No."(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planning Level Code"(Field 36)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Ref. Order Status"(Field 37)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Calculation Formula"(Field 44)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Ref. Order Type"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ref. Order Type"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 63)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Quantity (Base)"(Field 73)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Original Expected Qty. (Base)"(Field 74)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Expected Qty. (Base)"(Field 74)". Please convert manually.


        //Unsupported feature: Change Editable on ""Net Quantity (Base)"(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Planning Line Origin"(Field 99000915)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planning Line Origin"(Field 99000915)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReservePlanningComponent.VerifyChange(Rec,xRec);
        CALCFIELDS("Reserved Qty. (Base)");
        TESTFIELD("Reserved Qty. (Base)",0);

        IF "Item No." = '' THEN BEGIN
          "Dimension Set ID" := 0;
          "Shortcut Dimension 1 Code" := '';
          "Shortcut Dimension 2 Code" := '';
          EXIT;
        END;

        GetItem;
        Description := Item.Description;
        VALIDATE("Unit of Measure Code",Item."Base Unit of Measure");
        GetUpdateFromSKU;
        CreateDim(DATABASE::Item,"Item No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ReservePlanningComponent.VerifyChange(Rec,xRec);
        CalcFields("Reserved Qty. (Base)");
        TestField("Reserved Qty. (Base)",0);

        if "Item No." = '' then begin
        #6..8
          exit;
        end;
        #11..13
        Validate("Unit of Measure Code",Item."Base Unit of Measure");
        GetUpdateFromSKU;
        CreateDim(DATABASE::Item,"Item No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Item No.");

        GetItem;
        GetGLSetup;

        "Unit Cost" := Item."Unit Cost";

        IF "Unit of Measure Code" <> '' THEN BEGIN
          "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
          "Unit Cost" :=
            ROUND(
              Item."Unit Cost" * "Qty. per Unit of Measure",
              GLSetup."Unit-Amount Rounding Precision");
        END ELSE
          "Qty. per Unit of Measure" := 1;

        "Indirect Cost %" := ROUND(Item."Indirect Cost %" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);

        "Overhead Rate" := Item."Overhead Rate";

        "Direct Unit Cost" :=
          ROUND(
            ("Unit Cost" - "Overhead Rate" * "Qty. per Unit of Measure") / (1 + "Indirect Cost %" / 100),
            GLSetup."Unit-Amount Rounding Precision");

        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Item No.");
        #2..7
        if "Unit of Measure Code" <> '' then begin
          "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
          "Unit Cost" :=
            Round(
              Item."Unit Cost" * "Qty. per Unit of Measure",
              GLSetup."Unit-Amount Rounding Precision");
        end else
          "Qty. per Unit of Measure" := 1;

        "Indirect Cost %" := Round(Item."Indirect Cost %" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        #18..21
          Round(
        #23..25
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on ""Routing Link Code"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Expected Quantity",Quantity * PlanningNeeds);

        "Due Date" := ReqLine."Starting Date";
        "Due Time" := ReqLine."Starting Time";
        IF "Routing Link Code" <> '' THEN BEGIN
          PlanningRtngLine.SETRANGE("Worksheet Template Name","Worksheet Template Name");
          PlanningRtngLine.SETRANGE("Worksheet Batch Name","Worksheet Batch Name");
          PlanningRtngLine.SETRANGE("Worksheet Line No.","Worksheet Line No.");
          PlanningRtngLine.SETRANGE("Routing Link Code","Routing Link Code");
          IF PlanningRtngLine.FINDFIRST THEN BEGIN
            "Due Date" := PlanningRtngLine."Starting Date";
            "Due Time" := PlanningRtngLine."Starting Time";
          END;
        END;
        IF FORMAT("Lead-Time Offset") <> '' THEN BEGIN
          IF "Due Date" = 0D THEN
            "Due Date" := ReqLine."Ending Date";
          "Due Date" :=
            "Due Date" -
            (CALCDATE("Lead-Time Offset",WORKDATE) - WORKDATE);
          "Due Time" := 0T;
        END;

        OnValidateRoutingLinkCodeOnBeforeValidateDueDate(Rec,ReqLine);
        VALIDATE("Due Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Expected Quantity",Quantity * PlanningNeeds);
        #2..4
        if "Routing Link Code" <> '' then begin
          PlanningRtngLine.SetRange("Worksheet Template Name","Worksheet Template Name");
          PlanningRtngLine.SetRange("Worksheet Batch Name","Worksheet Batch Name");
          PlanningRtngLine.SetRange("Worksheet Line No.","Worksheet Line No.");
          PlanningRtngLine.SetRange("Routing Link Code","Routing Link Code");
          if PlanningRtngLine.FindFirst then begin
            "Due Date" := PlanningRtngLine."Starting Date";
            "Due Time" := PlanningRtngLine."Starting Time";
          end;
        end;
        if Format("Lead-Time Offset") <> '' then begin
          if "Due Date" = 0D then
        #17..19
            (CalcDate("Lead-Time Offset",WorkDate) - WorkDate);
          "Due Time" := 0T;
        end;

        OnValidateRoutingLinkCodeOnBeforeValidateDueDate(Rec,ReqLine);
        Validate("Due Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Scrap %"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Expected Quantity",Quantity * PlanningNeeds);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Expected Quantity",Quantity * PlanningNeeds);
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReservePlanningComponent.VerifyChange(Rec,xRec);
        CALCFIELDS("Reserved Qty. (Base)");
        TESTFIELD("Reserved Qty. (Base)",0);
        GetUpdateFromSKU;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ReservePlanningComponent.VerifyChange(Rec,xRec);
        CalcFields("Reserved Qty. (Base)");
        TestField("Reserved Qty. (Base)",0);
        GetUpdateFromSKU;
        */
        //end;


        //Unsupported feature: CodeModification on ""Expected Quantity"(Field 25).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Item.GET("Item No.") AND ("Ref. Order Type" <> "Ref. Order Type"::Assembly) THEN
          IF Item."Rounding Precision" > 0 THEN
            "Expected Quantity" := UOMMgt.RoundToItemRndPrecision("Expected Quantity",Item."Rounding Precision");
        "Expected Quantity (Base)" := ROUND("Expected Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        "Net Quantity (Base)" := "Expected Quantity (Base)" - "Original Expected Qty. (Base)";

        ReservePlanningComponent.VerifyQuantity(Rec,xRec);

        "Cost Amount" := ROUND("Expected Quantity" * "Unit Cost");
        "Overhead Amount" :=
          ROUND(
            "Expected Quantity" *
            (("Direct Unit Cost" * "Indirect Cost %" / 100) + "Overhead Rate" * "Qty. per Unit of Measure"));
        "Direct Cost Amount" := ROUND("Expected Quantity" * "Direct Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Item.Get("Item No.") and ("Ref. Order Type" <> "Ref. Order Type"::Assembly) then
          if Item."Rounding Precision" > 0 then
            "Expected Quantity" := UOMMgt.RoundToItemRndPrecision("Expected Quantity",Item."Rounding Precision");
        "Expected Quantity (Base)" := Round("Expected Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        #5..8
        "Cost Amount" := Round("Expected Quantity" * "Unit Cost");
        "Overhead Amount" :=
          Round(
            "Expected Quantity" *
            (("Direct Unit Cost" * "Indirect Cost %" / 100) + "Overhead Rate" * "Qty. per Unit of Measure"));
        "Direct Cost Amount" := Round("Expected Quantity" * "Direct Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Shortcut Dimension 1 Code"(Field 31).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shortcut Dimension 2 Code"(Field 32).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on "Length(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on "Width(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on "Weight(Field 42).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on "Depth(Field 43).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on ""Calculation Formula"(Field 44).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CASE "Calculation Formula" OF
          "Calculation Formula"::" ":
            Quantity := "Quantity per";
          "Calculation Formula"::Length:
            Quantity := ROUND(Length * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width":
            Quantity := ROUND(Length * Width * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width * Depth":
            Quantity := ROUND(Length * Width * Depth * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::Weight:
            Quantity := ROUND(Weight * "Quantity per",UOMMgt.QtyRndPrecision);
        END;
        OnValidateCalculationFormulaOnAfterSetQuantity(Rec);
        "Quantity (Base)" := Quantity * "Qty. per Unit of Measure";
        VALIDATE("Expected Quantity",Quantity * PlanningNeeds);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        case "Calculation Formula" of
        #2..4
            Quantity := Round(Length * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width":
            Quantity := Round(Length * Width * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width * Depth":
            Quantity := Round(Length * Width * Depth * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::Weight:
            Quantity := Round(Weight * "Quantity per",UOMMgt.QtyRndPrecision);
        end;
        OnValidateCalculationFormulaOnAfterSetQuantity(Rec);
        "Quantity (Base)" := Quantity * "Qty. per Unit of Measure";
        Validate("Expected Quantity",Quantity * PlanningNeeds);
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity per"(Field 45).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 50).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Item No.");

        GetItem;
        GetGLSetup;

        IF Item."Costing Method" = Item."Costing Method"::Standard THEN BEGIN
          IF CurrFieldNo = FIELDNO("Unit Cost") THEN
            ERROR(
              Text001,
              FIELDCAPTION("Unit Cost"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");

          "Unit Cost" :=
            ROUND(Item."Unit Cost" * "Qty. per Unit of Measure");
          "Indirect Cost %" :=
            ROUND(Item."Indirect Cost %" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
          "Overhead Rate" := Item."Overhead Rate";
          "Direct Unit Cost" :=
            ROUND(("Unit Cost" - "Overhead Rate" * "Qty. per Unit of Measure") / (1 + "Indirect Cost %" / 100),
              GLSetup."Unit-Amount Rounding Precision");
        END;

        VALIDATE("Expected Quantity");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Item No.");
        #2..5
        if Item."Costing Method" = Item."Costing Method"::Standard then begin
          if CurrFieldNo = FieldNo("Unit Cost") then
            Error(
              Text001,
              FieldCaption("Unit Cost"),Item.FieldCaption("Costing Method"),Item."Costing Method");

          "Unit Cost" :=
            Round(Item."Unit Cost" * "Qty. per Unit of Measure");
          "Indirect Cost %" :=
            Round(Item."Indirect Cost %" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
          "Overhead Rate" := Item."Overhead Rate";
          "Direct Unit Cost" :=
            Round(("Unit Cost" - "Overhead Rate" * "Qty. per Unit of Measure") / (1 + "Indirect Cost %" / 100),
              GLSetup."Unit-Amount Rounding Precision");
        end;

        Validate("Expected Quantity");
        */
        //end;


        //Unsupported feature: CodeModification on ""Indirect Cost %"(Field 56).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Direct Unit Cost" :=
          ROUND("Unit Cost" / (1 + "Indirect Cost %" / 100) - "Overhead Rate" * "Qty. per Unit of Measure");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Direct Unit Cost" :=
          Round("Unit Cost" / (1 + "Indirect Cost %" / 100) - "Overhead Rate" * "Qty. per Unit of Measure");
        */
        //end;


        //Unsupported feature: CodeModification on ""Overhead Rate"(Field 57).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Indirect Cost %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Indirect Cost %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Due Date-Time"(Field 76).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Due Date" := DT2DATE("Due Date-Time");
        "Due Time" := DT2TIME("Due Date-Time");
        VALIDATE("Due Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Due Date" := DT2Date("Due Date-Time");
        "Due Time" := DT2Time("Due Date-Time");
        Validate("Due Date");
        */
        //end;
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Worksheet Template Name,Worksheet Batch Name,Worksheet Line No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Due Date,Planning Line Origin"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Planning Line Origin,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Worksheet Batch Name,Worksheet Line No.,Item No."(Key)". Please convert manually.

        key(Key1; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Line No.")
        {
        }
        key(Key2; "Item No.", "Variant Code", "Location Code", "Due Date", "Planning Line Origin")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Quantity (Base)", "Cost Amount";
        }
        key(Key3; "Item No.", "Variant Code", "Location Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Planning Line Origin", "Due Date")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Expected Quantity (Base)", "Cost Amount";
        }
        key(Key4; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Item No.")
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
    ReservePlanningComponent.DeleteLine(Rec);

    CALCFIELDS("Reserved Qty. (Base)");
    TESTFIELD("Reserved Qty. (Base)",0);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ReservePlanningComponent.DeleteLine(Rec);

    CalcFields("Reserved Qty. (Base)");
    TestField("Reserved Qty. (Base)",0);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ReservePlanningComponent.VerifyQuantity(Rec,xRec);

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");

    GetReqLine;
    "Planning Line Origin" := ReqLine."Planning Line Origin";
    IF "Planning Line Origin" <> "Planning Line Origin"::"Order Planning" THEN
      TESTFIELD("Worksheet Template Name");

    "Due Date" := ReqLine."Starting Date";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..7
    if "Planning Line Origin" <> "Planning Line Origin"::"Order Planning" then
      TestField("Worksheet Template Name");

    "Due Date" := ReqLine."Starting Date";
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ReservePlanningComponent.VerifyChange(Rec,xRec);

    IF "Location Code" <> '' THEN
      IF Item.GET("Item No.") AND (Item.Type = Item.Type::"Non-Inventory") THEN
        ERROR(LocationCodeMustBeBlankErr);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ReservePlanningComponent.VerifyChange(Rec,xRec);

    if "Location Code" <> '' then
      if Item.Get("Item No.") and (Item.Type = Item.Type::"Non-Inventory") then
        Error(LocationCodeMustBeBlankErr);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Routing Link Code"(Field 19).OnValidate.PlanningRtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Routing Link Code" : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Routing Link Code" : "Planning Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Due Date"(Field 52).OnValidate.CheckDateConflict(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Due Date" : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Due Date" : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnModify.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnModify.Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnModify.Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 5).ReqWkshName(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 245;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Requisition Wksh. Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 5).ReqLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PlanningNeeds(PROCEDURE 1).PlanningRtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PlanningNeeds : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PlanningNeeds : "Planning Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUpdateFromSKU(PROCEDURE 4).SKU(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUpdateFromSKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUpdateFromSKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUpdateFromSKU(PROCEDURE 4).GetPlanningParameters(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUpdateFromSKU : 99000855;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUpdateFromSKU : "Planning-Get Parameters";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindCurrForecastName(PROCEDURE 40).UntrackedPlngElement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindCurrForecastName : 99000855;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindCurrForecastName : "Untracked Planning Element";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetRefOrderTypeBin(PROCEDURE 28).PlanningRoutingLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetRefOrderTypeBin : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetRefOrderTypeBin : "Planning Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetRefOrderTypeBin(PROCEDURE 28).WMSManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetRefOrderTypeBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetRefOrderTypeBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWMSDefaultBin(PROCEDURE 25).WMSManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWMSDefaultBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWMSDefaultBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReqLine(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReqLine : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReqLine : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEngineMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEngineMgt : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEngineMgt : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservePlanningComponent(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservePlanningComponent : 99000840;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservePlanningComponent : "Plng. Component-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Reservation(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Reservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Reservation : Reservation;
    //Variable type has not been exported.
}


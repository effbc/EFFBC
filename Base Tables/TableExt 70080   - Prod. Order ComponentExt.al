tableextension 70080 ProdOrderComponentExt extends "Prod. Order Component"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,B2B1.0,MI1.0

    fields
    {

        //Unsupported feature: Change OptionString on "Status(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Item No."(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 14)". Please convert manually.


        //Unsupported feature: Change Data type on "Position(Field 15)". Please convert manually.


        //Unsupported feature: Change Description on "Position(Field 15)". Please convert manually.


        //Unsupported feature: Change Data type on ""Position 2"(Field 16)". Please convert manually.


        //Unsupported feature: Change Description on ""Position 2"(Field 16)". Please convert manually.


        //Unsupported feature: Change Data type on ""Position 3"(Field 17)". Please convert manually.


        //Unsupported feature: Change Description on ""Position 3"(Field 17)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Quantity"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Act. Consumption (Qty)"(Field 27)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Act. Consumption (Qty)"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Act. Consumption (Qty)"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Flushing Method"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Supplied-by Line No."(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planning Level Code"(Field 36)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Calculation Formula"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Qty. (Base)"(Field 61)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 63)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Qty. (Base)"(Field 73)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change Editable on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Item No."(Field 5703)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Original Variant Code"(Field 5704)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Variant Code"(Field 5704)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty."(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty."(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked"(Field 7300)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked (Base)"(Field 7301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Picked"(Field 7302)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty. (Base)"(Field 7303)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty. (Base)"(Field 7303)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec.FIND THEN BEGIN
          CALCFIELDS("Act. Consumption (Qty)");
          TESTFIELD("Act. Consumption (Qty)",0);
        END;
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        ReserveProdOrderComp.VerifyChange(Rec,xRec);
        CALCFIELDS("Reserved Qty. (Base)");
        TESTFIELD("Reserved Qty. (Base)",0);
        TESTFIELD("Remaining Qty. (Base)","Expected Qty. (Base)");
        IF "Item No." = '' THEN BEGIN
          CreateDim(DATABASE::Item,"Item No.");
          EXIT;
        END;

        Item.GET("Item No.");
        IF "Item No." <> xRec."Item No." THEN BEGIN
          "Variant Code" := '';
          OnValidateItemNoOnBeforeGetDefaultBin(Rec,Item);
          GetDefaultBin;
          ClearCalcFormula;
          IF "Quantity per" <> 0 THEN
            VALIDATE("Quantity per");
        END;
        Description := Item.Description;
        Item.TESTFIELD("Base Unit of Measure");
        VALIDATE("Unit of Measure Code",Item."Base Unit of Measure");
        GetUpdateFromSKU;
        CreateDim(DATABASE::Item,"Item No.");
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec.Find then begin
          CalcFields("Act. Consumption (Qty)");
          TestField("Act. Consumption (Qty)",0);
        end;
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        ReserveProdOrderComp.VerifyChange(Rec,xRec);
        CalcFields("Reserved Qty. (Base)");
        TestField("Reserved Qty. (Base)",0);
        TestField("Remaining Qty. (Base)","Expected Qty. (Base)");
        if "Item No." = '' then begin
          CreateDim(DATABASE::Item,"Item No.");
          exit;
        end;

        Item.Get("Item No.");
        if "Item No." <> xRec."Item No." then begin
        #17..20
          if "Quantity per" <> 0 then
            Validate("Quantity per");
        end;
        Description := Item.Description;
        Item.TestField("Base Unit of Measure");
        Validate("Unit of Measure Code",Item."Base Unit of Measure");
        #27..29
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);

        Item.GET("Item No.");
        GetGLSetup;

        "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
        "Quantity (Base)" := UOMMgt.CalcBaseQty(Quantity,"Qty. per Unit of Measure");

        UpdateUnitCost;

        VALIDATE("Expected Quantity",Quantity * ProdOrderNeeds);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);

        Item.Get("Item No.");
        GetGLSetup;
        "AVG Unit cost":=Item."Avg Unit Cost";
        #6..10
        Validate("Expected Quantity",Quantity * ProdOrderNeeds);
        */
        //end;


        //Unsupported feature: CodeModification on ""Routing Link Code"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Expected Quantity",Quantity * ProdOrderNeeds);

        ProdOrderLine.GET(Status,"Prod. Order No.","Prod. Order Line No.");

        "Due Date" := ProdOrderLine."Starting Date";
        "Due Time" := ProdOrderLine."Starting Time";
        IF "Routing Link Code" <> '' THEN BEGIN
          ProdOrderRtngLine.SETRANGE(Status,Status);
          ProdOrderRtngLine.SETRANGE("Prod. Order No.","Prod. Order No.");
          ProdOrderRtngLine.SETRANGE("Routing No.",ProdOrderLine."Routing No.");
          ProdOrderRtngLine.SETRANGE("Routing Reference No.",ProdOrderLine."Routing Reference No.");
          ProdOrderRtngLine.SETRANGE("Routing Link Code","Routing Link Code");
          IF ProdOrderRtngLine.FINDFIRST THEN BEGIN
            "Due Date" := ProdOrderRtngLine."Starting Date";
            "Due Time" := ProdOrderRtngLine."Starting Time";
          END;
        END;
        IF FORMAT("Lead-Time Offset") <> '' THEN BEGIN
          "Due Date" :=
            "Due Date" -
            (CALCDATE("Lead-Time Offset",WORKDATE) - WORKDATE);
          "Due Time" := 0T;
        END;

        OnValidateRoutingLinkCodeBeforeValidateDueDate(Rec,ProdOrderLine);
        VALIDATE("Due Date");

        IF "Routing Link Code" <> xRec."Routing Link Code" THEN
          UpdateBin(Rec,FIELDNO("Routing Link Code"),FIELDCAPTION("Routing Link Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Expected Quantity",Quantity * ProdOrderNeeds);

        ProdOrderLine.Get(Status,"Prod. Order No.","Prod. Order Line No.");
        #4..6
        if "Routing Link Code" <> '' then begin
          ProdOrderRtngLine.SetRange(Status,Status);
          ProdOrderRtngLine.SetRange("Prod. Order No.","Prod. Order No.");
          ProdOrderRtngLine.SetRange("Routing No.",ProdOrderLine."Routing No.");
          ProdOrderRtngLine.SetRange("Routing Reference No.",ProdOrderLine."Routing Reference No.");
          ProdOrderRtngLine.SetRange("Routing Link Code","Routing Link Code");
          if ProdOrderRtngLine.FindFirst then begin
            "Due Date" := ProdOrderRtngLine."Starting Date";
            "Due Time" := ProdOrderRtngLine."Starting Time";
          end;
        end;
        if Format("Lead-Time Offset") <> '' then begin
          "Due Date" :=
            "Due Date" -
            (CalcDate("Lead-Time Offset",WorkDate) - WorkDate);
          "Due Time" := 0T;
        end;

        OnValidateRoutingLinkCodeBeforeValidateDueDate(Rec,ProdOrderLine);
        Validate("Due Date");

        if "Routing Link Code" <> xRec."Routing Link Code" then
          UpdateBin(Rec,FieldNo("Routing Link Code"),FieldCaption("Routing Link Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Scrap %"(Field 20).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Variant Code"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Item."No." <> "Item No." THEN
          Item.GET("Item No.");
        IF "Variant Code" = '' THEN
          Description := Item.Description
        ELSE BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          Description := ItemVariant.Description;
        END;
        GetDefaultBin;
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        ReserveProdOrderComp.VerifyChange(Rec,xRec);
        CALCFIELDS("Reserved Qty. (Base)");
        TESTFIELD("Reserved Qty. (Base)",0);
        TESTFIELD("Remaining Qty. (Base)","Expected Qty. (Base)");
        UpdateUnitCost;
        VALIDATE("Expected Quantity");
        GetUpdateFromSKU;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Item."No." <> "Item No." then
          Item.Get("Item No.");
        if "Variant Code" = '' then
          Description := Item.Description
        else begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant."Part No";
        end;
        #9..11
        CalcFields("Reserved Qty. (Base)");
        TestField("Reserved Qty. (Base)",0);
        TestField("Remaining Qty. (Base)","Expected Qty. (Base)");
        UpdateUnitCost;
        Validate("Expected Quantity");
        GetUpdateFromSKU;
        */
        //end;


        //Unsupported feature: CodeModification on ""Expected Quantity"(Field 25).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Item.GET("Item No.") THEN
          IF Item."Rounding Precision" > 0 THEN BEGIN
            "Expected Quantity" := UOMMgt.RoundToItemRndPrecision("Expected Quantity",Item."Rounding Precision");
            OnAfterRoundExpectedQuantity(Rec);
          END;

        "Expected Qty. (Base)" := ROUND("Expected Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        IF (Status IN [Status::Released,Status::Finished]) AND
           (xRec."Item No." <> '') AND
           ("Line No." <> 0)
        THEN
          CALCFIELDS("Act. Consumption (Qty)");

        OnValidateExpectedQuantityOnAfterCalcActConsumptionQty(Rec,xRec);
        "Remaining Quantity" := "Expected Quantity" - "Act. Consumption (Qty)" / "Qty. per Unit of Measure";
        IF ("Remaining Quantity" * "Expected Quantity") <= 0 THEN
          "Remaining Quantity" := 0;
        "Remaining Qty. (Base)" := ROUND("Remaining Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        "Completely Picked" := "Qty. Picked" >= "Expected Quantity";

        ReserveProdOrderComp.VerifyQuantity(Rec,xRec);

        "Cost Amount" := ROUND("Expected Quantity" * "Unit Cost");
        "Overhead Amount" :=
          ROUND(
            "Expected Quantity" *
            (("Direct Unit Cost" * "Indirect Cost %" / 100) + "Overhead Rate"));
        "Direct Cost Amount" := ROUND("Expected Quantity" * "Direct Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Item.Get("Item No.") then
          if Item."Rounding Precision" > 0 then begin
            "Expected Quantity" := UOMMgt.RoundToItemRndPrecision("Expected Quantity",Item."Rounding Precision");
            OnAfterRoundExpectedQuantity(Rec);
          end;

        "Expected Qty. (Base)" := Round("Expected Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        if (Status in [Status::Released,Status::Finished]) and
           (xRec."Item No." <> '') and
           ("Line No." <> 0)
        then
          CalcFields("Act. Consumption (Qty)");
        #13..15
        //Rasool
        //16-06-06
        if ("Act. Consumption (Qty)" <> 0) or ("Qty. per Unit of Measure" <> 0) then
          "Remaining Quantity" := "Expected Quantity" - "Act. Consumption (Qty)" / "Qty. per Unit of Measure"
        else
          "Remaining Quantity" := "Expected Quantity";
        if ("Remaining Quantity" * "Expected Quantity") <= 0 then
          "Remaining Quantity" := 0;
        "Remaining Qty. (Base)" := Round("Remaining Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        #19..22
        "Cost Amount" := Round("Expected Quantity" * "Unit Cost");
        "Overhead Amount" :=
          Round(
            "Expected Quantity" *
            (("Direct Unit Cost" * "Indirect Cost %" / 100) + "Overhead Rate"));
        "Direct Cost Amount" := Round("Expected Quantity" * "Direct Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Flushing Method"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Flushing Method" = "Flushing Method"::Backward) AND (Status = Status::Released) THEN BEGIN
          ItemLedgEntry.SETRANGE("Order Type",ItemLedgEntry."Order Type"::Production);
          ItemLedgEntry.SETRANGE("Order No.","Prod. Order No.");
          ItemLedgEntry.SETRANGE("Order Line No.","Prod. Order Line No.");
          ItemLedgEntry.SETRANGE("Entry Type",ItemLedgEntry."Entry Type"::Consumption);
          ItemLedgEntry.SETRANGE("Prod. Order Comp. Line No.","Line No.");
          IF "Line No." = 0 THEN
            ItemLedgEntry.SETRANGE("Item No.","Item No.");
          IF NOT ItemLedgEntry.ISEMPTY THEN
            ERROR(Text99000002,"Flushing Method",ItemLedgEntry.TABLECAPTION);
        END;

        IF ("Flushing Method" <> xRec."Flushing Method") AND
           (xRec."Flushing Method" IN
            [xRec."Flushing Method"::Manual,
             xRec."Flushing Method"::"Pick + Forward",
             xRec."Flushing Method"::"Pick + Backward"])
        THEN BEGIN
          CALCFIELDS("Pick Qty.");
          IF "Pick Qty." <> 0 THEN
            ERROR(Text99000007,"Flushing Method","Item No.");

          IF "Qty. Picked" <> 0 THEN
            ERROR(Text99000008,"Flushing Method","Item No.");

          IF (xRec."Flushing Method" IN
              [xRec."Flushing Method"::Manual,
               xRec."Flushing Method"::"Pick + Forward",
               xRec."Flushing Method"::"Pick + Backward"]) AND
             ("Flushing Method" IN ["Flushing Method"::Forward,"Flushing Method"::Backward])
          THEN BEGIN
            PickWhseWorksheetLine.SETRANGE("Source Type",DATABASE::"Prod. Order Component");
            PickWhseWorksheetLine.SETRANGE("Source No.","Prod. Order No.");
            PickWhseWorksheetLine.SETRANGE("Source Line No.","Prod. Order Line No.");
            PickWhseWorksheetLine.SETRANGE("Source Subline No.","Line No.");
            IF NOT PickWhseWorksheetLine.ISEMPTY THEN
              ERROR(Text99000002,"Flushing Method",PickWhseWorksheetLine.TABLECAPTION);
          END;
        END;

        IF "Flushing Method" <> xRec."Flushing Method" THEN
          UpdateBin(Rec,FIELDNO("Flushing Method"),FIELDCAPTION("Flushing Method"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Flushing Method" = "Flushing Method"::Backward) and (Status = Status::Released) then begin
          ItemLedgEntry.SetRange("Order Type",ItemLedgEntry."Order Type"::Production);
          ItemLedgEntry.SetRange("Order No.","Prod. Order No.");
          ItemLedgEntry.SetRange("Order Line No.","Prod. Order Line No.");
          ItemLedgEntry.SetRange("Entry Type",ItemLedgEntry."Entry Type"::Consumption);
          ItemLedgEntry.SetRange("Prod. Order Comp. Line No.","Line No.");
          if "Line No." = 0 then
            ItemLedgEntry.SetRange("Item No.","Item No.");
          if not ItemLedgEntry.IsEmpty then
            Error(Text99000002,"Flushing Method",ItemLedgEntry.TableCaption);
        end;

        if ("Flushing Method" <> xRec."Flushing Method") and
           (xRec."Flushing Method" in
        #15..17
        then begin
          CalcFields("Pick Qty.");
          if "Pick Qty." <> 0 then
            Error(Text99000007,"Flushing Method","Item No.");

          if "Qty. Picked" <> 0 then
            Error(Text99000008,"Flushing Method","Item No.");

          if (xRec."Flushing Method" in
              [xRec."Flushing Method"::Manual,
               xRec."Flushing Method"::"Pick + Forward",
               xRec."Flushing Method"::"Pick + Backward"]) and
             ("Flushing Method" in ["Flushing Method"::Forward,"Flushing Method"::Backward])
          then begin
            PickWhseWorksheetLine.SetRange("Source Type",DATABASE::"Prod. Order Component");
            PickWhseWorksheetLine.SetRange("Source No.","Prod. Order No.");
            PickWhseWorksheetLine.SetRange("Source Line No.","Prod. Order Line No.");
            PickWhseWorksheetLine.SetRange("Source Subline No.","Line No.");
            if not PickWhseWorksheetLine.IsEmpty then
              Error(Text99000002,"Flushing Method",PickWhseWorksheetLine.TableCaption);
          end;
        end;

        if "Flushing Method" <> xRec."Flushing Method" then
          UpdateBin(Rec,FieldNo("Flushing Method"),FieldCaption("Flushing Method"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 30).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Item."No." <> "Item No." THEN
          Item.GET("Item No.");

        // Location code in allowed only for inventoriable items
        IF "Location Code" <> '' THEN
          Item.TESTFIELD(Type,Item.Type::Inventory);

        UpdateUnitCost;
        VALIDATE("Expected Quantity");

        GetDefaultBin;
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        ReserveProdOrderComp.VerifyChange(Rec,xRec);
        GetUpdateFromSKU;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Item."No." <> "Item No." then
          Item.Get("Item No.");

        // Location code in allowed only for inventoriable items
        if "Location Code" <> '' then
          Item.TestField(Type,Item.Type::Inventory);

        UpdateUnitCost;
        Validate("Expected Quantity");
        #10..14
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 33).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeBinCodeOnLookup(Rec,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF Quantity > 0 THEN
          BinCode := WMSManagement.BinContentLookUp("Location Code","Item No.","Variant Code",'',"Bin Code")
        ELSE
          BinCode := WMSManagement.BinLookUp("Location Code","Item No.","Variant Code",'');

        IF BinCode <> '' THEN
          VALIDATE("Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeBinCodeOnLookup(Rec,IsHandled);
        if IsHandled then
          exit;

        if Quantity > 0 then
          BinCode := WMSManagement.BinContentLookUp("Location Code","Item No.","Variant Code",'',"Bin Code")
        else
          BinCode := WMSManagement.BinLookUp("Location Code","Item No.","Variant Code",'');

        if BinCode <> '' then
          Validate("Bin Code",BinCode);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bin Code" <> '' THEN BEGIN
          TESTFIELD("Location Code");
          WMSManagement.FindBin("Location Code","Bin Code",'');
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Prod. Order Component",
            FIELDCAPTION("Bin Code"),
            "Location Code",
            "Bin Code",0);
          CheckBin;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Code" <> '' then begin
          TestField("Location Code");
          WMSManagement.FindBin("Location Code","Bin Code",'');
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Prod. Order Component",
            FieldCaption("Bin Code"),
        #6..8
        end;
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
        VALIDATE("Expected Quantity",Quantity * ProdOrderNeeds);
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
        Validate("Expected Quantity",Quantity * ProdOrderNeeds);
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity per"(Field 45).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        TESTFIELD("Item No.");
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        TestField("Item No.");
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

        Item.GET("Item No.");
        GetGLSetup;
        IF Item."Costing Method" = Item."Costing Method"::Standard THEN BEGIN
          IF CurrFieldNo = FIELDNO("Unit Cost") THEN
            ERROR(
              Text99000003,
              FIELDCAPTION("Unit Cost"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
          UpdateUnitCost;
        END;
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Item No.");

        Item.Get("Item No.");
        GetGLSetup;
        if Item."Costing Method" = Item."Costing Method"::Standard then begin
          if CurrFieldNo = FieldNo("Unit Cost") then
            Error(
              Text99000003,
              FieldCaption("Unit Cost"),Item.FieldCaption("Costing Method"),Item."Costing Method");
          UpdateUnitCost;
        end;
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on ""Due Date"(Field 52).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        IF NOT Blocked THEN BEGIN
          IF CurrFieldNo <> 0 THEN
            CheckDateConflict.ProdOrderComponentCheck(Rec,TRUE,TRUE)
          ELSE
            IF CheckDateConflict.ProdOrderComponentCheck(Rec,NOT WarningRaised,FALSE) THEN
              WarningRaised := TRUE;
        END;
        UpdateDatetime;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
        if not Blocked then begin
          if CurrFieldNo <> 0 then
            CheckDateConflict.ProdOrderComponentCheck(Rec,true,true)
          else
            if CheckDateConflict.ProdOrderComponentCheck(Rec,not WarningRaised,false) then
              WarningRaised := true;
        end;
        UpdateDatetime;
        */
        //end;


        //Unsupported feature: CodeModification on ""Expected Qty. (Base)"(Field 73).OnValidate". Please convert manually.

        //trigger  (Base)"(Field 73)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Status <> Status::Simulated THEN BEGIN
          IF Status IN [Status::Released,Status::Finished] THEN
            CALCFIELDS("Act. Consumption (Qty)");
          OnValidateExpectedQtyBaseOnAfterCalcActConsumptionQty(Rec,xRec);
          "Remaining Quantity" := "Expected Quantity" - "Act. Consumption (Qty)";
          "Remaining Qty. (Base)" := ROUND("Remaining Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        END;
        "Cost Amount" := ROUND("Expected Quantity" * "Unit Cost");
        "Overhead Amount" :=
          ROUND(
            "Expected Quantity" *
            (("Direct Unit Cost" * "Indirect Cost %" / 100) + "Overhead Rate"));
        "Direct Cost Amount" := ROUND("Expected Quantity" * "Direct Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Status <> Status::Simulated then begin
          if Status in [Status::Released,Status::Finished] then
            CalcFields("Act. Consumption (Qty)");
          OnValidateExpectedQtyBaseOnAfterCalcActConsumptionQty(Rec,xRec);
          "Remaining Quantity" := "Expected Quantity" - "Act. Consumption (Qty)";
          "Remaining Qty. (Base)" := Round("Remaining Quantity" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        end;
        "Cost Amount" := Round("Expected Quantity" * "Unit Cost");
        "Overhead Amount" :=
          Round(
            "Expected Quantity" *
            (("Direct Unit Cost" * "Indirect Cost %" / 100) + "Overhead Rate"));
        "Direct Cost Amount" := Round("Expected Quantity" * "Direct Unit Cost");
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


        //Unsupported feature: CodeModification on ""Indirect Cost %"(Field 99000755).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Direct Unit Cost" :=
          ROUND(("Unit Cost" - "Overhead Rate") / (1 + "Indirect Cost %" / 100));

        VALIDATE("Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Direct Unit Cost" :=
          Round(("Unit Cost" - "Overhead Rate") / (1 + "Indirect Cost %" / 100));

        Validate("Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Overhead Rate"(Field 99000756).OnValidate". Please convert manually.

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
        field(16360; "Qty. To Consume"; Decimal)
        {
            CaptionML = ENU = 'Qty. To Consume',
                        ENN = 'Qty. To Consume';
            DataClassification = ToBeClassified;
        }
        field(50001; "Qty. in Material Issues"; Decimal)
        {
            CalcFormula = Sum("Material Issues Line"."Qty. to Receive" WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                              "Prod. Order Line No." = FIELD("Prod. Order Line No."),
                                                                              "Prod. Order Comp. Line No." = FIELD("Line No.")));
            Description = 'MI1.0';
            FieldClass = FlowField;
        }
        field(50002; "Qty. in Posted Material Issues"; Decimal)
        {
            CalcFormula = Sum("Posted Material Issues Line".Quantity WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                            "Prod. Order Line No." = FIELD("Prod. Order Line No."),
                                                                            "Item No." = FIELD("Item No.")));
            Description = 'MI1.0';
            FieldClass = FlowField;
        }
        field(60001; "Position 4"; Code[250])
        {
            Description = 'B2B';
        }
        field(60002; "Source No."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60003; "BOM Type"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionCaption = '" ,Mechanical,Wiring,Testing,Packing"';
            OptionMembers = " ",Mechanical,Wiring,Testing,Packing;
        }
        field(60006; "Type of Solder"; Option)
        {
            Description = 'B2B';
            Editable = true;
            OptionMembers = " ",SMD,DIP;
        }
        field(60007; "Production Plan Date"; Date)
        {
            FieldClass = Normal;

            trigger OnValidate();
            begin
                /*
                //B2B1.0 Start
                MESSAGE('HI2');
                IF "Material Required Day" = 0 THEN
                  "Material Requisition Date" := 0D
                ELSE IF "Material Required Day" = 1 THEN
                  "Material Requisition Date" :=  "Production Plan Date"
                ELSE
                  "Material Requisition Date" := CALCDATE(FORMAT("Material Required Day" - 1) +'D',"Production Plan Date");
                  MODIFY;
                //B2B1.0 END
                */

            end;
        }
        field(60008; "Material Required Day"; Integer)
        {
        }
        field(60009; "Don't Consider"; Boolean)
        {
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
        field(60092; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60100; Copy1; Boolean)
        {
            Editable = false;
        }
        field(60101; "Qty Copied"; Decimal)
        {
            CalcFormula = Sum("Item Journal Line".Quantity WHERE("ITL Doc No." = FIELD("Prod. Order No."),
                                                                  "ITL Doc Line No." = FIELD("Prod. Order Line No."),
                                                                  "ITL Doc Ref Line No." = FIELD("Line No.")));
            FieldClass = FlowField;
        }
        field(60102; "Qty Posted"; Decimal)
        {
            CalcFormula = Sum("Material Issue Line"."Received Quantity" WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                               "Prod. Order Line No." = FIELD("Prod. Order Line No."),
                                                                               "Prod. Order Comp. Line No." = FIELD("Line No.")));
            FieldClass = FlowField;
        }
        field(60103; "Qty in To"; Decimal)
        {
            CalcFormula = Sum("Transfer Line".Quantity WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                              "Prod. Order Line No." = FIELD("Prod. Order Line No."),
                                                              "Prod. Order Comp. Line No." = FIELD("Line No.")));
            FieldClass = FlowField;
        }
        field(60104; "Qty Shipped in To"; Decimal)
        {
            CalcFormula = Sum("Transfer Shipment Line".Quantity WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                       "Prod. Order Line No." = FIELD("Prod. Order Line No."),
                                                                       "Prod. Order Comp. Line No." = FIELD("Line No.")));
            FieldClass = FlowField;
        }
        field(60105; "BOM Qty"; Decimal)
        {
            Description = 'B2B    For Getting The Actual Qty of the BOM';
        }
        field(60106; PCB; Boolean)
        {
        }
        field(60107; "AVG Unit cost"; Decimal)
        {
        }
        field(60108; "Product Group Code"; Code[20])
        {
            CalcFormula = Lookup(Item."Product Group Code" WHERE("No." = FIELD("Item No.")));
            FieldClass = FlowField;
        }
        field(60109; "Type of Solder2"; Text[10])
        {
        }
        field(60111; "Material Requisition Date"; Date)
        {
            Description = 'B2B1.0';
        }
        field(60112; "Operation No."; Code[10])
        {
        }
        field(60113; Dept; Code[10])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Prod. Order Line No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Prod. Order No.,Prod. Order Line No.,Line No.,Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Prod. Order Line No.,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Prod. Order Line No.,Item No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Item No.,Variant Code,Location Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Routing Link Code,Flushing Method"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Status,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Prod. Order Line No.,Item Low-Level Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Supplied-by Line No."(Key)". Please convert manually.

        key(Key1; Status, "Prod. Order No.", "Prod. Order Line No.", "Line No.")
        {
        }
        key(Key2; "Prod. Order No.", "Prod. Order Line No.", "Line No.", Status)
        {
        }
        key(Key3; Status, "Prod. Order No.", "Prod. Order Line No.", "Due Date")
        {
            SumIndexFields = "Expected Quantity", "Cost Amount";
        }
        key(Key4; Status, "Prod. Order No.", "Prod. Order Line No.", "Item No.", "Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key5; Status, "Item No.", "Variant Code", "Location Code", "Due Date")
        {
            SumIndexFields = "Expected Quantity", "Remaining Qty. (Base)", "Cost Amount", "Overhead Amount";
        }
        key(Key6; "Item No.", "Variant Code", "Location Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Due Date")
        {
            Enabled = false;
            SumIndexFields = "Expected Quantity", "Remaining Qty. (Base)", "Cost Amount", "Overhead Amount";
        }
        key(Key7; Status, "Prod. Order No.", "Routing Link Code", "Flushing Method")
        {
        }
        key(Key8; Status, "Prod. Order No.", "Location Code")
        {
        }
        key(Key9; "Item No.", "Variant Code", "Location Code", Status, "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Qty. (Base)", "Remaining Qty. (Base)", "Cost Amount", "Overhead Amount", "Qty. Picked (Base)";
        }
        key(Key10; Status, "Prod. Order No.", "Prod. Order Line No.", "Item Low-Level Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key11; "Supplied-by Line No.")
        {
        }
        key(Key12; "Item No.", "Prod. Order No.", "Prod. Order Line No.", "Line No.", Status)
        {
        }
        key(Key13; "Item No.")
        {
        }
        key(Key14; "Item No.", "Location Code")
        {
        }
        key(Key15; "Prod. Order No.", "Item No.", "Material Required Day")
        {
        }
        key(Key16; "Production Plan Date", "Item No.", "Prod. Order No.")
        {
            SumIndexFields = "Expected Quantity";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Finished THEN
      ERROR(Text000);
    IF Status = Status::Released THEN BEGIN
      ItemLedgEntry.SETCURRENTKEY("Order Type","Order No.","Order Line No.","Entry Type","Prod. Order Comp. Line No.");
      ItemLedgEntry.SETRANGE("Order Type",ItemLedgEntry."Order Type"::Production);
      ItemLedgEntry.SETRANGE("Order No.","Prod. Order No.");
      ItemLedgEntry.SETRANGE("Order Line No.","Prod. Order Line No.");
      ItemLedgEntry.SETRANGE("Entry Type",ItemLedgEntry."Entry Type"::Consumption);
      ItemLedgEntry.SETRANGE("Prod. Order Comp. Line No.","Line No.");
      IF ItemLedgEntry.FINDFIRST THEN
        ERROR(Text99000000,ItemLedgEntry."Item No.","Line No.");
    END;

    WhseValidateSourceLine.ProdComponentDelete(Rec);
    ReserveProdOrderComp.DeleteLine(Rec);

    CALCFIELDS("Reserved Qty. (Base)");
    TESTFIELD("Reserved Qty. (Base)",0);

    IF "Supplied-by Line No." > 0 THEN BEGIN
      IsHandled := FALSE;
      OnDeleteOnBeforeGetProdOrderLine(Rec,IsHandled);
      IF NOT IsHandled THEN
        IF ProdOrderLine.GET(Status,"Prod. Order No.","Supplied-by Line No.") THEN BEGIN
          NewQuantity := ProdOrderLine.Quantity - "Expected Quantity";
          IF (NewQuantity = 0) OR IsLineRequiredForSingleDemand(ProdOrderLine,"Prod. Order Line No.") THEN BEGIN
            ProdOrderLine.SetCalledFromComponent(TRUE);
            ProdOrderLine.DELETE(TRUE);
          END ELSE BEGIN
            ProdOrderLine.VALIDATE(Quantity,NewQuantity);
            ProdOrderLine.MODIFY;
            ProdOrderLine.UpdateProdOrderComp(ProdOrderLine."Qty. per Unit of Measure");
          END;
        END;
    END;

    ProdOrderBOMComment.SETRANGE(Status,Status);
    ProdOrderBOMComment.SETRANGE("Prod. Order No.","Prod. Order No.");
    ProdOrderBOMComment.SETRANGE("Prod. Order Line No.","Prod. Order Line No.");
    ProdOrderBOMComment.SETRANGE("Prod. Order BOM Line No.","Line No.");
    ProdOrderBOMComment.DELETEALL;

    WhseProdRelease.DeleteLine(Rec);

    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Prod. Order Component",Status,"Prod. Order No.",'',
      "Prod. Order Line No.","Line No.","Location Code",TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Status = Status::Finished then
      Error(Text000);
    if Status = Status::Released then begin
      ItemLedgEntry.SetCurrentKey("Order Type","Order No.","Order Line No.","Entry Type","Prod. Order Comp. Line No.");
      ItemLedgEntry.SetRange("Order Type",ItemLedgEntry."Order Type"::Production);
      ItemLedgEntry.SetRange("Order No.","Prod. Order No.");
      ItemLedgEntry.SetRange("Order Line No.","Prod. Order Line No.");
      ItemLedgEntry.SetRange("Entry Type",ItemLedgEntry."Entry Type"::Consumption);
      ItemLedgEntry.SetRange("Prod. Order Comp. Line No.","Line No.");
      if ItemLedgEntry.FindFirst then
        Error(Text99000000,ItemLedgEntry."Item No.","Line No.");
    end;
    #13..16
    CalcFields("Reserved Qty. (Base)");
    TestField("Reserved Qty. (Base)",0);

    if "Supplied-by Line No." > 0 then begin
      IsHandled := false;
      OnDeleteOnBeforeGetProdOrderLine(Rec,IsHandled);
      if not IsHandled then
        if ProdOrderLine.Get(Status,"Prod. Order No.","Supplied-by Line No.") then begin
          NewQuantity := ProdOrderLine.Quantity - "Expected Quantity";
          if (NewQuantity = 0) or IsLineRequiredForSingleDemand(ProdOrderLine,"Prod. Order Line No.") then begin
            ProdOrderLine.SetCalledFromComponent(true);
            ProdOrderLine.Delete(true);
          end else begin
            ProdOrderLine.Validate(Quantity,NewQuantity);
            ProdOrderLine.Modify;
            ProdOrderLine.UpdateProdOrderComp(ProdOrderLine."Qty. per Unit of Measure");
          end;
        end;
    end;

    ProdOrderBOMComment.SetRange(Status,Status);
    ProdOrderBOMComment.SetRange("Prod. Order No.","Prod. Order No.");
    ProdOrderBOMComment.SetRange("Prod. Order Line No.","Prod. Order Line No.");
    ProdOrderBOMComment.SetRange("Prod. Order BOM Line No.","Line No.");
    ProdOrderBOMComment.DeleteAll;
    #42..46
      "Prod. Order Line No.","Line No.","Location Code",true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Finished THEN
      ERROR(Text000);

    ReserveProdOrderComp.VerifyQuantity(Rec,xRec);

    IF Status = Status::Released THEN
      WhseProdRelease.ReleaseLine(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Status = Status::Finished then
      Error(Text000);
    #3..5
    if Status = Status::Released then
      WhseProdRelease.ReleaseLine(Rec,xRec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Finished THEN
      ERROR(Text000);

    WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
    ReserveProdOrderComp.VerifyChange(Rec,xRec);
    IF Status = Status::Released THEN
      WhseProdRelease.ReleaseLine(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {
    IF Status = Status::Finished THEN
      ERROR(Text000);
    }
    WhseValidateSourceLine.ProdComponentVerifyChange(Rec,xRec);
    ReserveProdOrderComp.VerifyChange(Rec,xRec);
    if Status = Status::Released then
      WhseProdRelease.ReleaseLine(Rec,xRec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text99000001,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //ERROR(Text99000001,TABLECAPTION);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Routing Link Code"(Field 19).OnValidate.ProdOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Routing Link Code" : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Routing Link Code" : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Routing Link Code"(Field 19).OnValidate.ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Routing Link Code" : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Routing Link Code" : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 21).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Flushing Method"(Field 28).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Flushing Method" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Flushing Method" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Flushing Method"(Field 28).OnValidate.PickWhseWorksheetLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Flushing Method" : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Flushing Method" : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 33).OnLookup.WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 33).OnValidate.WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 33).OnValidate.WhseIntegrationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Due Date"(Field 52).OnValidate.CheckDateConflict(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Due Date" : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Due Date" : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ProdOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdOrderLine : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdOrderLine : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ProdOrderBOMComment(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdOrderBOMComment : 5416;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdOrderBOMComment : "Prod. Order Comp. Cmt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemLedgEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemLedgEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemTrackingMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 4).ProdOrder(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 5405;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Production Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 4).ProdOrderLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderNeeds(PROCEDURE 1).ProdOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderNeeds : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderNeeds : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderNeeds(PROCEDURE 1).ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderNeeds : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderNeeds : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNeededQty(PROCEDURE 3).ProdOrderLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNeededQty : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNeededQty : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNeededQty(PROCEDURE 3).ProdOrderRtngLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNeededQty : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNeededQty : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNeededQty(PROCEDURE 3).CapLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNeededQty : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNeededQty : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNeededQty(PROCEDURE 3).CostCalcMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNeededQty : 5836;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNeededQty : "Cost Calculation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 5).ProdOrderLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUpdateFromSKU(PROCEDURE 10).SKU(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUpdateFromSKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUpdateFromSKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUpdateFromSKU(PROCEDURE 10).GetPlanningParameters(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUpdateFromSKU : 99000855;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUpdateFromSKU : "Planning-Get Parameters";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 44).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).ProdOrderRtngLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultConsumptionBin(PROCEDURE 15).ProdOrderLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultConsumptionBin : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultConsumptionBin : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultConsumptionBin(PROCEDURE 15).WMSManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultConsumptionBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultConsumptionBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBin(PROCEDURE 23).ProdOrderComp2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBin : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBin : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 24).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 24).Bin(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 2).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoReserve : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoReserve : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsLineRequiredForSingleDemand(PROCEDURE 27).ProdOrderComponent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsLineRequiredForSingleDemand : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsLineRequiredForSingleDemand : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKU(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservMgt(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservMgt : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservMgt : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEngineMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEngineMgt : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEngineMgt : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReserveProdOrderComp(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReserveProdOrderComp : 99000838;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReserveProdOrderComp : "Prod. Order Comp.-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseProdRelease(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseProdRelease : 5774;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseProdRelease : "Whse.-Production Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseValidateSourceLine : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseValidateSourceLine : "Whse. Validate Source Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemSubstitutionMgt(Variable 1031)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemSubstitutionMgt : 5701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemSubstitutionMgt : "Item Subst.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Reservation(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Reservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Reservation : Reservation;
    //Variable type has not been exported.
}


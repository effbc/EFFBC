tableextension 70062 AssemblyHeaderExt extends "Assembly Header"
{
    // version NAVW19.00.00.50458

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Creation Date"(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 7)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity (Base)"(Field 43)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Assembled Quantity"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assembled Quantity"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assembled Quantity (Base)"(Field 45)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 48)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 49)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 49)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Assemble to Order"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assemble to Order"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount"(Field 67)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Rolled-up Assembly Cost"(Field 68)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 81)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 107)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 120)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "No." <> xRec."No." THEN BEGIN
          AssemblySetup.GET;
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "No." <> xRec."No." then begin
          AssemblySetup.Get;
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 10).OnValidate". Please convert manually.

        //trigger "(Field 10)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        SetCurrentFieldNum(FIELDNO("Item No."));
        IF "Item No." <> '' THEN BEGIN
          SetDescriptionsFromItem;
          Item.TESTFIELD(Blocked,FALSE);
          "Unit Cost" := GetUnitCost;
          "Overhead Rate" := Item."Overhead Rate";
          "Inventory Posting Group" := Item."Inventory Posting Group";
          "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
          "Indirect Cost %" := Item."Indirect Cost %";
          VALIDATE("Unit of Measure Code",Item."Base Unit of Measure");
          SetDim;
          IsHandled := FALSE;
          OnValidateItemNoOnBeforeValidateDates(Rec,xRec,IsHandled);
          IF NOT IsHandled THEN
            ValidateDates(FIELDNO("Due Date"),TRUE);
          GetDefaultBin;
          OnValidateItemNoOnAfterGetDefaultBin(Rec,Item);
        END;
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO("Item No."),TRUE,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyChange(Rec,xRec);
        ClearCurrentFieldNum(FIELDNO("Item No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        SetCurrentFieldNum(FieldNo("Item No."));
        if "Item No." <> '' then begin
          SetDescriptionsFromItem;
          Item.TestField(Blocked,false);
        #7..11
          Validate("Unit of Measure Code",Item."Base Unit of Measure");
          SetDim;
          IsHandled := false;
          OnValidateItemNoOnBeforeValidateDates(Rec,xRec,IsHandled);
          if not IsHandled then
            ValidateDates(FieldNo("Due Date"),true);
          GetDefaultBin;
          OnValidateItemNoOnAfterGetDefaultBin(Rec,Item);
        end;
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo("Item No."),true,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyChange(Rec,xRec);
        ClearCurrentFieldNum(FieldNo("Item No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        SetCurrentFieldNum(FIELDNO("Variant Code"));
        IF "Variant Code" = '' THEN
          SetDescriptionsFromItem
        ELSE BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          Description := ItemVariant.Description;
          "Description 2" := ItemVariant."Description 2";
        END;
        IsHandled := FALSE;
        OnValidateVariantCodeOnBeforeValidateDates(Rec,xRec,IsHandled);
        IF NOT IsHandled THEN
          ValidateDates(FIELDNO("Due Date"),TRUE);

        IsHandled := FALSE;
        OnValidateVariantCodeOnBeforeUpdateAssemblyLines(Rec,xRec,CurrFieldNo,CurrentFieldNum,IsHandled);
        IF NOT IsHandled THEN
          AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO("Variant Code"),FALSE,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyChange(Rec,xRec);
        GetDefaultBin;
        VALIDATE("Unit Cost",GetUnitCost);
        ClearCurrentFieldNum(FIELDNO("Variant Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        SetCurrentFieldNum(FieldNo("Variant Code"));
        if "Variant Code" = '' then
          SetDescriptionsFromItem
        else begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant."Part No";
          "Description 2" := ItemVariant.Description;
        end;
        IsHandled := false;
        OnValidateVariantCodeOnBeforeValidateDates(Rec,xRec,IsHandled);
        if not IsHandled then
          ValidateDates(FieldNo("Due Date"),true);

        IsHandled := false;
        OnValidateVariantCodeOnBeforeUpdateAssemblyLines(Rec,xRec,CurrFieldNo,CurrentFieldNum,IsHandled);
        if not IsHandled then
          AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo("Variant Code"),false,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyChange(Rec,xRec);
        GetDefaultBin;
        Validate("Unit Cost",GetUnitCost);
        ClearCurrentFieldNum(FieldNo("Variant Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        SetCurrentFieldNum(FIELDNO("Location Code"));
        ValidateDates(FIELDNO("Due Date"),TRUE);
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO("Location Code"),FALSE,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyChange(Rec,xRec);
        GetDefaultBin;
        VALIDATE("Unit Cost",GetUnitCost);
        ClearCurrentFieldNum(FIELDNO("Location Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        SetCurrentFieldNum(FieldNo("Location Code"));
        ValidateDates(FieldNo("Due Date"),true);
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo("Location Code"),false,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyChange(Rec,xRec);
        GetDefaultBin;
        Validate("Unit Cost",GetUnitCost);
        ClearCurrentFieldNum(FieldNo("Location Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting Date"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ATOLink.GET("Document Type","No.") AND (CurrFieldNo = FIELDNO("Posting Date")) THEN
          IF SalesHeader.GET(ATOLink."Document Type",ATOLink."Document No.") AND ("Posting Date" > SalesHeader."Posting Date") THEN
            ERROR(PostingDateLaterErr,"No.",SalesHeader."No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ATOLink.Get("Document Type","No.") and (CurrFieldNo = FieldNo("Posting Date")) then
          if SalesHeader.Get(ATOLink."Document Type",ATOLink."Document No.") and ("Posting Date" > SalesHeader."Posting Date") then
            Error(PostingDateLaterErr,"No.",SalesHeader."No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Due Date"(Field 24).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateDueDate("Due Date",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateDueDate("Due Date",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date"(Field 25).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateStartDate("Starting Date",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateStartDate("Starting Date",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 27).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateEndDate("Ending Date",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateEndDate("Ending Date",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 33).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Quantity < 0 THEN
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
        if Quantity < 0 then
          BinCode := WMSManagement.BinContentLookUp("Location Code","Item No.","Variant Code",'',"Bin Code")
        else
          BinCode := WMSManagement.BinLookUp("Location Code","Item No.","Variant Code",'');

        if BinCode <> '' then
          Validate("Bin Code",BinCode);
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;

        SetCurrentFieldNum(FIELDNO(Quantity));
        RoundQty(Quantity);
        "Cost Amount" := ROUND(Quantity * "Unit Cost");
        IF Quantity < "Assembled Quantity" THEN
          ERROR(Text002,FIELDCAPTION(Quantity),FIELDCAPTION("Assembled Quantity"),"Assembled Quantity");

        "Quantity (Base)" := CalcBaseQty(Quantity);
        InitRemainingQty;
        InitQtyToAssemble;
        VALIDATE("Quantity to Assemble");

        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO(Quantity),ReplaceLinesFromBOM,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyQuantity(Rec,xRec);

        ClearCurrentFieldNum(FIELDNO(Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        SetCurrentFieldNum(FieldNo(Quantity));
        RoundQty(Quantity);
        "Cost Amount" := Round(Quantity * "Unit Cost");
        if Quantity < "Assembled Quantity" then
          Error(Text002,FieldCaption(Quantity),FieldCaption("Assembled Quantity"),"Assembled Quantity");
        #9..12
        Validate("Quantity to Assemble");

        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo(Quantity),ReplaceLinesFromBOM,CurrFieldNo,CurrentFieldNum);
        AssemblyHeaderReserve.VerifyQuantity(Rec,xRec);

        ClearCurrentFieldNum(FieldNo(Quantity));
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Quantity (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity to Assemble"(Field 46).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SetCurrentFieldNum(FIELDNO("Quantity to Assemble"));
        RoundQty("Quantity to Assemble");
        IF "Quantity to Assemble" > "Remaining Quantity" THEN
          ERROR(Text003,
            FIELDCAPTION("Quantity to Assemble"),FIELDCAPTION("Remaining Quantity"),"Remaining Quantity");

        IF "Quantity to Assemble" <> xRec."Quantity to Assemble" THEN
          ATOLink.CheckQtyToAsm(Rec);

        VALIDATE("Quantity to Assemble (Base)",CalcBaseQty("Quantity to Assemble"));
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO("Quantity to Assemble"),FALSE,CurrFieldNo,CurrentFieldNum);
        ClearCurrentFieldNum(FIELDNO("Quantity to Assemble"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SetCurrentFieldNum(FieldNo("Quantity to Assemble"));
        RoundQty("Quantity to Assemble");
        if "Quantity to Assemble" > "Remaining Quantity" then
          Error(Text003,
            FieldCaption("Quantity to Assemble"),FieldCaption("Remaining Quantity"),"Remaining Quantity");

        if "Quantity to Assemble" <> xRec."Quantity to Assemble" then
          ATOLink.CheckQtyToAsm(Rec);

        Validate("Quantity to Assemble (Base)",CalcBaseQty("Quantity to Assemble"));
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo("Quantity to Assemble"),false,CurrFieldNo,CurrentFieldNum);
        ClearCurrentFieldNum(FieldNo("Quantity to Assemble"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Planning Flexibility"(Field 50).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        IF "Planning Flexibility" <> xRec."Planning Flexibility" THEN
          AssemblyHeaderReserve.UpdatePlanningFlexibility(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestStatusOpen;
        if "Planning Flexibility" <> xRec."Planning Flexibility" then
          AssemblyHeaderReserve.UpdatePlanningFlexibility(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""MPS Order"(Field 51).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Status,Status::Open);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Status,Status::Open);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 65).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN BEGIN
          GetItem;

          IF Item."Costing Method" = Item."Costing Method"::Standard THEN BEGIN
            SkuItemUnitCost := GetUnitCost;
            IF "Unit Cost" <> SkuItemUnitCost THEN
              ERROR(Text005,
                FIELDCAPTION("Unit Cost"),
                FIELDCAPTION("Cost Amount"),
                Item.FIELDCAPTION("Costing Method"),
                Item."Costing Method");
          END;
        END;

        "Cost Amount" := ROUND(Quantity * "Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
          GetItem;

          if Item."Costing Method" = Item."Costing Method"::Standard then begin
            SkuItemUnitCost := GetUnitCost;
            if "Unit Cost" <> SkuItemUnitCost then
              Error(Text005,
                FieldCaption("Unit Cost"),
                FieldCaption("Cost Amount"),
                Item.FieldCaption("Costing Method"),
                Item."Costing Method");
          end;
        end;

        "Cost Amount" := Round(Quantity * "Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 80).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TESTFIELD("Assembled Quantity",0);
        TestStatusOpen;
        SetCurrentFieldNum(FIELDNO("Unit of Measure Code"));

        GetItem;
        "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
        "Unit Cost" := GetUnitCost;
        "Overhead Rate" := Item."Overhead Rate";

        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO("Unit of Measure Code"),ReplaceLinesFromBOM,CurrFieldNo,CurrentFieldNum);
        ClearCurrentFieldNum(FIELDNO("Unit of Measure Code"));

        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckIsNotAsmToOrder;
        TestField("Assembled Quantity",0);
        TestStatusOpen;
        SetCurrentFieldNum(FieldNo("Unit of Measure Code"));
        #5..10
        AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo("Unit of Measure Code"),ReplaceLinesFromBOM,CurrFieldNo,CurrentFieldNum);
        ClearCurrentFieldNum(FieldNo("Unit of Measure Code"));

        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting No. Series"(Field 108).OnLookup". Please convert manually.

        //trigger  Series"(Field 108)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        AsmHeader := Rec;
        AssemblySetup.GET;
        TestNoSeries;
        IF NoSeriesMgt.LookupSeries(GetPostingNoSeriesCode,"Posting No. Series") THEN
          VALIDATE("Posting No. Series");
        Rec := AsmHeader;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        AsmHeader := Rec;
        AssemblySetup.Get;
        TestNoSeries;
        if NoSeriesMgt.LookupSeries(GetPostingNoSeriesCode,"Posting No. Series") then
          Validate("Posting No. Series");
        Rec := AsmHeader;
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting No. Series"(Field 108).OnValidate". Please convert manually.

        //trigger  Series"(Field 108)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Posting No. Series" <> '' THEN BEGIN
          AssemblySetup.GET;
          TestNoSeries;
          NoSeriesMgt.TestSeries(GetPostingNoSeriesCode,"Posting No. Series");
        END;
        TESTFIELD("Posting No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Posting No. Series" <> '' then begin
          AssemblySetup.Get;
          TestNoSeries;
          NoSeriesMgt.TestSeries(GetPostingNoSeriesCode,"Posting No. Series");
        end;
        TestField("Posting No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension Set ID"(Field 480).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SetCurrentFieldNum(FIELDNO("Dimension Set ID"));
        IF "Dimension Set ID" <> xRec."Dimension Set ID" THEN
          AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FIELDNO("Dimension Set ID"),FALSE,CurrFieldNo,CurrentFieldNum);
        ClearCurrentFieldNum(FIELDNO("Dimension Set ID"));
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SetCurrentFieldNum(FieldNo("Dimension Set ID"));
        if "Dimension Set ID" <> xRec."Dimension Set ID" then
          AssemblyLineMgt.UpdateAssemblyLines(Rec,xRec,FieldNo("Dimension Set ID"),false,CurrFieldNo,CurrentFieldNum);
        ClearCurrentFieldNum(FieldNo("Dimension Set ID"));
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
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

        //Unsupported feature: Deletion on ""Document Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Item No.,Variant Code,Location Code,Due Date"(Key)". Please convert manually.

        key(Key1; "Document Type", "No.")
        {
        }
        key(Key2; "Document Type", "Item No.", "Variant Code", "Location Code", "Due Date")
        {
            SumIndexFields = "Remaining Quantity (Base)";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CheckIsNotAsmToOrder;

    AssemblyHeaderReserve.DeleteLine(Rec);
    CALCFIELDS("Reserved Qty. (Base)");
    TESTFIELD("Reserved Qty. (Base)",0);

    DeleteAssemblyLines;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    CalcFields("Reserved Qty. (Base)");
    TestField("Reserved Qty. (Base)",0);

    DeleteAssemblyLines;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CheckIsNotAsmToOrder;

    AssemblySetup.GET;

    IF "No." = '' THEN BEGIN
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    END;

    IF "Document Type" = "Document Type"::Order THEN BEGIN
      InvtAdjmtEntryOrder.SETRANGE("Order Type",InvtAdjmtEntryOrder."Order Type"::Assembly);
      InvtAdjmtEntryOrder.SETRANGE("Order No.","No.");
      IF NOT InvtAdjmtEntryOrder.ISEMPTY THEN
        ERROR(Text001,FORMAT("Document Type"),"No.");
    END;

    InitRecord;

    IF GETFILTER("Item No.") <> '' THEN
      IF GETRANGEMIN("Item No.") = GETRANGEMAX("Item No.") THEN
        VALIDATE("Item No.",GETRANGEMIN("Item No."));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CheckIsNotAsmToOrder;

    AssemblySetup.Get;

    if "No." = '' then begin
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    end;

    if "Document Type" = "Document Type"::Order then begin
      InvtAdjmtEntryOrder.SetRange("Order Type",InvtAdjmtEntryOrder."Order Type"::Assembly);
      InvtAdjmtEntryOrder.SetRange("Order No.","No.");
      if not InvtAdjmtEntryOrder.IsEmpty then
        Error(Text001,Format("Document Type"),"No.");
    end;
    #16..18
    if GetFilter("Item No.") <> '' then
      if GetRangeMin("Item No.") = GetRangeMax("Item No.") then
        Validate("Item No.",GetRangeMin("Item No."));
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text009,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text009,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""No."(Field 2).OnValidate.NoSeriesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 12).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Posting Date"(Field 23).OnValidate.ATOLink(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Posting Date" : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Posting Date" : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Posting Date"(Field 23).OnValidate.SalesHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Posting Date" : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Posting Date" : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 33).OnLookup.WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Quantity to Assemble"(Field 46).OnValidate.ATOLink(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Quantity to Assemble" : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Quantity to Assemble" : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 80).OnValidate.UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Posting No. Series"(Field 108).OnLookup.AsmHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Posting No. Series" : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Posting No. Series" : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Posting No. Series"(Field 108).OnLookup.NoSeriesMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Posting No. Series" : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Posting No. Series" : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Posting No. Series"(Field 108).OnValidate.NoSeriesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Posting No. Series" : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Posting No. Series" : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Dimension Set ID"(Field 480).OnValidate.DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Dimension Set ID" : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Dimension Set ID" : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.InvtAdjmtEntryOrder(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.InvtAdjmtEntryOrder : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.InvtAdjmtEntryOrder : "Inventory Adjmt. Entry (Order)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.NoSeriesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitRecord(PROCEDURE 15).NoSeriesMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitRecord : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitRecord : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitQtyToAssemble(PROCEDURE 53).ATOLink(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitQtyToAssemble : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitQtyToAssemble : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEdit(PROCEDURE 1).AssemblyHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssistEdit : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssistEdit : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEdit(PROCEDURE 1).AssemblyHeader2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssistEdit : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssistEdit : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEdit(PROCEDURE 1).NoSeriesMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssistEdit : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssistEdit : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteAssemblyLines(PROCEDURE 29).AssemblyLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteAssemblyLines : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteAssemblyLines : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteAssemblyLines(PROCEDURE 29).ReservMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteAssemblyLines : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteAssemblyLines : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservation(PROCEDURE 121).Reservation(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservation : Reservation;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservationEntries(PROCEDURE 122).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservationEntries : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservationEntries : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservationEntries(PROCEDURE 122).ReservEngineMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservationEntries : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservationEntries : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 4).SourceCodeSetup(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 4).DimMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateShortcutDimCode(PROCEDURE 7).DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateShortcutDimCode : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateShortcutDimCode : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 30).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateUnitCost(PROCEDURE 10).CalculateStandardCost(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateUnitCost : 5812;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateUnitCost : "Calculate Standard Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetDefaultLocation(PROCEDURE 33).AsmSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetDefaultLocation : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetDefaultLocation : "Assembly Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAssemblyList(PROCEDURE 42).BOMComponent(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAssemblyList : 90;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAssemblyList : "BOM Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcBaseQty(PROCEDURE 43).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcBaseQty : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcBaseQty : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RoundQty(PROCEDURE 45).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RoundQty : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RoundQty : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcActualCosts(PROCEDURE 52).TempSourceInvtAdjmtEntryOrder(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcActualCosts : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcActualCosts : "Inventory Adjmt. Entry (Order)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcActualCosts(PROCEDURE 52).CalcInvtAdjmtOrder(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcActualCosts : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcActualCosts : "Calc. Inventory Adjmt. - Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcStartDateFromEndDate(PROCEDURE 56).ReqLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcStartDateFromEndDate : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcStartDateFromEndDate : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcStartDateFromEndDate(PROCEDURE 56).LeadTimeMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcStartDateFromEndDate : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcStartDateFromEndDate : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcEndDateFromStartDate(PROCEDURE 21).ReqLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcEndDateFromStartDate : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcEndDateFromStartDate : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcEndDateFromStartDate(PROCEDURE 21).LeadTimeMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcEndDateFromStartDate : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcEndDateFromStartDate : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcEndDateFromDueDate(PROCEDURE 31).ReqLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcEndDateFromDueDate : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcEndDateFromDueDate : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcEndDateFromDueDate(PROCEDURE 31).LeadTimeMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcEndDateFromDueDate : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcEndDateFromDueDate : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcDueDateFromEndDate(PROCEDURE 32).ReqLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcDueDateFromEndDate : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcDueDateFromEndDate : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcDueDateFromEndDate(PROCEDURE 32).LeadTimeMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcDueDateFromEndDate : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcDueDateFromEndDate : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateDueDate(PROCEDURE 35).ReservationCheckDateConfl(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateDueDate : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateDueDate : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 36).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 36).Bin(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 36).Location(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateBinCode(PROCEDURE 12).WMSManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateBinCode : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateBinCode : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateBinCode(PROCEDURE 12).WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateBinCode : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateBinCode : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(PROCEDURE 44).WhseSourceCreateDocument(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInvtMovement(PROCEDURE 40).WhseRequest(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInvtMovement : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInvtMovement : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInvtMovement(PROCEDURE 40).CreateInvtPutAwayPickMvmt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInvtMovement : 7323;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInvtMovement : "Create Invt Put-away/Pick/Mvmt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 57).AssemblyHeaderReserve(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 925;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Assembly Header-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemExists(PROCEDURE 59).Item2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemExists : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemExists : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowTracking(PROCEDURE 61).OrderTracking(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowTracking : 99000822;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowTracking : "Order Tracking";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAsmToOrder(PROCEDURE 62).ATOLink(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAsmToOrder : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAsmToOrder : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAvailability(PROCEDURE 18).TempAssemblyHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAvailability : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAvailability : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAvailability(PROCEDURE 18).TempAssemblyLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAvailability : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAvailability : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAvailability(PROCEDURE 18).AsmLineMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAvailability : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAvailability : "Assembly Line Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDueDateBeforeWorkDateMsg(PROCEDURE 22).TempAssemblyHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDueDateBeforeWorkDateMsg : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDueDateBeforeWorkDateMsg : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDueDateBeforeWorkDateMsg(PROCEDURE 22).TempAssemblyLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDueDateBeforeWorkDateMsg : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDueDateBeforeWorkDateMsg : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDueDateBeforeWorkDateMsg(PROCEDURE 22).AsmLineMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDueDateBeforeWorkDateMsg : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDueDateBeforeWorkDateMsg : "Assembly Line Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddBOMLine(PROCEDURE 19).AsmLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddBOMLine : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddBOMLine : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalCost(PROCEDURE 25).Resource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalCost : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalCost : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalCost(PROCEDURE 25).AssemblyLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalCost : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalCost : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 49).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssemblySetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssemblySetup : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssemblySetup : "Assembly Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StockkeepingUnit(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StockkeepingUnit : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StockkeepingUnit : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssemblyHeaderReserve(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssemblyHeaderReserve : 925;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssemblyHeaderReserve : "Assembly Header-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssemblyLineMgt(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssemblyLineMgt : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssemblyLineMgt : "Assembly Line Management";
    //Variable type has not been exported.
}


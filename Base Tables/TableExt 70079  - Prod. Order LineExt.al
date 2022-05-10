tableextension 70079 ProdOrderLineExt extends "Prod. Order Line"
{
    // version NAVW19.00.00.50785,NAVIN9.00.00.50785

    fields
    {

        //Unsupported feature: Change OptionString on "Status(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on ""Prod. Order No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Finished Quantity"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Due Date"(Field 47)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planning Level Code"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Production BOM No."(Field 60)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Routing No."(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Routing No."(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Routing Reference No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount"(Field 67)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 68)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 68)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Capacity Type Filter"(Field 70)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Capacity No. Filter"(Field 71)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Finished Qty. (Base)"(Field 82)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Qty. (Base)"(Field 83)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 84)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 84)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Operation Cost Amt."(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Operation Cost Amt."(Field 90)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Total Exp. Oper. Output (Qty.)"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Exp. Oper. Output (Qty.)"(Field 91)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Component Cost Amt."(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Component Cost Amt."(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (ACY)"(Field 5831)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost (ACY)"(Field 5832)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Production BOM Version Code"(Field 99000750)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Routing Version Code"(Field 99000751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 99000753)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReserveProdOrderLine.VerifyChange(Rec,xRec);
        TESTFIELD("Finished Quantity",0);
        CALCFIELDS("Reserved Quantity");
        TESTFIELD("Reserved Quantity",0);
        WhseValidateSourceLine.ProdOrderLineVerifyChange(Rec,xRec);
        IF ("Item No." <> xRec."Item No.") AND ("Line No." <> 0) THEN BEGIN
          DeleteRelations;
          "Variant Code" := '';
        END;
        IF "Item No." = '' THEN
          INIT
        ELSE BEGIN
          ProdOrder.GET(Status,"Prod. Order No.");
          "Starting Date" := ProdOrder."Starting Date";
          "Starting Time" := ProdOrder."Starting Time";
          "Ending Date" := ProdOrder."Ending Date";
          "Ending Time" := ProdOrder."Ending Time";
          "Due Date" := ProdOrder."Due Date";
          "Location Code" := ProdOrder."Location Code";
          "Bin Code" := ProdOrder."Bin Code";
          IF "Bin Code" = '' THEN
            GetDefaultBin;

          GetItem;
          Item.TESTFIELD("Inventory Posting Group");
          "Inventory Posting Group" := Item."Inventory Posting Group";

          Description := Item.Description;
          "Description 2" := Item."Description 2";
          "Production BOM No." := Item."Production BOM No.";
          "Routing No." := Item."Routing No.";

          "Scrap %" := Item."Scrap %";
          "Unit Cost" := Item."Unit Cost";
          "Indirect Cost %" := Item."Indirect Cost %";
          "Overhead Rate" := Item."Overhead Rate";
          IF "Item No." <> xRec."Item No." THEN BEGIN
            VALIDATE("Production BOM No.",Item."Production BOM No.");
            VALIDATE("Routing No.",Item."Routing No.");
            VALIDATE("Unit of Measure Code",Item."Base Unit of Measure");
          END;
          OnAfterCopyFromItem(Rec,Item,xRec);
          IF ProdOrder."Source Type" = ProdOrder."Source Type"::Family THEN
            "Routing Reference No." := 0
          ELSE
            IF "Line No." = 0 THEN
              "Routing Reference No." := -10000
            ELSE
              "Routing Reference No." := "Line No.";
        END;
        IF "Item No." <> xRec."Item No." THEN
          VALIDATE(Quantity);
        GetUpdateFromSKU;

        CreateDim(DATABASE::Item,"Item No.");
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ReserveProdOrderLine.VerifyChange(Rec,xRec);
        TestField("Finished Quantity",0);
        CalcFields("Reserved Quantity");
        TestField("Reserved Quantity",0);
        WhseValidateSourceLine.ProdOrderLineVerifyChange(Rec,xRec);
        if ("Item No." <> xRec."Item No.") and ("Line No." <> 0) then begin
          DeleteRelations;
          "Variant Code" := '';
        end;
        if "Item No." = '' then
          Init
        else begin
          ProdOrder.Get(Status,"Prod. Order No.");
        #14..20
          if "Bin Code" = '' then
        #22..24
          Item.TestField("Inventory Posting Group");
        #26..31
          //QC 1.0
          "WIP QC Enabled" := Item."WIP QC Enabled";
          "WIP Spec Id" := Item."WIP Spec ID";
          if "WIP Spec Id" <> '' then
            "Spec Version Code" := GetSpecVersion;
          //QC 1.0
        #32..36
          if "Item No." <> xRec."Item No." then begin
            Validate("Production BOM No.",Item."Production BOM No.");
            Validate("Routing No.",Item."Routing No.");
            Validate("Unit of Measure Code",Item."Base Unit of Measure");
          end;
          OnAfterCopyFromItem(Rec,Item,xRec);
          if ProdOrder."Source Type" = ProdOrder."Source Type"::Family then
            "Routing Reference No." := 0
          else
            if "Line No." = 0 then
              "Routing Reference No." := -10000
            else
              "Routing Reference No." := "Line No.";
        end;
        if "Item No." <> xRec."Item No." then
          Validate(Quantity);
        #53..56
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReserveProdOrderLine.VerifyChange(Rec,xRec);
        TESTFIELD("Finished Quantity",0);
        CALCFIELDS("Reserved Quantity");
        TESTFIELD("Reserved Quantity",0);
        WhseValidateSourceLine.ProdOrderLineVerifyChange(Rec,xRec);

        IF "Variant Code" = '' THEN BEGIN
          VALIDATE("Item No.");
          EXIT;
        END;
        ItemVariant.GET("Item No.","Variant Code");
        Description := ItemVariant.Description;
        "Description 2" := ItemVariant."Description 2";
        GetUpdateFromSKU;
        GetDefaultBin;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ReserveProdOrderLine.VerifyChange(Rec,xRec);
        TestField("Finished Quantity",0);
        CalcFields("Reserved Quantity");
        TestField("Reserved Quantity",0);
        WhseValidateSourceLine.ProdOrderLineVerifyChange(Rec,xRec);

        if "Variant Code" = '' then begin
          Validate("Item No.");
          exit;
        end;
        ItemVariant.Get("Item No.","Variant Code");
        Description := ItemVariant."Part No";
        "Description 2" := ItemVariant.Description;
        GetUpdateFromSKU;
        GetDefaultBin;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 23).OnLookup". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Bin Code"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bin Code" <> '' THEN BEGIN
          IF Quantity < 0 THEN
            WMSManagement.FindBinContent("Location Code","Bin Code","Item No.","Variant Code",'')
          ELSE
            WMSManagement.FindBin("Location Code","Bin Code",'');
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Prod. Order Line",
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
          if Quantity < 0 then
            WMSManagement.FindBinContent("Location Code","Bin Code","Item No.","Variant Code",'')
          else
            WMSManagement.FindBin("Location Code","Bin Code",'');
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Prod. Order Line",
            FieldCaption("Bin Code"),
        #8..10
        end;
        */
        //end;

        //Unsupported feature: Deletion on "Quantity(Field 40).OnValidate". Please convert manually.



        //Unsupported feature: CodeModification on ""Starting Date"(Field 48).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Ending Date" < "Starting Date" THEN
          "Ending Date" := "Starting Date";

        VALIDATE("Starting Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Ending Date" < "Starting Date" then
          "Ending Date" := "Starting Date";

        Validate("Starting Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Time"(Field 49).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ProdOrderLine.GET(Status,"Prod. Order No.","Line No.") THEN BEGIN
          MODIFY;

          CalcProdOrder.Recalculate(Rec,0,TRUE);

          OnAfterRecalculate(Rec,0,CurrFieldNo);

          GET(Status,"Prod. Order No.","Line No.");
        END;
        IF CurrFieldNo <> 0 THEN
          VALIDATE("Due Date");

        UpdateDatetime;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ProdOrderLine.Get(Status,"Prod. Order No.","Line No.") then begin
          Modify;

          CalcProdOrder.Recalculate(Rec,0,true);
        #5..7
          Get(Status,"Prod. Order No.","Line No.");
        end;
        if CurrFieldNo <> 0 then
          Validate("Due Date");

        UpdateDatetime;
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 50).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Ending Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Ending Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Time"(Field 51).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ProdOrderLine.GET(Status,"Prod. Order No.","Line No.") THEN BEGIN
          MODIFY;

          CalcProdOrder.Recalculate(Rec,1,TRUE);

          OnAfterRecalculate(Rec,1,CurrFieldNo);

          GET(Status,"Prod. Order No.","Line No.");
        END;
        IF CurrFieldNo <> 0 THEN
          VALIDATE("Due Date");

        UpdateDatetime;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ProdOrderLine.Get(Status,"Prod. Order No.","Line No.") then begin
          Modify;

          CalcProdOrder.Recalculate(Rec,1,true);
        #5..7
          Get(Status,"Prod. Order No.","Line No.");
        end;
        if CurrFieldNo <> 0 then
          Validate("Due Date");

        UpdateDatetime;
        */
        //end;


        //Unsupported feature: CodeModification on ""Production BOM No."(Field 60).OnValidate". Please convert manually.

        //trigger "(Field 60)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Production BOM Version Code" := '';
        IF "Production BOM No." = '' THEN
          EXIT;

        VALIDATE("Production BOM Version Code",VersionMgt.GetBOMVersion("Production BOM No.","Due Date",TRUE));
        IF "Production BOM Version Code" = '' THEN BEGIN
          ProdBOMHeader.GET("Production BOM No.");
          ProdBOMHeader.TESTFIELD(Status,ProdBOMHeader.Status::Certified);
          VALIDATE("Unit of Measure Code",ProdBOMHeader."Unit of Measure Code");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Production BOM Version Code" := '';
        if "Production BOM No." = '' then
          exit;

        Validate("Production BOM Version Code",VersionMgt.GetBOMVersion("Production BOM No.","Due Date",true));
        if "Production BOM Version Code" = '' then begin
          ProdBOMHeader.Get("Production BOM No.");
          ProdBOMHeader.TestField(Status,ProdBOMHeader.Status::Certified);
          Validate("Unit of Measure Code",ProdBOMHeader."Unit of Measure Code");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Routing No."(Field 61).OnValidate". Please convert manually.

        //trigger "(Field 61)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Routing Version Code" := '';

        IF "Routing No." <> xRec."Routing No." THEN BEGIN
          IF Status = Status::Released THEN BEGIN
            IF CheckCapLedgEntry THEN
              ERROR(
                Text99000004Err,
                FIELDCAPTION("Routing No."),xRec."Routing No.",CapLedgEntry.TABLECAPTION);

            IF CheckSubcontractPurchOrder THEN
              ERROR(
                Text99000004Err,
                FIELDCAPTION("Routing No."),xRec."Routing No.",PurchLine.TABLECAPTION);
          END;

          ModifyRecord := FALSE;
          OnBeforeDeleteProdOrderRtngLines(Rec,ModifyRecord);
          IF ModifyRecord THEN
            MODIFY;

          ProdOrderRtngLine.SETRANGE(Status,Status);
          ProdOrderRtngLine.SETRANGE("Prod. Order No.","Prod. Order No.");
          ProdOrderRtngLine.SETRANGE("Routing No.",xRec."Routing No.");
          ProdOrderRtngLine.SETRANGE("Routing Reference No.","Line No.");
          ProdOrderRtngLine.DELETEALL(TRUE);

          OnAfterDeleteProdOrderRtngLines(Rec);
        END;
        IF "Routing No." = '' THEN
          EXIT;

        VALIDATE("Routing Version Code",VersionMgt.GetRtngVersion("Routing No.","Due Date",TRUE));
        IF "Routing Version Code" = '' THEN BEGIN
          RtngHeader.GET("Routing No.");
          RtngHeader.TESTFIELD(Status,RtngHeader.Status::Certified);
          "Routing Type" := RtngHeader.Type;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Routing Version Code" := '';

        if "Routing No." <> xRec."Routing No." then begin
          if Status = Status::Released then begin
            if CheckCapLedgEntry then
              Error(
                Text99000004Err,
                FieldCaption("Routing No."),xRec."Routing No.",CapLedgEntry.TableCaption);

            if CheckSubcontractPurchOrder then
              Error(
                Text99000004Err,
                FieldCaption("Routing No."),xRec."Routing No.",PurchLine.TableCaption);
          end;

          ModifyRecord := false;
          OnBeforeDeleteProdOrderRtngLines(Rec,ModifyRecord);
          if ModifyRecord then
            Modify;

          ProdOrderRtngLine.SetRange(Status,Status);
          ProdOrderRtngLine.SetRange("Prod. Order No.","Prod. Order No.");
          ProdOrderRtngLine.SetRange("Routing No.",xRec."Routing No.");
          ProdOrderRtngLine.SetRange("Routing Reference No.","Line No.");
          ProdOrderRtngLine.DeleteAll(true);

          OnAfterDeleteProdOrderRtngLines(Rec);
        end;
        if "Routing No." = '' then
          exit;

        Validate("Routing Version Code",VersionMgt.GetRtngVersion("Routing No.","Due Date",true));
        if "Routing Version Code" = '' then begin
          RtngHeader.Get("Routing No.");
          RtngHeader.TestField(Status,RtngHeader.Status::Certified);
          "Routing Type" := RtngHeader.Type;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 65).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Item No.");
        GetItem;
        Item.TESTFIELD("Inventory Value Zero",FALSE);
        IF Item."Costing Method" = Item."Costing Method"::Standard THEN BEGIN
          IF CurrFieldNo = FIELDNO("Unit Cost") THEN
            ERROR(
              Text99000002,
              FIELDCAPTION("Unit Cost"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");

          IF GetSKU THEN
            "Unit Cost" := SKU."Unit Cost" * "Qty. per Unit of Measure"
          ELSE
            "Unit Cost" := Item."Unit Cost" * "Qty. per Unit of Measure";
        END;

        "Cost Amount" := ROUND(Quantity * "Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Item No.");
        GetItem;
        Item.TestField("Inventory Value Zero",false);
        if Item."Costing Method" = Item."Costing Method"::Standard then begin
          if CurrFieldNo = FieldNo("Unit Cost") then
            Error(
              Text99000002,
              FieldCaption("Unit Cost"),Item.FieldCaption("Costing Method"),Item."Costing Method");

          if GetSKU then
            "Unit Cost" := SKU."Unit Cost" * "Qty. per Unit of Measure"
          else
            "Unit Cost" := Item."Unit Cost" * "Qty. per Unit of Measure";
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
        GetItem;
        GetGLSetup;
        WhseValidateSourceLine.ProdOrderLineVerifyChange(Rec,xRec);
        "Unit Cost" := Item."Unit Cost";

        "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");

        "Unit Cost" :=
          ROUND(Item."Unit Cost" * "Qty. per Unit of Measure",
            GLSetup."Unit-Amount Rounding Precision");

        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..8
          Round(Item."Unit Cost" * "Qty. per Unit of Measure",
            GLSetup."Unit-Amount Rounding Precision");

        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 81).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        "Remaining Quantity" := Quantity - "Finished Quantity";

        VALIDATE("Ending Time");

        "Cost Amount" := ROUND(Quantity * "Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Quantity (Base)");
        "Remaining Quantity" := Quantity - "Finished Quantity";

        Validate("Ending Time");

        "Cost Amount" := Round(Quantity * "Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date-Time"(Field 198).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Starting Date" := DT2DATE("Starting Date-Time");
        "Starting Time" := DT2TIME("Starting Date-Time");
        VALIDATE("Starting Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Starting Date" := DT2Date("Starting Date-Time");
        "Starting Time" := DT2Time("Starting Date-Time");
        Validate("Starting Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date-Time"(Field 199).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Ending Date" := DT2DATE("Ending Date-Time");
        "Ending Time" := DT2TIME("Ending Date-Time");
        VALIDATE("Ending Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Ending Date" := DT2Date("Ending Date-Time");
        "Ending Time" := DT2Time("Ending Date-Time");
        Validate("Ending Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Production BOM Version Code"(Field 99000750).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Production BOM Version Code" = '' THEN
          EXIT;

        ProdBOMVersion.GET("Production BOM No.","Production BOM Version Code");
        ProdBOMVersion.TESTFIELD(Status,ProdBOMVersion.Status::Certified);
        VALIDATE("Unit of Measure Code",ProdBOMVersion."Unit of Measure Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Production BOM Version Code" = '' then
          exit;

        ProdBOMVersion.Get("Production BOM No.","Production BOM Version Code");
        ProdBOMVersion.TestField(Status,ProdBOMVersion.Status::Certified);
        Validate("Unit of Measure Code",ProdBOMVersion."Unit of Measure Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Routing Version Code"(Field 99000751).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Routing Version Code" = '' THEN
          EXIT;

        RtngVersion.GET("Routing No.","Routing Version Code");
        RtngVersion.TESTFIELD(Status,RtngVersion.Status::Certified);
        "Routing Type" := RtngVersion.Type;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Routing Version Code" = '' then
          exit;

        RtngVersion.Get("Routing No.","Routing Version Code");
        RtngVersion.TestField(Status,RtngVersion.Status::Certified);
        "Routing Type" := RtngVersion.Type;
        */
        //end;


        //Unsupported feature: CodeModification on ""Planning Flexibility"(Field 99000755).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Planning Flexibility" <> xRec."Planning Flexibility" THEN
          ReserveProdOrderLine.UpdatePlanningFlexibility(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Planning Flexibility" <> xRec."Planning Flexibility" then
          ReserveProdOrderLine.UpdatePlanningFlexibility(Rec);
        */
        //end;
        field(16360; "Subcontracting Order No."; Code[20])
        {
            CaptionML = ENU = 'Subcontracting Order No.',
                        ENN = 'Subcontracting Order No.';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = CONST(Order),
                                                           "No." = FIELD("Subcontracting Order No."),
                                                           Subcontracting = CONST(true));
        }
        field(16361; "Subcontractor Code"; Code[20])
        {
            CaptionML = ENU = 'Subcontractor Code',
                        ENN = 'Subcontractor Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = Vendor."No." WHERE(Subcontractor = CONST(true));
        }
        field(60001; Resource; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Machine Center"."No.";
        }
        field(60002; "Sales Order No"; Code[20])
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
        field(33000250; "WIP QC Enabled"; Boolean)
        {
        }
        field(33000251; "WIP Spec Id"; Code[20])
        {
            TableRelation = "Specification Header";
        }
        field(33000252; "Quantity Sent To Quality"; Decimal)
        {
            Editable = true;
        }
        field(33000253; "Quantity Sending To Quality"; Decimal)
        {
            MinValue = 0;
        }
        field(33000254; "Quantity Accepted"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Source Type" = FILTER(WIP),
                                                                     "Order No." = FIELD("Prod. Order No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Accepted),
                                                                     "Operation No." = FILTER(= '')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000255; "Quantity Rejected"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Source Type" = FILTER(WIP),
                                                                     "Order No." = FIELD("Prod. Order No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Reject),
                                                                     "Operation No." = FILTER('')));
            FieldClass = FlowField;
        }
        field(33000256; "Quantity Rework"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Source Type" = FILTER(WIP),
                                                                     "Order No." = FIELD("Prod. Order No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Rework),
                                                                     "Operation No." = FILTER('')));
            FieldClass = FlowField;
        }
        field(33000257; "Spec Version Code"; Code[20])
        {
            TableRelation = "Specification Version"."Version Code" WHERE("Specification No." = FIELD("WIP Spec Id"));
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Prod. Order No.,Line No.,Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Item No.,Variant Code,Location Code,Ending Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Item No.,Variant Code,Location Code,Starting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Item No.,Variant Code,Location Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Item No.,Variant Code,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Location Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Routing No.,Routing Reference No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Planning Level Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Planning Level Code,Priority"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Status,Ending Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Status,Due Date"(Key)". Please convert manually.

        key(Key1; Status, "Prod. Order No.", "Line No.")
        {
        }
        key(Key2; "Prod. Order No.", "Line No.", Status)
        {
        }
        key(Key3; Status, "Item No.", "Variant Code", "Location Code", "Ending Date")
        {
            SumIndexFields = "Remaining Qty. (Base)", "Cost Amount";
        }
        key(Key4; Status, "Item No.", "Variant Code", "Location Code", "Starting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key5; Status, "Item No.", "Variant Code", "Location Code", "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key6; Status, "Item No.", "Variant Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Due Date")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key7; Status, "Prod. Order No.", "Item No.")
        {
        }
        key(Key8; Status, "Prod. Order No.", "Routing No.", "Routing Reference No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity, "Finished Quantity";
        }
        key(Key9; Status, "Prod. Order No.", "Planning Level Code")
        {
        }
        key(Key10; "Planning Level Code", Priority)
        {
            Enabled = false;
        }
        key(Key11; "Item No.", "Variant Code", "Location Code", Status, "Ending Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key12; "Item No.", "Variant Code", "Location Code", Status, "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Finished THEN
      ERROR(Text000,Status,TABLECAPTION);

    IF Status = Status::Released THEN BEGIN
      ItemLedgEntry.SETRANGE("Order Type",ItemLedgEntry."Order Type"::Production);
      ItemLedgEntry.SETRANGE("Order No.","Prod. Order No.");
      ItemLedgEntry.SETRANGE("Order Line No.","Line No.");
      IF NOT ItemLedgEntry.ISEMPTY THEN
        ERROR(
          Text99000000,
          TABLECAPTION,"Line No.",ItemLedgEntry.TABLECAPTION);

      IF CheckCapLedgEntry THEN
        ERROR(
          Text99000000,
          TABLECAPTION,"Line No.",CapLedgEntry.TABLECAPTION);

      IF CheckSubcontractPurchOrder THEN
        ERROR(
          Text99000000,
          TABLECAPTION,"Line No.",PurchLine.TABLECAPTION);
    END;

    ReserveProdOrderLine.DeleteLine(Rec);

    CALCFIELDS("Reserved Qty. (Base)");
    TESTFIELD("Reserved Qty. (Base)",0);
    WhseValidateSourceLine.ProdOrderLineDelete(Rec);

    DeleteRelations;

    RefreshRecord := FALSE;
    OnAfterOnDelete(Rec,RefreshRecord);
    IF RefreshRecord THEN
      GET(Status,"Prod. Order No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Status = Status::Finished then
      Error(Text000,Status,TableCaption);

    if Status = Status::Released then begin
      ItemLedgEntry.SetRange("Order Type",ItemLedgEntry."Order Type"::Production);
      ItemLedgEntry.SetRange("Order No.","Prod. Order No.");
      ItemLedgEntry.SetRange("Order Line No.","Line No.");
      if not ItemLedgEntry.IsEmpty then
        Error(
          Text99000000,
          TableCaption,"Line No.",ItemLedgEntry.TableCaption);

      if CheckCapLedgEntry then
        Error(
          Text99000000,
          TableCaption,"Line No.",CapLedgEntry.TableCaption);

      if CheckSubcontractPurchOrder then
        Error(
          Text99000000,
          TableCaption,"Line No.",PurchLine.TableCaption);
    end;
    #23..25
    CalcFields("Reserved Qty. (Base)");
    TestField("Reserved Qty. (Base)",0);
    #28..31
    RefreshRecord := false;
    OnAfterOnDelete(Rec,RefreshRecord);
    if RefreshRecord then
      Get(Status,"Prod. Order No.","Line No.");
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Finished THEN
      ERROR(Text000,Status,TABLECAPTION);

    ReserveProdOrderLine.VerifyQuantity(Rec,xRec);
    IF "Routing Reference No." < 0 THEN
      "Routing Reference No." := "Line No.";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Status = Status::Finished then
      Error(Text000,Status,TableCaption);

    ReserveProdOrderLine.VerifyQuantity(Rec,xRec);
    if "Routing Reference No." < 0 then
      "Routing Reference No." := "Line No.";
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Finished THEN
      ERROR(Text000,Status,TABLECAPTION);

    ReserveProdOrderLine.VerifyChange(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {
    IF Status = Status::Finished THEN
      ERROR(Text000,Status,TABLECAPTION);
    }
    ReserveProdOrderLine.VerifyChange(Rec,xRec);
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



    //Unsupported feature: PropertyModification on ""Bin Code"(Field 23).OnLookup.WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 23).OnValidate.WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 23).OnValidate.WhseIntegrationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Routing No."(Field 61).OnValidate.CapLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Routing No." : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Routing No." : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Routing No."(Field 61).OnValidate.PurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Routing No." : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Routing No." : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemLedgEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemLedgEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CapLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CapLedgEntry : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CapLedgEntry : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelations(PROCEDURE 1).WhseOutputProdRelease(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelations : 7325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelations : "Whse.-Output Prod. Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEndingDate(PROCEDURE 4).CheckDateConflict(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEndingDate : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEndingDate : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 44).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 3).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 3).Bin(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateProdOrderComp(PROCEDURE 19).ProdOrderComp(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateProdOrderComp : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateProdOrderComp : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCapLedgEntry(PROCEDURE 1002).CapLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCapLedgEntry : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCapLedgEntry : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSubcontractPurchOrder(PROCEDURE 1003).PurchLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSubcontractPurchOrder : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSubcontractPurchOrder : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderCompExist(PROCEDURE 22).ProdOrderComp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderCompExist : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderCompExist : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowRouting(PROCEDURE 20).ProdOrderRtngLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRouting : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRouting : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKU(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEntry(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMHeader(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMHeader : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMHeader : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMVersion(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMVersion : 99000779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMVersion : "Production BOM Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngHeader(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngHeader : 99000763;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngHeader : "Routing Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngVersion(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngVersion : 99000786;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngVersion : "Routing Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrder(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrder : 5405;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrder : "Production Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderLine(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderLine : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderLine : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderComp(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderComp : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderComp : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRtngLine(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderRtngLine : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderRtngLine : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1031)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEngineMgt(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEngineMgt : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEngineMgt : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReserveProdOrderLine(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReserveProdOrderLine : 99000837;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReserveProdOrderLine : "Prod. Order Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1030)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseValidateSourceLine : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseValidateSourceLine : "Whse. Validate Source Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VersionMgt(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VersionMgt : 99000756;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VersionMgt : VersionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcProdOrder(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcProdOrder : 99000773;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcProdOrder : "Calculate Prod. Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Reservation(Variable 1026)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Reservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Reservation : Reservation;
    //Variable type has not been exported.

    var
        PurchaseList: Record "Purchase Header";
        Text16322: Label 'No Subcontracting Orders exist for the selected line.';
        "--QC--": Integer;
}


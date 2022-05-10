tableextension 70063 AssemblyLineExt extends "Assembly Line"
{
    // version NAVW19.00.00.51418

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Document No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 11)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Resource Usage Type"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-from Item Entry"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity (Base)"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity (Base)"(Field 43)". Please convert manually.


        //Unsupported feature: Change Editable on ""Consumed Quantity"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Consumed Quantity (Base)"(Field 45)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 48)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 49)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 49)". Please convert manually.


        //Unsupported feature: Change Editable on ""Avail. Warning"(Field 50)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Substitution Available"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Substitution Available"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount"(Field 67)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty."(Field 7301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty."(Field 7301)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty. (Base)"(Field 7302)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty. (Base)"(Field 7302)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked"(Field 7303)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked (Base)"(Field 7304)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Consumed Quantity",0);
        VerifyReservationChange(Rec,xRec);
        TestStatusOpen;

        #5..8
        InitResourceUsageType;
        "Inventory Posting Group" := '';
        "Gen. Prod. Posting Group" := '';
        CLEAR("Lead-Time Offset");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Consumed Quantity",0);
        #2..11
        Clear("Lead-Time Offset");
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Location Code" := '';
        TESTFIELD("Consumed Quantity",0);
        CALCFIELDS("Reserved Quantity");
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        IF "No." <> '' THEN
          CheckItemAvailable(FIELDNO("No."));
        VerifyReservationChange(Rec,xRec);
        TestStatusOpen;

        IF "No." <> xRec."No." THEN BEGIN
          "Variant Code" := '';
          InitResourceUsageType;
        END;

        IF "No." = '' THEN
          INIT
        ELSE BEGIN
          GetHeader;
          "Due Date" := AssemblyHeader."Starting Date";
          CASE Type OF
            Type::Item:
              CopyFromItem;
            Type::Resource:
              CopyFromResource;
          END
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Location Code" := '';
        TestField("Consumed Quantity",0);
        CalcFields("Reserved Quantity");
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        if "No." <> '' then
          CheckItemAvailable(FieldNo("No."));
        #7..9
        if "No." <> xRec."No." then begin
          "Variant Code" := '';
          InitResourceUsageType;
        end;

        if "No." = '' then
          Init
        else begin
          GetHeader;
          "Due Date" := AssemblyHeader."Starting Date";
          case Type of
        #21..24
          end
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Item);
        TESTFIELD("Consumed Quantity",0);
        CALCFIELDS("Reserved Quantity");
        TESTFIELD("Reserved Quantity",0);
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        CheckItemAvailable(FIELDNO("Variant Code"));
        VerifyReservationChange(Rec,xRec);
        TestStatusOpen;

        IF "Variant Code" = '' THEN BEGIN
          GetItemResource;
          Description := Item.Description;
          "Description 2" := Item."Description 2"
        END ELSE BEGIN
          ItemVariant.GET("No.","Variant Code");
          Description := ItemVariant.Description;
          "Description 2" := ItemVariant."Description 2";
        END;

        GetDefaultBin;
        "Unit Cost" := GetUnitCost;
        "Cost Amount" := CalcCostAmount(Quantity,"Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Item);
        TestField("Consumed Quantity",0);
        CalcFields("Reserved Quantity");
        TestField("Reserved Quantity",0);
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        CheckItemAvailable(FieldNo("Variant Code"));
        #7..9
        if "Variant Code" = '' then begin
        #11..13
        end else begin
          ItemVariant.Get("No.","Variant Code");
          Description := ItemVariant."Part No";
          "Description 2" := ItemVariant.Description;
        end;
        #19..22
        */
        //end;


        //Unsupported feature: CodeModification on ""Lead-Time Offset"(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetHeader;
        ValidateLeadTimeOffset(AssemblyHeader,"Lead-Time Offset",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetHeader;
        ValidateLeadTimeOffset(AssemblyHeader,"Lead-Time Offset",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Resource Usage Type"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Resource Usage Type" = xRec."Resource Usage Type" THEN
          EXIT;

        IF Type = Type::Resource THEN
          TESTFIELD("Resource Usage Type")
        ELSE
          TESTFIELD("Resource Usage Type","Resource Usage Type"::" ");

        GetHeader;
        VALIDATE(Quantity,CalcQuantity("Quantity per",AssemblyHeader.Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Resource Usage Type" = xRec."Resource Usage Type" then
          exit;

        if Type = Type::Resource then
          TestField("Resource Usage Type")
        else
          TestField("Resource Usage Type","Resource Usage Type"::" ");

        GetHeader;
        Validate(Quantity,CalcQuantity("Quantity per",AssemblyHeader.Quantity));
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Item);

        Item.GET("No.");
        // Location code in allowed only for inventoriable items
        IF "Location Code" <> '' THEN
          Item.TESTFIELD(Type,Item.Type::Inventory);

        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        CheckItemAvailable(FIELDNO("Location Code"));
        VerifyReservationChange(Rec,xRec);
        TestStatusOpen;

        GetDefaultBin;

        "Unit Cost" := GetUnitCost;
        "Cost Amount" := CalcCostAmount(Quantity,"Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Item);

        Item.Get("No.");
        // Location code in allowed only for inventoriable items
        if "Location Code" <> '' then
          Item.TestField(Type,Item.Type::Inventory);

        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        CheckItemAvailable(FieldNo("Location Code"));
        #10..16
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 23).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Item);
        IF Quantity > 0 THEN
          BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code")
        ELSE
          BinCode := WMSManagement.BinLookUp("Location Code","No.","Variant Code",'');

        IF BinCode <> '' THEN
          VALIDATE("Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Item);
        if Quantity > 0 then
          BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code")
        else
          BinCode := WMSManagement.BinLookUp("Location Code","No.","Variant Code",'');

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
        TestStatusOpen;
        TESTFIELD(Type,Type::Item);
        IF "Bin Code" <> '' THEN BEGIN
          TESTFIELD("Location Code");
          WMSManagement.FindBin("Location Code","Bin Code",'');
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Assembly Line",
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
        TestStatusOpen;
        TestField(Type,Type::Item);
        if "Bin Code" <> '' then begin
          TestField("Location Code");
          WMSManagement.FindBin("Location Code","Bin Code",'');
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Assembly Line",
            FieldCaption("Bin Code"),
        #8..10
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnLookup". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectItemEntry(FIELDNO("Appl.-to Item Entry"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectItemEntry(FieldNo("Appl.-to Item Entry"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnValidate". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-to Item Entry" <> 0 THEN BEGIN
          TESTFIELD(Type,Type::Item);
          TESTFIELD(Quantity);
          IF Quantity < 0 THEN
            FIELDERROR(Quantity,Text029);
          ItemLedgEntry.GET("Appl.-to Item Entry");
          ItemLedgEntry.TESTFIELD(Positive,TRUE);
          "Location Code" := ItemLedgEntry."Location Code";
          IF NOT ItemLedgEntry.Open THEN
            MESSAGE(Text042,"Appl.-to Item Entry");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-to Item Entry" <> 0 then begin
          TestField(Type,Type::Item);
          TestField(Quantity);
          if Quantity < 0 then
            FieldError(Quantity,Text029);
          ItemLedgEntry.Get("Appl.-to Item Entry");
          ItemLedgEntry.TestField(Positive,true);
          "Location Code" := ItemLedgEntry."Location Code";
          if not ItemLedgEntry.Open then
            Message(Text042,"Appl.-to Item Entry");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-from Item Entry"(Field 39).OnLookup". Please convert manually.

        //trigger -from Item Entry"(Field 39)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectItemEntry(FIELDNO("Appl.-from Item Entry"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectItemEntry(FieldNo("Appl.-from Item Entry"));
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);

        RoundQty(Quantity);
        "Quantity (Base)" := CalcBaseQty(Quantity);
        InitRemainingQty;
        InitQtyToConsume;

        CheckItemAvailable(FIELDNO(Quantity));
        VerifyReservationQuantity(Rec,xRec);

        "Cost Amount" := CalcCostAmount(Quantity,"Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..7
        CheckItemAvailable(FieldNo(Quantity));
        #9..11
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 41).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Quantity to Consume"(Field 46).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        RoundQty("Quantity to Consume");
        RoundQty("Remaining Quantity");
        IF "Quantity to Consume" > "Remaining Quantity" THEN
          ERROR(Text003,
            FIELDCAPTION("Quantity to Consume"),FIELDCAPTION("Remaining Quantity"),"Remaining Quantity");

        VALIDATE("Quantity to Consume (Base)",CalcBaseQty("Quantity to Consume"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if "Quantity to Consume" > "Remaining Quantity" then
          Error(Text003,
            FieldCaption("Quantity to Consume"),FieldCaption("Remaining Quantity"),"Remaining Quantity");

        Validate("Quantity to Consume (Base)",CalcBaseQty("Quantity to Consume"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Due Date"(Field 52).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetHeader;
        ValidateDueDate(AssemblyHeader,"Due Date",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetHeader;
        ValidateDueDate(AssemblyHeader,"Due Date",true);
        */
        //end;


        //Unsupported feature: CodeModification on "Reserve(Field 53).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Reserve <> Reserve::Never THEN BEGIN
          TESTFIELD(Type,Type::Item);
          TESTFIELD("No.");
        END;

        CALCFIELDS("Reserved Qty. (Base)");
        IF Reserve = Reserve::Never THEN
          TESTFIELD("Reserved Qty. (Base)",0);

        IF xRec.Reserve = Reserve::Always THEN BEGIN
          GetItemResource;
          IF Item.Reserve = Item.Reserve::Always THEN
            TESTFIELD(Reserve,Reserve::Always);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Reserve <> Reserve::Never then begin
          TestField(Type,Type::Item);
          TestField("No.");
        end;

        CalcFields("Reserved Qty. (Base)");
        if Reserve = Reserve::Never then
          TestField("Reserved Qty. (Base)",0);

        if xRec.Reserve = Reserve::Always then begin
          GetItemResource;
          if Item.Reserve = Item.Reserve::Always then
            TestField(Reserve,Reserve::Always);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity per"(Field 60).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        IF Type = Type::" " THEN
          ERROR(Text99000002,FIELDCAPTION("Quantity per"),FIELDCAPTION(Type),Type::" ");
        RoundQty("Quantity per");

        GetHeader;
        VALIDATE(Quantity,CalcQuantity("Quantity per",AssemblyHeader.Quantity));
        VALIDATE(
          "Quantity to Consume",
          MinValue(MaxQtyToConsume,CalcQuantity("Quantity per",AssemblyHeader."Quantity to Assemble")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        if Type = Type::" " then
          Error(Text99000002,FieldCaption("Quantity per"),FieldCaption(Type),Type::" ");
        #5..7
        Validate(Quantity,CalcQuantity("Quantity per",AssemblyHeader.Quantity));
        Validate(
          "Quantity to Consume",
          MinValue(MaxQtyToConsume,CalcQuantity("Quantity per",AssemblyHeader."Quantity to Assemble")));
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 65).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");
        GetItemResource;
        IF Type = Type::Item THEN BEGIN
          SkuItemUnitCost := GetUnitCost;
          IF Item."Costing Method" = Item."Costing Method"::Standard THEN
            IF "Unit Cost" <> SkuItemUnitCost THEN
              ERROR(
                Text99000002,
                FIELDCAPTION("Unit Cost"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
        END;

        "Cost Amount" := CalcCostAmount(Quantity,"Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");
        GetItemResource;
        if Type = Type::Item then begin
          SkuItemUnitCost := GetUnitCost;
          if Item."Costing Method" = Item."Costing Method"::Standard then
            if "Unit Cost" <> SkuItemUnitCost then
              Error(
                Text99000002,
                FieldCaption("Unit Cost"),Item.FieldCaption("Costing Method"),Item."Costing Method");
        end;

        "Cost Amount" := CalcCostAmount(Quantity,"Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 80).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.AssemblyLineVerifyChange(Rec,xRec);
        TestStatusOpen;

        GetItemResource;
        CASE Type OF
          Type::Item:
            "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
          Type::Resource:
            "Qty. per Unit of Measure" := UOMMgt.GetResQtyPerUnitOfMeasure(Resource,"Unit of Measure Code");
          ELSE
            "Qty. per Unit of Measure" := 1;
        END;

        CheckItemAvailable(FIELDNO("Unit of Measure Code"));
        "Unit Cost" := GetUnitCost;
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        case Type of
        #6..9
          else
            "Qty. per Unit of Measure" := 1;
        end;

        CheckItemAvailable(FieldNo("Unit of Measure Code"));
        "Unit Cost" := GetUnitCost;
        Validate(Quantity);
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

        //Unsupported feature: Deletion on ""Document Type,Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Type,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,No.,Variant Code,Location Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No."(Key)". Please convert manually.

        key(Key1; "Document Type", "Document No.", "Line No.")
        {
        }
        key(Key2; "Document Type", "Document No.", Type, "Location Code")
        {
            SumIndexFields = "Cost Amount", Quantity;
        }
        key(Key3; "Document Type", Type, "No.", "Variant Code", "Location Code", "Due Date")
        {
            SumIndexFields = "Remaining Quantity (Base)", "Qty. Picked (Base)", "Consumed Quantity (Base)";
        }
        key(Key4; Type, "No.")
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
    WhseValidateSourceLine.AssemblyLineDelete(Rec);
    WhseAssemblyRelease.DeleteLine(Rec);
    AssemblyLineReserve.DeleteLine(Rec);
    CALCFIELDS("Reserved Qty. (Base)");
    TESTFIELD("Reserved Qty. (Base)",0);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    CalcFields("Reserved Qty. (Base)");
    TestField("Reserved Qty. (Base)",0);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text002,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text002,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Variant Code"(Field 12).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


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


    //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 38).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Appl.-to Item Entry" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Appl.-to Item Entry" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 80).OnValidate.UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Dimension Set ID"(Field 480).OnValidate.DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Dimension Set ID" : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Dimension Set ID" : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.WhseAssemblyRelease(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.WhseAssemblyRelease : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.WhseAssemblyRelease : "Whse.-Assembly Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.AssemblyLineReserve(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AssemblyLineReserve : 926;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AssemblyLineReserve : "Assembly Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservation(PROCEDURE 8).Reservation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservation : Reservation;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservationEntries(PROCEDURE 21).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservationEntries : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservationEntries : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservationEntries(PROCEDURE 21).ReservEngineMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservationEntries : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservationEntries : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAvailWarning(PROCEDURE 42).ItemCheckAvail(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAvailWarning : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAvailWarning : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailable(PROCEDURE 49).AssemblySetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailable : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailable : "Assembly Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailable(PROCEDURE 49).ItemCheckAvail(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailable : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailable : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAvailabilityWarning(PROCEDURE 43).ItemCheckAvail(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAvailabilityWarning : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAvailabilityWarning : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcBaseQty(PROCEDURE 3).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcBaseQty : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcBaseQty : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyFromBase(PROCEDURE 2).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyFromBase : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyFromBase : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).AssemblyLineReserve(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 926;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Assembly Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 148).ReservMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoReserve : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoReserve : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservationStatus(PROCEDURE 58).Status(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservationStatus :  ,Partial,Complete;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservationStatus : " ",Partial,Complete;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 25).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).AssemblySetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Assembly Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).DimMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDim(PROCEDURE 10).DimMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDim : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDim : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateShortcutDimCode(PROCEDURE 29).DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateShortcutDimCode : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateShortcutDimCode : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowShortcutDimCode(PROCEDURE 16).DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowShortcutDimCode : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowShortcutDimCode : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAssemblyList(PROCEDURE 39).BomComponent(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAssemblyList : 90;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAssemblyList : "BOM Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExplodeAssemblyList(PROCEDURE 9).AssemblyLineManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExplodeAssemblyList : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExplodeAssemblyList : "Assembly Line Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 44).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 44).AsmLine3(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailQuantities(PROCEDURE 24).OldAssemblyLine(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailQuantities : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailQuantities : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailQuantities(PROCEDURE 24).CompanyInfo(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailQuantities : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailQuantities : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailQuantities(PROCEDURE 24).AvailableToPromise(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailQuantities : 5790;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailQuantities : "Available to Promise";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailToAssemble(PROCEDURE 47).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailToAssemble : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailToAssemble : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RoundQty(PROCEDURE 46).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RoundQty : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RoundQty : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 48).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 54).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 54).Bin(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 54).Location(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindBin(PROCEDURE 12).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindBin : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindBin : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindBin(PROCEDURE 12).WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CompletelyPicked(PROCEDURE 67).Location(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CompletelyPicked : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CompletelyPicked : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemExists(PROCEDURE 65).Item2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemExists : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemExists : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowTracking(PROCEDURE 66).OrderTracking(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowTracking : 99000822;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowTracking : "Order Tracking";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyReservationDateConflict(PROCEDURE 71).ReservationCheckDateConfl(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyReservationDateConflict : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyReservationDateConflict : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Resource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Resource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Resource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssemblyHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssemblyHeader : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssemblyHeader : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StockkeepingUnit(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StockkeepingUnit : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StockkeepingUnit : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemSubstMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemSubstMgt : 5701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemSubstMgt : "Item Subst.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseValidateSourceLine : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseValidateSourceLine : "Whse. Validate Source Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssemblyLineReserve(Variable 1056)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssemblyLineReserve : 926;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssemblyLineReserve : "Assembly Line-Reserve";
    //Variable type has not been exported.
}


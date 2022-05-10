tableextension 70230 WarehouseJournalLineExt extends "Warehouse Journal Line"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change TableRelation on ""Journal Batch Name"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From Zone Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From Bin Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Type"(Field 20)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Subtype"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source No."(Field 22)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Line No."(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Line No."(Field 23)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Subline No."(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Subline No."(Field 24)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 25)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Document"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Document"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To Zone Code"(Field 27)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To Bin Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on "Cubage(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on "Weight(Field 41)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Whse. Document Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Document Line No."(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Calculated)"(Field 53)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 55)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys. Inventory"(Field 56)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Reference Document"(Field 60)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Calculated) (Base)"(Field 68)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Phys. Inventory) (Base)"(Field 69)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warranty Date"(Field 6502)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expiration Date"(Field 6503)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Serial No."(Field 6504)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Lot No."(Field 6505)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Expiration Date"(Field 6506)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys Invt Counting Period Code"(Field 7380)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.


        //Unsupported feature: CodeModification on ""From Zone Code"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF "From Zone Code" <> xRec."From Zone Code" THEN BEGIN
          "From Bin Code" := '';
          "From Bin Type Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if "From Zone Code" <> xRec."From Zone Code" then begin
          "From Bin Code" := '';
          "From Bin Type Code" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""From Bin Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF CurrFieldNo = FIELDNO("From Bin Code") THEN
          IF "From Bin Code" <> xRec."From Bin Code" THEN
            CheckBin("Location Code","From Bin Code",FALSE);

        "From Bin Type Code" :=
          GetBinType("Location Code","From Bin Code");

        Bin.CALCFIELDS("Adjustment Bin");
        IF Bin."Adjustment Bin" AND ("Entry Type" <> "Entry Type"::"Positive Adjmt.") THEN
          Bin.FIELDERROR("Adjustment Bin");

        IF "From Bin Code" <> '' THEN
          "From Zone Code" := Bin."Zone Code";

        IF "Entry Type" = "Entry Type"::"Negative Adjmt." THEN
          SetUpAdjustmentBin;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if CurrFieldNo = FieldNo("From Bin Code") then
          if "From Bin Code" <> xRec."From Bin Code" then
            CheckBin("Location Code","From Bin Code",false);
        #7..10
        Bin.CalcFields("Adjustment Bin");
        if Bin."Adjustment Bin" and ("Entry Type" <> "Entry Type"::"Positive Adjmt.") then
          Bin.FieldError("Adjustment Bin");

        if "From Bin Code" <> '' then
          "From Zone Code" := Bin."Zone Code";

        if "Entry Type" = "Entry Type"::"Negative Adjmt." then
          SetUpAdjustmentBin;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 9).OnValidate". Please convert manually.

        //trigger "(Field 9)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF "Item No." <> '' THEN BEGIN
          IF "Item No." <> xRec."Item No." THEN
            "Variant Code" := '';
          GetItemUnitOfMeasure;
          Description := Item.Description;
          VALIDATE("Unit of Measure Code",ItemUnitOfMeasure.Code);
        END ELSE BEGIN
          Description := '';
          "Variant Code" := '';
          VALIDATE("Unit of Measure Code",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if "Item No." <> '' then begin
          if "Item No." <> xRec."Item No." then
        #6..8
          Validate("Unit of Measure Code",ItemUnitOfMeasure.Code);
        end else begin
          Description := '';
          "Variant Code" := '';
          Validate("Unit of Measure Code",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        WhseJnlTemplate.GET("Journal Template Name");
        IF WhseJnlTemplate.Type = WhseJnlTemplate.Type::Reclassification THEN BEGIN
          IF Quantity < 0 THEN
            FIELDERROR(Quantity,Text000);
        END ELSE BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Adjustment Bin Code");
        END;

        "Qty. (Base)" := UOMMgt.CalcBaseQty(Quantity,"Qty. per Unit of Measure");
        "Qty. (Absolute)" := ABS(Quantity);
        "Qty. (Absolute, Base)" := ABS("Qty. (Base)");
        IF (xRec.Quantity < 0) AND (Quantity >= 0) OR
           (xRec.Quantity >= 0) AND (Quantity < 0)
        THEN
          ExchangeFromToBin;

        IF Quantity > 0 THEN
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. (Absolute)",Cubage,Weight)
        ELSE BEGIN
          Cubage := 0;
          Weight := 0;
        END;

        IF Quantity <> xRec.Quantity THEN BEGIN
          CheckBin("Location Code","From Bin Code",FALSE);
          CheckBin("Location Code","To Bin Code",TRUE);
        END;

        ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,FALSE);
        IF SNRequired AND NOT "Phys. Inventory" AND
           ("Serial No." <> '') AND ((Quantity < 0) OR (Quantity > 1))
        THEN
          ERROR(Text006,FIELDCAPTION(Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        WhseJnlTemplate.Get("Journal Template Name");
        if WhseJnlTemplate.Type = WhseJnlTemplate.Type::Reclassification then begin
          if Quantity < 0 then
            FieldError(Quantity,Text000);
        end else begin
          GetLocation("Location Code");
          Location.TestField("Adjustment Bin Code");
        end;

        "Qty. (Base)" := UOMMgt.CalcBaseQty(Quantity,"Qty. per Unit of Measure");
        "Qty. (Absolute)" := Abs(Quantity);
        "Qty. (Absolute, Base)" := Abs("Qty. (Base)");
        if (xRec.Quantity < 0) and (Quantity >= 0) or
           (xRec.Quantity >= 0) and (Quantity < 0)
        then
          ExchangeFromToBin;

        if Quantity > 0 then
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. (Absolute)",Cubage,Weight)
        else begin
          Cubage := 0;
          Weight := 0;
        end;

        if Quantity <> xRec.Quantity then begin
          CheckBin("Location Code","From Bin Code",false);
          CheckBin("Location Code","To Bin Code",true);
        end;

        ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,false);
        if SNRequired and not "Phys. Inventory" and
           ("Serial No." <> '') and ((Quantity < 0) or (Quantity > 1))
        then
          Error(Text006,FieldCaption(Quantity));
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Base)"(Field 11).OnValidate". Please convert manually.

        //trigger  (Base)"(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Qty. (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Qty. (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Absolute)"(Field 12).OnValidate". Please convert manually.

        //trigger  (Absolute)"(Field 12)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        "Qty. (Absolute, Base)" := UOMMgt.CalcBaseQty("Qty. (Absolute)","Qty. per Unit of Measure");

        IF Quantity > 0 THEN
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. (Absolute)",Cubage,Weight)
        ELSE BEGIN
          Cubage := 0;
          Weight := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);
        #3..5
        if Quantity > 0 then
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. (Absolute)",Cubage,Weight)
        else begin
          Cubage := 0;
          Weight := 0;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Absolute, Base)"(Field 13).OnValidate". Please convert manually.

        //trigger  (Absolute, Base)"(Field 13)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        NewValue := ROUND("Qty. (Absolute, Base)",UOMMgt.QtyRndPrecision);
        VALIDATE(Quantity,CalcQty("Qty. (Absolute, Base)") * Quantity / ABS(Quantity));
        // Take care of rounding issues
        "Qty. (Absolute, Base)" := NewValue;
        "Qty. (Base)" := NewValue * "Qty. (Base)" / ABS("Qty. (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        NewValue := Round("Qty. (Absolute, Base)",UOMMgt.QtyRndPrecision);
        Validate(Quantity,CalcQty("Qty. (Absolute, Base)") * Quantity / Abs(Quantity));
        // Take care of rounding issues
        "Qty. (Absolute, Base)" := NewValue;
        "Qty. (Base)" := NewValue * "Qty. (Base)" / Abs("Qty. (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Zone Code"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF "Zone Code" <> xRec."Zone Code" THEN
          "Bin Code" := '';

        IF Quantity < 0 THEN
          VALIDATE("From Zone Code","Zone Code")
        ELSE
          VALIDATE("To Zone Code","Zone Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if "Zone Code" <> xRec."Zone Code" then
          "Bin Code" := '';

        if Quantity < 0 then
          Validate("From Zone Code","Zone Code")
        else
          Validate("To Zone Code","Zone Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF Quantity < 0 THEN BEGIN
          VALIDATE("From Bin Code","Bin Code");
          IF "Bin Code" <> xRec."Bin Code" THEN
            CheckBin("Location Code","Bin Code",FALSE);
        END ELSE BEGIN
          VALIDATE("To Bin Code","Bin Code");
          IF "Bin Code" <> xRec."Bin Code" THEN
            CheckBin("Location Code","Bin Code",TRUE);
        END;

        IF "Bin Code" <> '' THEN BEGIN
          GetBin("Location Code","Bin Code");
          "Zone Code" := Bin."Zone Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if Quantity < 0 then begin
          Validate("From Bin Code","Bin Code");
          if "Bin Code" <> xRec."Bin Code" then
            CheckBin("Location Code","Bin Code",false);
        end else begin
          Validate("To Bin Code","Bin Code");
          if "Bin Code" <> xRec."Bin Code" then
            CheckBin("Location Code","Bin Code",true);
        end;

        if "Bin Code" <> '' then begin
          GetBin("Location Code","Bin Code");
          "Zone Code" := Bin."Zone Code";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""To Zone Code"(Field 27).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF "To Zone Code" <> xRec."To Zone Code" THEN
          "To Bin Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if "To Zone Code" <> xRec."To Zone Code" then
          "To Bin Code" := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""To Bin Code"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF CurrFieldNo = FIELDNO("To Bin Code") THEN
          IF "To Bin Code" <> xRec."To Bin Code" THEN
            CheckBin("Location Code","To Bin Code",TRUE);

        GetBin("Location Code","To Bin Code");

        Bin.CALCFIELDS("Adjustment Bin");
        IF Bin."Adjustment Bin" AND ("Entry Type" <> "Entry Type"::"Negative Adjmt.") THEN
          Bin.FIELDERROR("Adjustment Bin");

        IF "To Bin Code" <> '' THEN
          "To Zone Code" := Bin."Zone Code";

        IF "Entry Type" = "Entry Type"::"Positive Adjmt." THEN
          SetUpAdjustmentBin;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if CurrFieldNo = FieldNo("To Bin Code") then
          if "To Bin Code" <> xRec."To Bin Code" then
            CheckBin("Location Code","To Bin Code",true);
        #7..9
        Bin.CalcFields("Adjustment Bin");
        if Bin."Adjustment Bin" and ("Entry Type" <> "Entry Type"::"Negative Adjmt.") then
          Bin.FieldError("Adjustment Bin");

        if "To Bin Code" <> '' then
          "To Zone Code" := Bin."Zone Code";

        if "Entry Type" = "Entry Type"::"Positive Adjmt." then
          SetUpAdjustmentBin;
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

        IF "Serial No." <> '' THEN
          IF ("Qty. (Phys. Inventory)" < 0) OR ("Qty. (Phys. Inventory)" > 1) THEN
            ERROR(Text006,FIELDCAPTION("Qty. (Phys. Inventory)"));

        PhysInvtEntered := TRUE;
        Quantity := 0;
        VALIDATE(Quantity,"Qty. (Phys. Inventory)" - "Qty. (Calculated)");
        IF "Qty. (Phys. Inventory)" = "Qty. (Calculated)" THEN
          VALIDATE("Qty. (Phys. Inventory) (Base)","Qty. (Calculated) (Base)")
        ELSE
          VALIDATE("Qty. (Phys. Inventory) (Base)",ROUND("Qty. (Phys. Inventory)" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision));
        PhysInvtEntered := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Phys. Inventory",true);

        if "Serial No." <> '' then
          if ("Qty. (Phys. Inventory)" < 0) or ("Qty. (Phys. Inventory)" > 1) then
            Error(Text006,FieldCaption("Qty. (Phys. Inventory)"));

        PhysInvtEntered := true;
        Quantity := 0;
        Validate(Quantity,"Qty. (Phys. Inventory)" - "Qty. (Calculated)");
        if "Qty. (Phys. Inventory)" = "Qty. (Calculated)" then
          Validate("Qty. (Phys. Inventory) (Base)","Qty. (Calculated) (Base)")
        else
          Validate("Qty. (Phys. Inventory) (Base)",Round("Qty. (Phys. Inventory)" * "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision));
        PhysInvtEntered := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Phys. Inventory) (Base)"(Field 69).OnValidate". Please convert manually.

        //trigger  (Phys();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Qty. (Base)" := "Qty. (Phys. Inventory) (Base)" - "Qty. (Calculated) (Base)";
        "Qty. (Absolute, Base)" := ABS("Qty. (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Qty. (Base)" := "Qty. (Phys. Inventory) (Base)" - "Qty. (Calculated) (Base)";
        "Qty. (Absolute, Base)" := Abs("Qty. (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF "Variant Code" <> '' THEN BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          Description := ItemVariant.Description;
        END ELSE
          GetItem("Item No.",Description);

        IF "Variant Code" <> xRec."Variant Code" THEN BEGIN
          CheckBin("Location Code","From Bin Code",FALSE);
          CheckBin("Location Code","To Bin Code",TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if "Variant Code" <> '' then begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant."Part No";
        end else
          GetItem("Item No.",Description);

        if "Variant Code" <> xRec."Variant Code" then begin
          CheckBin("Location Code","From Bin Code",false);
          CheckBin("Location Code","To Bin Code",true);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5407).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT PhysInvtEntered THEN
          TESTFIELD("Phys. Inventory",FALSE);

        IF "Item No." <> '' THEN BEGIN
          TESTFIELD("Unit of Measure Code");
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
          CheckBin("Location Code","From Bin Code",FALSE);
          CheckBin("Location Code","To Bin Code",TRUE);
        END ELSE
          "Qty. per Unit of Measure" := 1;
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not PhysInvtEntered then
          TestField("Phys. Inventory",false);

        if "Item No." <> '' then begin
          TestField("Unit of Measure Code");
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
          CheckBin("Location Code","From Bin Code",false);
          CheckBin("Location Code","To Bin Code",true);
        end else
          "Qty. per Unit of Measure" := 1;
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 6500).OnValidate". Please convert manually.

        //trigger "(Field 6500)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Serial No." <> '' THEN
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,TRUE);

        IF (Quantity < 0) OR (Quantity > 1) THEN
          ERROR(Text006,FIELDCAPTION(Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Serial No." <> '' then
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,true);

        if (Quantity < 0) or (Quantity > 1) then
          Error(Text006,FieldCaption(Quantity));
        */
        //end;


        //Unsupported feature: CodeModification on ""Lot No."(Field 6501).OnValidate". Please convert manually.

        //trigger "(Field 6501)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Lot No." <> '' THEN
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Lot No." <> '' then
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,true);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Journal Template Name,Journal Batch Name,Location Code,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Entry Type,From Bin Type Code,Variant Code,Unit of Measure Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,From Bin Code,Location Code,Entry Type,Variant Code,Unit of Measure Code,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,To Bin Code,Location Code,Variant Code,Unit of Measure Code,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""To Bin Code,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Item No.,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Bin Code,Item No.,Variant Code"(Key)". Please convert manually.

        key(Pk; "Journal Template Name", "Journal Batch Name", "Location Code", "Line No.")
        {
        }
        key(k1; "Item No.", "Location Code", "Entry Type", "From Bin Type Code", "Variant Code", "Unit of Measure Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Absolute, Base)";
        }
        key(Sk2; "Item No.", "From Bin Code", "Location Code", "Entry Type", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Absolute, Base)", "Qty. (Absolute)", Cubage, Weight;
        }
        key(Sk3; "Item No.", "To Bin Code", "Location Code", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Absolute, Base)", "Qty. (Absolute)";
        }
        key(Sk4; "To Bin Code", "Location Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Cubage, Weight, "Qty. (Absolute)";
        }
        key(Sk5; "Location Code", "Item No.", "Variant Code")
        {
        }
        key(Sk6; "Location Code", "Bin Code", "Item No.", "Variant Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Warehouse Journal Line",0,"Journal Batch Name",
      "Journal Template Name",0,"Line No.","Location Code",TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Warehouse Journal Line",0,"Journal Batch Name",
      "Journal Template Name",0,"Line No.","Location Code",true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "User ID" := USERID;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "User ID" := UserId;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "User ID" = '' THEN
      "User ID" := USERID;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "User ID" = '' then
      "User ID" := UserId;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 67).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 5402).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetUpAdjustmentBin(PROCEDURE 100).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpAdjustmentBin : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpAdjustmentBin : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExchangeFromToBin(PROCEDURE 16).WhseJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExchangeFromToBin : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExchangeFromToBin : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 4).BinContent(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 4).WhseJnlLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBinType(PROCEDURE 20).BinType(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBinType : 7303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBinType : "Bin Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelection(PROCEDURE 13).WhseJnlTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelection : 7309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelection : "Warehouse Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelectionFromBatch(PROCEDURE 21).WhseJnlLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelectionFromBatch : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelectionFromBatch : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckTemplateName(PROCEDURE 11).WhseJnlBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckTemplateName : 7310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckTemplateName : "Warehouse Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckName(PROCEDURE 10).WhseJnlBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckName : 7310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckName : "Warehouse Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckName(PROCEDURE 10).WhseEmployee(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckName : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckName : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupName(PROCEDURE 7).WhseJnlBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupName : 7310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupName : "Warehouse Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).WhseWkshLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).WhseItemTrackingLines(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Whse. Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingReclass(PROCEDURE 22).WhseItemTrkgLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingReclass : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingReclass : "Whse. Item Tracking Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsReclass(PROCEDURE 6).WhseJnlTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsReclass : 7309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsReclass : "Warehouse Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsOpenedFromBatch(PROCEDURE 42).WarehouseJournalBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsOpenedFromBatch : 7310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsOpenedFromBatch : "Warehouse Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: Change Editable on "FindExistingBatch(PROCEDURE 26).WhseJnlBatch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindExistingBatch : 7310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindExistingBatch : "Warehouse Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsWarehouseEmployeeLocationDirectPutAwayAndPick(PROCEDURE 15).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsWarehouseEmployeeLocationDirectPutAwayAndPick : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsWarehouseEmployeeLocationDirectPutAwayAndPick : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsWarehouseEmployeeLocationDirectPutAwayAndPick(PROCEDURE 15).WarehouseEmployee(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsWarehouseEmployeeLocationDirectPutAwayAndPick : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsWarehouseEmployeeLocationDirectPutAwayAndPick : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseJnlTemplate(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseJnlTemplate : 7309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseJnlTemplate : "Warehouse Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseJnlBatch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseJnlBatch : 7310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseJnlBatch : "Warehouse Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseJnlLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseJnlLine : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseJnlLine : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemUnitOfMeasure(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSMgt : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSMgt : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


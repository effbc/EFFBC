tableextension 70141 BinContentExt extends "Bin Content"
{
    // version NAVW19.00.00.48992

    fields
    {

        //Unsupported feature: Change NotBlank on ""Location Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Zone Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Zone Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bin Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Item No."(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bin Type Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warehouse Class Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Block Movement"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bin Ranking"(Field 21)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Quantity(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty."(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty."(Field 29)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Neg. Adjmt. Qty."(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Neg. Adjmt. Qty."(Field 30)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Put-away Qty."(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Put-away Qty."(Field 31)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pos. Adjmt. Qty."(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pos. Adjmt. Qty."(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Quantity (Base)"(Field 50)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity (Base)"(Field 50)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Quantity (Base)"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Quantity (Base)"(Field 51)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Negative Adjmt. Qty. (Base)"(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Negative Adjmt. Qty. (Base)"(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Put-away Quantity (Base)"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""Put-away Quantity (Base)"(Field 53)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Positive Adjmt. Qty. (Base)"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Positive Adjmt. Qty. (Base)"(Field 54)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""ATO Components Pick Qty."(Field 55)". Please convert manually.


        //Unsupported feature: Change Editable on ""ATO Components Pick Qty."(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""ATO Components Pick Qty (Base)"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""ATO Components Pick Qty (Base)"(Field 56)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on "Dedicated(Field 6502)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Filter"(Field 6503)". Please convert manually.


        //Unsupported feature: CodeModification on ""Location Code"(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("Location Code" <> xRec."Location Code") THEN BEGIN
          CheckManualChange(FIELDCAPTION("Location Code"));
          "Bin Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("Location Code" <> xRec."Location Code") then begin
          CheckManualChange(FieldCaption("Location Code"));
          "Bin Code" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Zone Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("Zone Code" <> xRec."Zone Code") THEN
          CheckManualChange(FIELDCAPTION("Zone Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("Zone Code" <> xRec."Zone Code") then
          CheckManualChange(FieldCaption("Zone Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("Bin Code" <> xRec."Bin Code") THEN BEGIN
          CheckManualChange(FIELDCAPTION("Bin Code"));
          GetBin("Location Code","Bin Code");
          Dedicated := Bin.Dedicated;
          "Bin Type Code" := Bin."Bin Type Code";
          "Warehouse Class Code" := Bin."Warehouse Class Code";
          "Bin Ranking" := Bin."Bin Ranking";
          "Block Movement" := Bin."Block Movement";
          "Zone Code" := Bin."Zone Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("Bin Code" <> xRec."Bin Code") then begin
          CheckManualChange(FieldCaption("Bin Code"));
        #3..9
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("Item No." <> xRec."Item No.") THEN BEGIN
          CheckManualChange(FIELDCAPTION("Item No."));
          IsHandled := FALSE;
          OnValidateItemNoOnBeforeValidateVariantCode(Rec,IsHandled);
          IF NOT IsHandled THEN
            "Variant Code" := '';
        END;

        IF ("Item No." <> xRec."Item No.") AND ("Item No." <> '') THEN BEGIN
          GetItem("Item No.");
          VALIDATE("Unit of Measure Code",Item."Base Unit of Measure");
          OnValidateItemNoOnAfterValidateUoMCode(Rec,Item);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("Item No." <> xRec."Item No.") then begin
          CheckManualChange(FieldCaption("Item No."));
          IsHandled := false;
          OnValidateItemNoOnBeforeValidateVariantCode(Rec,IsHandled);
          if not IsHandled then
            "Variant Code" := '';
        end;

        if ("Item No." <> xRec."Item No.") and ("Item No." <> '') then begin
          GetItem("Item No.");
          Validate("Unit of Measure Code",Item."Base Unit of Measure");
          OnValidateItemNoOnAfterValidateUoMCode(Rec,Item);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Max. Qty."(Field 16).OnValidate". Please convert manually.

        //trigger  Qty();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Max. Qty." <> xRec."Max. Qty." THEN
          CheckBinMaxCubageAndWeight;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Max. Qty." <> xRec."Max. Qty." then
          CheckBinMaxCubageAndWeight;
        */
        //end;


        //Unsupported feature: CodeModification on "Default(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec.Default <> Default) AND Default THEN
          IF WMSManagement.CheckDefaultBin(
               "Item No.","Variant Code","Location Code","Bin Code")
          THEN
            ERROR(Text010,"Location Code","Item No.","Variant Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec.Default <> Default) and Default then
          if WMSManagement.CheckDefaultBin(
               "Item No.","Variant Code","Location Code","Bin Code")
          then
            Error(Text010,"Location Code","Item No.","Variant Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("Variant Code" <> xRec."Variant Code") THEN
          CheckManualChange(FIELDCAPTION("Variant Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("Variant Code" <> xRec."Variant Code") then
          CheckManualChange(FieldCaption("Variant Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5407).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("Unit of Measure Code" <> xRec."Unit of Measure Code") THEN
          CheckManualChange(FIELDCAPTION("Unit of Measure Code"));

        GetItem("Item No.");
        "Qty. per Unit of Measure" :=
          UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("Unit of Measure Code" <> xRec."Unit of Measure Code") then
          CheckManualChange(FieldCaption("Unit of Measure Code"));
        #3..6
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Location Code,Bin Code,Item No.,Variant Code,Unit of Measure Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bin Type Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Item No.,Variant Code,Cross-Dock Bin,Qty. per Unit of Measure,Bin Ranking"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Warehouse Class Code,Fixed,Bin Ranking"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Item No.,Variant Code,Warehouse Class Code,Fixed,Bin Ranking"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Default,Location Code,Item No.,Variant Code,Bin Code"(Key)". Please convert manually.

        key(Key1; "Location Code", "Bin Code", "Item No.", "Variant Code", "Unit of Measure Code")
        {
        }
        key(Key2; "Bin Type Code")
        {
        }
        key(Key3; "Location Code", "Item No.", "Variant Code", "Cross-Dock Bin", "Qty. per Unit of Measure", "Bin Ranking")
        {
        }
        key(Key4; "Location Code", "Warehouse Class Code", "Fixed", "Bin Ranking")
        {
        }
        key(Key5; "Location Code", "Item No.", "Variant Code", "Warehouse Class Code", "Fixed", "Bin Ranking")
        {
        }
        key(Key6; "Item No.")
        {
        }
        key(Key7; Default, "Location Code", "Item No.", "Variant Code", "Bin Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    BinContent := Rec;
    BinContent.CALCFIELDS(
      "Quantity (Base)","Pick Quantity (Base)","Negative Adjmt. Qty. (Base)",
      "Put-away Quantity (Base)","Positive Adjmt. Qty. (Base)");
    IF BinContent."Quantity (Base)" <> 0 THEN
      ERROR(Text000,TABLECAPTION);

    IF (BinContent."Pick Quantity (Base)" <> 0) OR (BinContent."Negative Adjmt. Qty. (Base)" <> 0) OR
       (BinContent."Put-away Quantity (Base)" <> 0) OR (BinContent."Positive Adjmt. Qty. (Base)" <> 0)
    THEN
      ERROR(Text001,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    BinContent := Rec;
    BinContent.CalcFields(
      "Quantity (Base)","Pick Quantity (Base)","Negative Adjmt. Qty. (Base)",
      "Put-away Quantity (Base)","Positive Adjmt. Qty. (Base)");
    if BinContent."Quantity (Base)" <> 0 then
      Error(Text000,TableCaption);

    if (BinContent."Pick Quantity (Base)" <> 0) or (BinContent."Negative Adjmt. Qty. (Base)" <> 0) or
       (BinContent."Put-away Quantity (Base)" <> 0) or (BinContent."Positive Adjmt. Qty. (Base)" <> 0)
    then
      Error(Text001,TableCaption);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Default THEN
      IF WMSManagement.CheckDefaultBin(
           "Item No.","Variant Code","Location Code","Bin Code")
      THEN
        ERROR(Text010,"Location Code","Item No.","Variant Code");

    GetLocation("Location Code");
    IF Location."Directed Put-away and Pick" THEN
      TESTFIELD("Zone Code")
    ELSE
      TESTFIELD("Zone Code",'');

    IF "Min. Qty." > "Max. Qty." THEN
      ERROR(
        Text005,
        FIELDCAPTION("Max. Qty."),"Max. Qty.",
        FIELDCAPTION("Min. Qty."),"Min. Qty.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Default then
      if WMSManagement.CheckDefaultBin(
           "Item No.","Variant Code","Location Code","Bin Code")
      then
        Error(Text010,"Location Code","Item No.","Variant Code");

    GetLocation("Location Code");
    if Location."Directed Put-away and Pick" then
      TestField("Zone Code")
    else
      TestField("Zone Code",'');

    if "Min. Qty." > "Max. Qty." then
      Error(
        Text005,
        FieldCaption("Max. Qty."),"Max. Qty.",
        FieldCaption("Min. Qty."),"Min. Qty.");
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Default THEN
      IF WMSManagement.CheckDefaultBin(
           "Item No.","Variant Code","Location Code","Bin Code")
      THEN
        ERROR(Text010,"Location Code","Item No.","Variant Code");

    GetLocation("Location Code");
    IF Location."Directed Put-away and Pick" THEN
      TESTFIELD("Zone Code")
    ELSE
      TESTFIELD("Zone Code",'');

    IF "Min. Qty." > "Max. Qty." THEN
      ERROR(
        Text005,
        FIELDCAPTION("Max. Qty."),"Max. Qty.",
        FIELDCAPTION("Min. Qty."),"Min. Qty.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Default then
      if WMSManagement.CheckDefaultBin(
           "Item No.","Variant Code","Location Code","Bin Code")
      then
        Error(Text010,"Location Code","Item No.","Variant Code");

    GetLocation("Location Code");
    if Location."Directed Put-away and Pick" then
      TestField("Zone Code")
    else
      TestField("Zone Code",'');

    if "Min. Qty." > "Max. Qty." then
      Error(
        Text005,
        FieldCaption("Max. Qty."),"Max. Qty.",
        FieldCaption("Min. Qty."),"Min. Qty.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.BinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.BinContent : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyWithBlockedItemTracking(PROCEDURE 19).SerialNoInfo(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyWithBlockedItemTracking : 6504;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyWithBlockedItemTracking : "Serial No. Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyWithBlockedItemTracking(PROCEDURE 19).LotNoInfo(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyWithBlockedItemTracking : 6505;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyWithBlockedItemTracking : "Lot No. Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyWithBlockedItemTracking(PROCEDURE 19).XBinContent(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyWithBlockedItemTracking : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyWithBlockedItemTracking : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBinMaxCubageAndWeight(PROCEDURE 4).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBinMaxCubageAndWeight : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBinMaxCubageAndWeight : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBinMaxCubageAndWeight(PROCEDURE 4).WMSMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBinMaxCubageAndWeight : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBinMaxCubageAndWeight : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDecreaseBinContent(PROCEDURE 21).WhseActivLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDecreaseBinContent : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDecreaseBinContent : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIncreaseBinContent(PROCEDURE 22).WhseActivLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIncreaseBinContent : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIncreaseBinContent : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIncreaseBinContent(PROCEDURE 22).WMSMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIncreaseBinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIncreaseBinContent : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowBinContents(PROCEDURE 7).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowBinContents : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowBinContents : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowBinContents(PROCEDURE 7).BinContentLookup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowBinContents : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowBinContents : "Bin Contents List";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemDescr(PROCEDURE 20).Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemDescr : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemDescr : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemDescr(PROCEDURE 20).ItemVariant(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemDescr : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemDescr : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWhseLocation(PROCEDURE 9).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWhseLocation : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWhseLocation : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWhseLocation(PROCEDURE 9).WhseEmployee(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWhseLocation : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWhseLocation : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWhseLocation(PROCEDURE 9).WMSMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWhseLocation : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWhseLocation : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyonAdjmtBin(PROCEDURE 11).WhseEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyonAdjmtBin : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyonAdjmtBin : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyBase(PROCEDURE 49).WhseActivLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyBase : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyBase : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyBase(PROCEDURE 49).WhseJnlLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyBase : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyBase : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 12).ObjTransl(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : "Object Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 12).ReservEntry(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPageCaption(PROCEDURE 33).ObjectTranslation(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPageCaption : 377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPageCaption : "Object Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalQtyBase(PROCEDURE 25).WarehouseEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalQtyBase : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalQtyBase : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalNegativeAdjmtQtyBase(PROCEDURE 34).WarehouseJournalLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalNegativeAdjmtQtyBase : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalNegativeAdjmtQtyBase : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalNegativeAdjmtQtyBase(PROCEDURE 34).WhseItemTrackingLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalNegativeAdjmtQtyBase : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalNegativeAdjmtQtyBase : "Whse. Item Tracking Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalATOComponentsPickQtyBase(PROCEDURE 27).WarehouseActivityLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalATOComponentsPickQtyBase : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalATOComponentsPickQtyBase : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSManagement(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSManagement : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSManagement : "WMS Management";
    //Variable type has not been exported.
}


tableextension 70234 WhseInternalPickLineExt extends "Whse. Internal Pick Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To Bin Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To Zone Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Base)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding (Base)"(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked (Base)"(Field 24)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty."(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty."(Field 27)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty. (Base)"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty. (Base)"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sorting Sequence No."(Field 35)". Please convert manually.


        //Unsupported feature: CodeModification on ""To Bin Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        IF xRec."To Bin Code" <> "To Bin Code" THEN
          IF "To Bin Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            Location.TESTFIELD("Bin Mandatory");
            IF Location."Directed Put-away and Pick" THEN BEGIN
              IF "To Bin Code" = Location."Adjustment Bin Code" THEN
                FIELDERROR(
                  "To Bin Code",
                  STRSUBSTNO(
                    Text004,Location.FIELDCAPTION("Adjustment Bin Code"),
                    Location.TABLECAPTION));

              CheckBin(TRUE);
            END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        if xRec."To Bin Code" <> "To Bin Code" then
          if "To Bin Code" <> '' then begin
            GetLocation("Location Code");
            Location.TestField("Bin Mandatory");
            if Location."Directed Put-away and Pick" then begin
              if "To Bin Code" = Location."Adjustment Bin Code" then
                FieldError(
                  "To Bin Code",
                  StrSubstNo(
                    Text004,Location.FieldCaption("Adjustment Bin Code"),
                    Location.TableCaption));

              CheckBin(true);
            end;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""To Zone Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        IF xRec."To Zone Code" <> "To Zone Code" THEN BEGIN
          IF "To Zone Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            Location.TESTFIELD("Directed Put-away and Pick");
          END;
          "To Bin Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        if xRec."To Zone Code" <> "To Zone Code" then begin
          if "To Zone Code" <> '' then begin
            GetLocation("Location Code");
            Location.TestField("Directed Put-away and Pick");
          end;
          "To Bin Code" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 14).OnValidate". Please convert manually.

        //trigger "(Field 14)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> xRec."Item No." THEN
          "Variant Code" := '';

        GetInternalPickHeader("No.");
        "Location Code" := WhseInternalPickHeader."Location Code";
        IF WhseInternalPickHeader."To Zone Code" <> '' THEN
          "To Zone Code" := WhseInternalPickHeader."To Zone Code";
        IF WhseInternalPickHeader."To Bin Code" <> '' THEN
          "To Bin Code" := WhseInternalPickHeader."To Bin Code";

        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          Description := Item.Description;
          "Description 2" := Item."Description 2";
          "Shelf No." := Item."Shelf No.";
          VALIDATE("Unit of Measure Code",ItemUnitofMeasure.Code);
        END ELSE BEGIN
          Description := '';
          "Description 2" := '';
          "Variant Code" := '';
          "Shelf No." := '';
          VALIDATE("Unit of Measure Code",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then
        #2..5
        if WhseInternalPickHeader."To Zone Code" <> '' then
          "To Zone Code" := WhseInternalPickHeader."To Zone Code";
        if WhseInternalPickHeader."To Bin Code" <> '' then
          "To Bin Code" := WhseInternalPickHeader."To Bin Code";

        if "Item No." <> '' then begin
        #12..15
          Validate("Unit of Measure Code",ItemUnitofMeasure.Code);
        end else begin
        #18..21
          Validate("Unit of Measure Code",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        CALCFIELDS("Pick Qty.");
        IF Quantity < "Qty. Picked" + "Pick Qty." THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text001,"Qty. Picked" + "Pick Qty."));

        VALIDATE("Qty. Outstanding",(Quantity - "Qty. Picked"));
        "Qty. (Base)" := CalcBaseQty(Quantity);

        CheckBin(TRUE);

        Status := CalcStatusPickLine;
        IF Status <> xRec.Status THEN BEGIN
          GetInternalPickHeader("No.");
          DocStatus := WhseInternalPickHeader.GetDocumentStatus(0);
          IF DocStatus <> WhseInternalPickHeader."Document Status" THEN BEGIN
            WhseInternalPickHeader.VALIDATE("Document Status",DocStatus);
            WhseInternalPickHeader.MODIFY;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        CalcFields("Pick Qty.");
        if Quantity < "Qty. Picked" + "Pick Qty." then
          FieldError(Quantity,StrSubstNo(Text001,"Qty. Picked" + "Pick Qty."));

        Validate("Qty. Outstanding",(Quantity - "Qty. Picked"));
        "Qty. (Base)" := CalcBaseQty(Quantity);

        CheckBin(true);

        Status := CalcStatusPickLine;
        if Status <> xRec.Status then begin
          GetInternalPickHeader("No.");
          DocStatus := WhseInternalPickHeader.GetDocumentStatus(0);
          if DocStatus <> WhseInternalPickHeader."Document Status" then begin
            WhseInternalPickHeader.Validate("Document Status",DocStatus);
            WhseInternalPickHeader.Modify;
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitofMeasure."Qty. per Unit of Measure";
        END ELSE
          "Qty. per Unit of Measure" := 1;

        VALIDATE(Quantity);
        VALIDATE("Qty. Outstanding");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitofMeasure."Qty. per Unit of Measure";
        end else
          "Qty. per Unit of Measure" := 1;

        Validate(Quantity);
        Validate("Qty. Outstanding");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 31).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" = '' THEN
          VALIDATE("Item No.")
        ELSE BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          Description := ItemVariant.Description;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" = '' then
          Validate("Item No.")
        else begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant."Part No";
        end;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Shelf No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,To Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""To Bin Code,Location Code"(Key)". Please convert manually.

        key(Pk; "No.", "Line No.")
        {
        }
        key(Sk1; "No.", "Sorting Sequence No.")
        {
        }
        key(Sk2; "No.", "Item No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk3; "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk4; "No.", "To Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk5; "No.", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(Sk6; "To Bin Code", "Location Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding", Cubage, Weight;
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestReleased;

    IF ("Qty. Picked" > 0) AND (Quantity > "Qty. Picked") THEN
      IF NOT HideValidationDialog THEN
        IF NOT CONFIRM(
             STRSUBSTNO(
               Text002,
               FIELDCAPTION("Qty. Picked"),"Qty. Picked",
               FIELDCAPTION(Quantity),Quantity,TABLECAPTION),FALSE)
        THEN
          ERROR(Text003);

    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Whse. Internal Pick Line",0,"No.",'',0,"Line No.","Location Code",TRUE);

    DocStatus :=
      WhseInternalPickHeader.GetDocumentStatus("Line No.");
    IF DocStatus <> WhseInternalPickHeader."Document Status" THEN BEGIN
      WhseInternalPickHeader.VALIDATE("Document Status",DocStatus);
      WhseInternalPickHeader.MODIFY;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestReleased;

    if ("Qty. Picked" > 0) and (Quantity > "Qty. Picked") then
      if not HideValidationDialog then
        if not Confirm(
             StrSubstNo(
               Text002,
               FieldCaption("Qty. Picked"),"Qty. Picked",
               FieldCaption(Quantity),Quantity,TableCaption),false)
        then
          Error(Text003);

    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Whse. Internal Pick Line",0,"No.",'',0,"Line No.","Location Code",true);
    #15..17
    if DocStatus <> WhseInternalPickHeader."Document Status" then begin
      WhseInternalPickHeader.Validate("Document Status",DocStatus);
      WhseInternalPickHeader.Modify;
    end;
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



    //Unsupported feature: PropertyModification on ""Qty. Outstanding"(Field 19).OnValidate.WMSMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Qty. Outstanding" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Qty. Outstanding" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 31).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemTrackingMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 2).WhseInternalPickLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 7334;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Whse. Internal Pick Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePickDoc(PROCEDURE 6).CreatePickFromWhseSource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePickDoc : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePickDoc : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).WhseWorksheetLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).WhseItemTrackingLines(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Whse. Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 9).Bin(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 9).BinContent(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 9).WhseInternalPickLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7334;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Whse. Internal Pick Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNextLineNo(PROCEDURE 10).WhseInternalPickLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextLineNo : 7334;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextLineNo : "Whse. Internal Pick Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLastLineNo(PROCEDURE 12).WhseInternalPickLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLastLineNo : 7334;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLastLineNo : "Whse. Internal Pick Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSortSeqNo(PROCEDURE 11).WhseInternalPickLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSortSeqNo : 7334;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSortSeqNo : "Whse. Internal Pick Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemUnitofMeasure(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitofMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitofMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseInternalPickHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseInternalPickHeader : 7333;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseInternalPickHeader : "Whse. Internal Pick Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


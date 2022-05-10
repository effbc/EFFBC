tableextension 70235 WhseInternalPutawayLineExt extends "Whse. Internal Put-away Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Base)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding (Base)"(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Put Away"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Put Away (Base)"(Field 24)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Put-away Qty."(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Put-away Qty."(Field 25)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Put-away Qty. (Base)"(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Put-away Qty. (Base)"(Field 26)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sorting Sequence No."(Field 35)". Please convert manually.


        //Unsupported feature: CodeModification on ""From Bin Code"(Field 12).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectLookUp(FIELDNO("From Bin Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectLookUp(FieldNo("From Bin Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""From Bin Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        IF xRec."From Bin Code" <> "From Bin Code" THEN
          IF "From Bin Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            Location.TESTFIELD("Bin Mandatory");
            IF "From Bin Code" = Location."Adjustment Bin Code" THEN
              FIELDERROR(
                "From Bin Code",
                STRSUBSTNO(
                  Text000,Location.FIELDCAPTION("Adjustment Bin Code"),
                  Location.TABLECAPTION));
            IF Location."Directed Put-away and Pick" THEN
              CheckBlocking(BinContent);
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        if xRec."From Bin Code" <> "From Bin Code" then
          if "From Bin Code" <> '' then begin
            GetLocation("Location Code");
            Location.TestField("Bin Mandatory");
            if "From Bin Code" = Location."Adjustment Bin Code" then
              FieldError(
                "From Bin Code",
                StrSubstNo(
                  Text000,Location.FieldCaption("Adjustment Bin Code"),
                  Location.TableCaption));
            if Location."Directed Put-away and Pick" then
              CheckBlocking(BinContent);
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""From Zone Code"(Field 13).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectLookUp(FIELDNO("From Zone Code"));
        Location.TESTFIELD("Directed Put-away and Pick");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectLookUp(FieldNo("From Zone Code"));
        Location.TestField("Directed Put-away and Pick");
        */
        //end;


        //Unsupported feature: CodeModification on ""From Zone Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        IF "From Zone Code" <> xRec."From Zone Code" THEN BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Directed Put-away and Pick");
          "From Bin Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        if "From Zone Code" <> xRec."From Zone Code" then begin
          GetLocation("Location Code");
          Location.TestField("Directed Put-away and Pick");
          "From Bin Code" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 14).OnLookup". Please convert manually.

        //trigger "(Field 14)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectLookUp(FIELDNO("Item No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectLookUp(FieldNo("Item No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 14).OnValidate". Please convert manually.

        //trigger "(Field 14)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        TESTFIELD("Qty. Put Away",0);
        IF "Item No." <> xRec."Item No." THEN
          "Variant Code" := '';

        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          Description := Item.Description;
          "Description 2" := Item."Description 2";
          "Shelf No." := Item."Shelf No.";
          VALIDATE("Unit of Measure Code",ItemUnitOfMeasure.Code);
        END ELSE BEGIN
          Description := '';
          "Description 2" := '';
          "Variant Code" := '';
          "Shelf No." := '';
          VALIDATE("Unit of Measure Code",'');
        END;

        IF WhseInternalPutAwayHeader.GET("No.") THEN BEGIN
          IF "Location Code" = '' THEN
            VALIDATE("Location Code",WhseInternalPutAwayHeader."Location Code");
          IF "From Zone Code" = '' THEN
            VALIDATE("From Zone Code",WhseInternalPutAwayHeader."From Zone Code");
          IF "From Bin Code" = '' THEN
            VALIDATE("From Bin Code",WhseInternalPutAwayHeader."From Bin Code");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        TestField("Qty. Put Away",0);
        if "Item No." <> xRec."Item No." then
          "Variant Code" := '';

        if "Item No." <> '' then begin
        #7..10
          Validate("Unit of Measure Code",ItemUnitOfMeasure.Code);
        end else begin
        #13..16
          Validate("Unit of Measure Code",'');
        end;

        if WhseInternalPutAwayHeader.Get("No.") then begin
          if "Location Code" = '' then
            Validate("Location Code",WhseInternalPutAwayHeader."Location Code");
          if "From Zone Code" = '' then
            Validate("From Zone Code",WhseInternalPutAwayHeader."From Zone Code");
          if "From Bin Code" = '' then
            Validate("From Bin Code",WhseInternalPutAwayHeader."From Bin Code");
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
        TESTFIELD("Qty. Put Away",0);
        CALCFIELDS("Put-away Qty.");
        IF Quantity < "Qty. Put Away" + "Put-away Qty." THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text001,"Qty. Put Away" + "Put-away Qty."));

        "Qty. (Base)" := CalcBaseQty(Quantity);
        IF CurrFieldNo = FIELDNO(Quantity) THEN
          CheckBinContentQty;

        VALIDATE("Qty. Outstanding",(Quantity - "Qty. Put Away"));
        Status := CalcStatusPutAwayLine;
        IF Status <> xRec.Status THEN BEGIN
          GetInternalPutAwayHeader("No.");
          DocStatus := WhseInternalPutAwayHeader.GetDocumentStatus(0);
          IF DocStatus <> WhseInternalPutAwayHeader."Document Status" THEN BEGIN
            WhseInternalPutAwayHeader.VALIDATE("Document Status",DocStatus);
            WhseInternalPutAwayHeader.MODIFY;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        TestField("Qty. Put Away",0);
        CalcFields("Put-away Qty.");
        if Quantity < "Qty. Put Away" + "Put-away Qty." then
          FieldError(Quantity,StrSubstNo(Text001,"Qty. Put Away" + "Put-away Qty."));

        "Qty. (Base)" := CalcBaseQty(Quantity);
        if CurrFieldNo = FieldNo(Quantity) then
          CheckBinContentQty;

        Validate("Qty. Outstanding",(Quantity - "Qty. Put Away"));
        Status := CalcStatusPutAwayLine;
        if Status <> xRec.Status then begin
          GetInternalPutAwayHeader("No.");
          DocStatus := WhseInternalPutAwayHeader.GetDocumentStatus(0);
          if DocStatus <> WhseInternalPutAwayHeader."Document Status" then begin
            WhseInternalPutAwayHeader.Validate("Document Status",DocStatus);
            WhseInternalPutAwayHeader.Modify;
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 29).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectLookUp(FIELDNO("Unit of Measure Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectLookUp(FieldNo("Unit of Measure Code"));
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
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
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
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
        end else
          "Qty. per Unit of Measure" := 1;

        Validate(Quantity);
        Validate("Qty. Outstanding");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 31).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectLookUp(FIELDNO("Variant Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectLookUp(FieldNo("Variant Code"));
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


        //Unsupported feature: Deletion on ""No.,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,From Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Shelf No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,From Bin Code,Location Code,Unit of Measure Code,Variant Code"(Key)". Please convert manually.

        key(Pk; "No.", "Line No.")
        {
        }
        key(Sk1; "No.", "Item No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk2; "No.", "From Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk3; "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk4; "No.", "Sorting Sequence No.")
        {
        }
        key(Sk5; "No.", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(Sk6; "Item No.", "From Bin Code", "Location Code", "Unit of Measure Code", "Variant Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Base)";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestReleased;

    IF ("Qty. Put Away" > 0) AND (Quantity > "Qty. Put Away") THEN
      IF NOT HideValidationDialog THEN
        IF NOT CONFIRM(
             STRSUBSTNO(
               Text004,
               FIELDCAPTION("Qty. Put Away"),"Qty. Put Away",
               FIELDCAPTION(Quantity),Quantity,TABLECAPTION),FALSE)
        THEN
          ERROR(Text005);

    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Whse. Internal Put-away Line",0,"No.",'',0,"Line No.","Location Code",TRUE);

    DocStatus :=
      WhseInternalPutAwayHeader.GetDocumentStatus("Line No.");
    IF DocStatus <> WhseInternalPutAwayHeader."Document Status" THEN BEGIN
      WhseInternalPutAwayHeader.VALIDATE("Document Status",DocStatus);
      WhseInternalPutAwayHeader.MODIFY;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestReleased;

    if ("Qty. Put Away" > 0) and (Quantity > "Qty. Put Away") then
      if not HideValidationDialog then
        if not Confirm(
             StrSubstNo(
               Text004,
               FieldCaption("Qty. Put Away"),"Qty. Put Away",
               FieldCaption(Quantity),Quantity,TableCaption),false)
        then
          Error(Text005);

    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Whse. Internal Put-away Line",0,"No.",'',0,"Line No.","Location Code",true);
    #15..17
    if DocStatus <> WhseInternalPutAwayHeader."Document Status" then begin
      WhseInternalPutAwayHeader.Validate("Document Status",DocStatus);
      WhseInternalPutAwayHeader.Modify;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Item No.");
    "Sorting Sequence No." := GetSortSeqNo;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Item No.");
    "Sorting Sequence No." := GetSortSeqNo;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Item No.");
    xRec.TESTFIELD("Qty. Put Away",0);
    "Sorting Sequence No." := GetSortSeqNo;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Item No.");
    xRec.TestField("Qty. Put Away",0);
    "Sorting Sequence No." := GetSortSeqNo;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text003,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text003,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""From Bin Code"(Field 12).OnValidate.BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From Bin Code" : "Bin Content";
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


    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 3).WhseInternalPutAwayLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 7332;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Whse. Internal Put-away Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBinContentQty(PROCEDURE 9).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBinContentQty : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBinContentQty : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBinContentQty(PROCEDURE 9).WhseInternalPutAwayLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBinContentQty : 7332;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBinContentQty : "Whse. Internal Put-away Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBlocking(PROCEDURE 13).Bin(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBlocking : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBlocking : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBlocking(PROCEDURE 13).BinType(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBlocking : 7303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBlocking : "Bin Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpBinContent(PROCEDURE 6).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpBinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpBinContent : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePutAwayDoc(PROCEDURE 11).CreatePutAwayFromWhseSource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePutAwayDoc : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePutAwayDoc : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectLookUp(PROCEDURE 10).ItemVariant(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectLookUp : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectLookUp : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).TempWhseWorksheetLine(Variable 1001)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "GetNextLineNo(PROCEDURE 16).WhseInternalPutAwayLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextLineNo : 7332;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextLineNo : "Whse. Internal Put-away Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLastLineNo(PROCEDURE 20).WhseInternalPutAwayLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLastLineNo : 7332;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLastLineNo : "Whse. Internal Put-away Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSortSeqNo(PROCEDURE 12).WhseInternalPutAwayLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSortSeqNo : 7332;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSortSeqNo : "Whse. Internal Put-away Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetItemTrackingLines(PROCEDURE 19).TempWhseWorksheetLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetItemTrackingLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetItemTrackingLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetItemTrackingLines(PROCEDURE 19).WhseItemTrackingForm(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetItemTrackingLines : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetItemTrackingLines : "Whse. Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCurrentLineQty(PROCEDURE 25).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCurrentLineQty : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCurrentLineQty : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseInternalPutAwayHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseInternalPutAwayHeader : 7331;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseInternalPutAwayHeader : "Whse. Internal Put-away Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1004)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "ItemUnitOfMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


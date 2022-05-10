tableextension 70232 WarehouseShipmentLineExt extends "Warehouse Shipment Line"
{
    // version NAVW19.00.00.49741

    fields
    {

        //Unsupported feature: Change Editable on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Subtype"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source No."(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Line No."(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item No."(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Base)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding (Base)"(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked (Base)"(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped (Base)"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty."(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty."(Field 27)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pick Qty. (Base)"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty. (Base)"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Description 2"(Field 33)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sorting Sequence No."(Field 35)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipping Advice"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Picked"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Not upd. by Src. Doc. Post."(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting from Whse. Ref."(Field 49)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Assemble to Order"(Field 900)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assemble to Order"(Field 900)". Please convert manually.


        //Unsupported feature: CodeModification on ""Bin Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        IF xRec."Bin Code" <> "Bin Code" THEN
          IF "Bin Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Warehouse Shipment Line",
              FIELDCAPTION("Bin Code"),
              "Location Code",
              "Bin Code",0);
            IF Location."Directed Put-away and Pick" THEN BEGIN
              Bin.GET("Location Code","Bin Code");
              "Zone Code" := Bin."Zone Code";
              CheckBin(0,0);
            END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        if xRec."Bin Code" <> "Bin Code" then
          if "Bin Code" <> '' then begin
            GetLocation("Location Code");
            WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Warehouse Shipment Line",
              FieldCaption("Bin Code"),
              "Location Code",
              "Bin Code",0);
            if Location."Directed Put-away and Pick" then begin
              Bin.Get("Location Code","Bin Code");
              "Zone Code" := Bin."Zone Code";
              CheckBin(0,0);
            end;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Zone Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestReleased;
        IF xRec."Zone Code" <> "Zone Code" THEN BEGIN
          IF "Zone Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            Location.TESTFIELD("Directed Put-away and Pick");
          END;
          "Bin Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestReleased;
        if xRec."Zone Code" <> "Zone Code" then begin
          if "Zone Code" <> '' then begin
            GetLocation("Location Code");
            Location.TestField("Directed Put-away and Pick");
          end;
          "Bin Code" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Quantity <= 0 THEN
          FIELDERROR(Quantity,Text003);
        TestReleased;
        CheckSourceDocLineQty;

        IF Quantity < "Qty. Picked" THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text001,"Qty. Picked"));
        IF Quantity < "Qty. Shipped" THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text001,"Qty. Shipped"));

        "Qty. (Base)" := CalcBaseQty(Quantity);
        InitOutstandingQtys;
        "Completely Picked" := (Quantity = "Qty. Picked") OR ("Qty. (Base)" = "Qty. Picked (Base)");

        GetLocation("Location Code");
        IF Location."Directed Put-away and Pick" THEN
          CheckBin(xRec.Cubage,xRec.Weight);

        IsHandled := FALSE;
        OnValidateQuantityStatusUpdate(Rec,xRec,IsHandled);
        IF NOT IsHandled THEN BEGIN
          Status := CalcStatusShptLine;
          IF (Status <> xRec.Status) AND (NOT ISTEMPORARY) THEN BEGIN
            GetWhseShptHeader("No.");
            OrderStatus := WhseShptHeader.GetDocumentStatus(0);
            IF OrderStatus <> WhseShptHeader."Document Status" THEN BEGIN
              WhseShptHeader.VALIDATE("Document Status",OrderStatus);
              WhseShptHeader.MODIFY;
            END;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Quantity <= 0 then
          FieldError(Quantity,Text003);
        #3..5
        if Quantity < "Qty. Picked" then
          FieldError(Quantity,StrSubstNo(Text001,"Qty. Picked"));
        if Quantity < "Qty. Shipped" then
          FieldError(Quantity,StrSubstNo(Text001,"Qty. Shipped"));
        "Qty. (Base)" := CalcBaseQty(Quantity);
        InitOutstandingQtys;
        "Completely Picked" := (Quantity = "Qty. Picked") or ("Qty. (Base)" = "Qty. Picked (Base)");

        GetLocation("Location Code");
        if Location."Directed Put-away and Pick" then
          CheckBin(xRec.Cubage,xRec.Weight);

        IsHandled := false;
        OnValidateQuantityStatusUpdate(Rec,xRec,IsHandled);
        if not IsHandled then begin
          Status := CalcStatusShptLine;
          if (Status <> xRec.Status) and (not IsTemporary) then begin
            GetWhseShptHeader("No.");
            OrderStatus := WhseShptHeader.GetDocumentStatus(0);
            if OrderStatus <> WhseShptHeader."Document Status" then begin
              WhseShptHeader.Validate("Document Status",OrderStatus);
              WhseShptHeader.Modify;
            end;
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. Outstanding"(Field 19).OnValidate". Please convert manually.

        //trigger  Outstanding"(Field 19)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Location Code");
        "Qty. Outstanding (Base)" := CalcBaseQty("Qty. Outstanding");
        IF Location."Require Pick" THEN BEGIN
          IF "Assemble to Order" THEN
            VALIDATE("Qty. to Ship",0)
          ELSE
            VALIDATE("Qty. to Ship","Qty. Picked" - (Quantity - "Qty. Outstanding"));
        END ELSE
          VALIDATE("Qty. to Ship","Qty. Outstanding");

        IF Location."Directed Put-away and Pick" THEN
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. Outstanding",Cubage,Weight);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Location Code");
        "Qty. Outstanding (Base)" := CalcBaseQty("Qty. Outstanding");
        if Location."Require Pick" then begin
          if "Assemble to Order" then
            Validate("Qty. to Ship",0)
          else
            Validate("Qty. to Ship","Qty. Picked" - (Quantity - "Qty. Outstanding"));
        end else
          Validate("Qty. to Ship","Qty. Outstanding");

        if Location."Directed Put-away and Pick" then
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. Outstanding",Cubage,Weight);
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship"(Field 21).OnValidate". Please convert manually.

        //trigger  to Ship"(Field 21)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Location Code");

        IsHandled := FALSE;
        OnBeforeCompareShipAndPickQty(Rec,IsHandled);
        IF NOT IsHandled THEN
          IF ("Qty. to Ship" > "Qty. Picked" - "Qty. Shipped") AND Location."Require Pick" AND NOT "Assemble to Order" THEN
            FIELDERROR("Qty. to Ship",STRSUBSTNO(Text002,"Qty. Picked" - "Qty. Shipped"));

        IsHandled := FALSE;
        OnBeforeCompareQtyToShipAndOutstandingQty(Rec,IsHandled);
        IF NOT IsHandled THEN
          IF "Qty. to Ship" > "Qty. Outstanding" THEN
            ERROR(Text000,"Qty. Outstanding");

        Confirmed := TRUE;
        IF (CurrFieldNo = FIELDNO("Qty. to Ship")) AND
           ("Shipping Advice" = "Shipping Advice"::Complete) AND
           ("Qty. to Ship" <> "Qty. Outstanding") AND
           ("Qty. to Ship" > 0)
        THEN
          Confirmed :=
            CONFIRM(
              Text009 +
              Text010,
              FALSE,
              FIELDCAPTION("Shipping Advice"),
              "Shipping Advice",
              FIELDCAPTION("Qty. to Ship"),
              "Qty. Outstanding");

        IF NOT Confirmed THEN
          ERROR('');

        IF CurrFieldNo <> FIELDNO("Qty. to Ship (Base)") THEN
          "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");

        IF "Assemble to Order" THEN
          ATOLink.UpdateQtyToAsmFromWhseShptLine(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Location Code");

        IsHandled := false;
        OnBeforeCompareShipAndPickQty(Rec,IsHandled);
        if not IsHandled then
          if ("Qty. to Ship" > "Qty. Picked" - "Qty. Shipped") and Location."Require Pick" and not "Assemble to Order" then
            FieldError("Qty. to Ship",StrSubstNo(Text002,"Qty. Picked" - "Qty. Shipped"));

        IsHandled := false;
        OnBeforeCompareQtyToShipAndOutstandingQty(Rec,IsHandled);
        if not IsHandled then
          if "Qty. to Ship" > "Qty. Outstanding" then
            Error(Text000,"Qty. Outstanding");

        Confirmed := true;
        if (CurrFieldNo = FieldNo("Qty. to Ship")) and
           ("Shipping Advice" = "Shipping Advice"::Complete) and
           ("Qty. to Ship" <> "Qty. Outstanding") and
           ("Qty. to Ship" > 0)
        then
          Confirmed :=
            Confirm(
              Text009 +
              Text010,
              false,
              FieldCaption("Shipping Advice"),
              "Shipping Advice",
              FieldCaption("Qty. to Ship"),
              "Qty. Outstanding");

        if not Confirmed then
          Error('');

        if CurrFieldNo <> FieldNo("Qty. to Ship (Base)") then
          "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");

        if "Assemble to Order" then
          ATOLink.UpdateQtyToAsmFromWhseShptLine(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship (Base)"(Field 22).OnValidate". Please convert manually.

        //trigger  to Ship (Base)"(Field 22)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Qty. to Ship",CalcQty("Qty. to Ship (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Qty. to Ship",CalcQty("Qty. to Ship (Base)"));
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Source Document,Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Shelf No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Destination Type,Destination No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Assemble to Order"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Source Type,Source Subtype,Source No.,Source Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Variant Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bin Code,Location Code"(Key)". Please convert manually.

        key(PK; "No.", "Line No.")
        {
        }
        key(Sk1; "No.", "Sorting Sequence No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk2; "No.", "Item No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk3; "No.", "Source Document", "Source No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk4; "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk5; "No.", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk6; "No.", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(Sk7; "No.", "Destination Type", "Destination No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk8; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding", "Qty. Outstanding (Base)";
        }
        key(Sk9; "No.", "Source Type", "Source Subtype", "Source No.", "Source Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk10; "Item No.", "Location Code", "Variant Code", "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)", "Qty. Picked (Base)", "Qty. Shipped (Base)";
        }
        key(Sk11; "Bin Code", "Location Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Cubage, Weight;
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestReleased;

    IF "Assemble to Order" THEN
      VALIDATE("Qty. to Ship",0);

    IF "Qty. Shipped" < "Qty. Picked" THEN
      IF NOT CONFIRM(
           STRSUBSTNO(
             Text007,
             FIELDCAPTION("Qty. Picked"),"Qty. Picked",FIELDCAPTION("Qty. Shipped"),
             "Qty. Shipped",TABLECAPTION),FALSE)
      THEN
        ERROR('');

    ItemTrackingMgt.SetDeleteReservationEntries(TRUE);
    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Warehouse Shipment Line",0,"No.",'',0,"Line No.","Location Code",TRUE);

    OrderStatus :=
      WhseShptHeader.GetDocumentStatus("Line No.");
    IF OrderStatus <> WhseShptHeader."Document Status" THEN BEGIN
      WhseShptHeader.VALIDATE("Document Status",OrderStatus);
      WhseShptHeader.MODIFY;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestReleased;

    if "Assemble to Order" then
      Validate("Qty. to Ship",0);

    if "Qty. Shipped" < "Qty. Picked" then
      if not Confirm(
           StrSubstNo(
             Text007,
             FieldCaption("Qty. Picked"),"Qty. Picked",FieldCaption("Qty. Shipped"),
             "Qty. Shipped",TableCaption),false)
      then
        Error('');

    ItemTrackingMgt.SetDeleteReservationEntries(true);
    ItemTrackingMgt.DeleteWhseItemTrkgLines(
      DATABASE::"Warehouse Shipment Line",0,"No.",'',0,"Line No.","Location Code",true);
    #18..20
    if OrderStatus <> WhseShptHeader."Document Status" then begin
      WhseShptHeader.Validate("Document Status",OrderStatus);
      WhseShptHeader.Modify;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text008,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text008,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: Change OptionString. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Bin Code"(Field 12).OnValidate.Bin(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 12).OnValidate.WhseIntegrationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Qty. Outstanding"(Field 19).OnValidate.WMSMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Qty. Outstanding" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Qty. Outstanding" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Qty. to Ship"(Field 21).OnValidate.ATOLink(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Qty. to Ship" : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Qty. to Ship" : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemTrackingMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 9).Bin(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 9).BinContent(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSourceDocLineQty(PROCEDURE 3).WhseShptLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSourceDocLineQty : 7321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSourceDocLineQty : "Warehouse Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSourceDocLineQty(PROCEDURE 3).SalesLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSourceDocLineQty : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSourceDocLineQty : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSourceDocLineQty(PROCEDURE 3).PurchaseLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSourceDocLineQty : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSourceDocLineQty : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSourceDocLineQty(PROCEDURE 3).TransferLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSourceDocLineQty : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSourceDocLineQty : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSourceDocLineQty(PROCEDURE 3).ServiceLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSourceDocLineQty : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSourceDocLineQty : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePickDocFromWhseShpt(PROCEDURE 31).WhseShipmentCreatePick(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePickDocFromWhseShpt : 7318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePickDocFromWhseShpt : "Whse.-Shipment - Create Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).PurchaseLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).SalesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).ServiceLine(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).TransferLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).ReservePurchLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 99000834;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Purch. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).ReserveSalesLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 99000832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Sales Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).ReserveTransferLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 99000836;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Transfer Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).ServiceLineReserve(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 99000842;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Service Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetATOAndNonATOLines(PROCEDURE 16).WhseShptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetATOAndNonATOLines : 7321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetATOAndNonATOLines : "Warehouse Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FullATOPosted(PROCEDURE 21).SalesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FullATOPosted : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FullATOPosted : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FullATOPosted(PROCEDURE 21).ATOWhseShptLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FullATOPosted : 7321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FullATOPosted : "Warehouse Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateWhseItemTrackingLines(PROCEDURE 22).WhseWkshLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateWhseItemTrackingLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateWhseItemTrackingLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateWhseItemTrackingLines(PROCEDURE 22).ATOSalesLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateWhseItemTrackingLines : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateWhseItemTrackingLines : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateWhseItemTrackingLines(PROCEDURE 22).AsmHeader(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateWhseItemTrackingLines : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateWhseItemTrackingLines : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateWhseItemTrackingLines(PROCEDURE 22).AsmLineMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateWhseItemTrackingLines : 905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateWhseItemTrackingLines : "Assembly Line Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateWhseItemTrackingLines(PROCEDURE 22).ItemTrackingMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateWhseItemTrackingLines : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateWhseItemTrackingLines : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteWhseItemTrackingLines(PROCEDURE 33).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteWhseItemTrackingLines : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteWhseItemTrackingLines : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSource(PROCEDURE 18).WhseMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSource : 5775;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSource : "Whse. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseShptHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseShptHeader : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseShptHeader : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


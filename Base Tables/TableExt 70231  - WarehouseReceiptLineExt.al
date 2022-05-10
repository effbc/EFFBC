tableextension 70231 WarehouseReceiptLine extends "Warehouse Receipt Line"
{
    // version NAVW19.00.00.49741,NAVIN9.00.00.49741,QC1.0

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


        //Unsupported feature: Change Editable on ""Qty. Received"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Received (Base)"(Field 24)". Please convert manually.


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


        //Unsupported feature: Change Editable on ""Not upd. by Src. Doc. Post."(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting from Whse. Ref."(Field 49)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cross-Dock Zone Code"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cross-Dock Bin Code"(Field 53)". Please convert manually.


        //Unsupported feature: CodeModification on ""Bin Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Bin Code" <> "Bin Code" THEN
          IF "Bin Code" <> '' THEN BEGIN
            GetLocation("Location Code");
            WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Warehouse Receipt Line",
              FIELDCAPTION("Bin Code"),
              "Location Code",
              "Bin Code",0);
            IF Location."Directed Put-away and Pick" THEN BEGIN
              Bin.GET("Location Code","Bin Code");
              "Zone Code" := Bin."Zone Code";
              CheckBin(FALSE);
            END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Bin Code" <> "Bin Code" then
          if "Bin Code" <> '' then begin
            GetLocation("Location Code");
            WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Warehouse Receipt Line",
              FieldCaption("Bin Code"),
              "Location Code",
              "Bin Code",0);
            if Location."Directed Put-away and Pick" then begin
              Bin.Get("Location Code","Bin Code");
              "Zone Code" := Bin."Zone Code";
              CheckBin(false);
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
        "Qty. (Base)" := CalcBaseQty(Quantity);
        InitOutstandingQtys;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        "Qty. (Base)" := CalcBaseQty(Quantity);
        //QC
        "Qty. Sending To Quality" :=Quantity;
        //QC
        InitOutstandingQtys;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. Outstanding"(Field 19).OnValidate". Please convert manually.

        //trigger  Outstanding"(Field 19)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Qty. Outstanding (Base)" := CalcBaseQty("Qty. Outstanding");
        VALIDATE("Qty. to Receive","Qty. Outstanding");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Qty. Outstanding (Base)" := CalcBaseQty("Qty. Outstanding");
        Validate("Qty. to Receive","Qty. Outstanding");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Receive"(Field 21).OnValidate". Please convert manually.

        //trigger  to Receive"(Field 21)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeValidateQtyToReceive(Rec,IsHandled);
        IF NOT IsHandled THEN
          IF "Qty. to Receive" > "Qty. Outstanding" THEN
            ERROR(Text002,"Qty. Outstanding");

        GetLocation("Location Code");
        IF Location."Directed Put-away and Pick" THEN BEGIN
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. to Receive",Cubage,Weight);

          IF (CurrFieldNo <> 0) AND ("Qty. to Receive" > 0) THEN
            CheckBin(TRUE);
        END;

        "Qty. to Cross-Dock" := 0;
        "Qty. to Cross-Dock (Base)" := 0;
        "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");

        Item.CheckSerialNoQty("Item No.",FIELDCAPTION("Qty. to Receive (Base)"),"Qty. to Receive (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeValidateQtyToReceive(Rec,IsHandled);
        if not IsHandled then
          if "Qty. to Receive" > "Qty. Outstanding" then
            Error(Text002,"Qty. Outstanding");

        GetLocation("Location Code");
        if Location."Directed Put-away and Pick" then begin
        #9..11
          if (CurrFieldNo <> 0) and ("Qty. to Receive" > 0) then
            CheckBin(true);
        end;
        #15..19
        Item.CheckSerialNoQty("Item No.",FieldCaption("Qty. to Receive (Base)"),"Qty. to Receive (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Receive (Base)"(Field 22).OnValidate". Please convert manually.

        //trigger  to Receive (Base)"(Field 22)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Receive","Qty. to Receive (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Receive","Qty. to Receive (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Cross-Dock"(Field 50).OnValidate". Please convert manually.

        //trigger  to Cross-Dock"(Field 50)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CrossDockMgt.GetUseCrossDock(UseCrossDock,"Location Code","Item No.");
        IF NOT UseCrossDock THEN
          ERROR(Text006,Item.TABLECAPTION,Location.TABLECAPTION);
        IF "Qty. to Cross-Dock" > "Qty. to Receive" THEN
          ERROR(
            Text005,
            "Qty. to Receive");

        "Qty. to Cross-Dock (Base)" := CalcBaseQty("Qty. to Cross-Dock");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CrossDockMgt.GetUseCrossDock(UseCrossDock,"Location Code","Item No.");
        if not UseCrossDock then
          Error(Text006,Item.TableCaption,Location.TableCaption);
        if "Qty. to Cross-Dock" > "Qty. to Receive" then
          Error(
        #6..9
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Cross-Dock (Base)"(Field 51).OnValidate". Please convert manually.

        //trigger  to Cross-Dock (Base)"(Field 51)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Cross-Dock","Qty. to Cross-Dock (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Cross-Dock","Qty. to Cross-Dock (Base)");
        */
        //end;
        field(33000250; "Quantity Accepted"; Decimal)
        {
        }
        field(33000251; "Quantity Rework"; Decimal)
        {
        }
        field(33000252; "Quantity Rejected"; Decimal)
        {
        }
        field(33000253; "Qty. Sending To Quality"; Decimal)
        {
            MinValue = 0;
        }
        field(33000254; "Qty. Sent To Quality"; Decimal)
        {
            Editable = false;
            MinValue = 0;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Source Type,Source Subtype,Source No.,Source Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Shelf No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Source Document,Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bin Code,Location Code"(Key)". Please convert manually.

        key(Pk; "No.", "Line No.")
        {
        }
        key(Sk1; "Source Type", "Source Subtype", "Source No.", "Source Line No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)";
        }
        key(Sk2; "No.", "Source Type", "Source Subtype", "Source No.", "Source Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk3; "No.", "Sorting Sequence No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk4; "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk5; "No.", "Item No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk6; "No.", "Source Document", "Source No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk7; "No.", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(Sk8; "No.", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk9; "Item No.", "Location Code", "Variant Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)";
        }
        key(Sk10; "Bin Code", "Location Code")
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
    IF (Quantity <> "Qty. Outstanding") AND ("Qty. Outstanding" <> 0) THEN
      IF NOT CONFIRM(Text004,FALSE,TABLECAPTION,"Line No.") THEN
        ERROR(Text003);

    WhseRcptHeader.GET("No.");
    OrderStatus := WhseRcptHeader.GetHeaderStatus("Line No.");
    IF OrderStatus <> WhseRcptHeader."Document Status" THEN BEGIN
      WhseRcptHeader.VALIDATE("Document Status",OrderStatus);
      WhseRcptHeader.MODIFY;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if (Quantity <> "Qty. Outstanding") and ("Qty. Outstanding" <> 0) then
      if not Confirm(Text004,false,TableCaption,"Line No.") then
        Error(Text003);

    WhseRcptHeader.Get("No.");
    OrderStatus := WhseRcptHeader.GetHeaderStatus("Line No.");
    if OrderStatus <> WhseRcptHeader."Document Status" then begin
      WhseRcptHeader.Validate("Document Status",OrderStatus);
      WhseRcptHeader.Modify;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text001,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text001,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


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


    //Unsupported feature: PropertyModification on ""Qty. to Receive"(Field 21).OnValidate.WMSMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Qty. to Receive" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Qty. to Receive" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.WhseRcptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.WhseRcptHeader : 7316;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.WhseRcptHeader : "Warehouse Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 3).BinContent(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
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


    //Unsupported feature: PropertyModification on "SetSource(PROCEDURE 5).WhseMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSource : 5775;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSource : "Whse. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSourceFilter(PROCEDURE 42).WhseManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSourceFilter : 5775;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSourceFilter : "Whse. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CrossDockMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CrossDockMgt : 5780;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CrossDockMgt : "Whse. Cross-Dock Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


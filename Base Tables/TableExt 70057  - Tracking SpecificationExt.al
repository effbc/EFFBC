tableextension 70057 TrackingSpecificationExt extends "Tracking Specification"
{
    // version NAVW19.00.00.46621,NAVIN9.00.00.46621

    fields
    {

        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Handled (Base)"(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced (Base)"(Field 53)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Buffer Status"(Field 70)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Status"(Field 70)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Buffer Status2"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Status2"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Value1"(Field 72)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Value2"(Field 73)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Value3"(Field 74)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Value4"(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buffer Value5"(Field 76)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5401)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity actual Handled (Base)"(Field 7300)". Please convert manually.


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Quantity (Base)" * "Quantity Handled (Base)" < 0) OR
           (ABS("Quantity (Base)") < ABS("Quantity Handled (Base)"))
        THEN
          FIELDERROR("Quantity (Base)",STRSUBSTNO(Text002,FIELDCAPTION("Quantity Handled (Base)")));

        WMSManagement.CheckItemTrackingChange(Rec,xRec);
        InitQtyToShip;
        CheckSerialNoQty;

        IF NOT QuantityToInvoiceIsSufficient THEN
          VALIDATE("Appl.-to Item Entry",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Quantity (Base)" * "Quantity Handled (Base)" < 0) or
           (Abs("Quantity (Base)") < Abs("Quantity Handled (Base)"))
        then
          FieldError("Quantity (Base)",StrSubstNo(Text002,FieldCaption("Quantity Handled (Base)")));
        #5..9
        if not QuantityToInvoiceIsSufficient then
          Validate("Appl.-to Item Entry",0);
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Item Ledger Entry No."(Field 16)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
    var
        ReservationEntry: Record "Reservation Entry";
        //begin
        /*

        ReservationEntry.SetRange("Item No.","Item No.");
        ReservationEntry.SetRange("Location Code","Location Code");
        ReservationEntry.SetRange("Source Type","Source Type");
        ReservationEntry.SetRange("Source Subtype","Source Subtype");
        ReservationEntry.SetRange("Source ID","Source ID");
        ReservationEntry.SetRange("Source Batch Name","Source Batch Name");
        ReservationEntry.SetRange("Lot No.","Lot No.");
        ReservationEntry.SetRange("Serial No.","Serial No.");
        if ReservationEntry.Find('-') then
          repeat
            ReservationEntry."Appl.-to Item Entry" := "Appl.-to Item Entry";
            ReservationEntry.Modify;
          until ReservationEntry.Next = 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 24).OnValidate". Please convert manually.

        //trigger "(Field 24)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Serial No." <> xRec."Serial No." THEN BEGIN
          TESTFIELD("Quantity Handled (Base)",0);
          TESTFIELD("Appl.-from Item Entry",0);
          IF IsReclass THEN
            "New Serial No." := "Serial No.";
          WMSManagement.CheckItemTrackingChange(Rec,xRec);
          IF NOT SkipSerialNoQtyValidation THEN
            CheckSerialNoQty;
          InitExpirationDate;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        if "Serial No." <> xRec."Serial No." then begin
          TestField("Quantity Handled (Base)",0);
          TestField("Appl.-from Item Entry",0);
          if (Format("Source Type")='39') or (Format("Source Type")='83') then
          begin
            ILE.SetCurrentKey(ILE."Item No.",ILE."Lot No.",ILE."Serial No.");
            ILE.SetRange(ILE."Item No.","Item No.");
            ILE.SetRange(ILE."Serial No.","Serial No.");
            ILE.SetRange(ILE.Open,true);
           { IF ILE.FINDFIRST THEN
              ERROR(FORMAT("Serial No.")+' Serial No. Already Exists');}
          end;
        //  TestRPOStatus;  //pranavi

          if IsReclass then
            "New Serial No." := "Serial No.";
          WMSManagement.CheckItemTrackingChange(Rec,xRec);
          if not SkipSerialNoQtyValidation then
            CheckSerialNoQty;
          InitExpirationDate;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnLookup". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ItemLedgEntry.SETCURRENTKEY("Item No.",Open,"Variant Code",Positive,"Location Code");
        ItemLedgEntry.SETRANGE("Item No.","Item No.");
        ItemLedgEntry.SETRANGE(Positive,TRUE);
        ItemLedgEntry.SETRANGE("Location Code","Location Code");
        ItemLedgEntry.SETRANGE("Variant Code","Variant Code");
        ItemLedgEntry.SETRANGE("Serial No.","Serial No.");
        ItemLedgEntry.SETRANGE("Lot No.","Lot No.");
        ItemLedgEntry.SETRANGE(Open,TRUE);
        IF PAGE.RUNMODAL(PAGE::"Item Ledger Entries",ItemLedgEntry) = ACTION::LookupOK THEN
          VALIDATE("Appl.-to Item Entry",ItemLedgEntry."Entry No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ItemLedgEntry.SetCurrentKey("Item No.",Open,"Variant Code",Positive,"Location Code");
        ItemLedgEntry.SetRange("Item No.","Item No.");
        ItemLedgEntry.SetRange(Positive,true);
        ItemLedgEntry.SetRange("Location Code","Location Code");
        ItemLedgEntry.SetRange("Variant Code","Variant Code");
        ItemLedgEntry.SetRange("Serial No.","Serial No.");
        ItemLedgEntry.SetRange("Lot No.","Lot No.");
        ItemLedgEntry.SetRange(Open,true);
        if PAGE.RunModal(PAGE::"Item Ledger Entries",ItemLedgEntry) = ACTION::LookupOK then
          Validate("Appl.-to Item Entry",ItemLedgEntry."Entry No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnValidate". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-to Item Entry" = 0 THEN
          EXIT;

        IF NOT TrackingExists THEN BEGIN
          TESTFIELD("Serial No.");
          TESTFIELD("Lot No.");
        END;

        ItemLedgEntry.GET("Appl.-to Item Entry");

        TestApplyToItemLedgEntryNo(ItemLedgEntry);

        IF ABS("Quantity (Base)") > ABS(ItemLedgEntry."Remaining Quantity") THEN
          ERROR(
            RemainingQtyErr,
            ItemLedgEntry.FIELDCAPTION("Remaining Quantity"),ItemLedgEntry."Entry No.",FIELDCAPTION("Quantity (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-to Item Entry" = 0 then
          exit;

        if not TrackingExists then begin
          TestField("Serial No.");
          TestField("Lot No.");
        end;

        ItemLedgEntry.Get("Appl.-to Item Entry");
        #10..12
        if Abs("Quantity (Base)") > Abs(ItemLedgEntry."Remaining Quantity") then
          Error(
            RemainingQtyErr,
            ItemLedgEntry.FieldCaption("Remaining Quantity"),ItemLedgEntry."Entry No.",FieldCaption("Quantity (Base)"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Expiration Date"(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WMSManagement.CheckItemTrackingChange(Rec,xRec);
        IF "Buffer Status2" = "Buffer Status2"::"ExpDate blocked" THEN BEGIN
          "Expiration Date" := xRec."Expiration Date";
          MESSAGE(Text004);
        END;

        IF "Expiration Date" <> xRec."Expiration Date" THEN
          ItemTrackingMgt.UpdateExpirationDateForLot(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WMSManagement.CheckItemTrackingChange(Rec,xRec);
        if "Buffer Status2" = "Buffer Status2"::"ExpDate blocked" then begin
          "Expiration Date" := xRec."Expiration Date";
          Message(Text004);
        end;

        if "Expiration Date" <> xRec."Expiration Date" then
          ItemTrackingMgt.UpdateExpirationDateForLot(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Handle (Base)"(Field 50).OnValidate". Please convert manually.

        //trigger  to Handle (Base)"(Field 50)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Qty. to Handle (Base)" * "Quantity (Base)" < 0) OR
           (ABS("Qty. to Handle (Base)") > ABS("Quantity (Base)")
            - "Quantity Handled (Base)")
        THEN
          ERROR(Text001,"Quantity (Base)" - "Quantity Handled (Base)");

        OnValidateQtyToHandleOnBeforeInitQtyToInvoice(Rec,xRec,CurrFieldNo);

        InitQtyToInvoice;
        "Qty. to Handle" := CalcQty("Qty. to Handle (Base)");
        CheckSerialNoQty;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Qty. to Handle (Base)" * "Quantity (Base)" < 0) or
           (Abs("Qty. to Handle (Base)") > Abs("Quantity (Base)")
            - "Quantity Handled (Base)")
        then
          Error(Text001,"Quantity (Base)" - "Quantity Handled (Base)");
        #6..11
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Invoice (Base)"(Field 51).OnValidate". Please convert manually.

        //trigger  to Invoice (Base)"(Field 51)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) OR
           (ABS("Qty. to Invoice (Base)") > ABS("Qty. to Handle (Base)"
              + "Quantity Handled (Base)" - "Quantity Invoiced (Base)"))
        THEN
          ERROR(
            Text000,
            "Qty. to Handle (Base)" + "Quantity Handled (Base)" - "Quantity Invoiced (Base)");

        "Qty. to Invoice" := CalcQty("Qty. to Invoice (Base)");
        CheckSerialNoQty;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) or
           (Abs("Qty. to Invoice (Base)") > Abs("Qty. to Handle (Base)"
              + "Quantity Handled (Base)" - "Quantity Invoiced (Base)"))
        then
          Error(
        #6..10
        */
        //end;


        //Unsupported feature: CodeModification on ""Lot No."(Field 5400).OnValidate". Please convert manually.

        //trigger "(Field 5400)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Lot No." <> xRec."Lot No." THEN BEGIN
          TESTFIELD("Quantity Handled (Base)",0);
          TESTFIELD("Appl.-from Item Entry",0);
          IF IsReclass THEN
            "New Lot No." := "Lot No.";
          WMSManagement.CheckItemTrackingChange(Rec,xRec);
          InitExpirationDate;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Lot No." <> xRec."Lot No." then begin
          TestField("Quantity Handled (Base)",0);
        //  TestRPOStatus;  //pranavi
          TestField("Appl.-from Item Entry",0);
          if IsReclass then
        #5..7
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-from Item Entry"(Field 5811).OnLookup". Please convert manually.

        //trigger -from Item Entry"(Field 5811)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ItemLedgEntry.SETCURRENTKEY("Item No.",Positive,"Location Code","Variant Code");
        ItemLedgEntry.SETRANGE("Item No.","Item No.");
        ItemLedgEntry.SETRANGE(Positive,FALSE);
        IF "Location Code" <> '' THEN
          ItemLedgEntry.SETRANGE("Location Code","Location Code");
        ItemLedgEntry.SETRANGE("Variant Code","Variant Code");
        ItemLedgEntry.SETRANGE("Serial No.","Serial No.");
        ItemLedgEntry.SETRANGE("Lot No.","Lot No.");
        ItemLedgEntry.SETFILTER("Shipped Qty. Not Returned",'<0');
        OnAfterLookupApplFromItemEntrySetFilters(ItemLedgEntry,Rec);
        IF PAGE.RUNMODAL(PAGE::"Item Ledger Entries",ItemLedgEntry) = ACTION::LookupOK THEN
          VALIDATE("Appl.-from Item Entry",ItemLedgEntry."Entry No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ItemLedgEntry.SetCurrentKey("Item No.",Positive,"Location Code","Variant Code");
        ItemLedgEntry.SetRange("Item No.","Item No.");
        ItemLedgEntry.SetRange(Positive,false);
        if "Location Code" <> '' then
          ItemLedgEntry.SetRange("Location Code","Location Code");
        ItemLedgEntry.SetRange("Variant Code","Variant Code");
        ItemLedgEntry.SetRange("Serial No.","Serial No.");
        ItemLedgEntry.SetRange("Lot No.","Lot No.");
        ItemLedgEntry.SetFilter("Shipped Qty. Not Returned",'<0');
        OnAfterLookupApplFromItemEntrySetFilters(ItemLedgEntry,Rec);
        if PAGE.RunModal(PAGE::"Item Ledger Entries",ItemLedgEntry) = ACTION::LookupOK then
          Validate("Appl.-from Item Entry",ItemLedgEntry."Entry No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-from Item Entry"(Field 5811).OnValidate". Please convert manually.

        //trigger -from Item Entry"(Field 5811)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-from Item Entry" = 0 THEN
          EXIT;

        CASE "Source Type" OF
          DATABASE::"Sales Line":
            IF (("Source Subtype" IN [3,5]) AND ("Quantity (Base)" < 0)) OR
               (("Source Subtype" IN [1,2]) AND ("Quantity (Base)" > 0)) // sale
            THEN
              FIELDERROR("Quantity (Base)");
          DATABASE::"Item Journal Line":
            IF (("Source Subtype" IN [0,2,6]) AND ("Quantity (Base)" < 0)) OR
               (("Source Subtype" IN [1,3,4,5]) AND ("Quantity (Base)" > 0))
            THEN
              FIELDERROR("Quantity (Base)");
          DATABASE::"Service Line":
            IF (("Source Subtype" IN [3]) AND ("Quantity (Base)" < 0)) OR
               (("Source Subtype" IN [1,2]) AND ("Quantity (Base)" > 0))
            THEN
              FIELDERROR("Quantity (Base)");
          ELSE
            FIELDERROR("Source Subtype");
        END;

        IF NOT TrackingExists THEN BEGIN
          TESTFIELD("Serial No.");
          TESTFIELD("Lot No.");
        END;
        ItemLedgEntry.GET("Appl.-from Item Entry");
        ItemLedgEntry.TESTFIELD("Item No.","Item No.");
        ItemLedgEntry.TESTFIELD(Positive,FALSE);
        IF ItemLedgEntry."Shipped Qty. Not Returned" + ABS("Qty. to Handle (Base)") > 0 THEN
          ItemLedgEntry.FIELDERROR("Shipped Qty. Not Returned");
        ItemLedgEntry.TESTFIELD("Variant Code","Variant Code");
        ItemLedgEntry.TESTFIELD("Serial No.","Serial No.");
        ItemLedgEntry.TESTFIELD("Lot No.","Lot No.");

        OnAfterValidateApplFromItemEntry(Rec,ItemLedgEntry,IsReclass);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-from Item Entry" = 0 then
          exit;

        case "Source Type" of
          DATABASE::"Sales Line":
            if (("Source Subtype" in [3,5]) and ("Quantity (Base)" < 0)) or
               (("Source Subtype" in [1,2]) and ("Quantity (Base)" > 0)) // sale
            then
              FieldError("Quantity (Base)");
          DATABASE::"Item Journal Line":
            if (("Source Subtype" in [0,2,6]) and ("Quantity (Base)" < 0)) or
               (("Source Subtype" in [1,3,4,5]) and ("Quantity (Base)" > 0))
            then
              FieldError("Quantity (Base)");
          DATABASE::"Service Line":
            if (("Source Subtype" in [3]) and ("Quantity (Base)" < 0)) or
               (("Source Subtype" in [1,2]) and ("Quantity (Base)" > 0))
            then
              FieldError("Quantity (Base)");
          else
            FieldError("Source Subtype");
        end;

        if not TrackingExists then begin
          TestField("Serial No.");
          TestField("Lot No.");
        end;
        ItemLedgEntry.Get("Appl.-from Item Entry");
        ItemLedgEntry.TestField("Item No.","Item No.");
        ItemLedgEntry.TestField(Positive,false);
        if ItemLedgEntry."Shipped Qty. Not Returned" + Abs("Qty. to Handle (Base)") > 0 then
          ItemLedgEntry.FieldError("Shipped Qty. Not Returned");
        ItemLedgEntry.TestField("Variant Code","Variant Code");
        ItemLedgEntry.TestField("Serial No.","Serial No.");
        ItemLedgEntry.TestField("Lot No.","Lot No.");

        OnAfterValidateApplFromItemEntry(Rec,ItemLedgEntry,IsReclass);
        */
        //end;
        field(60002;"Item Entry No.";
        Integer)
        {
            Description = 'B2B';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source ID,Source Type,Source Subtype,Source Batch Name,Source Prod. Order Line,Source Ref. No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No.,Serial No."(Key)". Please convert manually.

        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Source ID","Source Type","Source Subtype","Source Batch Name","Source Prod. Order Line","Source Ref. No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Qty. to Handle (Base)","Qty. to Invoice (Base)","Quantity Handled (Base)","Quantity Invoiced (Base)";
        }
        key(Key3;"Lot No.","Serial No.")
        {
        }
        key(Key4;"Source ID")
        {
        }
        key(Key5;"Source Type")
        {
        }
        key(Key6;"Item No.","Lot No.","Serial No.")
        {
        }
        key(Key7;"Source ID","Item No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        TESTFIELD("Quantity Handled (Base)",0);
        TESTFIELD("Quantity Invoiced (Base)",0);
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        {
        TESTFIELD("Quantity Handled (Base)",0);
        TESTFIELD("Quantity Invoiced (Base)",0);
        }
        */
    //end;


    //Unsupported feature: CodeInsertion on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //begin
        /*
        Message('Inserting');
        */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 38).OnLookup.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Appl.-to Item Entry" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Appl.-to Item Entry" : "Item Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 38).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Appl.-to Item Entry" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Appl.-to Item Entry" : "Item Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Expiration Date"(Field 41).OnValidate.ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Expiration Date" : 6500;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Expiration Date" : "Item Tracking Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-from Item Entry"(Field 5811).OnLookup.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Appl.-from Item Entry" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Appl.-from Item Entry" : "Item Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-from Item Entry"(Field 5811).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Appl.-from Item Entry" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Appl.-from Item Entry" : "Item Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertSpecification(PROCEDURE 135).TrackingSpecification(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //InsertSpecification : 336;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InsertSpecification : "Tracking Specification";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitExpirationDate(PROCEDURE 2).ItemTrackingMgt(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //InitExpirationDate : 6500;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InitExpirationDate : "Item Tracking Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestApplyToItemLedgEntryNo(PROCEDURE 71).ItemJnlLine(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //TestApplyToItemLedgEntryNo : 83;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //TestApplyToItemLedgEntryNo : "Item Journal Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemTrackingQuantity(PROCEDURE 6).ReservationEntry(Variable 1005)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckItemTrackingQuantity : 337;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckItemTrackingQuantity : "Reservation Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemTrackingByType(PROCEDURE 12).TrackingSpecification(Variable 1009)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckItemTrackingByType : 336;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckItemTrackingByType : "Tracking Specification";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "QuantityToInvoiceIsSufficient(PROCEDURE 9).SalesLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //QuantityToInvoiceIsSufficient : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //QuantityToInvoiceIsSufficient : "Sales Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSManagement(Variable 1005)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //WMSManagement : 7302;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //WMSManagement : "WMS Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1008)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //UOMMgt : 5402;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UOMMgt : "Unit of Measure Management";
        //Variable type has not been exported.

    var
        ILE : Record "Item Ledger Entry";
}


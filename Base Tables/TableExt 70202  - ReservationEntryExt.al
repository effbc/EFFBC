tableextension 70202 ReservationEntryExt extends "Reservation Entry"
{
    // version NAVW19.00.00.50087,NAVIN9.00.00.50087,B2B1.0

    fields
    {

        //Unsupported feature: Change AutoIncrement on ""Entry No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item Ledger Entry No."(Field 16)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Created By"(Field 25)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Changed By"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on "Positive(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 29)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Action Message Adjustment"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Action Message Adjustment"(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on "Binding(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on "Binding(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warranty Date"(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expiration Date"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Serial No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Lot No."(Field 81)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5401)". Please convert manually.


        //Unsupported feature: Change Editable on ""New Expiration Date"(Field 6505)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Item Tracking"(Field 6510)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item Tracking"(Field 6510)". Please convert manually.


        //Unsupported feature: CodeModification on ""Qty. per Unit of Measure"(Field 29).OnValidate". Please convert manually.

        //trigger  per Unit of Measure"(Field 29)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Quantity := ROUND("Quantity (Base)" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Quantity := Round("Quantity (Base)" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No.,Positive"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source ID,Source Ref. No.,Source Type,Source Subtype,Source Batch Name,Source Prod. Order Line,Reservation Status,Shipment Date,Expected Receipt Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Reservation Status,Shipment Date,Expected Receipt Date,Serial No.,Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Source Type,Source Subtype,Reservation Status,Location Code,Variant Code,Shipment Date,Expected Receipt Date,Serial No.,Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Item Tracking,Reservation Status,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        key(Key1; "Entry No.", Positive)
        {
        }
        key(Key2; "Source ID", "Source Ref. No.", "Source Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line", "Reservation Status", "Shipment Date", "Expected Receipt Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)", Quantity, "Qty. to Handle (Base)", "Qty. to Invoice (Base)";
        }
        key(Key3; "Item No.", "Variant Code", "Location Code")
        {
            MaintainSIFTIndex = false;
        }
        key(Key4; "Item No.", "Variant Code", "Location Code", "Reservation Status", "Shipment Date", "Expected Receipt Date", "Serial No.", "Lot No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key5; "Item No.", "Source Type", "Source Subtype", "Reservation Status", "Location Code", "Variant Code", "Shipment Date", "Expected Receipt Date", "Serial No.", "Lot No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Quantity (Base)", Quantity;
        }
        key(Key6; "Item No.", "Variant Code", "Location Code", "Item Tracking", "Reservation Status", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key7; "Lot No.")
        {
            Enabled = false;
        }
        key(Key8; "Serial No.")
        {
            Enabled = false;
        }
        key(Key9; "Item No.", "Variant Code", "Location Code", "Source Type", "Source Subtype", "Reservation Status", "Expected Receipt Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ActionMessageEntry.SETCURRENTKEY("Reservation Entry");
    ActionMessageEntry.SETRANGE("Reservation Entry","Entry No.");
    ActionMessageEntry.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ActionMessageEntry.SetCurrentKey("Reservation Entry");
    ActionMessageEntry.SetRange("Reservation Entry","Entry No.");
    ActionMessageEntry.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Created By"(Field 25).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Created By" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Created By" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Changed By"(Field 27).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Changed By" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Changed By" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ActionMessageEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ActionMessageEntry : 99000849;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ActionMessageEntry : "Action Message Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).SalesLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).ReqLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).PurchLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).ItemJnlLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 83;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Item Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).ProdOrderLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).ProdOrderComp(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).AssemblyHeader(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).AssemblyLine(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).TransLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).ServLine(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TextCaption(PROCEDURE 1).JobJnlLine(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TextCaption : 210;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TextCaption : "Job Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetPointer(PROCEDURE 2).ItemTrackingMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetPointer : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetPointer : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Lock(PROCEDURE 4).Rec2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Lock : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Lock : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateItemTracking(PROCEDURE 5).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateItemTracking : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateItemTracking : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateActionMessageEntries(PROCEDURE 13).ActionMessageEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateActionMessageEntries : 99000849;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateActionMessageEntries : "Action Message Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateActionMessageEntries(PROCEDURE 13).ActionMessageEntry2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateActionMessageEntries : 99000849;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateActionMessageEntries : "Action Message Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateActionMessageEntries(PROCEDURE 13).OldReservEntry2(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateActionMessageEntries : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateActionMessageEntries : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcReservationQuantity(PROCEDURE 62).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcReservationQuantity : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcReservationQuantity : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferReservations(PROCEDURE 22).NewReservEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferReservations : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferReservations : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferReservations(PROCEDURE 22).CreateReservEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferReservations : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferReservations : "Create Reserv. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}


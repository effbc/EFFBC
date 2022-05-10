tableextension 70164 InventoryProfileExt extends "Inventory Profile"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 14)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Order Relation"(Field 16)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Planning Flexibility"(Field 36)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Action Message"(Field 38)". Please convert manually.


        //Unsupported feature: Change OptionString on "Binding(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on "Binding(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planning Level Code"(Field 50)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Planning Line Phase"(Field 51)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ref. Order No."(Field 56)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Ref. Line No."(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ref. Line No."(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expiration Date"(Field 67)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Ref. Order Type"(Field 68)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ref. Order Type"(Field 68)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Due Date,Attribute Priority,Order Priority"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,IsSupply,Primary Order Status,Primary Order No.,Due Date,Order Priority"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Order Status,Source ID,Source Batch Name,Source Ref. No.,Source Prod. Order Line,IsSupply,Due Date"(Key)". Please convert manually.

        key(Key1; "Line No.")
        {
        }
        key(Key2; "Item No.", "Variant Code", "Location Code", "Due Date", "Attribute Priority", "Order Priority")
        {
        }
        key(Key3; "Item No.", "Variant Code", "Location Code", IsSupply, "Primary Order Status", "Primary Order No.", "Due Date", "Order Priority")
        {
        }
        key(Key4; "Source Type", "Source Order Status", "Source ID", "Source Batch Name", "Source Ref. No.", "Source Prod. Order Line", IsSupply, "Due Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "TransferFromItemLedgerEntry(PROCEDURE 1).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromItemLedgerEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromItemLedgerEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromItemLedgerEntry(PROCEDURE 1).ReserveItemLedgerEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromItemLedgerEntry : 99000841;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromItemLedgerEntry : "Item Ledger Entry-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromSalesLine(PROCEDURE 2).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromSalesLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromSalesLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromSalesLine(PROCEDURE 2).ReserveSalesLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromSalesLine : 99000832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromSalesLine : "Sales Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromComponent(PROCEDURE 7).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromComponent : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromComponent : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromComponent(PROCEDURE 7).ReserveProdOrderComp(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromComponent : 99000838;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromComponent : "Prod. Order Comp.-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPlanComponent(PROCEDURE 8).ProdOrderComp(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPlanComponent : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPlanComponent : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPlanComponent(PROCEDURE 8).AsmLine(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPlanComponent : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPlanComponent : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPlanComponent(PROCEDURE 8).ReservEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPlanComponent : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPlanComponent : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPlanComponent(PROCEDURE 8).ReservePlanningComponent(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPlanComponent : 99000840;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPlanComponent : "Plng. Component-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPlanComponent(PROCEDURE 8).ReserveProdOrderComp(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPlanComponent : 99000838;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPlanComponent : "Prod. Order Comp.-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPlanComponent(PROCEDURE 8).AsmLineReserve(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPlanComponent : 926;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPlanComponent : "Assembly Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcReservedQty(PROCEDURE 20).OppositeReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcReservedQty : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcReservedQty : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPurchaseLine(PROCEDURE 3).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPurchaseLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPurchaseLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPurchaseLine(PROCEDURE 3).ReservePurchLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPurchaseLine : 99000834;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPurchaseLine : "Purch. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromProdOrderLine(PROCEDURE 4).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromProdOrderLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromProdOrderLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromProdOrderLine(PROCEDURE 4).ReserveProdOrderLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromProdOrderLine : 99000837;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromProdOrderLine : "Prod. Order Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromAsmLine(PROCEDURE 12).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromAsmLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromAsmLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromAsmLine(PROCEDURE 12).AsmLineReserve(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromAsmLine : 926;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromAsmLine : "Assembly Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromAsmHeader(PROCEDURE 13).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromAsmHeader : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromAsmHeader : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromAsmHeader(PROCEDURE 13).AsmHeaderReserve(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromAsmHeader : 925;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromAsmHeader : "Assembly Header-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromRequisitionLine(PROCEDURE 5).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromRequisitionLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromRequisitionLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromRequisitionLine(PROCEDURE 5).ReserveReqLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromRequisitionLine : 99000833;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromRequisitionLine : "Req. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromOutboundTransfPlan(PROCEDURE 16).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromOutboundTransfPlan : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromOutboundTransfPlan : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromOutboundTransfPlan(PROCEDURE 16).ReserveReqLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromOutboundTransfPlan : 99000833;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromOutboundTransfPlan : "Req. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromOutboundTransfer(PROCEDURE 14).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromOutboundTransfer : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromOutboundTransfer : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromOutboundTransfer(PROCEDURE 14).DummyTempTrackingEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromOutboundTransfer : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromOutboundTransfer : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromOutboundTransfer(PROCEDURE 14).CrntInvProfile(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromOutboundTransfer : 99000853;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromOutboundTransfer : "Inventory Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromOutboundTransfer(PROCEDURE 14).ReserveTransLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromOutboundTransfer : 99000836;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromOutboundTransfer : "Transfer Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromInboundTransfer(PROCEDURE 15).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromInboundTransfer : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromInboundTransfer : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromInboundTransfer(PROCEDURE 15).DummyTempTrackingEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromInboundTransfer : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromInboundTransfer : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromInboundTransfer(PROCEDURE 15).CrntInvProfile(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromInboundTransfer : 99000853;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromInboundTransfer : "Inventory Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromInboundTransfer(PROCEDURE 15).ReserveTransLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromInboundTransfer : 99000836;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromInboundTransfer : "Transfer Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromServLine(PROCEDURE 17).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromServLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromServLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromServLine(PROCEDURE 17).ServLineReserve(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromServLine : 99000842;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromServLine : "Service Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromJobPlanningLine(PROCEDURE 11).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromJobPlanningLine : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromJobPlanningLine : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromJobPlanningLine(PROCEDURE 11).JobPlanningLineReserve(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromJobPlanningLine : 1032;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromJobPlanningLine : "Job Planning Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferBindings(PROCEDURE 10).OppositeReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferBindings : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferBindings : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferToTrackingEntry(PROCEDURE 9).ReqLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferToTrackingEntry : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferToTrackingEntry : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ActiveInWarehouse(PROCEDURE 23).WhseValidateSourceLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ActiveInWarehouse : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ActiveInWarehouse : "Whse. Validate Source Line";
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


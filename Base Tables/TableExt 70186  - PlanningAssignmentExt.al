tableextension 70186 PlanningAssignmentExt extends "Planning Assignment"
{
    // version NAVW19.00.00.48992

    fields
    {

        //Unsupported feature: Change TableRelation on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: CodeModification on ""Action Msg. Response Planning"(Field 13).OnValidate". Please convert manually.

        //trigger  Response Planning"(Field 13)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Action Msg. Response Planning" THEN
          Inactive := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Action Msg. Response Planning" then
          Inactive := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Net Change Planning"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Net Change Planning" THEN
          Inactive := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Net Change Planning" then
          Inactive := false;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code"(Key)". Please convert manually.

        key(Key1; "Item No.", "Variant Code", "Location Code")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OldBom(PROCEDURE 2).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OldBom : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OldBom : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OldBom(PROCEDURE 2).ProductionBOMHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OldBom : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OldBom : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OldBom(PROCEDURE 2).ProductionBOMVersion(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OldBom : 99000779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OldBom : "Production BOM Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OldBom(PROCEDURE 2).ProductionBOMLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OldBom : 99000772;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OldBom : "Production BOM Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NewBOM(PROCEDURE 7).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NewBOM : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NewBOM : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssignPlannedOrders(PROCEDURE 4).ProdOrderLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssignPlannedOrders : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssignPlannedOrders : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssignPlannedOrders(PROCEDURE 4).ReqLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssignPlannedOrders : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssignPlannedOrders : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ChkAssignOne(PROCEDURE 1).Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ChkAssignOne : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ChkAssignOne : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ChkAssignOne(PROCEDURE 1).SKU(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ChkAssignOne : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ChkAssignOne : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKUexists(PROCEDURE 10).SKU(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKUexists : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKUexists : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ManufacturingSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ManufacturingSetup : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ManufacturingSetup : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtSetup : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtSetup : "Inventory Setup";
    //Variable type has not been exported.
}


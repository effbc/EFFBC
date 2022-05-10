tableextension 70173 ItemUnitofMeasureExt extends "Item Unit of Measure"
{
    // version NAVW19.00.00.48992

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 2)". Please convert manually.


        //Unsupported feature: CodeModification on ""Qty. per Unit of Measure"(Field 3).OnValidate". Please convert manually.

        //trigger  per Unit of Measure"(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. per Unit of Measure" <= 0 THEN
          FIELDERROR("Qty. per Unit of Measure",Text000);
        IF xRec."Qty. per Unit of Measure" <> "Qty. per Unit of Measure" THEN
          CheckNoEntriesWithUoM;
        Item.GET("Item No.");
        IF Item."Base Unit of Measure" = Code THEN
          TESTFIELD("Qty. per Unit of Measure",1);
        CalcWeight;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        if "Qty. per Unit of Measure" <= 0 then
          FieldError("Qty. per Unit of Measure",Text000);
        if xRec."Qty. per Unit of Measure" <> "Qty. per Unit of Measure" then
          CheckNoEntriesWithUoM;
        Item.Get("Item No.");
        if Item."Base Unit of Measure" = Code then
          TestField("Qty. per Unit of Measure",1);
        CalcWeight;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Qty. per Unit of Measure"(Key)". Please convert manually.

        key(Key1; "Item No.", "Code")
        {
        }
        key(Key2; "Item No.", "Qty. per Unit of Measure")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "TestNoOpenEntriesExist(PROCEDURE 1).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoOpenEntriesExist : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoOpenEntriesExist : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNoOpenEntriesExist(PROCEDURE 1).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoOpenEntriesExist : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoOpenEntriesExist : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNoWhseAdjmtEntriesExist(PROCEDURE 7).WhseEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoWhseAdjmtEntriesExist : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoWhseAdjmtEntriesExist : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNoWhseAdjmtEntriesExist(PROCEDURE 7).Location(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoWhseAdjmtEntriesExist : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoWhseAdjmtEntriesExist : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNoWhseAdjmtEntriesExist(PROCEDURE 7).Bin(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoWhseAdjmtEntriesExist : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoWhseAdjmtEntriesExist : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoEntriesWithUoM(PROCEDURE 3).WarehouseEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoEntriesWithUoM : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoEntriesWithUoM : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoOutstandingQtyPurchLine(PROCEDURE 9).PurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoOutstandingQtyPurchLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoOutstandingQtyPurchLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoOutstandingQtySalesLine(PROCEDURE 10).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoOutstandingQtySalesLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoOutstandingQtySalesLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoOutstandingQtyTransferLine(PROCEDURE 11).TransferLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoOutstandingQtyTransferLine : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoOutstandingQtyTransferLine : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoRemQtyProdOrderLine(PROCEDURE 12).ProdOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoRemQtyProdOrderLine : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoRemQtyProdOrderLine : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoRemQtyProdOrderComponent(PROCEDURE 13).ProdOrderComponent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoRemQtyProdOrderComponent : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoRemQtyProdOrderComponent : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoOutstandingQtyServiceLine(PROCEDURE 14).ServiceLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoOutstandingQtyServiceLine : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoOutstandingQtyServiceLine : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoRemQtyAssemblyHeader(PROCEDURE 6).AssemblyHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoRemQtyAssemblyHeader : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoRemQtyAssemblyHeader : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckNoRemQtyAssemblyLine(PROCEDURE 4).AssemblyLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckNoRemQtyAssemblyLine : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckNoRemQtyAssemblyLine : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.
}


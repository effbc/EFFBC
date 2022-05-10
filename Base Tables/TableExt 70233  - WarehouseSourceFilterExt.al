tableextension 70233 WarehouseSourceFilterExt extends "Warehouse Source Filter"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Item No. Filter"(Field 3)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Item No. Filter"(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code Filter"(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Variant Code Filter"(Field 4)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Variant Code Filter"(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Unit of Measure Filter"(Field 5)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Unit of Measure Filter"(Field 5)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to Customer No. Filter"(Field 6)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sell-to Customer No. Filter"(Field 6)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Buy-from Vendor No. Filter"(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Buy-from Vendor No. Filter"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Customer No. Filter"(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Customer No. Filter"(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Shipment Method Code Filter"(Field 11)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Shipment Method Code Filter"(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Shipping Agent Code Filter"(Field 12)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Shipping Agent Code Filter"(Field 12)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Shipping Agent Service Filter"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Shipping Agent Service Filter"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""In-Transit Code Filter"(Field 18)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""In-Transit Code Filter"(Field 18)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""In-Transit Code Filter"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-from Code Filter"(Field 19)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-from Code Filter"(Field 19)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-from Code Filter"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-to Code Filter"(Field 20)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-to Code Filter"(Field 20)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-to Code Filter"(Field 20)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Orders"(Field 101)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Orders"(Field 101)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Return Orders"(Field 102)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Return Orders"(Field 102)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Orders"(Field 103)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Orders"(Field 103)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Return Orders"(Field 104)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Return Orders"(Field 104)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inbound Transfers"(Field 105)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Transfers"(Field 105)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Outbound Transfers"(Field 106)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Transfers"(Field 106)". Please convert manually.


        //Unsupported feature: Change InitValue on "Partial(Field 108)". Please convert manually.


        //Unsupported feature: Change InitValue on "Complete(Field 109)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Service Orders"(Field 110)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 100).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Inbound THEN BEGIN
          "Sales Orders" := FALSE;
          "Purchase Return Orders" := FALSE;
          "Outbound Transfers" := FALSE;
          "Service Orders" := FALSE;
        END ELSE BEGIN
          "Purchase Orders" := FALSE;
          "Sales Return Orders" := FALSE;
          "Inbound Transfers" := FALSE;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Inbound then begin
          "Sales Orders" := false;
          "Purchase Return Orders" := false;
          "Outbound Transfers" := false;
          "Service Orders" := false;
        end else begin
          "Purchase Orders" := false;
          "Sales Return Orders" := false;
          "Inbound Transfers" := false;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Orders"(Field 101).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Outbound THEN
          CheckOutboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Outbound then
          CheckOutboundSourceDocumentChosen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Return Orders"(Field 102).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Inbound THEN
          CheckInboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Inbound then
          CheckInboundSourceDocumentChosen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Orders"(Field 103).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Inbound THEN
          CheckInboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Inbound then
          CheckInboundSourceDocumentChosen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Return Orders"(Field 104).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Outbound THEN
          CheckOutboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Outbound then
          CheckOutboundSourceDocumentChosen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Inbound Transfers"(Field 105).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Inbound THEN
          CheckInboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Inbound then
          CheckInboundSourceDocumentChosen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Outbound Transfers"(Field 106).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Outbound THEN
          CheckOutboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Outbound then
          CheckOutboundSourceDocumentChosen;
        */
        //end;


        //Unsupported feature: CodeModification on "Partial(Field 108).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT Partial AND NOT Complete THEN
          ERROR(Text000,FIELDCAPTION("Shipping Advice Filter"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not Partial and not Complete then
          Error(Text000,FieldCaption("Shipping Advice Filter"));
        */
        //end;


        //Unsupported feature: CodeModification on "Complete(Field 109).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT Partial AND NOT Complete THEN
          ERROR(Text000,FIELDCAPTION("Shipping Advice Filter"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not Partial and not Complete then
          Error(Text000,FieldCaption("Shipping Advice Filter"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Orders"(Field 110).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Outbound THEN
          CheckOutboundSourceDocumentChosen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Outbound then
          CheckOutboundSourceDocumentChosen;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: PropertyChange on ""Type,Code"(Key)". Please convert manually.

    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).WhseRequest(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).SalesLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).PurchLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).TransLine(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).SalesHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).PurchHeader(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).ServiceHeader(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Service Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetFilters(PROCEDURE 1).ServiceLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetFilters : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetFilters : "Service Line";
    //Variable type has not been exported.
}


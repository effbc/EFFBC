tableextension 70065 PostedAssemblyLineExt extends "Posted Assembly Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Resource Usage Type"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount"(Field 67)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 80)". Please convert manually.


        //Unsupported feature: CodeModification on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No.,Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No."(Key)". Please convert manually.

        key(Key1; "Document No.", "Line No.")
        {
        }
        key(Key2; "Order No.", "Order Line No.")
        {
        }
        key(Key3; Type, "No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    AssemblyCommentLine.SETRANGE("Document Type",AssemblyCommentLine."Document Type"::"Posted Assembly");
    AssemblyCommentLine.SETRANGE("Document No.","Document No.");
    AssemblyCommentLine.SETRANGE("Document Line No.","Line No.");
    IF NOT AssemblyCommentLine.ISEMPTY THEN
      AssemblyCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    AssemblyCommentLine.SetRange("Document Type",AssemblyCommentLine."Document Type"::"Posted Assembly");
    AssemblyCommentLine.SetRange("Document No.","Document No.");
    AssemblyCommentLine.SetRange("Document Line No.","Line No.");
    if not AssemblyCommentLine.IsEmpty then
      AssemblyCommentLine.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.AssemblyCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AssemblyCommentLine : 906;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AssemblyCommentLine : "Assembly Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 30).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 1).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowShortcutDimCode(PROCEDURE 27).DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowShortcutDimCode : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowShortcutDimCode : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAssemblyLinesForDocument(PROCEDURE 2).ValueEntry(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAssemblyLinesForDocument : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAssemblyLinesForDocument : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAssemblyLinesForDocument(PROCEDURE 2).ItemLedgerEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAssemblyLinesForDocument : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAssemblyLinesForDocument : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAssemblyLinesForDocument(PROCEDURE 2).PostedAsmHeader(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAssemblyLinesForDocument : 910;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAssemblyLinesForDocument : "Posted Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAssemblyLinesForDocument(PROCEDURE 2).PostedAsmLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAssemblyLinesForDocument : 911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAssemblyLinesForDocument : "Posted Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAssemblyLinesForDocument(PROCEDURE 2).SalesShipmentLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAssemblyLinesForDocument : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAssemblyLinesForDocument : "Sales Shipment Line";
    //Variable type has not been exported.
}


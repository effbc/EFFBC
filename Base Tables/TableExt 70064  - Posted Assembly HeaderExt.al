tableextension 70064 PostedAssemblyHeaderExt extends "Posted Assembly Header"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Assemble to Order"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assemble to Order"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount"(Field 67)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 81)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 107)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 9010)". Please convert manually.

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

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Order No.")
        {
        }
        key(Key3; "Posting Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CheckIsNotAsmToOrder;

    PostedAssemblyLinesDelete.DeleteLines(Rec);

    AssemblyCommentLine.SETCURRENTKEY("Document Type","Document No.");
    AssemblyCommentLine.SETRANGE("Document Type",AssemblyCommentLine."Document Type"::"Posted Assembly");
    AssemblyCommentLine.SETRANGE("Document No.","No.");
    AssemblyCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    AssemblyCommentLine.SetCurrentKey("Document Type","Document No.");
    AssemblyCommentLine.SetRange("Document Type",AssemblyCommentLine."Document Type"::"Posted Assembly");
    AssemblyCommentLine.SetRange("Document No.","No.");
    AssemblyCommentLine.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 9010).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.AssemblyCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AssemblyCommentLine : 906;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AssemblyCommentLine : "Assembly Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostedAssemblyLinesDelete(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostedAssemblyLinesDelete : 902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostedAssemblyLinesDelete : "PostedAssemblyLines-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 30).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).ReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).PostedAssemblyHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 910;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Posted Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).Navigate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 3).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAsmToOrder(PROCEDURE 61).PostedATOLink(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowAsmToOrder : 914;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowAsmToOrder : "Posted Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcActualCosts(PROCEDURE 52).TempSourceInvtAdjmtEntryOrder(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcActualCosts : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcActualCosts : "Inventory Adjmt. Entry (Order)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcActualCosts(PROCEDURE 52).CalcInvtAdjmtOrder(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcActualCosts : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcActualCosts : "Calc. Inventory Adjmt. - Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalCost(PROCEDURE 25).GLSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalCost : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalCost : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalCost(PROCEDURE 25).Resource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalCost : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalCost : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcTotalCost(PROCEDURE 25).PostedAssemblyLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcTotalCost : 911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcTotalCost : "Posted Assembly Line";
    //Variable type has not been exported.
}


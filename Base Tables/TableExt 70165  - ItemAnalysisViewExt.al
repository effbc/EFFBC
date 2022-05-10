tableextension 70165 ItemAnalysisViewExt extends "Item Analysis View"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Entry No."(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Budget Entry No."(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Updated"(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Update on Posting"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Item Filter"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Item Filter"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Location Filter"(Field 10)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Location Filter"(Field 10)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Include Budgets"(Field 17)". Please convert manually.


        //Unsupported feature: CodeModification on "Blocked(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT Blocked AND "Refresh When Unblocked" THEN BEGIN
          ValidateDelete(FIELDCAPTION(Blocked));
          ItemAnalysisViewReset;
          "Refresh When Unblocked" := FALSE;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not Blocked and "Refresh When Unblocked" then begin
          ValidateDelete(FieldCaption(Blocked));
          ItemAnalysisViewReset;
          "Refresh When Unblocked" := false;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item Filter"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF ("Last Entry No." <> 0) AND (xRec."Item Filter" = '') AND ("Item Filter" <> '') THEN BEGIN
          ValidateModify(FIELDCAPTION("Item Filter"));
          Item.SETFILTER("No.","Item Filter");
          IF Item.FIND('-') THEN
            REPEAT
              Item.MARK := TRUE;
            UNTIL Item.NEXT = 0;
          Item.SETRANGE("No.");
          IF Item.FIND('-') THEN
            REPEAT
              IF NOT Item.MARK THEN BEGIN
                ItemAnalysisViewEntry.SETRANGE("Analysis Area","Analysis Area");
                ItemAnalysisViewEntry.SETRANGE("Analysis View Code",Code);
                ItemAnalysisViewEntry.SETRANGE("Item No.",Item."No.");
                ItemAnalysisViewEntry.DELETEALL;
                ItemAnalysisViewBudgetEntry.SETRANGE("Analysis Area","Analysis Area");
                ItemAnalysisViewBudgetEntry.SETRANGE("Analysis View Code",Code);
                ItemAnalysisViewBudgetEntry.SETRANGE("Item No.",Item."No.");
                ItemAnalysisViewBudgetEntry.DELETEALL;
              END;
            UNTIL Item.NEXT = 0;
        END;
        IF ("Last Entry No." <> 0) AND ("Item Filter" <> xRec."Item Filter") AND (xRec."Item Filter" <> '') THEN BEGIN
          ValidateDelete(FIELDCAPTION("Item Filter"));
          ItemAnalysisViewReset;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if ("Last Entry No." <> 0) and (xRec."Item Filter" = '') and ("Item Filter" <> '') then begin
          ValidateModify(FieldCaption("Item Filter"));
          Item.SetFilter("No.","Item Filter");
          if Item.Find('-') then
            repeat
              Item.Mark := true;
            until Item.Next = 0;
          Item.SetRange("No.");
          if Item.Find('-') then
            repeat
              if not Item.Mark then begin
                ItemAnalysisViewEntry.SetRange("Analysis Area","Analysis Area");
                ItemAnalysisViewEntry.SetRange("Analysis View Code",Code);
                ItemAnalysisViewEntry.SetRange("Item No.",Item."No.");
                ItemAnalysisViewEntry.DeleteAll;
                ItemAnalysisViewBudgetEntry.SetRange("Analysis Area","Analysis Area");
                ItemAnalysisViewBudgetEntry.SetRange("Analysis View Code",Code);
                ItemAnalysisViewBudgetEntry.SetRange("Item No.",Item."No.");
                ItemAnalysisViewBudgetEntry.DeleteAll;
              end;
            until Item.Next = 0;
        end;
        if ("Last Entry No." <> 0) and ("Item Filter" <> xRec."Item Filter") and (xRec."Item Filter" <> '') then begin
          ValidateDelete(FieldCaption("Item Filter"));
          ItemAnalysisViewReset;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Filter"(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF ("Last Entry No." <> 0) AND (xRec."Location Filter" = '') AND
           ("Location Filter" <> xRec."Location Filter")
        THEN BEGIN
          ValidateModify(FIELDCAPTION("Location Filter"));
          IF Location.FIND('-') THEN
            REPEAT
              TempLocation := Location;
              TempLocation.INSERT;
            UNTIL Location.NEXT = 0;
          TempLocation.INIT;
          TempLocation.Code := '';
          TempLocation.INSERT;
          TempLocation.SETFILTER(Code,"Location Filter");
          TempLocation.DELETEALL;
          TempLocation.SETRANGE(Code);
          IF TempLocation.FIND('-') THEN
            REPEAT
              ItemAnalysisViewEntry.SETRANGE("Analysis Area","Analysis Area");
              ItemAnalysisViewEntry.SETRANGE("Analysis View Code",Code);
              ItemAnalysisViewEntry.SETRANGE("Location Code",TempLocation.Code);
              ItemAnalysisViewEntry.DELETEALL;
              ItemAnalysisViewBudgetEntry.SETRANGE("Analysis Area","Analysis Area");
              ItemAnalysisViewBudgetEntry.SETRANGE("Analysis View Code",Code);
              ItemAnalysisViewBudgetEntry.SETRANGE("Location Code",TempLocation.Code);
              ItemAnalysisViewBudgetEntry.DELETEALL;
            UNTIL TempLocation.NEXT = 0
        END;
        IF ("Last Entry No." <> 0) AND (xRec."Location Filter" <> '') AND
           ("Location Filter" <> xRec."Location Filter")
        THEN BEGIN
          ValidateDelete(FIELDCAPTION("Location Filter"));
          ItemAnalysisViewReset;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if ("Last Entry No." <> 0) and (xRec."Location Filter" = '') and
           ("Location Filter" <> xRec."Location Filter")
        then begin
          ValidateModify(FieldCaption("Location Filter"));
          if Location.Find('-') then
            repeat
              TempLocation := Location;
              TempLocation.Insert;
            until Location.Next = 0;
          TempLocation.Init;
          TempLocation.Code := '';
          TempLocation.Insert;
          TempLocation.SetFilter(Code,"Location Filter");
          TempLocation.DeleteAll;
          TempLocation.SetRange(Code);
          if TempLocation.Find('-') then
            repeat
              ItemAnalysisViewEntry.SetRange("Analysis Area","Analysis Area");
              ItemAnalysisViewEntry.SetRange("Analysis View Code",Code);
              ItemAnalysisViewEntry.SetRange("Location Code",TempLocation.Code);
              ItemAnalysisViewEntry.DeleteAll;
              ItemAnalysisViewBudgetEntry.SetRange("Analysis Area","Analysis Area");
              ItemAnalysisViewBudgetEntry.SetRange("Analysis View Code",Code);
              ItemAnalysisViewBudgetEntry.SetRange("Location Code",TempLocation.Code);
              ItemAnalysisViewBudgetEntry.DeleteAll;
            until TempLocation.Next = 0
        end;
        if ("Last Entry No." <> 0) and (xRec."Location Filter" <> '') and
           ("Location Filter" <> xRec."Location Filter")
        then begin
          ValidateDelete(FieldCaption("Location Filter"));
          ItemAnalysisViewReset;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF ("Last Entry No." <> 0) AND ("Starting Date" <> xRec."Starting Date") THEN BEGIN
          ValidateDelete(FIELDCAPTION("Starting Date"));
          ItemAnalysisViewReset;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if ("Last Entry No." <> 0) and ("Starting Date" <> xRec."Starting Date") then begin
          ValidateDelete(FieldCaption("Starting Date"));
          ItemAnalysisViewReset;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Date Compression"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF ("Last Entry No." <> 0) AND ("Date Compression" <> xRec."Date Compression") THEN BEGIN
          ValidateDelete(FIELDCAPTION("Date Compression"));
          ItemAnalysisViewReset;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if ("Last Entry No." <> 0) and ("Date Compression" <> xRec."Date Compression") then begin
          ValidateDelete(FieldCaption("Date Compression"));
          ItemAnalysisViewReset;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension 1 Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF Dim.CheckIfDimUsed("Dimension 1 Code",20,'',Code,"Analysis Area") THEN
          ERROR(Text000,Dim.GetCheckDimErr);
        ModifyDim(FIELDCAPTION("Dimension 1 Code"),"Dimension 1 Code",xRec."Dimension 1 Code");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if Dim.CheckIfDimUsed("Dimension 1 Code",20,'',Code,"Analysis Area") then
          Error(Text000,Dim.GetCheckDimErr);
        ModifyDim(FieldCaption("Dimension 1 Code"),"Dimension 1 Code",xRec."Dimension 1 Code");
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension 2 Code"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF Dim.CheckIfDimUsed("Dimension 2 Code",21,'',Code,"Analysis Area") THEN
          ERROR(Text000,Dim.GetCheckDimErr);
        ModifyDim(FIELDCAPTION("Dimension 2 Code"),"Dimension 2 Code",xRec."Dimension 2 Code");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if Dim.CheckIfDimUsed("Dimension 2 Code",21,'',Code,"Analysis Area") then
          Error(Text000,Dim.GetCheckDimErr);
        ModifyDim(FieldCaption("Dimension 2 Code"),"Dimension 2 Code",xRec."Dimension 2 Code");
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension 3 Code"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF Dim.CheckIfDimUsed("Dimension 3 Code",22,'',Code,"Analysis Area") THEN
          ERROR(Text000,Dim.GetCheckDimErr);
        ModifyDim(FIELDCAPTION("Dimension 3 Code"),"Dimension 3 Code",xRec."Dimension 3 Code");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if Dim.CheckIfDimUsed("Dimension 3 Code",22,'',Code,"Analysis Area") then
          Error(Text000,Dim.GetCheckDimErr);
        ModifyDim(FieldCaption("Dimension 3 Code"),"Dimension 3 Code",xRec."Dimension 3 Code");
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Include Budgets"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Blocked,FALSE);
        IF ("Last Entry No." <> 0) AND xRec."Include Budgets" AND NOT "Include Budgets" THEN BEGIN
          ValidateDelete(FIELDCAPTION("Include Budgets"));
          AnalysisviewBudgetReset;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Blocked,false);
        if ("Last Entry No." <> 0) and xRec."Include Budgets" and not "Include Budgets" then begin
          ValidateDelete(FieldCaption("Include Budgets"));
          AnalysisviewBudgetReset;
        end;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Analysis Area,Code"(Key)". Please convert manually.

        key(Key1; "Analysis Area", "Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemAnalysisViewReset;
    ItemAnalysisViewFilter.SETRANGE("Analysis Area","Analysis Area");
    ItemAnalysisViewFilter.SETRANGE("Analysis View Code",Code);
    ItemAnalysisViewFilter.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ItemAnalysisViewReset;
    ItemAnalysisViewFilter.SetRange("Analysis Area","Analysis Area");
    ItemAnalysisViewFilter.SetRange("Analysis View Code",Code);
    ItemAnalysisViewFilter.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Item Filter"(Field 9).OnValidate.ItemAnalysisViewEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Item Filter" : 7154;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Item Filter" : "Item Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Item Filter"(Field 9).OnValidate.ItemAnalysisViewBudgetEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Item Filter" : 7156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Item Filter" : "Item Analysis View Budg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Item Filter"(Field 9).OnValidate.Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Item Filter" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Item Filter" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Filter"(Field 10).OnValidate.Location(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Filter" : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Filter" : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Filter"(Field 10).OnValidate.TempLocation(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Filter" : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Filter" : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemAnalysisViewFilter(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemAnalysisViewFilter : 7153;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemAnalysisViewFilter : "Item Analysis View Filter";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemAnalysisViewReset(PROCEDURE 5).ItemAnalysisViewEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemAnalysisViewReset : 7154;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemAnalysisViewReset : "Item Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDimIsRetained(PROCEDURE 8).SelectedDim(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDimIsRetained : 369;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDimIsRetained : "Selected Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckViewsAreUpdated(PROCEDURE 4).ValueEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckViewsAreUpdated : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckViewsAreUpdated : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckViewsAreUpdated(PROCEDURE 4).ItemBudgetEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckViewsAreUpdated : 7134;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckViewsAreUpdated : "Item Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckViewsAreUpdated(PROCEDURE 4).UpdateItemAnalysisView(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckViewsAreUpdated : 7150;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckViewsAreUpdated : "Update Item Analysis View";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AnalysisviewBudgetReset(PROCEDURE 9).ItemAnalysisViewBudgetEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AnalysisviewBudgetReset : 7156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnalysisviewBudgetReset : "Item Analysis View Budg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyAnalysisViewFilters(PROCEDURE 12).AnalysisSelectedDim(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyAnalysisViewFilters : 7159;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyAnalysisViewFilters : "Analysis Selected Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyAnalysisViewFilters(PROCEDURE 12).Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyAnalysisViewFilters : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyAnalysisViewFilters : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyAnalysisViewFilters(PROCEDURE 12).Location(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyAnalysisViewFilters : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyAnalysisViewFilters : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemAnalysisViewEntry(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemAnalysisViewEntry : 7154;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemAnalysisViewEntry : "Item Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NewItemAnalysisViewEntry(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NewItemAnalysisViewEntry : 7154;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NewItemAnalysisViewEntry : "Item Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemAnalysisViewBudgetEntry(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemAnalysisViewBudgetEntry : 7156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemAnalysisViewBudgetEntry : "Item Analysis View Budg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NewItemAnalysisViewBudgetEntry(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NewItemAnalysisViewBudgetEntry : 7156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NewItemAnalysisViewBudgetEntry : "Item Analysis View Budg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Dim(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Dim : 348;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Dim : Dimension;
    //Variable type has not been exported.
}


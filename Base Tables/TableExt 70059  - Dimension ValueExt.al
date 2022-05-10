tableextension 70059 DimensionValueExt extends "Dimension Value"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on ""Dimension Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Dimension Value Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on "Totaling(Field 5)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "Totaling(Field 5)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "Totaling(Field 5)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Consolidation Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Map-to IC Dimension Value Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change AutoIncrement on ""Dimension Value ID"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Value ID"(Field 12)". Please convert manually.


        //Unsupported feature: CodeModification on "Code(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF UPPERCASE(Code) = Text002 THEN
          ERROR(Text003,
            FIELDCAPTION(Code));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if UpperCase(Code) = Text002 then
          Error(Text003,
            FieldCaption(Code));
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension Value Type"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Dimension Value Type" <> "Dimension Value Type"::Standard) AND
           (xRec."Dimension Value Type" = xRec."Dimension Value Type"::Standard)
        THEN
          IF CheckIfDimValueUsed THEN
            ERROR(Text004,GetCheckDimErr);
        Totaling := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Dimension Value Type" <> "Dimension Value Type"::Standard) and
           (xRec."Dimension Value Type" = xRec."Dimension Value Type"::Standard)
        then
          if CheckIfDimValueUsed then
            Error(Text004,GetCheckDimErr);
        Totaling := '';
        */
        //end;


        //Unsupported feature: CodeModification on "Totaling(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT ("Dimension Value Type" IN
                ["Dimension Value Type"::Total,"Dimension Value Type"::"End-Total"]) AND (Totaling <> '')
        THEN
          FIELDERROR("Dimension Value Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not ("Dimension Value Type" in
                ["Dimension Value Type"::Total,"Dimension Value Type"::"End-Total"]) and (Totaling <> '')
        then
          FieldError("Dimension Value Type");
        */
        //end;


        //Unsupported feature: CodeModification on ""Map-to IC Dimension Code"(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Map-to IC Dimension Code" <> xRec."Map-to IC Dimension Code" THEN
          VALIDATE("Map-to IC Dimension Value Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Map-to IC Dimension Code" <> xRec."Map-to IC Dimension Code" then
          Validate("Map-to IC Dimension Value Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension Value ID"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ERROR(Text006,FIELDCAPTION("Dimension Value ID"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Error(Text006,FieldCaption("Dimension Value ID"));
        */
        //end;
        field(60010; "Division code"; Code[10])
        {
        }
        field(60011; Address1; Text[200])
        {
        }
        field(60012; Address2; Text[200])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Dimension Code,Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Code,Global Dimension No."(Key)". Please convert manually.

        key(Key1; "Dimension Code", "Code")
        {
        }
        key(Key2; "Code", "Global Dimension No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF CheckIfDimValueUsed THEN
      ERROR(Text000,GetCheckDimErr);

    DimValueComb.SETRANGE("Dimension 1 Code","Dimension Code");
    DimValueComb.SETRANGE("Dimension 1 Value Code",Code);
    DimValueComb.DELETEALL(TRUE);

    DimValueComb.RESET;
    DimValueComb.SETRANGE("Dimension 2 Code","Dimension Code");
    DimValueComb.SETRANGE("Dimension 2 Value Code",Code);
    DimValueComb.DELETEALL(TRUE);

    DefaultDim.SETRANGE("Dimension Code","Dimension Code");
    DefaultDim.SETRANGE("Dimension Value Code",Code);
    DefaultDim.DELETEALL(TRUE);

    SelectedDim.SETRANGE("Dimension Code","Dimension Code");
    SelectedDim.SETRANGE("New Dimension Value Code",Code);
    SelectedDim.DELETEALL(TRUE);

    AnalysisSelectedDim.SETRANGE("Dimension Code","Dimension Code");
    AnalysisSelectedDim.SETRANGE("New Dimension Value Code",Code);
    AnalysisSelectedDim.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if CheckIfDimValueUsed then
      Error(Text000,GetCheckDimErr); //commented for 17CA074 id issue related

    DimValueComb.SetRange("Dimension 1 Code","Dimension Code");
    DimValueComb.SetRange("Dimension 1 Value Code",Code);
    DimValueComb.DeleteAll(true);

    DimValueComb.Reset;
    DimValueComb.SetRange("Dimension 2 Code","Dimension Code");
    DimValueComb.SetRange("Dimension 2 Value Code",Code);
    DimValueComb.DeleteAll(true);

    DefaultDim.SetRange("Dimension Code","Dimension Code");
    DefaultDim.SetRange("Dimension Value Code",Code);
    DefaultDim.DeleteAll(true);

    SelectedDim.SetRange("Dimension Code","Dimension Code");
    SelectedDim.SetRange("New Dimension Value Code",Code);
    SelectedDim.DeleteAll(true);

    AnalysisSelectedDim.SetRange("Dimension Code","Dimension Code");
    AnalysisSelectedDim.SetRange("New Dimension Value Code",Code);
    AnalysisSelectedDim.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Dimension Code");
    TESTFIELD(Code);
    "Global Dimension No." := GetGlobalDimensionNo;

    IF CostAccSetup.GET THEN BEGIN
      CostAccMgt.UpdateCostCenterFromDim(Rec,Rec,0);
      CostAccMgt.UpdateCostObjectFromDim(Rec,Rec,0);
    END;

    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if not (UpperCase(UserId) in ['EFFTRONICS\SITARAJYAM','EFFTRONICS\DURGARAOV','EFFTRONICS\RAMKUMARL','EFFTRONICS\GRAVI',
                             'EFFTRONICS\RAJANI','EFFTRONICS\PURNACHAND','EFFTRONICS\ASWINI','EFFTRONICS\SUSMITHAL','EFFTRONICS\TPRIYANKA','EFFTRONICS\ANILKUMAR','EFFTRONICS\DURGAMAHESWARI'])   then
    Error('CONTACT ERP TEAM');

    TestField("Dimension Code");
    TestField(Code);
    "Global Dimension No." := GetGlobalDimensionNo;

    if CostAccSetup.Get then begin
      CostAccMgt.UpdateCostCenterFromDim(Rec,Rec,0);
      CostAccMgt.UpdateCostObjectFromDim(Rec,Rec,0);
    end;

    SetLastModifiedDateTime;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Dimension Code" <> xRec."Dimension Code" THEN
      "Global Dimension No." := GetGlobalDimensionNo;
    IF CostAccSetup.GET THEN BEGIN
      CostAccMgt.UpdateCostCenterFromDim(Rec,xRec,1);
      CostAccMgt.UpdateCostObjectFromDim(Rec,xRec,1);
    END;

    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Dimension Code" <> xRec."Dimension Code" then
      "Global Dimension No." := GetGlobalDimensionNo;
    if CostAccSetup.Get then begin
      CostAccMgt.UpdateCostCenterFromDim(Rec,xRec,1);
      CostAccMgt.UpdateCostObjectFromDim(Rec,xRec,1);
    end;

    SetLastModifiedDateTime;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    RenameBudgEntryDim;
    RenameAnalysisViewEntryDim;
    RenameItemBudgEntryDim;
    RenameItemAnalysisViewEntryDim;

    IF CostAccSetup.GET THEN BEGIN
      CostAccMgt.UpdateCostCenterFromDim(Rec,xRec,3);
      CostAccMgt.UpdateCostObjectFromDim(Rec,xRec,3);
    END;

    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if CostAccSetup.Get then begin
      CostAccMgt.UpdateCostCenterFromDim(Rec,xRec,3);
      CostAccMgt.UpdateCostObjectFromDim(Rec,xRec,3);
    end;

    SetLastModifiedDateTime;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "RenameBudgEntryDim(PROCEDURE 3).GLBudget(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameBudgEntryDim : 95;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameBudgEntryDim : "G/L Budget Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameBudgEntryDim(PROCEDURE 3).GLBudgetEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameBudgEntryDim : 96;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameBudgEntryDim : "G/L Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameBudgEntryDim(PROCEDURE 3).GLBudgetEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameBudgEntryDim : 96;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameBudgEntryDim : "G/L Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameAnalysisViewEntryDim(PROCEDURE 5).AnalysisView(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameAnalysisViewEntryDim : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameAnalysisViewEntryDim : "Analysis View";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameAnalysisViewEntryDim(PROCEDURE 5).AnalysisViewEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameAnalysisViewEntryDim : 365;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameAnalysisViewEntryDim : "Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameAnalysisViewEntryDim(PROCEDURE 5).AnalysisViewEntry2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameAnalysisViewEntryDim : 365;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameAnalysisViewEntryDim : "Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameAnalysisViewEntryDim(PROCEDURE 5).AnalysisViewBudgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameAnalysisViewEntryDim : 366;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameAnalysisViewEntryDim : "Analysis View Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameAnalysisViewEntryDim(PROCEDURE 5).AnalysisViewBudgEntry2(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameAnalysisViewEntryDim : 366;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameAnalysisViewEntryDim : "Analysis View Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemBudgEntryDim(PROCEDURE 6).ItemBudget(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemBudgEntryDim : 7132;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemBudgEntryDim : "Item Budget Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemBudgEntryDim(PROCEDURE 6).ItemBudgetEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemBudgEntryDim : 7134;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemBudgEntryDim : "Item Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemBudgEntryDim(PROCEDURE 6).ItemBudgetEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemBudgEntryDim : 7134;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemBudgEntryDim : "Item Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemAnalysisViewEntryDim(PROCEDURE 7).ItemAnalysisView(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemAnalysisViewEntryDim : 7152;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemAnalysisViewEntryDim : "Item Analysis View";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemAnalysisViewEntryDim(PROCEDURE 7).ItemAnalysisViewEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemAnalysisViewEntryDim : 7154;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemAnalysisViewEntryDim : "Item Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemAnalysisViewEntryDim(PROCEDURE 7).ItemAnalysisViewEntry2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemAnalysisViewEntryDim : 7154;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemAnalysisViewEntryDim : "Item Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemAnalysisViewEntryDim(PROCEDURE 7).ItemAnalysisViewBudgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemAnalysisViewEntryDim : 7156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemAnalysisViewEntryDim : "Item Analysis View Budg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RenameItemAnalysisViewEntryDim(PROCEDURE 7).ItemAnalysisViewBudgEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RenameItemAnalysisViewEntryDim : 7156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RenameItemAnalysisViewEntryDim : "Item Analysis View Budg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpDimFilter(PROCEDURE 57).DimVal(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpDimFilter : 349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpDimFilter : "Dimension Value";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpDimFilter(PROCEDURE 57).DimValList(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpDimFilter : 560;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpDimFilter : "Dimension Value List";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupDimValue(PROCEDURE 24).DimValue(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupDimValue : 349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupDimValue : "Dimension Value";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupDimValue(PROCEDURE 24).DimValuesList(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupDimValue : 537;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupDimValue : "Dimension Values";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetGlobalDimensionNo(PROCEDURE 8).GeneralLedgerSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetGlobalDimensionNo : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetGlobalDimensionNo : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateMapToICDimensionCode(PROCEDURE 4).Dimension(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateMapToICDimensionCode : 348;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateMapToICDimensionCode : Dimension;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimSetEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimSetEntry : 480;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimSetEntry : "Dimension Set Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimValueComb(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimValueComb : 351;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimValueComb : "Dimension Value Combination";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DefaultDim(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DefaultDim : 352;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DefaultDim : "Default Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectedDim(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectedDim : 369;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectedDim : "Selected Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AnalysisSelectedDim(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AnalysisSelectedDim : 7159;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnalysisSelectedDim : "Analysis Selected Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CostAccSetup(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CostAccSetup : 1108;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CostAccSetup : "Cost Accounting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CostAccMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CostAccMgt : 1100;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CostAccMgt : "Cost Account Mgt";
    //Variable type has not been exported.
}


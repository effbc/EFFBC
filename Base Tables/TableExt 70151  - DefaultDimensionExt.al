tableextension 70151 DefaultDimensionExt extends "Default Dimension"
{
    // version NAVW19.00.00.50785

    fields
    {

        //Unsupported feature: Change TableRelation on ""Table ID"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Table ID"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Dimension Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Dimension Value Code"(Field 4)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Value Posting"(Field 5)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Table Caption"(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Table Caption"(Field 6)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Multi Selection Action"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on "ParentId(Field 8000)". Please convert manually.


        //Unsupported feature: Change TableRelation on "DimensionId(Field 8001)". Please convert manually.


        //Unsupported feature: CodeModification on ""Table ID"(Field 1).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CLEAR(TempAllObjWithCaption);
        DimMgt.DefaultDimObjectNoList(TempAllObjWithCaption);
        IF PAGE.RUNMODAL(PAGE::Objects,TempAllObjWithCaption) = ACTION::LookupOK THEN BEGIN
          "Table ID" := TempAllObjWithCaption."Object ID";
          VALIDATE("Table ID");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Clear(TempAllObjWithCaption);
        DimMgt.DefaultDimObjectNoList(TempAllObjWithCaption);
        if PAGE.RunModal(PAGE::Objects,TempAllObjWithCaption) = ACTION::LookupOK then begin
          "Table ID" := TempAllObjWithCaption."Object ID";
          Validate("Table ID");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Table ID"(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CALCFIELDS("Table Caption");
        DimMgt.DefaultDimObjectNoList(TempAllObjWithCaption);
        TempAllObjWithCaption."Object Type" := TempAllObjWithCaption."Object Type"::Table;
        TempAllObjWithCaption."Object ID" := "Table ID";
        IF NOT TempAllObjWithCaption.FIND THEN
          FIELDERROR("Table ID");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CalcFields("Table Caption");
        #2..4
        if not TempAllObjWithCaption.Find then
          FieldError("Table ID");
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." = '' THEN
          EXIT;
        RecRef.OPEN("Table ID");
        SetRangeToLastFieldInPrimaryKey(RecRef,"No.");
        IF RecRef.ISEMPTY THEN
          ERROR(NoValidateErr,"No.",RecRef.CAPTION);
        RecRef.CLOSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." = '' then
          exit;
        RecRef.Open("Table ID");
        SetRangeToLastFieldInPrimaryKey(RecRef,"No.");
        if RecRef.IsEmpty then
          Error(NoValidateErr,"No.",RecRef.Caption);
        RecRef.Close;
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension Code"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckDimension("Dimension Code");
        UpdateDimensionId;
        IF "Dimension Code" <> xRec."Dimension Code" THEN
          VALIDATE("Dimension Value Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckDimension("Dimension Code");
        UpdateDimensionId;
        if "Dimension Code" <> xRec."Dimension Code" then
          Validate("Dimension Value Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Value Posting"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Value Posting" = "Value Posting"::"No Code" THEN
          TESTFIELD("Dimension Value Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Value Posting" = "Value Posting"::"No Code" then
          TestField("Dimension Value Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on "DimensionId(Field 8001).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Dimension.SETRANGE(Id,DimensionId);
        IF NOT Dimension.FINDFIRST THEN
          ERROR(DimensionIdDoesNotMatchADimensionErr);

        CheckDimension(Dimension.Code);
        "Dimension Code" := Dimension.Code;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Dimension.SetRange(Id,DimensionId);
        if not Dimension.FindFirst then
          Error(DimensionIdDoesNotMatchADimensionErr);
        #4..6
        */
        //end;


        //Unsupported feature: CodeModification on "DimensionValueId(Field 8002).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ISNULLGUID(DimensionValueId) THEN BEGIN
          "Dimension Value Code" := '';
          EXIT;
        END;

        DimensionValue.SETRANGE(Id,DimensionValueId);
        IF NOT DimensionValue.FINDFIRST THEN
          ERROR(DimensionValueIdDoesNotMatchADimensionValueErr);

        IF "Dimension Code" = '' THEN
          "Dimension Code" := DimensionValue."Dimension Code"
        ELSE
          IF "Dimension Code" <> DimensionValue."Dimension Code" THEN
            ERROR(DimensionIdMismatchErr);
        CheckDimensionValue("Dimension Code",DimensionValue.Code);
        "Dimension Value Code" := DimensionValue.Code;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if IsNullGuid(DimensionValueId) then begin
          "Dimension Value Code" := '';
          exit;
        end;

        DimensionValue.SetRange(Id,DimensionValueId);
        if not DimensionValue.FindFirst then
          Error(DimensionValueIdDoesNotMatchADimensionValueErr);

        if "Dimension Code" = '' then
          "Dimension Code" := DimensionValue."Dimension Code"
        else
          if "Dimension Code" <> DimensionValue."Dimension Code" then
            Error(DimensionIdMismatchErr);
        CheckDimensionValue("Dimension Code",DimensionValue.Code);
        "Dimension Value Code" := DimensionValue.Code;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Table ID,No.,Dimension Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Dimension Code"(Key)". Please convert manually.

        key(Key1; "Table ID", "No.", "Dimension Code")
        {
        }
        key(Key2; "Dimension Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GLSetup.GET;
    IF "Dimension Code" = GLSetup."Global Dimension 1 Code" THEN
      UpdateGlobalDimCode(1,"Table ID","No.",'');
    IF "Dimension Code" = GLSetup."Global Dimension 2 Code" THEN
      UpdateGlobalDimCode(2,"Table ID","No.",'');
    DimMgt.DefaultDimOnDelete(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GLSetup.Get;
    if "Dimension Code" = GLSetup."Global Dimension 1 Code" then
      UpdateGlobalDimCode(1,"Table ID","No.",'');
    if "Dimension Code" = GLSetup."Global Dimension 2 Code" then
      UpdateGlobalDimCode(2,"Table ID","No.",'');
    DimMgt.DefaultDimOnDelete(Rec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GLSetup.GET;
    IF "Dimension Code" = GLSetup."Global Dimension 1 Code" THEN
      UpdateGlobalDimCode(1,"Table ID","No.","Dimension Value Code");
    IF "Dimension Code" = GLSetup."Global Dimension 2 Code" THEN
      UpdateGlobalDimCode(2,"Table ID","No.","Dimension Value Code");
    DimMgt.DefaultDimOnInsert(Rec);
    UpdateParentId;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GLSetup.Get;
    if "Dimension Code" = GLSetup."Global Dimension 1 Code" then
      UpdateGlobalDimCode(1,"Table ID","No.","Dimension Value Code");
    if "Dimension Code" = GLSetup."Global Dimension 2 Code" then
    #5..7
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GLSetup.GET;
    IF "Dimension Code" = GLSetup."Global Dimension 1 Code" THEN
      UpdateGlobalDimCode(1,"Table ID","No.","Dimension Value Code");
    IF "Dimension Code" = GLSetup."Global Dimension 2 Code" THEN
      UpdateGlobalDimCode(2,"Table ID","No.","Dimension Value Code");
    DimMgt.DefaultDimOnModify(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GLSetup.Get;
    if "Dimension Code" = GLSetup."Global Dimension 1 Code" then
      UpdateGlobalDimCode(1,"Table ID","No.","Dimension Value Code");
    if "Dimension Code" = GLSetup."Global Dimension 2 Code" then
      UpdateGlobalDimCode(2,"Table ID","No.","Dimension Value Code");
    DimMgt.DefaultDimOnModify(Rec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF ("Table ID" <> xRec."Table ID") OR ("Dimension Code" <> xRec."Dimension Code") THEN
      ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if ("Table ID" <> xRec."Table ID") or ("Dimension Code" <> xRec."Dimension Code") then
      Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Table ID"(Field 1).OnLookup.TempAllObjWithCaption(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Table ID" : 2000000058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Table ID" : AllObjWithCaption;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Table ID"(Field 1).OnValidate.TempAllObjWithCaption(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Table ID" : 2000000058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Table ID" : AllObjWithCaption;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimensionId(Field 8001).OnValidate.Dimension(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimensionId : 348;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimensionId : Dimension;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimensionValueId(Field 8002).OnValidate.DimensionValue(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimensionValueId : 349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimensionValueId : "Dimension Value";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 3).ObjTransl(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : "Object Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateGLAccGlobalDimCode(PROCEDURE 26).GLAcc(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateGLAccGlobalDimCode : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateGLAccGlobalDimCode : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCustGlobalDimCode(PROCEDURE 27).Cust(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCustGlobalDimCode : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCustGlobalDimCode : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVendGlobalDimCode(PROCEDURE 28).Vend(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVendGlobalDimCode : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVendGlobalDimCode : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateItemGlobalDimCode(PROCEDURE 29).Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateItemGlobalDimCode : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateItemGlobalDimCode : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateResGrGlobalDimCode(PROCEDURE 30).ResGr(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateResGrGlobalDimCode : 152;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateResGrGlobalDimCode : "Resource Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateResGlobalDimCode(PROCEDURE 31).Res(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateResGlobalDimCode : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateResGlobalDimCode : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateJobGlobalDimCode(PROCEDURE 32).Job(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateJobGlobalDimCode : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateJobGlobalDimCode : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBankGlobalDimCode(PROCEDURE 33).BankAcc(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBankGlobalDimCode : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBankGlobalDimCode : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateEmpoyeeGlobalDimCode(PROCEDURE 34).Employee(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateEmpoyeeGlobalDimCode : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateEmpoyeeGlobalDimCode : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateFAGlobalDimCode(PROCEDURE 35).FA(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateFAGlobalDimCode : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateFAGlobalDimCode : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateInsuranceGlobalDimCode(PROCEDURE 36).Insurance(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateInsuranceGlobalDimCode : 5628;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateInsuranceGlobalDimCode : Insurance;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateRespCenterGlobalDimCode(PROCEDURE 37).RespCenter(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateRespCenterGlobalDimCode : 5714;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateRespCenterGlobalDimCode : "Responsibility Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateWorkCenterGlobalDimCode(PROCEDURE 38).WorkCenter(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateWorkCenterGlobalDimCode : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateWorkCenterGlobalDimCode : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesPurchGlobalDimCode(PROCEDURE 39).SalespersonPurchaser(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesPurchGlobalDimCode : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesPurchGlobalDimCode : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCampaignGlobalDimCode(PROCEDURE 40).Campaign(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCampaignGlobalDimCode : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCampaignGlobalDimCode : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCustTempGlobalDimCode(PROCEDURE 41).CustTemplate(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCustTempGlobalDimCode : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCustTempGlobalDimCode : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateNeutrPayGlobalDimCode(PROCEDURE 42).CFManualExpense(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateNeutrPayGlobalDimCode : 850;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateNeutrPayGlobalDimCode : "Cash Flow Manual Expense";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateNeutrRevGlobalDimCode(PROCEDURE 43).CFManualRevenue(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateNeutrRevGlobalDimCode : 849;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateNeutrRevGlobalDimCode : "Cash Flow Manual Revenue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateTableIdAndNo(PROCEDURE 11).IntegrationRecord(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateTableIdAndNo : 5151;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateTableIdAndNo : "Integration Record";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateTableIdAndNo(PROCEDURE 11).Customer(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateTableIdAndNo : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateTableIdAndNo : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateTableIdAndNo(PROCEDURE 11).Item(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateTableIdAndNo : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateTableIdAndNo : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateTableIdAndNo(PROCEDURE 11).Vendor(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateTableIdAndNo : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateTableIdAndNo : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateTableIdAndNo(PROCEDURE 11).Employee(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateTableIdAndNo : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateTableIdAndNo : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateParentId(PROCEDURE 4).Customer(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateParentId : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateParentId : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateParentId(PROCEDURE 4).Item(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateParentId : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateParentId : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateParentId(PROCEDURE 4).Vendor(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateParentId : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateParentId : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateParentId(PROCEDURE 4).Employee(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateParentId : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateParentId : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDimensionId(PROCEDURE 5).Dimension(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDimensionId : 348;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDimensionId : Dimension;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDimensionValueId(PROCEDURE 9).DimensionValue(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDimensionValueId : 349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDimensionValueId : "Dimension Value";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ThrowEntityNotSupportedError(PROCEDURE 2).AllObjWithCaption(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ThrowEntityNotSupportedError : 2000000058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ThrowEntityNotSupportedError : AllObjWithCaption;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}


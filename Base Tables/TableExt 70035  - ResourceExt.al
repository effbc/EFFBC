tableextension 70035 ResourceExt extends Resource
{
    // version NAVW19.00.00.50221,NAVIN9.00.00.50221

    fields
    {

        //Unsupported feature: Change TableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Price/Profit Calculation"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 27)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Capacity(Field 41)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. on Order (Job)"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. on Order (Job)"(Field 42)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. Quoted (Job)"(Field 43)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Quoted (Job)"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Usage (Qty.)"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Usage (Qty.)"(Field 44)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Usage (Cost)"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Usage (Cost)"(Field 45)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Usage (Price)"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Usage (Price)"(Field 46)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Sales (Qty.)"(Field 47)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales (Qty.)"(Field 47)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Sales (Cost)"(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales (Cost)"(Field 48)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Sales (Price)"(Field 49)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales (Price)"(Field 49)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 53)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 53)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 56)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 59)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. on Assembly Order"(Field 900)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. on Assembly Order"(Field 900)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. on Service Order"(Field 5900)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. on Service Order"(Field 5900)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""In Customer Zone"(Field 5902)". Please convert manually.


        //Unsupported feature: Change Editable on ""In Customer Zone"(Field 5902)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          ResSetup.GET;
          NoSeriesMgt.TestManual(ResSetup."Resource Nos.");
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          ResSetup.Get;
          NoSeriesMgt.TestManual(ResSetup."Resource Nos.");
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Name(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Search Name" = UPPERCASE(xRec.Name)) OR ("Search Name" = '') THEN
          "Search Name" := Name;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Search Name" = UpperCase(xRec.Name)) or ("Search Name" = '') then
          "Search Name" := Name;
        */
        //end;


        //Unsupported feature: CodeModification on "City(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Resource Group No."(Field 14).OnValidate". Please convert manually.

        //trigger "(Field 14)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Resource Group No." = xRec."Resource Group No." THEN
          EXIT;

        IF xRec."Resource Group No." <> '' THEN
          IF NOT
             CONFIRM(
               Text001,FALSE,
               FIELDCAPTION("Resource Group No."))
          THEN BEGIN
            "Resource Group No." := xRec."Resource Group No.";
            EXIT;
          END;

        IF xRec.GETFILTER("Resource Group No.") <> '' THEN
          SETFILTER("Resource Group No.","Resource Group No.");

        // Resource Capacity Entries
        ResCapacityEntry.SETCURRENTKEY("Resource No.");
        ResCapacityEntry.SETRANGE("Resource No.","No.");
        ResCapacityEntry.MODIFYALL("Resource Group No.","Resource Group No.");

        PlanningLine.SETCURRENTKEY(Type,"No.");
        PlanningLine.SETRANGE(Type,PlanningLine.Type::Resource);
        PlanningLine.SETRANGE("No.","No.");
        PlanningLine.SETRANGE("Schedule Line",TRUE);
        PlanningLine.MODIFYALL("Resource Group No.","Resource Group No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Resource Group No." = xRec."Resource Group No." then
          exit;

        if xRec."Resource Group No." <> '' then
          if not
             Confirm(
               Text001,false,
               FieldCaption("Resource Group No."))
          then begin
            "Resource Group No." := xRec."Resource Group No.";
            exit;
          end;

        if xRec.GetFilter("Resource Group No.") <> '' then
          SetFilter("Resource Group No.","Resource Group No.");

        // Resource Capacity Entries
        ResCapacityEntry.SetCurrentKey("Resource No.");
        ResCapacityEntry.SetRange("Resource No.","No.");
        ResCapacityEntry.ModifyAll("Resource Group No.","Resource Group No.");

        PlanningLine.SetCurrentKey(Type,"No.");
        PlanningLine.SetRange(Type,PlanningLine.Type::Resource);
        PlanningLine.SetRange("No.","No.");
        PlanningLine.SetRange("Schedule Line",true);
        PlanningLine.ModifyAll("Resource Group No.","Resource Group No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Base Unit of Measure"(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Base Unit of Measure" <> xRec."Base Unit of Measure" THEN BEGIN
          TestNoEntriesExist(FIELDCAPTION("Base Unit of Measure"));

          IF "Base Unit of Measure" <> '' THEN BEGIN
            UnitOfMeasure.GET("Base Unit of Measure");
            IF NOT ResUnitOfMeasure.GET("No.","Base Unit of Measure") THEN BEGIN
              ResUnitOfMeasure.INIT;
              ResUnitOfMeasure.VALIDATE("Resource No.","No.");
              ResUnitOfMeasure.VALIDATE(Code,"Base Unit of Measure");
              ResUnitOfMeasure."Qty. per Unit of Measure" := 1;
              ResUnitOfMeasure.INSERT;
            END ELSE BEGIN
              IF ResUnitOfMeasure."Qty. per Unit of Measure" <> 1 THEN
                ERROR(BaseUnitOfMeasureQtyMustBeOneErr,"Base Unit of Measure",ResUnitOfMeasure."Qty. per Unit of Measure");
              ResUnitOfMeasure.TESTFIELD("Related to Base Unit of Meas.");
            END;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Base Unit of Measure" <> xRec."Base Unit of Measure" then begin
          TestNoEntriesExist(FieldCaption("Base Unit of Measure"));

          if "Base Unit of Measure" <> '' then begin
            UnitOfMeasure.Get("Base Unit of Measure");
            if not ResUnitOfMeasure.Get("No.","Base Unit of Measure") then begin
              ResUnitOfMeasure.Init;
              ResUnitOfMeasure.Validate("Resource No.","No.");
              ResUnitOfMeasure.Validate(Code,"Base Unit of Measure");
              ResUnitOfMeasure."Qty. per Unit of Measure" := 1;
              ResUnitOfMeasure.Insert;
            end else begin
              if ResUnitOfMeasure."Qty. per Unit of Measure" <> 1 then
                Error(BaseUnitOfMeasureQtyMustBeOneErr,"Base Unit of Measure",ResUnitOfMeasure."Qty. per Unit of Measure");
              ResUnitOfMeasure.TestField("Related to Base Unit of Meas.");
            end;
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Direct Unit Cost"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Indirect Cost %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Indirect Cost %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Indirect Cost %"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Unit Cost",ROUND("Direct Unit Cost" * (1 + "Indirect Cost %" / 100)));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Unit Cost",Round("Direct Unit Cost" * (1 + "Indirect Cost %" / 100)));
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Price/Profit Calculation");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Price/Profit Calculation");
        */
        //end;


        //Unsupported feature: CodeModification on ""Profit %"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Price/Profit Calculation");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Price/Profit Calculation");
        */
        //end;


        //Unsupported feature: CodeModification on ""Price/Profit Calculation"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CASE "Price/Profit Calculation" OF
          "Price/Profit Calculation"::"Profit=Price-Cost":
            IF "Unit Price" <> 0 THEN
              "Profit %" := ROUND(100 * (1 - "Unit Cost" / "Unit Price"),0.00001)
            ELSE
              "Profit %" := 0;
          "Price/Profit Calculation"::"Price=Cost+Profit":
            IF "Profit %" < 100 THEN
              "Unit Price" := ROUND("Unit Cost" / (1 - "Profit %" / 100),0.00001);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        case "Price/Profit Calculation" of
          "Price/Profit Calculation"::"Profit=Price-Cost":
            if "Unit Price" <> 0 then
              "Profit %" := Round(100 * (1 - "Unit Cost" / "Unit Price"),0.00001)
            else
              "Profit %" := 0;
          "Price/Profit Calculation"::"Price=Cost+Profit":
            if "Profit %" < 100 then
              "Unit Price" := Round("Unit Cost" / (1 - "Profit %" / 100),0.00001);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Price"(Field 24).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Price/Profit Calculation");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Price/Profit Calculation");
        */
        //end;


        //Unsupported feature: CodeModification on "Blocked(Field 38).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT Blocked AND "Privacy Blocked" THEN
          IF GUIALLOWED THEN
            IF CONFIRM(ConfirmBlockedPrivacyBlockedQst) THEN
              "Privacy Blocked" := FALSE
            ELSE
              ERROR('')
          ELSE
            ERROR(CanNotChangeBlockedDueToPrivacyBlockedErr);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not Blocked and "Privacy Blocked" then
          if GuiAllowed then
            if Confirm(ConfirmBlockedPrivacyBlockedQst) then
              "Privacy Blocked" := false
            else
              Error('')
          else
            Error(CanNotChangeBlockedDueToPrivacyBlockedErr);
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Prod. Posting Group"(Field 51).OnValidate". Please convert manually.

        //trigger  Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 53).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Privacy Blocked"(Field 150).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Privacy Blocked" THEN
          Blocked := TRUE
        ELSE
          Blocked := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Privacy Blocked" then
          Blocked := true
        else
          Blocked := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Use Time Sheet"(Field 950).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Use Time Sheet" <> xRec."Use Time Sheet" THEN
          IF ExistUnprocessedTimeSheets THEN
            ERROR(Text005,FIELDCAPTION("Use Time Sheet"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Use Time Sheet" <> xRec."Use Time Sheet" then
          if ExistUnprocessedTimeSheets then
            Error(Text005,FieldCaption("Use Time Sheet"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Time Sheet Owner User ID"(Field 951).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Time Sheet Owner User ID" <> xRec."Time Sheet Owner User ID" THEN
          IF ExistUnprocessedTimeSheets THEN
            ERROR(Text005,FIELDCAPTION("Time Sheet Owner User ID"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Time Sheet Owner User ID" <> xRec."Time Sheet Owner User ID" then
          if ExistUnprocessedTimeSheets then
            Error(Text005,FieldCaption("Time Sheet Owner User ID"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Time Sheet Approver User ID"(Field 952).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Time Sheet Approver User ID" <> xRec."Time Sheet Approver User ID" THEN
          IF ExistUnprocessedTimeSheets THEN
            ERROR(Text005,FIELDCAPTION("Time Sheet Approver User ID"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Time Sheet Approver User ID" <> xRec."Time Sheet Approver User ID" then
          if ExistUnprocessedTimeSheets then
            Error(Text005,FieldCaption("Time Sheet Approver User ID"));
        */
        //end;
        field(16500; "Service Tax Group Code"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group Code',
                        ENN = 'Service Tax Group Code';
            DataClassification = ToBeClassified;
            // TableRelation = "Service Tax Groups".Code;
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "GST Group";

            trigger OnValidate();
            begin
                //"HSN/SAC Code" := '';
            end;
        }
        field(16604; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
        }
        field(16607; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16608; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
        }
        field(60090; "User Id"; Code[50])
        {
            Description = 'b2b';
            Editable = false;
        }
        field(60100; Department; Code[10])
        {
            Editable = true;
            TableRelation = "Work Center"."No.";
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Gen. Prod. Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Base Unit of Measure"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Resource Group No."(Key)". Please convert manually.

        key(No1; "No.")
        {
        }
        key(Search2; "Search Name")
        {
        }
        key(GenProd3; "Gen. Prod. Posting Group")
        {
        }
        key(Base4; "Base Unit of Measure")
        {
        }
        key(Resource5; "Resource Group No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CheckJobPlanningLine;

    MoveEntries.MoveResEntries(Rec);

    ResCapacityEntry.SETCURRENTKEY("Resource No.");
    ResCapacityEntry.SETRANGE("Resource No.","No.");
    ResCapacityEntry.DELETEALL;

    ResCost.SETRANGE(Type,ResCost.Type::Resource);
    ResCost.SETRANGE(Code,"No.");
    ResCost.DELETEALL;

    ResPrice.SETRANGE(Type,ResPrice.Type::Resource);
    ResPrice.SETRANGE(Code,"No.");
    ResPrice.DELETEALL;

    CommentLine.SETRANGE("Table Name",CommentLine."Table Name"::Resource);
    CommentLine.SETRANGE("No.","No.");
    CommentLine.DELETEALL;

    ExtTextHeader.SETRANGE("Table Name",ExtTextHeader."Table Name"::Resource);
    ExtTextHeader.SETRANGE("No.","No.");
    ExtTextHeader.DELETEALL(TRUE);

    ResSkill.RESET;
    ResSkill.SETRANGE(Type,ResSkill.Type::Resource);
    ResSkill.SETRANGE("No.","No.");
    ResSkill.DELETEALL;

    ResLoc.RESET;
    ResLoc.SETCURRENTKEY("Resource No.","Starting Date");
    ResLoc.SETRANGE("Resource No.","No.");
    ResLoc.DELETEALL;

    ResServZone.RESET;
    ResServZone.SETRANGE("Resource No.","No.");
    ResServZone.DELETEALL;

    ResUnitMeasure.RESET;
    ResUnitMeasure.SETRANGE("Resource No.","No.");
    ResUnitMeasure.DELETEALL;

    SalesOrderLine.SETCURRENTKEY(Type,"No.");
    SalesOrderLine.SETRANGE(Type,SalesOrderLine.Type::Resource);
    SalesOrderLine.SETRANGE("No.","No.");
    IF SalesOrderLine.FINDFIRST THEN
      ERROR(SalesDocumentExistsErr,"No.",SalesOrderLine."Document Type");

    IF ExistUnprocessedTimeSheets THEN
      ERROR(Text006,TABLECAPTION,"No.");

    DimMgt.DeleteDefaultDim(DATABASE::Resource,"No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    ResCapacityEntry.SetCurrentKey("Resource No.");
    ResCapacityEntry.SetRange("Resource No.","No.");
    ResCapacityEntry.DeleteAll;

    ResCost.SetRange(Type,ResCost.Type::Resource);
    ResCost.SetRange(Code,"No.");
    ResCost.DeleteAll;

    ResPrice.SetRange(Type,ResPrice.Type::Resource);
    ResPrice.SetRange(Code,"No.");
    ResPrice.DeleteAll;

    CommentLine.SetRange("Table Name",CommentLine."Table Name"::Resource);
    CommentLine.SetRange("No.","No.");
    CommentLine.DeleteAll;

    ExtTextHeader.SetRange("Table Name",ExtTextHeader."Table Name"::Resource);
    ExtTextHeader.SetRange("No.","No.");
    ExtTextHeader.DeleteAll(true);

    ResSkill.Reset;
    ResSkill.SetRange(Type,ResSkill.Type::Resource);
    ResSkill.SetRange("No.","No.");
    ResSkill.DeleteAll;

    ResLoc.Reset;
    ResLoc.SetCurrentKey("Resource No.","Starting Date");
    ResLoc.SetRange("Resource No.","No.");
    ResLoc.DeleteAll;

    ResServZone.Reset;
    ResServZone.SetRange("Resource No.","No.");
    ResServZone.DeleteAll;

    ResUnitMeasure.Reset;
    ResUnitMeasure.SetRange("Resource No.","No.");
    ResUnitMeasure.DeleteAll;

    SalesOrderLine.SetCurrentKey(Type,"No.");
    SalesOrderLine.SetRange(Type,SalesOrderLine.Type::Resource);
    SalesOrderLine.SetRange("No.","No.");
    if SalesOrderLine.FindFirst then
      Error(SalesDocumentExistsErr,"No.",SalesOrderLine."Document Type");

    if ExistUnprocessedTimeSheets then
      Error(Text006,TableCaption,"No.");

    DimMgt.DeleteDefaultDim(DATABASE::Resource,"No.");
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "No." = '' THEN BEGIN
      ResSetup.GET;
      ResSetup.TESTFIELD("Resource Nos.");
      NoSeriesMgt.InitSeries(ResSetup."Resource Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;

    IF GETFILTER("Resource Group No.") <> '' THEN
      IF GETRANGEMIN("Resource Group No.") = GETRANGEMAX("Resource Group No.") THEN
        VALIDATE("Resource Group No.",GETRANGEMIN("Resource Group No."));

    DimMgt.UpdateDefaultDim(
      DATABASE::Resource,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "No." = '' then begin
      ResSetup.Get;
      ResSetup.TestField("Resource Nos.");
      NoSeriesMgt.InitSeries(ResSetup."Resource Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;

    if GetFilter("Resource Group No.") <> '' then
      if GetRangeMin("Resource Group No.") = GetRangeMax("Resource Group No.") then
        Validate("Resource Group No.",GetRangeMin("Resource Group No."));
    #10..13
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesLine.RenameNo(SalesLine.Type::Resource,xRec."No.","No.");
    DimMgt.RenameDefaultDim(DATABASE::Resource,xRec."No.","No.");

    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    "Last Date Modified" := Today;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Base Unit of Measure"(Field 18).OnValidate.UnitOfMeasure(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Base Unit of Measure" : 204;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Base Unit of Measure" : "Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Base Unit of Measure"(Field 18).OnValidate.ResUnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Base Unit of Measure" : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Base Unit of Measure" : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnRename.SalesLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnRename.SalesLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUnitOfMeasureFilter(PROCEDURE 1).ResourceUnitOfMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUnitOfMeasureFilter : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUnitOfMeasureFilter : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExistUnprocessedTimeSheets(PROCEDURE 9).TimeSheetHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExistUnprocessedTimeSheets : 950;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExistUnprocessedTimeSheets : "Time Sheet Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExistUnprocessedTimeSheets(PROCEDURE 9).TimeSheetLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExistUnprocessedTimeSheets : 951;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExistUnprocessedTimeSheets : "Time Sheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTimeSheets(PROCEDURE 3).Resource(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTimeSheets : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTimeSheets : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNoEntriesExist(PROCEDURE 4).ResLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoEntriesExist : 203;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoEntriesExist : "Res. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckJobPlanningLine(PROCEDURE 34).JobPlanningLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckJobPlanningLine : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckJobPlanningLine : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResSetup : 314;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResSetup : "Resources Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Res(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Res : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Res : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResCapacityEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResCapacityEntry : 160;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResCapacityEntry : "Res. Capacity Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CommentLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CommentLine : 97;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CommentLine : "Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResCost(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResCost : 202;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResCost : "Resource Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResPrice(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResPrice : 201;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResPrice : "Resource Price";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesOrderLine(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesOrderLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesOrderLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExtTextHeader(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExtTextHeader : 279;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExtTextHeader : "Extended Text Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenProdPostingGrp(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenProdPostingGrp : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenProdPostingGrp : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResSkill(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResSkill : 5956;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResSkill : "Resource Skill";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResLoc(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResLoc : 5952;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResLoc : "Resource Location";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResServZone(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResServZone : 5958;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResServZone : "Resource Service Zone";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResUnitMeasure(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResUnitMeasure : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResUnitMeasure : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PlanningLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PlanningLine : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PlanningLine : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MoveEntries(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MoveEntries : 361;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MoveEntries : MoveEntries;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}


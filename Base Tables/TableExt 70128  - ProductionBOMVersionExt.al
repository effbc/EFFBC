tableextension 70128 ProductionBOMVersionExt extends "Production BOM Version"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on ""Production BOM No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 22)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 50)". Please convert manually.


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Status = Status::Certified) AND ("Unit of Measure Code" <> xRec."Unit of Measure Code") THEN
          FIELDERROR(Status);
        Item.SETRANGE("Production BOM No.","Production BOM No.");
        IF Item.FINDSET THEN
          REPEAT
            ItemUnitOfMeasure.GET(Item."No.","Unit of Measure Code");
          UNTIL Item.NEXT = 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Status = Status::Certified) and ("Unit of Measure Code" <> xRec."Unit of Measure Code") then
          FieldError(Status);
        Item.SetRange("Production BOM No.","Production BOM No.");
        if Item.FindSet then
          repeat
            ItemUnitOfMeasure.Get(Item."No.","Unit of Measure Code");
          until Item.Next = 0;
        */
        //end;


        //Unsupported feature: CodeModification on "Status(Field 45).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Status <> xRec.Status) AND (Status = Status::Certified) THEN BEGIN
          ProdBOMCheck.ProdBOMLineCheck("Production BOM No.","Version Code");
          TESTFIELD("Unit of Measure Code");
          ProdBOMHeader.GET("Production BOM No.");
          ProdBOMHeader."Low-Level Code" := 0;
          ProdBOMCheck.Code(ProdBOMHeader,"Version Code");
          PlanningAssignment.NewBOM("Production BOM No.");
        END;
        OnValidateStatusBeforeModify(Rec,xRec,CurrFieldNo);
        MODIFY(TRUE);
        SkipCommit := FALSE;
        OnValidateStatusBeforeCommit(Rec,SkipCommit);
        IF NOT SkipCommit THEN
          COMMIT;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Status <> xRec.Status) and (Status = Status::Certified) then begin
          ProdBOMCheck.ProdBOMLineCheck("Production BOM No.","Version Code");
          TestField("Unit of Measure Code");
          ProdBOMHeader.Get("Production BOM No.");
        #5..7
        end;
        OnValidateStatusBeforeModify(Rec,xRec,CurrFieldNo);
        Modify(true);
        SkipCommit := false;
        OnValidateStatusBeforeCommit(Rec,SkipCommit);
        if not SkipCommit then
          Commit;
        */
        //end;
        field(60001; "Description 2"; Text[30])
        {
            Description = 'B2B';
        }
        field(60002; "Modified User ID"; Code[50])
        {
            Description = 'Pranavi';
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Production BOM No.,Version Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Production BOM No.,Starting Date"(Key)". Please convert manually.

        key(Key1; "Production BOM No.", "Version Code")
        {
        }
        key(Key2; "Production BOM No.", "Starting Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ProdBOMLine.SETRANGE("Production BOM No.","Production BOM No.");
    ProdBOMLine.SETRANGE("Version Code","Version Code");
    ProdBOMLine.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ProdBOMLine.SetRange("Production BOM No.","Production BOM No.");
    ProdBOMLine.SetRange("Version Code","Version Code");
    ProdBOMLine.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ProdBOMHeader.GET("Production BOM No.");
    IF "Version Code" = '' THEN BEGIN
      ProdBOMHeader.TESTFIELD("Version Nos.");
      NoSeriesMgt.InitSeries(ProdBOMHeader."Version Nos.",xRec."No. Series",0D,"Version Code","No. Series");
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ProdBOMHeader.Get("Production BOM No.");
    if "Version Code" = '' then begin
      ProdBOMHeader.TestField("Version Nos.");
      NoSeriesMgt.InitSeries(ProdBOMHeader."Version Nos.",xRec."No. Series",0D,"Version Code","No. Series");
    end;
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
    IF Status = Status::Certified THEN
      ERROR(Text001,TABLECAPTION,FIELDCAPTION(Status),FORMAT(Status));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Status = Status::Certified then
      Error(Text001,TableCaption,FieldCaption(Status),Format(Status));
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 21).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 21).OnValidate.ItemUnitOfMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Status(Field 45).OnValidate.ProdBOMHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Status : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Status : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Status(Field 45).OnValidate.PlanningAssignment(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Status : 99000850;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Status : "Planning Assignment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Status(Field 45).OnValidate.ProdBOMCheck(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Status : 99000769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Status : "Production BOM-Check";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ProdBOMLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdBOMLine : 99000772;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdBOMLine : "Production BOM Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 1).ProdBOMHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMHeader : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMHeader : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMVersion(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMVersion : 99000779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMVersion : "Production BOM Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.
}


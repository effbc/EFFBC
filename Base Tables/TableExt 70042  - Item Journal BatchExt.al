tableextension 70042 ItemJournalBatchExt extends "Item Journal Batch"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Journal Template Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Name(Field 2)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Template Type"(Field 21)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Template Type"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Template Type"(Field 21)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Recurring(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on "Recurring(Field 22)". Please convert manually.


        //Unsupported feature: CodeModification on ""Reason Code"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Reason Code" <> xRec."Reason Code" THEN BEGIN
          ItemJnlLine.SETRANGE("Journal Template Name","Journal Template Name");
          ItemJnlLine.SETRANGE("Journal Batch Name",Name);
          ItemJnlLine.MODIFYALL("Reason Code","Reason Code");
          MODIFY;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Reason Code" <> xRec."Reason Code" then begin
          ItemJnlLine.SetRange("Journal Template Name","Journal Template Name");
          ItemJnlLine.SetRange("Journal Batch Name",Name);
          ItemJnlLine.ModifyAll("Reason Code","Reason Code");
          Modify;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""No. Series"(Field 5).OnValidate". Please convert manually.

        //trigger  Series"(Field 5)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No. Series" <> '' THEN BEGIN
          ItemJnlTemplate.GET("Journal Template Name");
          IF ItemJnlTemplate.Recurring THEN
            ERROR(
              Text000,
              FIELDCAPTION("Posting No. Series"));
          IF "No. Series" = "Posting No. Series" THEN
            VALIDATE("Posting No. Series",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No. Series" <> '' then begin
          ItemJnlTemplate.Get("Journal Template Name");
          if ItemJnlTemplate.Recurring then
            Error(
              Text000,
              FieldCaption("Posting No. Series"));
          if "No. Series" = "Posting No. Series" then
            Validate("Posting No. Series",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting No. Series"(Field 6).OnValidate". Please convert manually.

        //trigger  Series"(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Posting No. Series" = "No. Series") AND ("Posting No. Series" <> '') THEN
          FIELDERROR("Posting No. Series",STRSUBSTNO(Text001,"Posting No. Series"));
        ItemJnlLine.SETRANGE("Journal Template Name","Journal Template Name");
        ItemJnlLine.SETRANGE("Journal Batch Name",Name);
        ItemJnlLine.MODIFYALL("Posting No. Series","Posting No. Series");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Posting No. Series" = "No. Series") and ("Posting No. Series" <> '') then
          FieldError("Posting No. Series",StrSubstNo(Text001,"Posting No. Series"));
        ItemJnlLine.SetRange("Journal Template Name","Journal Template Name");
        ItemJnlLine.SetRange("Journal Batch Name",Name);
        ItemJnlLine.ModifyAll("Posting No. Series","Posting No. Series");
        Modify;
        */
        //end;
        field(50001; "Material Issues"; Boolean)
        {
            Description = 'B2B';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Journal Template Name,Name"(Key)". Please convert manually.

        key(JOurnal1; "Journal Template Name", Name)
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemJnlLine.SETRANGE("Journal Template Name","Journal Template Name");
    ItemJnlLine.SETRANGE("Journal Batch Name",Name);
    ItemJnlLine.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ItemJnlLine.SetRange("Journal Template Name","Journal Template Name");
    ItemJnlLine.SetRange("Journal Batch Name",Name);
    ItemJnlLine.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LOCKTABLE;
    ItemJnlTemplate.GET("Journal Template Name");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    ItemJnlTemplate.Get("Journal Template Name");
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemJnlLine.SETRANGE("Journal Template Name",xRec."Journal Template Name");
    ItemJnlLine.SETRANGE("Journal Batch Name",xRec.Name);
    WHILE ItemJnlLine.FINDFIRST DO
      ItemJnlLine.RENAME("Journal Template Name",Name,ItemJnlLine."Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ItemJnlLine.SetRange("Journal Template Name",xRec."Journal Template Name");
    ItemJnlLine.SetRange("Journal Batch Name",xRec.Name);
    while ItemJnlLine.FindFirst do
      ItemJnlLine.Rename("Journal Template Name",Name,ItemJnlLine."Line No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ItemJnlTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemJnlTemplate : 82;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemJnlTemplate : "Item Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemJnlLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemJnlLine : 83;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemJnlLine : "Item Journal Line";
    //Variable type has not been exported.
}


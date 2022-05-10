tableextension 70047 ExtendedTextHeaderExt extends "Extended Text Header"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change OptionString on ""Table Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Text No."(Field 4)". Please convert manually.


        //Unsupported feature: Change InitValue on ""All Language Codes"(Field 7)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Quote"(Field 11)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Quote"(Field 11)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Invoice"(Field 12)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Invoice"(Field 12)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Order"(Field 13)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Order"(Field 13)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Credit Memo"(Field 14)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Credit Memo"(Field 14)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Quote"(Field 15)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Quote"(Field 15)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Invoice"(Field 16)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Invoice"(Field 16)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Order"(Field 17)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Order"(Field 17)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Credit Memo"(Field 18)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Credit Memo"(Field 18)". Please convert manually.


        //Unsupported feature: Change InitValue on "Reminder(Field 19)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on "Reminder(Field 19)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Finance Charge Memo"(Field 20)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Finance Charge Memo"(Field 20)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Blanket Order"(Field 21)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Blanket Order"(Field 21)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Blanket Order"(Field 22)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Blanket Order"(Field 22)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Prepmt. Sales Invoice"(Field 23)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Prepmt. Sales Invoice"(Field 23)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Prepmt. Sales Credit Memo"(Field 24)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Prepmt. Sales Credit Memo"(Field 24)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Prepmt. Purchase Invoice"(Field 25)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Prepmt. Purchase Invoice"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Prepmt. Purchase Credit Memo"(Field 26)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Prepmt. Purchase Credit Memo"(Field 26)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Service Order"(Field 5900)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Service Order"(Field 5900)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Service Quote"(Field 5901)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Service Quote"(Field 5901)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Service Invoice"(Field 5902)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Service Invoice"(Field 5902)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Service Credit Memo"(Field 5903)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Service Credit Memo"(Field 5903)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Sales Return Order"(Field 6600)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Return Order"(Field 6600)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Purchase Return Order"(Field 6605)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Return Order"(Field 6605)". Please convert manually.


        //Unsupported feature: CodeModification on ""Language Code"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Language Code" <> '' THEN
          "All Language Codes" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Language Code" <> '' then
          "All Language Codes" := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""All Language Codes"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "All Language Codes" THEN
          "Language Code" := ''
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "All Language Codes" then
          "Language Code" := ''
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Quote"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Purchase Quote" THEN
          NoResourcePurch;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Purchase Quote" then
          NoResourcePurch;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Invoice"(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Purchase Invoice" THEN
          NoResourcePurch;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Purchase Invoice" then
          NoResourcePurch;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Order"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Purchase Order" THEN
          NoResourcePurch;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Purchase Order" then
          NoResourcePurch;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Credit Memo"(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Purchase Credit Memo" THEN
          NoResourcePurch;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Purchase Credit Memo" then
          NoResourcePurch;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Blanket Order"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Purchase Blanket Order" THEN
          NoResourcePurch;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Purchase Blanket Order" then
          NoResourcePurch;
        */
        //end;
        field(60001; Tender; Boolean)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Table Name,No.,Language Code,Text No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table Name,No.,Language Code,All Language Codes,Starting Date,Ending Date"(Key)". Please convert manually.

        key(Table1; "Table Name", "No.", "Language Code", "Text No.")
        {
        }
        key(NO2; "Table Name", "No.", "Language Code", "All Language Codes", "Starting Date", "Ending Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ExtTextLine.SETRANGE("Table Name","Table Name");
    ExtTextLine.SETRANGE("No.","No.");
    ExtTextLine.SETRANGE("Language Code","Language Code");
    ExtTextLine.SETRANGE("Text No.","Text No.");
    ExtTextLine.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ExtTextLine.SetRange("Table Name","Table Name");
    ExtTextLine.SetRange("No.","No.");
    ExtTextLine.SetRange("Language Code","Language Code");
    ExtTextLine.SetRange("Text No.","Text No.");
    ExtTextLine.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IncrementTextNo;

    IF "Table Name" = "Table Name"::Resource THEN BEGIN
      "Purchase Quote" := FALSE;
      "Purchase Invoice" := FALSE;
      "Purchase Blanket Order" := FALSE;
      "Purchase Order" := FALSE;
      "Purchase Credit Memo" := FALSE;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    IncrementTextNo;

    if "Table Name" = "Table Name"::Resource then begin
      "Purchase Quote" := false;
      "Purchase Invoice" := false;
      "Purchase Blanket Order" := false;
      "Purchase Order" := false;
      "Purchase Credit Memo" := false;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF ("Table Name" <> xRec."Table Name") OR ("No." <> xRec."No.") THEN
      ERROR(RenameRecordErr,FIELDCAPTION("Table Name"),FIELDCAPTION("No."));

    IncrementTextNo;

    RecreateTextLines;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if ("Table Name" <> xRec."Table Name") or ("No." <> xRec."No.") then
      Error(RenameRecordErr,FieldCaption("Table Name"),FieldCaption("No."));
    #3..6
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.ExtTextLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ExtTextLine : 280;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ExtTextLine : "Extended Text Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IncrementTextNo(PROCEDURE 5).ExtTextHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IncrementTextNo : 279;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IncrementTextNo : "Extended Text Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateTextLines(PROCEDURE 2).ExtTextLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateTextLines : 280;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateTextLines : "Extended Text Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateTextLines(PROCEDURE 2).TmpExtTextLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateTextLines : 280;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateTextLines : "Extended Text Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 3).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 3).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 3).Res(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaption(PROCEDURE 3).StandardText(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaption : 7;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaption : "Standard Text";
    //Variable type has not been exported.
}


tableextension 70179 NoSeriesLineExt extends "No. Series Line"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Series Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change InitValue on "Open(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on "Open(Field 9)". Please convert manually.


        //Unsupported feature: CodeModification on ""Starting No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateLine("Starting No.",FIELDCAPTION("Starting No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateLine("Starting No.",FieldCaption("Starting No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending No."(Field 5).OnValidate". Please convert manually.

        //trigger "(Field 5)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Ending No." = '' THEN
          "Warning No." := '';
        UpdateLine("Ending No.",FIELDCAPTION("Ending No."));
        VALIDATE(Open);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Ending No." = '' then
          "Warning No." := '';
        UpdateLine("Ending No.",FieldCaption("Ending No."));
        Validate(Open);
        */
        //end;


        //Unsupported feature: CodeModification on ""Warning No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Ending No.");
        UpdateLine("Warning No.",FIELDCAPTION("Warning No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Ending No.");
        UpdateLine("Warning No.",FieldCaption("Warning No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Last No. Used"(Field 8).OnValidate". Please convert manually.

        //trigger  Used"(Field 8)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateLine("Last No. Used",FIELDCAPTION("Last No. Used"));
        VALIDATE(Open);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateLine("Last No. Used",FieldCaption("Last No. Used"));
        Validate(Open);
        */
        //end;


        //Unsupported feature: CodeModification on "Open(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Open := ("Ending No." = '') OR ("Ending No." <> "Last No. Used");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Open := ("Ending No." = '') or ("Ending No." <> "Last No. Used");
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Series Code,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Series Code,Starting Date,Starting No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Starting No."(Key)". Please convert manually.

        key(Key1; "Series Code", "Line No.")
        {
        }
        key(Key2; "Series Code", "Starting Date", "Starting No.")
        {
        }
        key(Key3; "Starting No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.
}


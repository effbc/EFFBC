tableextension 70101 TroubleshootingSetupExt extends "Troubleshooting Setup"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Troubleshooting No."(Field 3)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Troubleshooting Description"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Troubleshooting Description"(Field 4)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type <> xRec.Type THEN
          "No." := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type <> xRec.Type then
          "No." := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Troubleshooting No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CALCFIELDS("Troubleshooting Description");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CalcFields("Troubleshooting Description");
        */
        //end;
        field(60000; "Line No."; Integer)
        {
            Description = 'b2b EFF';
        }
        field(60001; Comment; Text[80])
        {
            Description = 'b2b EFF';
        }
        field(60002; Date; Date)
        {
            Description = 'Editable=Yes';
        }
        field(60003; "Service Order No"; Code[20])
        {
            TableRelation = "Service Header"."No." WHERE("Document Type" = CONST(Order));
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Type,No.,Troubleshooting No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Troubleshooting No.,Type,No."(Key)". Please convert manually.

        key(Key1; Type, "No.", "Troubleshooting No.", "Line No.", Date)
        {
        }
        key(Key2; "Troubleshooting No.", Type, "No.")
        {
        }
        key(Key3; Type, "No.", Date, "Troubleshooting No.", Comment)
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}


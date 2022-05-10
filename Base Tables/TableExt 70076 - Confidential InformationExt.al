tableextension 70076 ConfidentialInformationExt extends "Confidential Information"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change Name on ""Employee No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Employee No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Name on ""Confidential Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Confidential Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Confidential Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 5)". Please convert manually.


        //Unsupported feature: Change Enabled on "Comment(Field 5)". Please convert manually.


        //Unsupported feature: CodeModification on ""Confidential Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Confidential.GET("Confidential Code");
        Description := Confidential.Description;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Confidential.Get("Division  Code");
        Description := Confidential.divisioncode;
        */
        //end;

        //Unsupported feature: PropertyDeletion on "Comment(Field 5)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Employee No.,Confidential Code,Line No."(Key)". Please convert manually.

        key(Key1; "Station Code", "Division  Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Comment THEN
      ERROR(Text000);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Comment then
      Error(Text000);
    */
    //end;

    //Unsupported feature: PropertyDeletion. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Confidential(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Confidential : 5215;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Confidential : Confidential;
    //Variable type has not been exported.
}


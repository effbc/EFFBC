tableextension 70214 StandardCostWorksheetNameExt extends "Standard Cost Worksheet Name"
{
    // version NAVW17.00,B2B1.0

    fields
    {

        //Unsupported feature: Change NotBlank on "Name(Field 2)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: PropertyChange on "Name(Key)". Please convert manually.

    }

    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    StdCostWksh.SETRANGE("Standard Cost Worksheet Name",Name);
    StdCostWksh.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    StdCostWksh.SetRange("Standard Cost Worksheet Name",Name);
    StdCostWksh.DeleteAll(true);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "StdCostWksh(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdCostWksh : 5841;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdCostWksh : "Standard Cost Worksheet";
    //Variable type has not been exported.
}


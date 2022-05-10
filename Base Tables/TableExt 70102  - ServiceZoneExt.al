tableextension 70102 ServiceZoneExt extends "Service Zone"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.

        field(50001; "Project Manager"; Code[50])
        {
            TableRelation = Employee."No.";
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.

    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}


tableextension 70205 RlshpMgtCommentLineExt extends "Rlshp. Mgt. Comment Line"
{
    // version NAVW17.00

    fields
    {
        modify("Table Name")
        {
            OptionCaptionML = ENU = 'Contact,Campaign,To-do,Web Source,Sales Cycle,Sales Cycle Stage,Opportunity,Products,Competitor''s Master,Product Competitor''s Details', ENN = 'Contact,Campaign,To-do,Web Source,Sales Cycle,Sales Cycle Stage,Opportunity,Products,Competitor''s Master,Product Competitor''s Details';

            //Unsupported feature: Change OptionString on ""Table Name"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change TableRelation on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sub No."(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 8)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Table Name,No.,Sub No.,Line No."(Key)". Please convert manually.

        key(Key1; "Table Name", "No.", "Sub No.", "Line No.")
        {
        }
    }


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

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 1).RlshpMgtCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 5061;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Rlshp. Mgt. Comment Line";
    //Variable type has not been exported.
}


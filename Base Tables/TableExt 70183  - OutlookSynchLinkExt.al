tableextension 70183 OutlookSynchLinkExt extends "Outlook Synch. Link"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change NotBlank on ""User ID"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""User ID"(Field 1)". Please convert manually.


        //Unsupported feature: Change Description on ""User ID"(Field 1)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""User ID,Record ID"(Key)". Please convert manually.

        key(Key1; "User ID", "Record ID")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Search Record ID" := FORMAT("Record ID");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Search Record ID" := Format("Record ID");
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF FORMAT("Record ID") <> FORMAT(xRec."Record ID") THEN
      "Search Record ID" := FORMAT("Record ID");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Format("Record ID") <> Format(xRec."Record ID") then
      "Search Record ID" := Format("Record ID");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}


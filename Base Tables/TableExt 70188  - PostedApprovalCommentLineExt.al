tableextension 70188 PostedApprovalCommentLineExts extends "Posted Approval Comment Line"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 5)". Please convert manually.


        //Unsupported feature: Change Description on ""User ID"(Field 5)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table ID,Document No.,Date and Time"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Table ID", "Document No.", "Date and Time")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Entry No." = 0 THEN
      "Entry No." := GetNextEntryNo;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Entry No." = 0 then
      "Entry No." := GetNextEntryNo;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 5).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNextEntryNo(PROCEDURE 4).PostedApprovalCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextEntryNo : 457;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextEntryNo : "Posted Approval Comment Line";
    //Variable type has not been exported.
}


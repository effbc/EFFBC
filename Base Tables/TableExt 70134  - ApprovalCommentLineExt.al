tableextension 70134 ApprovalCommentLineExt extends "Approval Comment Line"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change Editable on ""Entry No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Table ID"(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Document Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Document No."(Field 4)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""User ID"(Field 5)". Please convert manually.


        //Unsupported feature: Change Description on ""User ID"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Date and Time"(Field 6)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table ID,Document Type,Document No.,Record ID to Approve"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Workflow Step Instance ID"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Table ID", "Document Type", "Document No.", "Record ID to Approve")
        {
        }
        key(Key3; "Workflow Step Instance ID")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    EVALUATE("Table ID",GETFILTER("Table ID"));
    EVALUATE("Record ID to Approve",GETFILTER("Record ID to Approve"));
    "User ID" := USERID;
    "Date and Time" := CREATEDATETIME(TODAY,TIME);
    IF "Entry No." = 0 THEN
      "Entry No." := GetNextEntryNo;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Evaluate("Table ID",GetFilter("Table ID"));
    Evaluate("Record ID to Approve",GetFilter("Record ID to Approve"));
    "User ID" := UserId;
    "Date and Time" := CreateDateTime(Today,Time);
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


    //Unsupported feature: PropertyModification on "GetNextEntryNo(PROCEDURE 4).ApprovalCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextEntryNo : 455;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextEntryNo : "Approval Comment Line";
    //Variable type has not been exported.
}


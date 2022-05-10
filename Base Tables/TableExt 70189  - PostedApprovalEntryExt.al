tableextension 70189 PostedApprovalEntryExt extends "Posted Approval Entry"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change TestTableRelation on ""Sender ID"(Field 6)". Please convert manually.


        //Unsupported feature: Change Description on ""Sender ID"(Field 6)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Approver ID"(Field 8)". Please convert manually.


        //Unsupported feature: Change Description on ""Approver ID"(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Last Modified By ID"(Field 12)". Please convert manually.


        //Unsupported feature: Change Description on ""Last Modified By ID"(Field 12)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Approval Type"(Field 18)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Limit Type"(Field 19)". Please convert manually.


        //Unsupported feature: Change AutoIncrement on ""Entry No."(Field 29)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PostedApprovalCommentLine.SETRANGE("Posted Record ID","Posted Record ID");
    PostedApprovalCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    PostedApprovalCommentLine.SetRange("Posted Record ID","Posted Record ID");
    PostedApprovalCommentLine.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.PostedApprovalCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostedApprovalCommentLine : 457;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostedApprovalCommentLine : "Posted Approval Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowRecord(PROCEDURE 1).PageManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRecord : 700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRecord : "Page Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserMgt : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserMgt : "User Management";
    //Variable type has not been exported.
}


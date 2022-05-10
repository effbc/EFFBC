tableextension 70184 OverdueApprovalEntryExt extends "Overdue Approval Entry"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Document No."(Field 3)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Approver ID"(Field 11)". Please convert manually.


        //Unsupported feature: Change Description on ""Approver ID"(Field 11)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Approval Type"(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Limit Type"(Field 14)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Table ID,Document Type,Document No.,Sequence No.,Sent Date,Sent Time,Record ID to Approve"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Approver ID"(Key)". Please convert manually.

        key(Key1; "Table ID", "Document Type", "Document No.", "Sequence No.", "Sent Date", "Sent Time", "Record ID to Approve")
        {
        }
        key(Key2; "Approver ID")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    NotificationEntry.SETRANGE(Type,NotificationEntry.Type::Overdue);
    NotificationEntry.SETRANGE("Triggered By Record",RECORDID);
    NotificationEntry.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    NotificationEntry.SetRange(Type,NotificationEntry.Type::Overdue);
    NotificationEntry.SetRange("Triggered By Record",RecordId);
    NotificationEntry.DeleteAll(true);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 7).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Approver ID"(Field 11).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Approver ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Approver ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.NotificationEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.NotificationEntry : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.NotificationEntry : "Notification Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowRecord(PROCEDURE 1).PageManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRecord : 700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRecord : "Page Management";
    //Variable type has not been exported.
}


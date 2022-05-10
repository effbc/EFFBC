tableextension 70135 ApprovalEntryExt extends "Approval Entry"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 2)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sender ID"(Field 6)". Please convert manually.


        //Unsupported feature: Change Description on ""Sender ID"(Field 6)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Approver ID"(Field 8)". Please convert manually.


        //Unsupported feature: Change Description on ""Approver ID"(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Last Modified By User ID"(Field 12)". Please convert manually.


        //Unsupported feature: Change Description on ""Last Modified By User ID"(Field 12)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Approval Type"(Field 18)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Limit Type"(Field 19)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pending Approvals"(Field 21)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Number of Approved Requests"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Number of Rejected Requests"(Field 27)". Please convert manually.


        //Unsupported feature: Change AutoIncrement on ""Entry No."(Field 29)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Related to Change"(Field 31)". Please convert manually.


        //Unsupported feature: CodeModification on "Status(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec.Status = Status::Created) AND (Status = Status::Open) THEN
          "Date-Time Sent for Approval" := CREATEDATETIME(TODAY,TIME);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec.Status = Status::Created) and (Status = Status::Open) then
          "Date-Time Sent for Approval" := CreateDateTime(Today,Time);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Record ID to Approve,Workflow Step Instance ID,Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table ID,Document Type,Document No.,Sequence No.,Record ID to Approve"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Approver ID,Status,Due Date,Date-Time Sent for Approval"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sender ID"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table ID,Record ID to Approve,Status,Workflow Step Instance ID,Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table ID,Document Type,Document No.,Date-Time Sent for Approval"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Record ID to Approve", "Workflow Step Instance ID", "Sequence No.")
        {
        }
        key(Key3; "Table ID", "Document Type", "Document No.", "Sequence No.", "Record ID to Approve")
        {
        }
        key(Key4; "Approver ID", Status, "Due Date", "Date-Time Sent for Approval")
        {
        }
        key(Key5; "Sender ID")
        {
        }
        key(Key6; "Due Date")
        {
        }
        key(Key7; "Table ID", "Record ID to Approve", Status, "Workflow Step Instance ID", "Sequence No.")
        {
        }
        key(Key8; "Table ID", "Document Type", "Document No.", "Date-Time Sent for Approval")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    NotificationEntry.SETRANGE(Type,NotificationEntry.Type::Approval);
    NotificationEntry.SETRANGE("Triggered By Record",RECORDID);
    NotificationEntry.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    NotificationEntry.SetRange(Type,NotificationEntry.Type::Approval);
    NotificationEntry.SetRange("Triggered By Record",RecordId);
    NotificationEntry.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date-Time Modified" := CREATEDATETIME(TODAY,TIME);
    "Last Modified By User ID" := USERID;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date-Time Modified" := CreateDateTime(Today,Time);
    "Last Modified By User ID" := UserId;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.NotificationEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.NotificationEntry : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.NotificationEntry : "Notification Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecordCaption(PROCEDURE 4).AllObjWithCaption(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecordCaption : 2000000058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecordCaption : AllObjWithCaption;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecordDetails(PROCEDURE 3).SalesHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecordDetails : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecordDetails : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecordDetails(PROCEDURE 3).PurchHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecordDetails : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecordDetails : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustVendorDetails(PROCEDURE 6).PurchaseHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustVendorDetails : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustVendorDetails : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustVendorDetails(PROCEDURE 6).SalesHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustVendorDetails : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustVendorDetails : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustVendorDetails(PROCEDURE 6).Customer(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustVendorDetails : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustVendorDetails : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetChangeRecordDetails(PROCEDURE 2).WorkflowRecordChange(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetChangeRecordDetails : 1525;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetChangeRecordDetails : "Workflow - Record Change";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CanCurrentUserEdit(PROCEDURE 7).UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CanCurrentUserEdit : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CanCurrentUserEdit : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MarkAllWhereUserisApproverOrSender(PROCEDURE 9).UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MarkAllWhereUserisApproverOrSender : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MarkAllWhereUserisApproverOrSender : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserMgt : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserMgt : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PageManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PageManagement : 700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PageManagement : "Page Management";
    //Variable type has not been exported.
}


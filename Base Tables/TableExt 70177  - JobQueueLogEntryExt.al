tableextension 70177 JobQueueLogEntryExt extends "Job Queue Log Entry"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change AutoIncrement on ""Entry No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 3)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Object Caption to Run"(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Job Queue Category Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Job Queue Category Code"(Field 17)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Start Date/Time,ID"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Start Date/Time", ID)
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //begin
    /*
    {IF ("Object Type to Run"="Object Type to Run"::Codeunit) AND("Object ID to Run"=60018) THEN
    BEGIN
      Mail_From :='erp@efftronics.com';
      Mail_To := 'erp@efftronics.com';
      Subject := 'Job Queue Status'+FORMAT(Status);
      Body := "Error Message";
      SMTP_MAIL.CreateMessage('ERP',Mail_From,Mail_To,Subject,Body,TRUE);
      SMTP_MAIL.Send;
    END;}
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "GetErrorMessage(PROCEDURE 1).TextMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetErrorMessage : 41;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetErrorMessage : TextManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetErrorMessage(PROCEDURE 2).TextMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetErrorMessage : 41;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetErrorMessage : TextManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MarkAsError(PROCEDURE 4).JobQueueEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MarkAsError : 472;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MarkAsError : "Job Queue Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetErrorCallStack(PROCEDURE 120).TempBlob(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetErrorCallStack : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetErrorCallStack : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetErrorCallStack(PROCEDURE 114).TempBlob(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetErrorCallStack : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetErrorCallStack : TempBlob;
    //Variable type has not been exported.

    var
        Body: Text;
        Subject: Text;
        Mail_To: Text;
        Mail_From: Text;
        SMTP_MAIL: Codeunit "SMTP Mail";
}


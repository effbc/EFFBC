tableextension 70146 ChangeLogEntryExt extends "Change Log Entry"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change AutoIncrement on ""Entry No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 4)". Please convert manually.


        //Unsupported feature: Change Description on ""User ID"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Table No."(Field 5)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Table Caption"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Field No."(Field 7)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Field Caption"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Primary Key Field 1 No."(Field 13)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Primary Key Field 1 Caption"(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Primary Key Field 2 No."(Field 16)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Primary Key Field 2 Caption"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Primary Key Field 3 No."(Field 19)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Primary Key Field 3 Caption"(Field 20)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table No.,Primary Key Field 1 Value"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Table No.,Date and Time"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Table No.", "Primary Key Field 1 Value")
        {
        }
        key(Key3; "Table No.", "Date and Time")
        {
        }
        key(Key4; "Table No.", "Primary Key Field 2 Value", "Primary Key Field 3 Value", "Date and Time")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    {F "Table No." = 36 THEN
    BEGIN
        Subject := 'Change Log Entry Details(Deletion) :: Order No - ' + "Primary Key Field 2 Value" + 'Field No - '+ FORMAT("Field No.");
        SMTP_MAIL.CreateMessage('ERP','erp@efftronics.com','erp@efftronics.com',Subject,'',TRUE);
        SMTP_MAIL.AppendBody('<html><body><table>');
        SMTP_MAIL.AppendBody('<th><td>Order No</td><td>Type of Change</td><td>Old Value</td><td>New Value</td><td>User</td><td>PrimaryKey-Field3</td><td>Date and Time</td></th>');
        SMTP_MAIL.AppendBody('<tr><td>'+"Primary Key Field 2 Value"+ '<td>');
        CASE "Type of Change" OF
          0 : SMTP_MAIL.AppendBody('Insertion');
          1 : SMTP_MAIL.AppendBody('Modification');
          2 : SMTP_MAIL.AppendBody('Deletion');
        END;
        SMTP_MAIL.AppendBody('</td><td>'+"Old Value"+'</td><td>'+"New Value" + '</td><td>'+"User ID"+'</td><td>'+"Primary Key Field 3 Value"+'</td><td>'+FORMAT("Date and Time")+'</td></tr>');
        SMTP_MAIL.AppendBody('</table>');
        SMTP_MAIL.AppendBody('<br/><br/>*********** This is auto generated mail from ERP ************</body></html>');
     //   SMTP_MAIL.Send;
    END;}
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //begin
    /*
    {IF "Table No." = 36 THEN
    BEGIN
        Subject := 'Change Log Entry Details(Insertion) :: Order No - ' + "Primary Key Field 2 Value" + 'Field No - '+ FORMAT("Field No.");
        SMTP_MAIL.CreateMessage('ERP','erp@efftronics.com','erp@efftronics.com',Subject,'',TRUE);
        SMTP_MAIL.AppendBody('<html><body><table>');
        SMTP_MAIL.AppendBody('<th><td>Order No</td><td>Type of Change</td><td>Old Value</td><td>New Value</td><td>User</td><td>PrimaryKey-Field3</td><td>Date and Time</td></th>');
        SMTP_MAIL.AppendBody('<tr><td>'+"Primary Key Field 2 Value"+ '<td>');
        CASE "Type of Change" OF
          0 : SMTP_MAIL.AppendBody('Insertion');
          1 : SMTP_MAIL.AppendBody('Modification');
          2 : SMTP_MAIL.AppendBody('Deletion');
        END;
        SMTP_MAIL.AppendBody('</td><td>'+"Old Value"+'</td><td>'+"New Value" + '</td><td>'+"User ID"+'</td><td>'+"Primary Key Field 3 Value"+'</td><td>'+FORMAT("Date and Time")+'</td></tr>');
        SMTP_MAIL.AppendBody('</table>');
        SMTP_MAIL.AppendBody('<br/><br/>*********** This is auto generated mail from ERP ************</body></html>');
        //SMTP_MAIL.Send;
    END;}
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 4).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLocalValue(PROCEDURE 5).AllObj(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLocalValue : 2000000038;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLocalValue : AllObj;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLocalValue(PROCEDURE 5).ChangeLogManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLocalValue : 423;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLocalValue : "Change Log Management";
    //Variable type has not been exported.

    var
        Subject: Text[100];
        SMTP_MAIL: Codeunit "SMTP Mail";
}


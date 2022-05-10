tableextension 70154 DimensionSetTreeNodeExt extends "Dimension Set Tree Node"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change AutoIncrement on ""Dimension Set ID"(Field 3)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Parent Dimension Set ID,Dimension Value ID"(Key)". Please convert manually.

        key(Key1; "Parent Dimension Set ID", "Dimension Value ID")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*

    //Added by Pranavi on 09-09-2015
    Mail_From:='noreply@efftronics.com';
    Mail_To:='ERP@efftronics.com';
    Subject:='ERP-Dimension Set Tree Node Changes';
    Body:='<html><BODY><h3><center>Dimension Set Tree Node Changes Details!<BR>';
    Body+= '</center></h3>';
    Body+='<br><table style="WIDTH:400px; HEIGHT: 20px; FONT-WEIGHT: bold"';
    Body+='border="1" align="Center">';
    Body+='<tr><td align="center">Field</td><td align="center">New Value</td><td align="center">Old Value</td></tr>';
    Body+='<tr><td>Parent Dimension  Set ID</td><td align="right">'+Format("Parent Dimension Set ID")+'</td><td align="right">'+Format(xRec."Parent Dimension Set ID")+'</td></tr>';
    Body+='<tr><td>Dimension Value Id</td><td align="right">'+Format("Dimension Value ID")+'</td><td align="right">'+Format(xRec."Dimension Value ID")+'</td></tr>';
    Body+='<tr><td>Dimension Set ID</td><td align="right">'+Format("Dimension Set ID")+'</td><td align="right">'+Format(xRec."Dimension Set ID")+'</td></tr>';
    Body+='<tr><td>In Use</td><td align="right">'+Format("In Use")+'</td><td align="right">'+Format(xRec."In Use")+'</td></tr>';
    Body+='<tr><td>User ID</td><td colspan=2; align="right">'+UserId+'</td></tr></table><br>';
    Body+='<br><p><center>              ****  Automatic Mail Generated From ERP  ****       <center></p></BODY></html>';
    SMTP_MAIL.CreateMessage('ERP',Mail_From,Mail_To,Subject,Body,true);
    SMTP_MAIL.Send;
    //End by Pranavi
    */
    //end;

    var
        Body: Text;
        Subject: Text;
        Mail_To: Text;
        Mail_From: Text;
        Mail: Codeunit Mail;
        SMTP_MAIL: Codeunit "SMTP Mail";
}


tableextension 70226 TroubleshootingLineExt extends "Troubleshooting Line"
{
    // version NAVW17.00

    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.

        key(PK; "No.", "Line No.")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    if UserId<>'EFFTRONICS\RAMADEVI' then
       Error('YOU HAVE NO PERMISSIONS');
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //begin
    /*
    if UserId<>'EFFTRONICS\RAMADEVI' then
       Error('YOU HAVE NO PERMISSIONS');
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    if UserId<>'EFFTRONICS\RAMADEVI' then
       Error('YOU HAVE NO PERMISSIONS');
    */
    //end;
}


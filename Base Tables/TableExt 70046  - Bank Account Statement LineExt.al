tableextension 70046 BankAccountStatementLineExt extends "Bank Account Statement Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Statement No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Applied Amount"(Field 9)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Applied Entries"(Field 11)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Check No."(Field 14)". Please convert manually.

        field(50060; "Bank Acc LE"; Integer)
        {
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Bank Account No.,Statement No.,Statement Line No."(Key)". Please convert manually.

        key(BankAccount1; "Bank Account No.", "Statement No.", "Statement Line No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "GetCurrencyCode(PROCEDURE 2).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencyCode : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencyCode : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAccLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccLedgEntry : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccLedgEntry : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckLedgEntry : 272;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckLedgEntry : "Check Ledger Entry";
    //Variable type has not been exported.
}


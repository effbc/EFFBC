tableextension 70221 SymptomCodeExt extends "Symptom Code"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 2)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.

    }

    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
     if not(UpperCase(UserId) in ['EFFTRONICS\SRIVALLI','SUPER','10RD010'])  then
     Error('You have no Rights');
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
     if not(UpperCase(UserId) in ['EFFTRONICS\SRIVALLI','SUPER','10RD010','EFFTRONICS\RAMADEVI'])  then
     Error('You have no Rights');
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}


tableextension 70157 FaultCodeExt extends "Fault Code"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 3)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 4)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Fault Area Code,Symptom Code,Code"(Key)". Please convert manually.

        key(Key1; "Fault Area Code", "Symptom Code", "Code")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
     if not(UpperCase(UserId) in ['EFFTRONICS\SRIVALLI','EFFTRONICS\ANILKUMAR','EFFTRONICS\SUNDAR'])  then
     Error('You have no Rights');
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ServMgtSetup.GET;
    IF ServMgtSetup."Fault Reporting Level" = ServMgtSetup."Fault Reporting Level"::None THEN
      ERROR(
        Text000,
        TABLECAPTION,ServMgtSetup.FIELDCAPTION("Fault Reporting Level"),ServMgtSetup.TABLECAPTION,
        FORMAT(ServMgtSetup."Fault Reporting Level"));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ServMgtSetup.Get;
    if ServMgtSetup."Fault Reporting Level" = ServMgtSetup."Fault Reporting Level"::None then
      Error(
        Text000,
        TableCaption,ServMgtSetup.FieldCaption("Fault Reporting Level"),ServMgtSetup.TableCaption,
        Format(ServMgtSetup."Fault Reporting Level"));
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
     if not(UpperCase(UserId) in ['EFFTRONICS\SRIVALLI','EFFTRONICS\ANILKUMAR','EFFTRONICS\SUNDAR','EFFTRONICS\RAMADEVI'])  then
     Error('You have no Rights');
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text001,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text001,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ServMgtSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServMgtSetup : 5911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServMgtSetup : "Service Mgt. Setup";
    //Variable type has not been exported.
}


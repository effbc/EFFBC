tableextension 70225 TroubleshootingHeaderExt extends "Troubleshooting Header"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""No. Series"(Field 3)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //begin
        /*
        {IF "No." <> xRec."No." THEN BEGIN
        #2..5
         }
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.

        key(Pk; "No.")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    {IF USERID<>'EFFTRONICS\RAMADEVI' THEN
       ERROR('YOU HAVE NO PERMISSIONS'); }
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ServMgtSetup.GET ;
    IF "No." = '' THEN BEGIN
      ServMgtSetup.TESTFIELD("Troubleshooting Nos.");
      NoSeriesMgt.InitSeries(ServMgtSetup."Troubleshooting Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {IF USERID<>'EFFTRONICS\RAMADEVI' THEN
       ERROR('YOU HAVE NO PERMISSIONS');
    #1..5
    }
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*

    {IF USERID<>'EFFTRONICS\RAMADEVI' THEN
       ERROR('YOU HAVE NO PERMISSIONS');  }
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ServMgtSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServMgtSetup : 5911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServMgtSetup : "Service Mgt. Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TblshtgHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TblshtgHeader : 5943;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TblshtgHeader : "Troubleshooting Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TblshtgHeader2(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TblshtgHeader2 : 5943;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TblshtgHeader2 : "Troubleshooting Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TblshtgSetup(Variable 1004)". Please convert manually.

    //var    
    //TblshtgSetup : "Troubleshooting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1005)". Please convert manually.

    //var   
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Tblshtg(Variable 1006)". Please convert manually.

    //var    
    //Tblshtg : Troubleshooting;
    //Variable type has not been exported.
}


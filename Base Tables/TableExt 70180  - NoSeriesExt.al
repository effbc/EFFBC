tableextension 70180 NoSeriesExt extends "No. Series"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Manual Nos."(Field 4)". Please convert manually.


        //Unsupported feature: CodeModification on ""Default Nos."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Default Nos." = FALSE) AND (xRec."Default Nos." <> "Default Nos.") AND ("Manual Nos." = FALSE) THEN
          VALIDATE("Manual Nos.",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Default Nos." = false) and (xRec."Default Nos." <> "Default Nos.") and ("Manual Nos." = false) then
          Validate("Manual Nos.",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Manual Nos."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Manual Nos." = FALSE) AND (xRec."Manual Nos." <> "Manual Nos.") AND ("Default Nos." = FALSE) THEN
          VALIDATE("Default Nos.",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Manual Nos." = false) and (xRec."Manual Nos." <> "Manual Nos.") and ("Default Nos." = false) then
          Validate("Default Nos.",true);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.

    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    NoSeriesLine.SETRANGE("Series Code",Code);
    NoSeriesLine.DELETEALL;

    NoSeriesRelationship.SETRANGE(Code,Code);
    NoSeriesRelationship.DELETEALL;
    NoSeriesRelationship.SETRANGE(Code);

    NoSeriesRelationship.SETRANGE("Series Code",Code);
    NoSeriesRelationship.DELETEALL;
    NoSeriesRelationship.SETRANGE("Series Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    NoSeriesLine.SetRange("Series Code",Code);
    NoSeriesLine.DeleteAll;

    NoSeriesRelationship.SetRange(Code,Code);
    NoSeriesRelationship.DeleteAll;
    NoSeriesRelationship.SetRange(Code);

    NoSeriesRelationship.SetRange("Series Code",Code);
    NoSeriesRelationship.DeleteAll;
    NoSeriesRelationship.SetRange("Series Code");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "DrillDown(PROCEDURE 6).NoSeriesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDown : 309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDown : "No. Series Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateLine(PROCEDURE 3).NoSeriesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateLine : 309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateLine : "No. Series Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindNoSeriesLineToShow(PROCEDURE 1).NoSeriesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindNoSeriesLineToShow : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindNoSeriesLineToShow : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesLine : 309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesLine : "No. Series Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesRelationship(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesRelationship : 310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesRelationship : "No. Series Relationship";
    //Variable type has not been exported.
}


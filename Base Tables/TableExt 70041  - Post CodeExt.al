tableextension 70041 PostCodeExt extends "Post Code"
{
    // version NAVW19.00.00.51640

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "City(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 4)". Please convert manually.


        //Unsupported feature: CodeModification on "Code(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.SETRANGE("Search City","Search City");
        PostCode.SETRANGE(Code,Code);
        IF NOT PostCode.ISEMPTY THEN
          ERROR(Text000,FIELDCAPTION(Code),Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.SetRange("Search City","Search City");
        PostCode.SetRange(Code,Code);
        if not PostCode.IsEmpty then
          Error(Text000,FieldCaption(Code),Code);
        */
        //end;


        //Unsupported feature: CodeModification on "City(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Code);
        "Search City" := City;
        IF xRec."Search City" <> "Search City" THEN BEGIN
          PostCode.SETRANGE("Search City","Search City");
          PostCode.SETRANGE(Code,Code);
          IF NOT PostCode.ISEMPTY THEN
            ERROR(Text000,FIELDCAPTION(City),City);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Code);
        "Search City" := City;
        if xRec."Search City" <> "Search City" then begin
          PostCode.SetRange("Search City","Search City");
          PostCode.SetRange(Code,Code);
          if not PostCode.IsEmpty then
            Error(Text000,FieldCaption(City),City);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Time Zone"(Field 30).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ConfPersonalizationMgt.LookupTimeZone(TimeZoneID) THEN
          "Time Zone" := TimeZoneID;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ConfPersonalizationMgt.LookupTimeZone(TimeZoneID) then
          "Time Zone" := TimeZoneID;
        */
        //end;
        field(60010; State; Code[10])
        {
            TableRelation = State.Code WHERE(Code = FIELD(Code));
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on ""Code,City"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search City"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Country/Region Code"(Key)". Please convert manually.

        key(Search1; "Search City")
        {
        }
        key(Country2; "Country/Region Code")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Code(Field 1).OnValidate.PostCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Code : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Code : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "City(Field 2).OnValidate.PostCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //City : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //City : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateCity(PROCEDURE 5).PostCodeRec(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateCity : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateCity : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateCity(PROCEDURE 5).PostCodeRec2(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateCity : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateCity : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidatePostCode(PROCEDURE 6).PostCodeRec(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidatePostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidatePostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidatePostCode(PROCEDURE 6).PostCodeRec2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidatePostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidatePostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateCountryCode(PROCEDURE 11).PostCodeRec(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateCountryCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateCountryCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupPostCode(PROCEDURE 2).PostCodeRec(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupPostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupPostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupPostCode(PROCEDURE 2).PostCodes(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupPostCode : 367;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupPostCode : "Post Codes";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfPersonalizationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfPersonalizationMgt : 9170;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfPersonalizationMgt : "Conf./Personalization Mgt.";
    //Variable type has not been exported.
}


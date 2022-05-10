tableextension 70181 OrderAddressExt extends "Order Address"
{
    // version NAVW19.00.00.51918,NAVIN9.00.00.51918

    fields
    {

        //Unsupported feature: Change NotBlank on ""Vendor No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 54)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: CodeModification on "City(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 91).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;
        field(16600; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;

            trigger OnValidate();
            begin
                /*IF State = '' THEN
                  "GST Registration No." := '';
                Vend.GET("Vendor No.");
                IF Vend."GST Vendor Type" <> Vend."GST Vendor Type"::Exempted THEN
                  "GST Registration No." := '';
                IF Vend."GST Vendor Type" = Vend."GST Vendor Type"::Import THEN
                  TESTFIELD(State,'')
                ELSE
                  IF Vend."GST Vendor Type" = Vend."GST Vendor Type"::Unregistered THEN
                    TESTFIELD(State);
                IF Vend."GST Vendor Type" <> Vend."GST Vendor Type"::Import THEN
                  Vend."Associated Enterprises" := FALSE;
                */

            end;
        }
        field(16601; "GST Registration No."; Code[15])
        {
            CaptionML = ENU = 'GST Registration No.',
                        ENN = 'GST Registration No.';

            trigger OnValidate();
            var
                Vendor: Record Vendor;
            begin
                /*TESTFIELD(State);
                TESTFIELD(Address);
                Vendor.RESET;
                //Vendor.GET(Code);// added by vishnu Priya o  16-11-2020
                Vendor.GET("Vendor No.");
                IF Vendor."P.A.N. No." <> '' THEN
                  GSTRegistrationNos.CheckGSTRegistrationNo(State,"GST Registration No.",Vendor."P.A.N. No.")
                ELSE
                  IF "GST Registration No." <> '' THEN
                    ERROR(PANErr);
                
                 Vend.GET("Vendor No."); // added by vishnu Priya o  16-11-2020
                //Vend.GET(Code);
                IF ("GST Registration No." <> '') OR ("ARN No." <> '')THEN
                  IF Vend."GST Vendor Type" IN [Vend."GST Vendor Type"::Unregistered,Vend."GST Vendor Type"::Import] THEN
                    ERROR(GSTRegNoErr);
                IF NOT (Vend."GST Vendor Type" IN [Vend."GST Vendor Type"::Import,Vend."GST Vendor Type"::Unregistered]) THEN
                  IF "ARN No." = '' THEN
                    TESTFIELD("GST Registration No.");*/

            end;
        }
        field(16602; "ARN No."; Code[15])
        {
            CaptionML = ENU = 'ARN No.',
                        ENN = 'ARN No.';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*Vend.GET("Vendor No.");
                IF Vend."GST Vendor Type" IN [Vend."GST Vendor Type"::Import,Vend."GST Vendor Type"::Unregistered] THEN
                  TESTFIELD("ARN No.",'');
                  */

            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Vendor No.,Code"(Key)". Please convert manually.

        key(Key1; "Vendor No.", "Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Vend.GET("Vendor No.");
    Name := Vend.Name;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Vend.Get("Vendor No.");
    Name := Vend.Name;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 102).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 8).MapPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 8).MapMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Vend(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Vend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Vend : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.

    var
        GSTRegistrationNos: Record "GST Registration Nos.";
        GSTStateCodeErr: TextConst ENU = 'You cannot change the state code', ENN = 'You cannot change the state code';
}


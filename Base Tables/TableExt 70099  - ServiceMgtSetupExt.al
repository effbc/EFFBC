tableextension 70099 ServiceMgtSetupExt extends "Service Mgt. Setup"
{
    // version NAVW19.00.00.48067,NAVIN9.00.00.48067

    fields
    {

        //Unsupported feature: Change OptionString on ""Fault Reporting Level"(Field 4)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Salesperson Mandatory"(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Service Zones Option"(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Resource Skills Option"(Field 36)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Contract Service Date"(Field 41)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Logo Position on Documents"(Field 43)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Service Contract Nos."(Field 58)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Contract Template Nos."(Field 59)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Contract Value Calc. Method"(Field 64)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Invoice"(Field 81)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Shpt."(Field 82)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Contract Credit Memo Nos."(Field 7601)". Please convert manually.

        field(16500; "Serv. Shipment Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Shipment Nos. (Trading)',
                        ENN = 'Serv. Shipment Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16501; "Serv. Invoice Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Invoice Nos. (Trading)',
                        ENN = 'Serv. Invoice Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16502; "Serv. Cr. Memo Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Cr. Memo Nos. (Trading)',
                        ENN = 'Serv. Cr. Memo Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16503; "Tax Dependency Type"; Option)
        {
            CaptionML = ENU = 'Tax Dependency Type',
                        ENN = 'Tax Dependency Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Bill To Customer,Ship To Customer',
                              ENN = 'Bill To Customer,Ship To Customer';
            OptionMembers = "Bill To Customer","Ship To Customer";
        }
        field(16504; "GST Dependency Type"; Option)
        {
            CaptionML = ENU = 'GST Dependency Type',
                        ENN = 'GST Dependency Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN = ' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";
        }
        field(16505; "Posted Inv. Nos. (Exempt)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. Nos. (Exempt)',
                        ENN = 'Posted Inv. Nos. (Exempt)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16506; "Posted Cr. Memo Nos. (Exempt)"; Code[10])
        {
            CaptionML = ENU = 'Posted Cr. Memo Nos. (Exempt)',
                        ENN = 'Posted Cr. Memo Nos. (Exempt)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16507; "Posted Inv. Nos. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. Nos. (Export)',
                        ENN = 'Posted Inv. Nos. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16508; "Posted Cr. Memo Nos. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Posted Cr. Memo Nos. (Export)',
                        ENN = 'Posted Cr. Memo Nos. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16509; "Posted Inv. Nos. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. Nos. (Supp)',
                        ENN = 'Posted Inv. Nos. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16510; "Posted Cr. Memo Nos. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Posted Cr. Memo Nos. (Supp)',
                        ENN = 'Posted Cr. Memo Nos. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16511; "Posted Inv. Nos. (Debit Note)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. Nos. (Debit Note)',
                        ENN = 'Posted Inv. Nos. (Debit Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(60001; "Last DC No."; Code[20])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Key1; "Primary Key")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Primary Key",'');
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Primary Key",'');
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}


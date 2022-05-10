tableextension 70222 TaxDetailExt extends "Tax Detail"
{
    // version NAVW17.00,NAVIN7.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Tax Jurisdiction Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Tax Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Tax Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Calculate Tax on Tax"(Field 8)". Please convert manually.

        field(13700; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            begin
                /*TaxJurisdiction.SETRANGE(Code,"Tax Jurisdiction Code");
                IF TaxJurisdiction.FINDFIRST THEN BEGIN
                  State.SETRANGE(Code,TaxJurisdiction."State Code");
                  IF State.FINDFIRST THEN BEGIN
                    StateForm.SETRANGE(State,State.Code);
                    IF StateForm.FINDFIRST THEN
                      IF PAGE.RUNMODAL(PAGE::"State Forms",StateForm) = ACTION :: LookupOK THEN
                        "Form Code" := StateForm."Form Code";
                  END;
                END;
                */

            end;
        }
        field(13701; "Forms Not Applicable"; Boolean)
        {
            CaptionML = ENU = 'Forms Not Applicable',
                        ENN = 'Forms Not Applicable';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13702; "VAT Exempted Goods"; Boolean)
        {
            CaptionML = ENU = 'VAT Exempted Goods',
                        ENN = 'VAT Exempted Goods';
            DataClassification = ToBeClassified;
        }
        field(16500; "Capital Goods"; Boolean)
        {
            CaptionML = ENU = 'Capital Goods',
                        ENN = 'Capital Goods';
            DataClassification = ToBeClassified;
        }
        field(16501; "Creditable Goods"; Boolean)
        {
            CaptionML = ENU = 'Creditable Goods',
                        ENN = 'Creditable Goods';
            DataClassification = ToBeClassified;
        }
        field(16502; "Standard Deduction %"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction %',
                        ENN = 'Standard Deduction %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16503; "VAT able Purch. Tax %"; Decimal)
        {
            CaptionML = ENU = 'VAT able Purch. Tax %',
                        ENN = 'VAT able Purch. Tax %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16504; "VAT Retention Limit % on ITC"; Decimal)
        {
            CaptionML = ENU = 'VAT Retention Limit % on ITC',
                        ENN = 'VAT Retention Limit % on ITC';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16505; "Schedule Code"; Code[10])
        {
            CaptionML = ENU = 'Schedule Code',
                        ENN = 'Schedule Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            begin
                /*TaxJurisdiction.SETRANGE(Code,"Tax Jurisdiction Code");
                IF TaxJurisdiction.FINDFIRST THEN BEGIN
                  State.SETRANGE(Code,TaxJurisdiction."State Code");
                  IF State.FINDFIRST THEN BEGIN
                    StateSchedule.SETRANGE("State Code",State.Code);
                    IF StateSchedule.FINDFIRST THEN
                      IF PAGE.RUNMODAL(PAGE::"State Schedules",StateSchedule) = ACTION :: LookupOK THEN
                        "Schedule Code" := StateSchedule."Schedule Code";
                  END;
                END;
                */

            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Tax Jurisdiction Code,Tax Group Code,Tax Type,Effective Date"(Key)". Please convert manually.

        key(Pk; "Tax Jurisdiction Code", "Tax Group Code", "Tax Type", "Effective Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TaxJurisdiction.GET("Tax Jurisdiction Code");
    "Calculate Tax on Tax" := TaxJurisdiction."Calculate Tax on Tax";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TaxJurisdiction.Get("Tax Jurisdiction Code");
    "Calculate Tax on Tax" := TaxJurisdiction."Calculate Tax on Tax";
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TaxJurisdiction.GET("Tax Jurisdiction Code");
    "Calculate Tax on Tax" := TaxJurisdiction."Calculate Tax on Tax";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TaxJurisdiction.Get("Tax Jurisdiction Code");
    "Calculate Tax on Tax" := TaxJurisdiction."Calculate Tax on Tax";
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnInsert.TaxJurisdiction(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.TaxJurisdiction : 320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.TaxJurisdiction : "Tax Jurisdiction";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.TaxJurisdiction(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnRename.TaxJurisdiction : 320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnRename.TaxJurisdiction : "Tax Jurisdiction";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateTaxSetup(PROCEDURE 3).TaxArea(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateTaxSetup : 318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateTaxSetup : "Tax Area";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateTaxSetup(PROCEDURE 3).TaxAreaLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateTaxSetup : 319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateTaxSetup : "Tax Area Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateTaxSetup(PROCEDURE 3).TaxGroup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateTaxSetup : 321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateTaxSetup : "Tax Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesTaxRate(PROCEDURE 4).TaxAreaLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesTaxRate : 319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesTaxRate : "Tax Area Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesTaxRate(PROCEDURE 6).TaxAreaLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesTaxRate : 319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesTaxRate : "Tax Area Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesTaxRate(PROCEDURE 6).TaxJurisdiction(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesTaxRate : 320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesTaxRate : "Tax Jurisdiction";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesTaxRate(PROCEDURE 6).TaxJurisdiction2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesTaxRate : 320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesTaxRate : "Tax Jurisdiction";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesTaxRateDetailed(PROCEDURE 7).TaxAreaLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesTaxRateDetailed : 319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesTaxRateDetailed : "Tax Area Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesTaxRateDetailed(PROCEDURE 7).TaxJurisdiction(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesTaxRateDetailed : 320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesTaxRateDetailed : "Tax Jurisdiction";
    //Variable type has not been exported.
}


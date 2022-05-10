tableextension 70056 TaxJurisdictionExt extends "Tax Jurisdiction"
{
    // version NAVW17.10,NAVIN7.10,B2B

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Unrealized VAT Type"(Field 12)". Please convert manually.


        //Unsupported feature: CodeModification on ""Unrealized VAT Type"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unrealized VAT Type" > 0 THEN BEGIN
          GLSetup.GET;
          GLSetup.TESTFIELD("Unrealized VAT",TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unrealized VAT Type" > 0 then begin
          GLSetup.Get;
          GLSetup.TestField("Unrealized VAT",true);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Calculate Tax on Tax"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TaxDetail.SETRANGE("Tax Jurisdiction Code",Code);
        TaxDetail.MODIFYALL("Calculate Tax on Tax","Calculate Tax on Tax");
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TaxDetail.SetRange("Tax Jurisdiction Code",Code);
        TaxDetail.ModifyAll("Calculate Tax on Tax","Calculate Tax on Tax");
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Adjust for Payment Discount"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Adjust for Payment Discount" THEN BEGIN
          GLSetup.GET;
          GLSetup.TESTFIELD("Adjust for Payment Disc.",TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Adjust for Payment Discount" then begin
          GLSetup.Get;
          GLSetup.TestField("Adjust for Payment Disc.",true);
        end;
        */
        //end;
        field(13702; "Forms Not Applicable"; Boolean)
        {
            CaptionML = ENU = 'Forms Not Applicable',
                        ENN = 'Forms Not Applicable';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*TaxDetail.RESET;
                TaxDetail.SETRANGE("Tax Jurisdiction Code",Code);
                IF TaxDetail.FIND('-') THEN
                  REPEAT
                    TaxDetail."Forms Not Applicable" := "Forms Not Applicable";
                    TaxDetail.MODIFY;
                  UNTIL TaxDetail.NEXT = 0
                  */

            end;
        }
        field(16503; "Retention Limit % (ITC NTS)"; Decimal)
        {
            CaptionML = ENU = 'Retention Limit % (ITC NTS)',
                        ENN = 'Retention Limit % (ITC NTS)';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16505; "Tax Type"; Option)
        {
            CaptionML = ENU = 'Tax Type',
                        ENN = 'Tax Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,VAT,CST',
                              ENN = ' ,VAT,CST';
            OptionMembers = " ",VAT,CST;
        }
        field(16506; "State Code"; Code[10])
        {
            CaptionML = ENU = 'State Code',
                        ENN = 'State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;

            trigger OnValidate();
            var
                StateRec: Record State;
            begin
                /*IF "State Code"  = '' THEN BEGIN
                  "Tax Account (Sales)" :=  '';
                  "Tax Account (Purchases)" := '';
                END;
                IF StateRec.GET("State Code") THEN  BEGIN
                  "Tax Account (Sales)" :=  StateRec."Tax Account (Sales)";
                  "Tax Account (Purchases)" := StateRec."Tax Account (Purchases)";
                END;
                */

            end;
        }
        field(16507; "Retention Limit Loaded on Item"; Boolean)
        {
            CaptionML = ENU = 'Retention Limit Loaded on Item',
                        ENN = 'Retention Limit Loaded on Item';
            DataClassification = ToBeClassified;
        }
        field(16508; "Tax Component"; Code[10])
        {
            CaptionML = ENU = 'Tax Component',
                        ENN = 'Tax Component';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Component";
        }
        field(80000; "Tax Type 2"; Option)
        {
            OptionCaption = 'Sales Tax,Service Tax';
            OptionMembers = "Sales Tax","Service Tax";
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Report-to Jurisdiction"(Key)". Please convert manually.

        key(Key1; "Report-to Jurisdiction")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "InsertDetailLines(PROCEDURE 1).TaxDetail(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertDetailLines : 322;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertDetailLines : "Tax Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteDetailLines(PROCEDURE 2).TaxAreaLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteDetailLines : 319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteDetailLines : "Tax Area Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteDetailLines(PROCEDURE 2).TaxDetail(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteDetailLines : 322;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteDetailLines : "Tax Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDescriptionInCurrentLanguage(PROCEDURE 9).Language(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDescriptionInCurrentLanguage : 8;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDescriptionInCurrentLanguage : Language;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TaxDetail(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TaxDetail : 322;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TaxDetail : "Tax Detail";
    //Variable type has not been exported.
}


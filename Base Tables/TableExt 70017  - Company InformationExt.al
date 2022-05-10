tableextension 70017 CompanyInformationExt extends "Company Information"
{
    // version NAVW19.00.00.51852,NAVIN9.00.00.51852

    fields
    {

        //Unsupported feature: Change TableRelation on "City(Field 6)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 6)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to City"(Field 26)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 26)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 26)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Post Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 36)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 37)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""SWIFT Code"(Field 39)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""SWIFT Code"(Field 39)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""IC Partner Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""IC Inbox Type"(Field 42)". Please convert manually.


        //Unsupported feature: Change OptionString on ""IC Inbox Type"(Field 42)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""IC Inbox Details"(Field 43)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Auto. Send Transactions"(Field 44)". Please convert manually.


        //Unsupported feature: Change OptionString on ""System Indicator"(Field 46)". Please convert manually.


        //Unsupported feature: Change Numeric on "GLN(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Picture - Last Mod. Date Time"(Field 96)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Modified Date Time"(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""Created DateTime"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Demo Company"(Field 100)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Brand Color Code"(Field 301)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Responsibility Center"(Field 5700)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Check-Avail. Period Calc."(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Check-Avail. Time Bucket"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cal. Convergence Time Frame"(Field 7601)". Please convert manually.


        //Unsupported feature: CodeModification on "City(Field 6).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""VAT Registration No."(Field 19).OnValidate". Please convert manually.

        //trigger "(Field 19)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "VAT Registration No." := UPPERCASE("VAT Registration No.");
        IF "VAT Registration No." = xRec."VAT Registration No." THEN
          EXIT;
        IF NOT VATRegNoFormat.Test("VAT Registration No.","Country/Region Code",'',DATABASE::"Company Information") THEN
          EXIT;
        IF "Country/Region Code" = '' THEN
          EXIT;
        IF VATRegNoSrvConfig.VATRegNoSrvIsEnabled THEN BEGIN
          VATRegistrationLogMgt.ValidateVATRegNoWithVIES(ResultRecordRef,Rec,"Primary Key",
            VATRegistrationLog."Account Type"::"Company Information","Country/Region Code");
          ResultRecordRef.SETTABLE(Rec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {"VAT Registration No." := UPPERCASE("VAT Registration No.");
        #2..9
            VATRegistrationLog."Account Type"::"3","Country/Region Code");
          ResultRecordRef.SETTABLE(Rec);
        END;
        }
        */
        //end;


        //Unsupported feature: CodeModification on ""Ship-to City"(Field 26).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on "Picture(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PictureUpdated := TRUE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PictureUpdated := true;
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 30).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Ship-to Post Code"(Field 32).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Inbox Type"(Field 42).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "IC Inbox Type" = "IC Inbox Type"::Database THEN
          "IC Inbox Details" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "IC Inbox Type" = "IC Inbox Type"::Database then
          "IC Inbox Details" := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Inbox Details"(Field 43).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("IC Partner Code");
        CASE "IC Inbox Type" OF
          "IC Inbox Type"::"File Location":
            BEGIN
              IF "IC Inbox Details" = '' THEN
                FileName := STRSUBSTNO('%1.xml',"IC Partner Code")
              ELSE
                FileName := "IC Inbox Details" + STRSUBSTNO('\%1.xml',"IC Partner Code");

              FileName2 := FileMgt.SaveFileDialog(Text001,FileName,'');
              IF FileName <> FileName2 THEN BEGIN
                Path := FileMgt.GetDirectoryName(FileName2);
                IF Path <> '' THEN
                  "IC Inbox Details" := COPYSTR(Path,1,250);
              END;
            END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("IC Partner Code");
        case "IC Inbox Type" of
          "IC Inbox Type"::"File Location":
            begin
              if "IC Inbox Details" = '' then
                FileName := StrSubstNo('%1.xml',"IC Partner Code")
              else
                FileName := "IC Inbox Details" + StrSubstNo('\%1.xml',"IC Partner Code");

              FileName2 := FileMgt.SaveFileDialog(Text001,FileName,'');
              if FileName <> FileName2 then begin
                Path := FileMgt.GetDirectoryName(FileName2);
                if Path <> '' then
                  "IC Inbox Details" := CopyStr(Path,1,250);
              end;
            end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "GLN(Field 90).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF GLN <> '' THEN
          IF NOT GLNCalculator.IsValidCheckDigit13(GLN) THEN
            ERROR(GLNCheckDigitErr,FIELDCAPTION(GLN));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if GLN <> '' then
          if not GLNCalculator.IsValidCheckDigit13(GLN) then
            Error(GLNCheckDigitErr,FieldCaption(GLN));
        */
        //end;


        //Unsupported feature: CodeModification on ""Brand Color Value"(Field 300).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        O365BrandColor.FindColor(O365BrandColor,"Brand Color Value");
        VALIDATE("Brand Color Code",O365BrandColor.Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {O365BrandColor.FindColor(O365BrandColor,"Brand Color Value");
        VALIDATE("Brand Color Code",O365BrandColor.Code);
        }
        */
        //end;


        //Unsupported feature: CodeModification on ""Sync with O365 Bus. profile"(Field 7603).OnValidate". Please convert manually.

        //trigger  profile"(Field 7603)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sync with O365 Bus. profile" THEN
          IF IsSyncEnabledForOtherCompany THEN
            ERROR(SyncAlreadyEnabledErr);

        IF "Sync with O365 Bus. profile" THEN
          CODEUNIT.RUN(CODEUNIT::"Graph Data Setup")
        ELSE
          GraphIntBusinessProfile.UpdateCompanyBusinessProfileId('');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sync with O365 Bus. profile" then
          if IsSyncEnabledForOtherCompany then
            Error(SyncAlreadyEnabledErr);

        if "Sync with O365 Bus. profile" then
          CODEUNIT.Run(CODEUNIT::"Graph Data Setup")
        else
          GraphIntBusinessProfile.UpdateCompanyBusinessProfileId('');
        */
        //end;
        field(13701; "T.I.N. No."; Code[11])
        {
            CaptionML = ENU = 'T.I.N. No.',
                        ENN = 'T.I.N. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "T.I.N. Nos.";
        }
        field(13704; "L.S.T. No."; Code[20])
        {
            CaptionML = ENU = 'L.S.T. No.',
                        ENN = 'L.S.T. No.';
            DataClassification = ToBeClassified;
        }
        field(13705; "C.S.T No."; Code[30])
        {
            CaptionML = ENU = 'C.S.T No.',
                        ENN = 'C.S.T No.';
            DataClassification = ToBeClassified;
        }
        field(13706; "P.A.N. No."; Code[20])
        {
            CaptionML = ENU = 'P.A.N. No.',
                        ENN = 'P.A.N. No.';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF "P.A.N. No." <> '' THEN
                  CheckGSTRegBlankInRef;
                UpdateBatchHeaderPANNo;
                UpdateTCSBatchHeaderPANNo;
                */

            end;
        }
        field(13708; "E.C.C. No."; Code[20])
        {
            CaptionML = ENU = 'E.C.C. No.',
                        ENN = 'E.C.C. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "E.C.C. Nos.";
        }
        field(13709; "T.A.N. No."; Code[10])
        {
            CaptionML = ENU = 'T.A.N. No.',
                        ENN = 'T.A.N. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "T.A.N. Nos.";

            trigger OnValidate();
            begin
                //UpdateBatchHeaderTANNo;
            end;
        }
        field(13711; "C.E. Registration No."; Code[20])
        {
            CaptionML = ENU = 'C.E. Registration No.',
                        ENN = 'C.E. Registration No.';
            DataClassification = ToBeClassified;
        }
        field(13712; "C.E. Range"; Code[20])
        {
            CaptionML = ENU = 'C.E. Range',
                        ENN = 'C.E. Range';
            DataClassification = ToBeClassified;
        }
        field(13713; "C.E. Commissionerate"; Code[20])
        {
            CaptionML = ENU = 'C.E. Commissionerate',
                        ENN = 'C.E. Commissionerate';
            DataClassification = ToBeClassified;
        }
        field(13714; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State.Code;
        }
        field(13715; "Manufacturers Code"; Code[20])
        {
            CaptionML = ENU = 'Manufacturers Code',
                        ENN = 'Manufacturers Code';
            DataClassification = ToBeClassified;
        }
        field(13719; "Factories Act. Regd. No."; Code[20])
        {
            CaptionML = ENU = 'Factories Act. Regd. No.',
                        ENN = 'Factories Act. Regd. No.';
            DataClassification = ToBeClassified;
        }
        field(13722; "C.E. Division"; Code[20])
        {
            CaptionML = ENU = 'C.E. Division',
                        ENN = 'C.E. Division';
            DataClassification = ToBeClassified;
        }
        field(13725; "Company Status"; Option)
        {
            CaptionML = ENU = 'Company Status',
                        ENN = 'Company Status';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Public Limited Co.,Private Limited Co.,Others,Government,Individual/Proprietary,Registered Trust,Partnership,Society/Co-op Society',
                              ENN = 'Public Limited Co.,Private Limited Co.,Others,Government,Individual/Proprietary,Registered Trust,Partnership,Society/Co-op Society';
            OptionMembers = "Public Limited Co.","Private Limited Co.",Others,Government,"Individual/Proprietary","Registered Trust",Partnership,"Society/Co-op Society";
        }
        field(13737; "Company Registration  No."; Code[20])
        {
            CaptionML = ENU = 'Company Registration  No.',
                        ENN = 'Company Registration  No.';
            DataClassification = ToBeClassified;
        }
        field(13745; "Circle No."; Text[30])
        {
            CaptionML = ENU = 'Circle No.',
                        ENN = 'Circle No.';
            DataClassification = ToBeClassified;
        }
        field(13746; "Ward No."; Text[30])
        {
            CaptionML = ENU = 'Ward No.',
                        ENN = 'Ward No.';
            DataClassification = ToBeClassified;
        }
        field(13747; "Assessing Officer"; Text[30])
        {
            CaptionML = ENU = 'Assessing Officer',
                        ENN = 'Assessing Officer';
            DataClassification = ToBeClassified;
        }
        field(13749; "Cash Account No."; Code[20])
        {
            CaptionML = ENU = 'Cash Account No.',
                        ENN = 'Cash Account No.';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(16465; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16500; "T.C.A.N. No."; Code[10])
        {
            CaptionML = ENU = 'T.C.A.N. No.',
                        ENN = 'T.C.A.N. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "T.C.A.N. No.";

            trigger OnValidate();
            begin
                //UpdateTCSBatchHeaderTCAN;
            end;
        }
        field(16501; Composition; Boolean)
        {
            CaptionML = ENU = 'Composition',
                        ENN = 'Composition';
            DataClassification = ToBeClassified;
        }
        field(16502; "Export or Deemed Export"; Boolean)
        {
            CaptionML = ENU = 'Export or Deemed Export',
                        ENN = 'Export or Deemed Export';
            DataClassification = ToBeClassified;
        }
        field(16503; "Composition Type"; Option)
        {
            CaptionML = ENU = 'Composition Type',
                        ENN = 'Composition Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Retailer,Works Contract,Bakery,Restaurant / Club,Second Hand Motor Vehicle',
                              ENN = ' ,Retailer,Works Contract,Bakery,Restaurant / Club,Second Hand Motor Vehicle';
            OptionMembers = " ",Retailer,"Works Contract",Bakery,"Restaurant / Club","Second Hand Motor Vehicle";
        }
        field(16504; "Trading Co."; Boolean)
        {
            CaptionML = ENU = 'Trading Co.',
                        ENN = 'Trading Co.';
            DataClassification = ToBeClassified;
        }
        field(16505; "Large Tax Payer"; Boolean)
        {
            CaptionML = ENU = 'Large Tax Payer',
                        ENN = 'Large Tax Payer';
            DataClassification = ToBeClassified;
        }
        field(16506; "Large Tax Payer City"; Text[30])
        {
            CaptionML = ENU = 'Large Tax Payer City',
                        ENN = 'Large Tax Payer City';
            DataClassification = ToBeClassified;
            TableRelation = "Post Code".City;
        }
        field(16507; "Input Service Distributor"; Boolean)
        {
            CaptionML = ENU = 'Input Service Distributor',
                        ENN = 'Input Service Distributor';
            DataClassification = ToBeClassified;
        }
        field(16508; "ST Payment Period"; Option)
        {
            CaptionML = ENU = 'ST Payment Period',
                        ENN = 'ST Payment Period';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Monthly,Quarterly',
                              ENN = 'Monthly,Quarterly';
            OptionMembers = Monthly,Quarterly;
        }
        field(16509; "Central STC Applicable"; Boolean)
        {
            CaptionML = ENU = 'Central STC Applicable',
                        ENN = 'Central STC Applicable';
            DataClassification = ToBeClassified;
        }
        field(16510; "ST Payment Due Day"; Integer)
        {
            CaptionML = ENU = 'ST Payment Due Day',
                        ENN = 'ST Payment Due Day';
            DataClassification = ToBeClassified;
            MaxValue = 31;
            MinValue = 0;
        }
        field(16511; "P.A.N. Status"; Option)
        {
            CaptionML = ENU = 'P.A.N. Status',
                        ENN = 'P.A.N. Status';
            DataClassification = ToBeClassified;
            InitValue = "Not available";
            OptionCaptionML = ENU = 'Available,Not available',
                              ENN = 'Available,Not available';
            OptionMembers = Available,"Not available";

            trigger OnValidate();
            begin
                /*IF "P.A.N. Status" = "P.A.N. Status"::"Not available" THEN
                  "P.A.N. No." := Text16502
                ELSE
                  "P.A.N. No." := '';
                  */

            end;
        }
        field(16512; "PAO Code"; Code[20])
        {
            CaptionML = ENU = 'PAO Code',
                        ENN = 'PAO Code';
            DataClassification = ToBeClassified;
        }
        field(16513; "PAO Registration No."; Code[7])
        {
            CaptionML = ENU = 'PAO Registration No.',
                        ENN = 'PAO Registration No.';
            DataClassification = ToBeClassified;
        }
        field(16514; "DDO Code"; Code[20])
        {
            CaptionML = ENU = 'DDO Code',
                        ENN = 'DDO Code';
            DataClassification = ToBeClassified;
        }
        field(16515; "DDO Registration No."; Code[10])
        {
            CaptionML = ENU = 'DDO Registration No.',
                        ENN = 'DDO Registration No.';
            DataClassification = ToBeClassified;
        }
        field(16516; "Ministry Code"; Code[3])
        {
            CaptionML = ENU = 'Ministry Code',
                        ENN = 'Ministry Code';
            DataClassification = ToBeClassified;
            /*
            TableRelation = IF ("Ministry Type" = CONST(Others)) Ministry WHERE("Other Ministry" = FILTER(true))
            ELSE
            IF ("Ministry Type" = CONST(Regular)) Ministry WHERE("Other Ministry" = CONST(false));*/
        }
        field(16517; "Deductor Category"; Code[1])
        {
            CaptionML = ENU = 'Deductor Category',
                        ENN = 'Deductor Category';
            DataClassification = ToBeClassified;
            //TableRelation = "Deductor Category";

            trigger OnValidate();
            begin
                /*DeductorCategory.GET("Deductor Category");
                IF NOT DeductorCategory."DDO Code Mandatory" THEN BEGIN
                  "DDO Code" := '';
                  "DDO Registration No." := '';
                END;
                IF NOT DeductorCategory."PAO Code Mandatory" THEN BEGIN
                  "PAO Code" := '';
                  "PAO Registration No." := '';
                END;
                IF NOT DeductorCategory."Ministry Details Mandatory" THEN BEGIN
                  "Ministry Type" := "Ministry Type"::" ";
                  "Ministry Code" := '';
                END;
                */
            end;
        }
        field(16518; "Ministry Type"; Option)
        {
            CaptionML = ENU = 'Ministry Type',
                        ENN = 'Ministry Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Regular,Others',
                              ENN = ' ,Regular,Others';
            OptionMembers = " ",Regular,Others;
        }
        field(16519; "STD Code"; Code[5])
        {
            CaptionML = ENU = 'STD Code',
                        ENN = 'STD Code';
            DataClassification = ToBeClassified;
        }
        field(16520; "TAN Registration No."; Code[12])
        {
            CaptionML = ENU = 'TAN Registration No.',
                        ENN = 'TAN Registration No.';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF (STRLEN("TAN Registration No.") < MAXSTRLEN("TAN Registration No.")) AND ("TAN Registration No." <> '') THEN
                  ERROR(Text16503,FIELDCAPTION("TAN Registration No."),MAXSTRLEN("TAN Registration No."));
                  */

            end;
        }
        field(16600; "GST Registration No."; Code[15])
        {
            CaptionML = ENU = 'GST Registration No.',
                        ENN = 'GST Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos." WHERE("State Code" = FIELD(State));

            trigger OnValidate();
            begin
                //TESTFIELD(State);
            end;
        }
        field(16601; "ARN No."; Code[15])
        {
            CaptionML = ENU = 'ARN No.',
                        ENN = 'ARN No.';
            DataClassification = ToBeClassified;
        }
        field(50001; "C.S.T.Date"; Date)
        {
        }
        field(60000; "Insurance Policy No."; Integer)
        {
        }
        field(60001; "Insurance Policy Name"; Text[150])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Pri1; "Primary Key")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified Date Time" := CURRENTDATETIME;
    IF PictureUpdated THEN
      "Picture - Last Mod. Date Time" := "Last Modified Date Time";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified Date Time" := CurrentDateTime;
    if PictureUpdated then
      "Picture - Last Mod. Date Time" := "Last Modified Date Time";
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified Date Time" := CURRENTDATETIME;
    IF PictureUpdated THEN
      "Picture - Last Mod. Date Time" := "Last Modified Date Time";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified Date Time" := CurrentDateTime;
    if PictureUpdated then
      "Picture - Last Mod. Date Time" := "Last Modified Date Time";
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 19).OnValidate.VATRegNoFormat(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 381;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration No. Format";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 19).OnValidate.VATRegistrationLog(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration Log";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 19).OnValidate.VATRegistrationLogMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration Log Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""E-Mail"(Field 34).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Inbox Details"(Field 43).OnLookup.FileMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Inbox Details" : 419;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Inbox Details" : "File Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLN(Field 90).OnValidate.GLNCalculator(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLN : 1607;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLN : "GLN Calculator";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sync with O365 Bus. profile"(Field 7603).OnValidate.GraphIntBusinessProfile(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sync with O365 Bus. profile" : 5442;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sync with O365 Bus. profile" : "Graph Int - Business Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IBANError(PROCEDURE 12).ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IBANError : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IBANError : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyAndSetPaymentInfo(PROCEDURE 6).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyAndSetPaymentInfo : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyAndSetPaymentInfo : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyAndSetPaymentInfo(PROCEDURE 6).CompanyInformationPage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyAndSetPaymentInfo : 1;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyAndSetPaymentInfo : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDatabaseIndicatorText(PROCEDURE 9).ActiveSession(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDatabaseIndicatorText : 2000000110;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDatabaseIndicatorText : "Active Session";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCompanyCountryRegionCode(PROCEDURE 25).MediaResourcesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCompanyCountryRegionCode : 9755;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCompanyCountryRegionCode : "Media Resources Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsSyncEnabledForOtherCompany(PROCEDURE 21).CompanyInformation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsSyncEnabledForOtherCompany : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsSyncEnabledForOtherCompany : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsSyncEnabledForOtherCompany(PROCEDURE 21).Company(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsSyncEnabledForOtherCompany : 2000000006;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsSyncEnabledForOtherCompany : Company;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.
}


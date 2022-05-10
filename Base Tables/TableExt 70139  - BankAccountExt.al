tableextension 70139 BankAccountExts extends "Bank Account"
{
    // version NAVW19.00.00.50583,NAVIN9.00.00.50583,TFS223871,Rev01

    fields
    {

        //Unsupported feature: Change TableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Our Contact Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 54)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Filter"(Field 56)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Filter"(Field 57)". Please convert manually.

        modify(Balance)
        {

            //Unsupported feature: Change CalcFormula on "Balance(Field 58)". Please convert manually.

            CaptionML = ENU = 'Balance';

            //Unsupported feature: Change Editable on "Balance(Field 58)". Please convert manually.

        }
        modify("Balance (LCY)")
        {

            //Unsupported feature: Change CalcFormula on ""Balance (LCY)"(Field 59)". Please convert manually.

            CaptionML = ENU = 'Balance (LCY)';

            //Unsupported feature: Change Editable on ""Balance (LCY)"(Field 59)". Please convert manually.

        }

        //Unsupported feature: Change CalcFormula on ""Net Change"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Net Change"(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Net Change (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Net Change (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Total on Checks"(Field 62)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total on Checks"(Field 62)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Last Check No."(Field 93)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Balance at Date"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Balance at Date"(Field 95)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Balance at Date (LCY)"(Field 96)". Please convert manually.


        //Unsupported feature: Change Editable on ""Balance at Date (LCY)"(Field 96)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount"(Field 97)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 97)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount"(Field 97)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount"(Field 98)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount"(Field 98)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount (LCY)"(Field 99)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount (LCY)"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount (LCY)"(Field 99)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount (LCY)"(Field 100)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount (LCY)"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount (LCY)"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 107)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Check Report ID"(Field 108)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Check Report Name"(Field 109)". Please convert manually.


        //Unsupported feature: Change Editable on ""Check Report Name"(Field 109)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""SWIFT Code"(Field 111)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""SWIFT Code"(Field 111)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bank Name - Data Conversion"(Field 1213)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bank Name - Data Conversion"(Field 1213)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Positive Pay Export Code"(Field 1260)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          GLSetup.GET;
          NoSeriesMgt.TestManual(GLSetup."Bank Account Nos.");
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          GLSetup.Get;
          NoSeriesMgt.TestManual(GLSetup."Bank Account Nos.");
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Name(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Search Name" = UPPERCASE(xRec.Name)) OR ("Search Name" = '') THEN
          "Search Name" := Name;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Search Name" = UpperCase(xRec.Name)) or ("Search Name" = '') then
          "Search Name" := Name;
        */
        //end;


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


        //Unsupported feature: CodeModification on ""Currency Code"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Currency Code" = xRec."Currency Code" THEN
          EXIT;

        BankAcc.RESET;
        BankAcc := Rec;
        BankAcc.CALCFIELDS(Balance,"Balance (LCY)");
        BankAcc.TESTFIELD(Balance,0);
        BankAcc.TESTFIELD("Balance (LCY)",0);

        IF NOT BankAccLedgEntry.SETCURRENTKEY("Bank Account No.",Open) THEN
          BankAccLedgEntry.SETCURRENTKEY("Bank Account No.");
        BankAccLedgEntry.SETRANGE("Bank Account No.","No.");
        BankAccLedgEntry.SETRANGE(Open,TRUE);
        IF BankAccLedgEntry.FINDLAST THEN
          ERROR(
            Text000,
            FIELDCAPTION("Currency Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Currency Code" = xRec."Currency Code" then
          exit;

        BankAcc.Reset;
        BankAcc := Rec;
        BankAcc.CalcFields(Balance,"Balance (LCY)");
        BankAcc.TestField(Balance,0);
        BankAcc.TestField("Balance (LCY)",0);

        if not BankAccLedgEntry.SetCurrentKey("Bank Account No.",Open) then
          BankAccLedgEntry.SetCurrentKey("Bank Account No.");
        BankAccLedgEntry.SetRange("Bank Account No.","No.");
        BankAccLedgEntry.SetRange(Open,true);
        if BankAccLedgEntry.FindLast then
          Error(
            Text000,
            FieldCaption("Currency Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Last Payment Statement No."(Field 42).OnValidate". Please convert manually.

        //trigger "(Field 42)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TextManagement.EvaluateIncStr("Last Payment Statement No.",FIELDCAPTION("Last Payment Statement No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TextManagement.EvaluateIncStr("Last Payment Statement No.",FieldCaption("Last Payment Statement No."));
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


        //Unsupported feature: CodeModification on ""Bank Stmt. Service Record ID"(Field 121).OnValidate". Please convert manually.

        //trigger  Service Record ID"(Field 121)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF FORMAT("Bank Stmt. Service Record ID") = '' THEN
          OnUnlinkStatementProviderEvent(Rec,Handled);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Format("Bank Stmt. Service Record ID") = '' then
          OnUnlinkStatementProviderEvent(Rec,Handled);
        */
        //end;


        //Unsupported feature: CodeModification on ""Automatic Stmt. Import Enabled"(Field 124).OnValidate". Please convert manually.

        //trigger  Import Enabled"(Field 124)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Automatic Stmt. Import Enabled" THEN BEGIN
          IF NOT IsAutoLogonPossible THEN
            ERROR(MFANotSupportedErr);

          IF NOT ("Transaction Import Timespan" IN [0..9999]) THEN
            ERROR(TransactionImportTimespanMustBePositiveErr);
          ScheduleBankStatementDownload
        END ELSE
          UnscheduleBankStatementDownload;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Automatic Stmt. Import Enabled" then begin
          if not IsAutoLogonPossible then
            Error(MFANotSupportedErr);

          if not ("Transaction Import Timespan" in [0..9999]) then
            Error(TransactionImportTimespanMustBePositiveErr);
          ScheduleBankStatementDownload
        end else
          UnscheduleBankStatementDownload;
        */
        //end;


        //Unsupported feature: CodeModification on ""Match Tolerance Type"(Field 1250).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Match Tolerance Type" <> xRec."Match Tolerance Type" THEN
          "Match Tolerance Value" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Match Tolerance Type" <> xRec."Match Tolerance Type" then
          "Match Tolerance Value" := 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Match Tolerance Value"(Field 1251).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Match Tolerance Value" < 0 THEN
          ERROR(InvalidValueErr);

        IF "Match Tolerance Type" = "Match Tolerance Type"::Percentage THEN
          IF "Match Tolerance Value" > 99 THEN
            ERROR(InvalidPercentageValueErr,FIELDCAPTION("Match Tolerance Type"),
              FORMAT("Match Tolerance Type"::Percentage));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Match Tolerance Value" < 0 then
          Error(InvalidValueErr);

        if "Match Tolerance Type" = "Match Tolerance Type"::Percentage then
          if "Match Tolerance Value" > 99 then
            Error(InvalidPercentageValueErr,FieldCaption("Match Tolerance Type"),
              Format("Match Tolerance Type"::Percentage));
        */
        //end;
        field(16500; "Stale Cheque Stipulated Period"; DateFormula)
        {
            CaptionML = ENU = 'Stale Cheque Stipulated Period',
                        ENN = 'Stale Cheque Stipulated Period';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*StipulatePeriod := FORMAT("Stale Cheque Stipulated Period");
                IF STRPOS (StipulatePeriod,'-') <> 0 THEN
                  ERROR(Text16500);
                  */

            end;
        }
        field(16501; "State Code"; Code[10])
        {
            CaptionML = ENU = 'State Code',
                        ENN = 'State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;

            trigger OnValidate();
            begin
                /*IF "GST Registration Status" = "GST Registration Status"::Registered THEN
                  TESTFIELD("GST Registration No.",'');
                */

            end;
        }
        field(16502; "GST Registration Status"; Option)
        {
            CaptionML = ENU = 'GST Registration Status',
                        ENN = 'GST Registration Status';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Registered',
                              ENN = ' ,Registered';
            OptionMembers = " ",Registered;
        }
        field(16503; "GST Registration No."; Code[15])
        {
            CaptionML = ENU = 'GST Registration No.',
                        ENN = 'GST Registration No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bank Acc. Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Country/Region Code"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Bank Acc. Posting Group")
        {
        }
        key(Key4; "Currency Code")
        {
        }
        key(Key5; "Country/Region Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CheckDeleteBalancingBankAccount;

    MoveEntries.MoveBankAccEntries(Rec);

    CommentLine.SETRANGE("Table Name",CommentLine."Table Name"::"Bank Account");
    CommentLine.SETRANGE("No.","No.");
    CommentLine.DELETEALL;

    UpdateContFromBank.OnDelete(Rec);

    DimMgt.DeleteDefaultDim(DATABASE::"Bank Account","No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    CommentLine.SetRange("Table Name",CommentLine."Table Name"::"Bank Account");
    CommentLine.SetRange("No.","No.");
    CommentLine.DeleteAll;
    #8..11
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "No." = '' THEN BEGIN
      GLSetup.GET;
      GLSetup.TESTFIELD("Bank Account Nos.");
      NoSeriesMgt.InitSeries(GLSetup."Bank Account Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;

    IF NOT InsertFromContact THEN
      UpdateContFromBank.OnInsert(Rec);

    DimMgt.UpdateDefaultDim(
      DATABASE::"Bank Account","No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "No." = '' then begin
      GLSetup.Get;
      GLSetup.TestField("Bank Account Nos.");
      NoSeriesMgt.InitSeries(GLSetup."Bank Account Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;

    if not InsertFromContact then
    #8..12
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;

    IF IsContactUpdateNeeded THEN BEGIN
      MODIFY;
      UpdateContFromBank.OnModify(Rec);
      IF NOT FIND THEN BEGIN
        RESET;
        IF FIND THEN;
      END;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;

    if IsContactUpdateNeeded then begin
      Modify;
      UpdateContFromBank.OnModify(Rec);
      if not Find then begin
        Reset;
        if Find then;
      end;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DimMgt.RenameDefaultDim(DATABASE::"Bank Account",xRec."No.","No.");
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    DimMgt.RenameDefaultDim(DATABASE::"Bank Account",xRec."No.","No.");
    "Last Date Modified" := Today;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Last Payment Statement No."(Field 42).OnValidate.TextManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Last Payment Statement No." : 41;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Last Payment Statement No." : TextManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""E-Mail"(Field 102).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IBAN(Field 110).OnValidate.CompanyInfo(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IBAN : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IBAN : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowContact(PROCEDURE 1).ContBusRel(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowContact : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowContact : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowContact(PROCEDURE 1).Cont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowContact : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowContact : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPaymentExportCodeunitID(PROCEDURE 6).BankExportImportSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPaymentExportCodeunitID : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPaymentExportCodeunitID : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPaymentExportXMLPortID(PROCEDURE 4).BankExportImportSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPaymentExportXMLPortID : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPaymentExportXMLPortID : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDDExportCodeunitID(PROCEDURE 11).BankExportImportSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDDExportCodeunitID : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDDExportCodeunitID : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDDExportXMLPortID(PROCEDURE 9).BankExportImportSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDDExportXMLPortID : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDDExportXMLPortID : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCreditTransferMessageNo(PROCEDURE 5).NoSeriesManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCreditTransferMessageNo : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCreditTransferMessageNo : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDirectDebitMessageNo(PROCEDURE 10).NoSeriesManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDirectDebitMessageNo : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDirectDebitMessageNo : NoSeriesManagement;
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


    //Unsupported feature: PropertyModification on "GetDataExchDef(PROCEDURE 13).BankExportImportSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDataExchDef : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDataExchDef : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDataExchDefPaymentExport(PROCEDURE 51).BankExportImportSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDataExchDefPaymentExport : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDataExchDefPaymentExport : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsInLocalCurrency(PROCEDURE 16).GeneralLedgerSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsInLocalCurrency : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsInLocalCurrency : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPosPayExportCodeunitID(PROCEDURE 17).BankExportImportSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPosPayExportCodeunitID : 1200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPosPayExportCodeunitID : "Bank Export/Import Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StatementProvidersExist(PROCEDURE 37).TempNameValueBuffer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StatementProvidersExist : 823;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StatementProvidersExist : "Name/Value Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUnlinkedBankAccounts(PROCEDURE 30).BankAccount(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUnlinkedBankAccounts : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUnlinkedBankAccounts : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLinkedBankAccounts(PROCEDURE 33).BankAccount(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLinkedBankAccounts : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLinkedBankAccounts : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectBankLinkingService(PROCEDURE 38).TempNameValueBuffer(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectBankLinkingService : 823;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectBankLinkingService : "Name/Value Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ScheduleBankStatementDownload(PROCEDURE 18).JobQueueEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ScheduleBankStatementDownload : 472;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ScheduleBankStatementDownload : "Job Queue Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UnscheduleBankStatementDownload(PROCEDURE 20).JobQueueEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UnscheduleBankStatementDownload : 472;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UnscheduleBankStatementDownload : "Job Queue Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateNewAccount(PROCEDURE 42).GeneralLedgerSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateNewAccount : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateNewAccount : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowBankStatementDownloadJobQueueEntry(PROCEDURE 19).JobQueueEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowBankStatementDownloadJobQueueEntry : 472;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowBankStatementDownloadJobQueueEntry : "Job Queue Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDeleteBalancingBankAccount(PROCEDURE 52).PaymentRegistrationSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDeleteBalancingBankAccount : 980;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDeleteBalancingBankAccount : "Payment Registration Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsScheduledBankStatement(PROCEDURE 43).JobQueueEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsScheduledBankStatement : 472;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsScheduledBankStatement : "Job Queue Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisableStatementProviders(PROCEDURE 45).TempNameValueBuffer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisableStatementProviders : 823;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisableStatementProviders : "Name/Value Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsContactUpdateNeeded(PROCEDURE 49).BankContUpdate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsContactUpdateNeeded : 5058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsContactUpdateNeeded : "BankCont-Update";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAcc(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAcc : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAcc : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAccLedgEntry(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccLedgEntry : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccLedgEntry : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CommentLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CommentLine : 97;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CommentLine : "Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MoveEntries(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MoveEntries : 361;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MoveEntries : MoveEntries;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateContFromBank(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateContFromBank : 5058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateContFromBank : "BankCont-Update";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnlineFeedStatementStatus(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnlineFeedStatementStatus : Not Linked,Linked,Linked and Auto. Bank Statement Enabled;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnlineFeedStatementStatus : "Not Linked",Linked,"Linked and Auto. Bank Statement Enabled";
    //Variable type has not been exported.
}


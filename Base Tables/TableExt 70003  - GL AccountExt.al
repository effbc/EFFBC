tableextension 70003 GLAccoountExt extends "G/L Account"
{
    // version NAVW19.00.00.49741,NAVIN9.00.00.49741,TFS225680,B2B1.0

    fields
    {

        //Unsupported feature: Change NotBlank on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Account Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Account Category"(Field 8)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Account Category"(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Income/Balance"(Field 9)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 12)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Direct Posting"(Field 14)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reconciliation Account"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Modified Date Time"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 26)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Filter"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Filter"(Field 30)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Balance at Date"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Balance at Date"(Field 31)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Net Change"(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Net Change"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Budgeted Amount"(Field 33)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "Totaling(Field 34)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "Totaling(Field 34)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Balance(Field 36)". Please convert manually.


        //Unsupported feature: Change Editable on "Balance(Field 36)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Budget at Date"(Field 37)". Please convert manually.


        //Unsupported feature: Change Editable on ""Budget at Date"(Field 37)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Consol. Translation Method"(Field 39)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Consol. Translation Method"(Field 39)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Consol. Debit Acc."(Field 40)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Consol. Credit Acc."(Field 41)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Gen. Posting Type"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount"(Field 47)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 47)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount"(Field 47)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount"(Field 48)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount"(Field 48)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Budgeted Debit Amount"(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Budgeted Credit Amount"(Field 53)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""VAT Amt."(Field 59)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Amt."(Field 59)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Additional-Currency Net Change"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional-Currency Net Change"(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Add.-Currency Balance at Date"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Add.-Currency Balance at Date"(Field 61)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Additional-Currency Balance"(Field 62)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional-Currency Balance"(Field 62)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Exchange Rate Adjustment"(Field 63)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Exchange Rate Adjustment"(Field 63)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Add.-Currency Debit Amount"(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Add.-Currency Debit Amount"(Field 64)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Add.-Currency Credit Amount"(Field 65)". Please convert manually.


        //Unsupported feature: Change Editable on ""Add.-Currency Credit Amount"(Field 65)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Default IC Partner G/L Acc. No"(Field 66)". Please convert manually.


        //Unsupported feature: Change Editable on ""Account Subcategory Descript."(Field 81)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Cost Type No."(Field 1100)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Type No."(Field 1100)". Please convert manually.


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


        //Unsupported feature: CodeModification on ""Account Type"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Account Type" <> "Account Type"::Posting) AND
           (xRec."Account Type" = xRec."Account Type"::Posting)
        THEN BEGIN
          GLEntry.SETRANGE("G/L Account No.","No.");
          IF NOT GLEntry.ISEMPTY THEN
            ERROR(
              Text000,
              FIELDCAPTION("Account Type"));
          GLBudgetEntry.SETRANGE("G/L Account No.","No.");
          IF NOT GLBudgetEntry.ISEMPTY THEN
            ERROR(
              Text001,
              FIELDCAPTION("Account Type"));
        END;
        Totaling := '';
        IF "Account Type" = "Account Type"::Posting THEN BEGIN
          IF "Account Type" <> xRec."Account Type" THEN
            "Direct Posting" := TRUE;
        END ELSE
          "Direct Posting" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Account Type" <> "Account Type"::Posting) and
           (xRec."Account Type" = xRec."Account Type"::Posting)
        then begin
          GLEntry.SetRange("G/L Account No.","No.");
          if not GLEntry.IsEmpty then
            Error(
              Text000,
              FieldCaption("Account Type"));
          GLBudgetEntry.SetRange("G/L Account No.","No.");
          if not GLBudgetEntry.IsEmpty then
            Error(
              Text001,
              FieldCaption("Account Type"));
        end;
        Totaling := '';
        if "Account Type" = "Account Type"::Posting then begin
          if "Account Type" <> xRec."Account Type" then
            "Direct Posting" := true;
        end else
          "Direct Posting" := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Account Category"(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Account Category" = "Account Category"::" " THEN
          EXIT;

        IF "Account Category" IN ["Account Category"::Income,"Account Category"::"Cost of Goods Sold","Account Category"::Expense] THEN
          "Income/Balance" := "Income/Balance"::"Income Statement"
        ELSE
          "Income/Balance" := "Income/Balance"::"Balance Sheet";
        IF "Account Category" <> xRec."Account Category" THEN
          "Account Subcategory Entry No." := 0;

        UpdateAccountCategoryOfSubAccounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Account Category" = "Account Category"::" " then
          exit;

        if "Account Category" in ["Account Category"::Income,"Account Category"::"Cost of Goods Sold","Account Category"::Expense] then
          "Income/Balance" := "Income/Balance"::"Income Statement"
        else
          "Income/Balance" := "Income/Balance"::"Balance Sheet";
        if "Account Category" <> xRec."Account Category" then
        #9..11
        */
        //end;


        //Unsupported feature: CodeModification on ""Income/Balance"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Income/Balance" = "Income/Balance"::"Balance Sheet") AND ("Cost Type No." <> '') THEN BEGIN
          IF CostType.GET("No.") THEN BEGIN
            CostType."G/L Account Range" := '';
            CostType.MODIFY;
          END;
          "Cost Type No." := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Income/Balance" = "Income/Balance"::"Balance Sheet") and ("Cost Type No." <> '') then begin
          if CostType.Get("No.") then begin
            CostType."G/L Account Range" := '';
            CostType.Modify;
          end;
          "Cost Type No." := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Indentation(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Indentation < 0 THEN
          Indentation := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Indentation < 0 then
          Indentation := 0;
        */
        //end;


        //Unsupported feature: CodeModification on "Totaling(Field 34).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT IsTotaling THEN
          FIELDERROR("Account Type");
        CALCFIELDS(Balance);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not IsTotaling then
          FieldError("Account Type");
        CalcFields(Balance);
        */
        //end;


        //Unsupported feature: CodeModification on ""Consol. Translation Method"(Field 39).OnValidate". Please convert manually.

        //trigger  Translation Method"(Field 39)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF TranslationMethodConflict(ConflictGLAcc) THEN
          IF ConflictGLAcc.GETFILTER("Consol. Debit Acc.") <> '' THEN
            MESSAGE(
              Text002,ConflictGLAcc.TABLECAPTION,ConflictGLAcc."No.",ConflictGLAcc.FIELDCAPTION("Consol. Debit Acc."),
              ConflictGLAcc.FIELDCAPTION("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method")
          ELSE
            MESSAGE(
              Text002,ConflictGLAcc.TABLECAPTION,ConflictGLAcc."No.",ConflictGLAcc.FIELDCAPTION("Consol. Credit Acc."),
              ConflictGLAcc.FIELDCAPTION("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if TranslationMethodConflict(ConflictGLAcc) then
          if ConflictGLAcc.GetFilter("Consol. Debit Acc.") <> '' then
            Message(
              Text002,ConflictGLAcc.TableCaption,ConflictGLAcc."No.",ConflictGLAcc.FieldCaption("Consol. Debit Acc."),
              ConflictGLAcc.FieldCaption("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method")
          else
            Message(
              Text002,ConflictGLAcc.TableCaption,ConflictGLAcc."No.",ConflictGLAcc.FieldCaption("Consol. Credit Acc."),
              ConflictGLAcc.FieldCaption("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method");
        */
        //end;


        //Unsupported feature: CodeModification on ""Consol. Debit Acc."(Field 40).OnValidate". Please convert manually.

        //trigger  Debit Acc();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF TranslationMethodConflict(ConflictGLAcc) THEN
          MESSAGE(
            Text002,ConflictGLAcc.TABLECAPTION,ConflictGLAcc."No.",ConflictGLAcc.FIELDCAPTION("Consol. Debit Acc."),
            ConflictGLAcc.FIELDCAPTION("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if TranslationMethodConflict(ConflictGLAcc) then
          Message(
            Text002,ConflictGLAcc.TableCaption,ConflictGLAcc."No.",ConflictGLAcc.FieldCaption("Consol. Debit Acc."),
            ConflictGLAcc.FieldCaption("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method");
        */
        //end;


        //Unsupported feature: CodeModification on ""Consol. Credit Acc."(Field 41).OnValidate". Please convert manually.

        //trigger  Credit Acc();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF TranslationMethodConflict(ConflictGLAcc) THEN
          MESSAGE(
            Text002,ConflictGLAcc.TABLECAPTION,ConflictGLAcc."No.",ConflictGLAcc.FIELDCAPTION("Consol. Credit Acc."),
            ConflictGLAcc.FIELDCAPTION("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if TranslationMethodConflict(ConflictGLAcc) then
          Message(
            Text002,ConflictGLAcc.TableCaption,ConflictGLAcc."No.",ConflictGLAcc.FieldCaption("Consol. Credit Acc."),
            ConflictGLAcc.FieldCaption("Consol. Translation Method"),ConflictGLAcc."Consol. Translation Method");
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 44).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            VALIDATE("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Prod. Posting Group"(Field 45).OnValidate". Please convert manually.

        //trigger  Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;

        //Unsupported feature: Deletion on ""Account Subcategory Entry No."(Field 80).OnValidate". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Account Subcategory Entry No."(Field 80)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Account Subcategory Descript."(Field 81)". Please convert manually.

        field(16465; "Service Tax Group Code"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group Code',
                        ENN = 'Service Tax Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "Service Tax Groups".Code;
        }
        field(16500; "FBT Group Code"; Code[10])
        {
            CaptionML = ENU = 'FBT Group Code',
                        ENN = 'FBT Group Code';
            DataClassification = ToBeClassified;
            // TableRelation = "FBT Group";
        }
        field(16501; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Prod. Posting Group";
        }
        field(16502; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "GST Group";
        }
        field(16604; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
        }
        field(16607; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16608; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
        }
        field(60001; "Cash Account"; Boolean)
        {
            Description = 'B2B';
        }
        field(60002; "TDS Account"; Boolean)
        {
            Description = 'B2B';
        }
        field(60003; "Work Tax Account"; Boolean)
        {
            Description = 'B2B';
        }
        field(60004; "Excise Prod. Posting Group2"; Code[10])
        {
            //TableRelation = "Excise Prod. Posting Group".Code;
        }
        field(60005; "Excise Accounting Type"; Option)
        {
            OptionCaption = 'With CENTVAT,Without CENTVAT';
            OptionMembers = "With CENTVAT","Without CENTVAT";
        }
        field(60006; "PL Minor Head"; Text[60])
        {
        }
        field(60007; "PL Minor Head SNO"; Integer)
        {
        }
        field(60008; "PL IncomeType"; Text[30])
        {
        }
        field(60009; "PL IncomeType Sort"; Integer)
        {
        }
        field(60010; "PL Income Type Summary"; Text[30])
        {
        }
        field(60011; "PL Income Expenditure"; Text[30])
        {
        }
        field(60012; "PL Head"; Boolean)
        {

            trigger OnValidate();
            begin
                Reflected_in_pl_datetime := CurrentDateTime;
                Reflected_in_pl_userid := UserId;
            end;
        }
        field(60013; EntryType; Option)
        {
            OptionCaption = ',JounalVoucher,Purchase Inovice,Purchase Invocie/Journal voucher,Not Required,Payment Voucher';
            OptionMembers = ,JounalVoucher,"Purchase Inovice","Purchase Invocie/Journal voucher","Not Required","Payment Voucher";
        }
        field(60014; Created_Date_time; Date)
        {
            Description = 'added on 10-jul-18  by sujani';
        }
        field(60015; "Type of GL"; Text[70])
        {
        }
        field(60016; "Nature of GL"; Text[70])
        {
        }
        field(60017; "GL Group"; Text[70])
        {
        }
        field(60018; "GL Sub Group"; Text[70])
        {
        }
        field(60019; Reflected_in_pl_userid; Code[50])
        {
        }
        field(60020; Reflected_in_pl_datetime; DateTime)
        {
        }
        field(60021; "Reflect in P&L"; Option)
        {
            OptionCaption = '" ,Yes,No"';
            OptionMembers = " ",Yes,No;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Reconciliation Account"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Gen. Bus. Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Gen. Prod. Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Consol. Debit Acc.,Consol. Translation Method"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Consol. Credit Acc.,Consol. Translation Method"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Account Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Account Category"(Key)". Please convert manually.

        key(No_; "No.")
        {
        }
        key(SearchName; "Search Name")
        {
        }
        key(ReconciliationAccount; "Reconciliation Account")
        {
        }
        key(GenBusPostingGroup; "Gen. Bus. Posting Group")
        {
        }
        key(GenProdPostingGroup; "Gen. Prod. Posting Group")
        {
        }
        key(ConsolDebit; "Consol. Debit Acc.", "Consol. Translation Method")
        {
            Enabled = false;
        }
        key(ConsolCredit; "Consol. Credit Acc.", "Consol. Translation Method")
        {
            Enabled = false;
        }
        key(AccType; "Account Type")
        {
        }
        key(AccCate; "Account Category")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    MoveEntries.MoveGLEntries(Rec);

    GLBudgetEntry.SETCURRENTKEY("Budget Name","G/L Account No.");
    GLBudgetEntry.SETRANGE("G/L Account No.","No.");
    GLBudgetEntry.DELETEALL(TRUE);

    CommentLine.SETRANGE("Table Name",CommentLine."Table Name"::"G/L Account");
    CommentLine.SETRANGE("No.","No.");
    CommentLine.DELETEALL;

    ExtTextHeader.SETRANGE("Table Name",ExtTextHeader."Table Name"::"G/L Account");
    ExtTextHeader.SETRANGE("No.","No.");
    ExtTextHeader.DELETEALL(TRUE);

    AnalysisViewEntry.SETRANGE("Account No.","No.");
    AnalysisViewEntry.DELETEALL;

    AnalysisViewBudgetEntry.SETRANGE("G/L Account No.","No.");
    AnalysisViewBudgetEntry.DELETEALL;

    MyAccount.SETRANGE("Account No.","No.");
    MyAccount.DELETEALL;

    DimMgt.DeleteDefaultDim(DATABASE::"G/L Account","No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DimMgt.UpdateDefaultDim(DATABASE::"G/L Account","No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");

    SetLastModifiedDateTime;

    IF CostAccSetup.GET THEN
      CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,0);

    IF Indentation < 0 THEN
      Indentation := 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if CostAccSetup.Get then
      CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,0);

    if Indentation < 0 then
      Indentation := 0;

    Rec.Created_Date_time := Today;
    begin
        Subject := 'New G_L Account Head-'+Rec."No."+' Added';
        SMTP_MAIL.CreateMessage('ERP','erp@efftronics.com','erp@efftronics.com,sitarajyam@efftronics.com',Subject,'',true);
        SMTP_MAIL.AppendBody('<html><body><table>');
        SMTP_MAIL.AppendBody('<th>G_L Account Head Details</th>');
        SMTP_MAIL.AppendBody('<tr><td>G/L No: </td><td>'+Rec."No."+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Name: </td><td>'+Rec.Name+'</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Created Date: </td><td>'+Format(Rec.Created_Date_time)+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Created By: </td><td>'+UserId+'</td></tr>');
        SMTP_MAIL.AppendBody('</table>');
        SMTP_MAIL.AppendBody('<br/><br/>*********** This is auto generated mail from ERP ************</body></html>');
        SMTP_MAIL.Send;
    end;
    {<<<<<<<}
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetLastModifiedDateTime;

    IF CostAccSetup.GET THEN BEGIN
      IF CurrFieldNo <> 0 THEN
        CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,1)
      ELSE
        CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,0);
    END;

    IF Indentation < 0 THEN
      Indentation := 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SetLastModifiedDateTime;

    if CostAccSetup.Get then begin
      if CurrFieldNo <> 0 then
        CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,1)
      else
        CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,0);
    end;

    if Indentation < 0 then
      Indentation := 0;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesLine.RenameNo(SalesLine.Type::"G/L Account",xRec."No.","No.");
    PurchaseLine.RenameNo(PurchaseLine.Type::"G/L Account",xRec."No.","No.");
    DimMgt.RenameDefaultDim(DATABASE::"G/L Account",xRec."No.","No.");

    SetLastModifiedDateTime;

    IF CostAccSetup.READPERMISSION THEN
      CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,3);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
    if CostAccSetup.ReadPermission then
      CostAccMgt.UpdateCostTypeFromGLAcc(Rec,xRec,3);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Account Type"(Field 4).OnValidate.GLEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Account Type" : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Account Type" : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Account Type"(Field 4).OnValidate.GLBudgetEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Account Type" : 96;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Account Type" : "G/L Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Income/Balance"(Field 9).OnValidate.CostType(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Income/Balance" : 1103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Income/Balance" : "Cost Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Consol. Translation Method"(Field 39).OnValidate.ConflictGLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Consol. Translation Method" : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Consol. Translation Method" : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Consol. Debit Acc."(Field 40).OnValidate.ConflictGLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Consol. Debit Acc." : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Consol. Debit Acc." : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Consol. Credit Acc."(Field 41).OnValidate.ConflictGLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Consol. Credit Acc." : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Consol. Credit Acc." : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Gen. Bus. Posting Group"(Field 44).OnValidate.GenBusPostingGrp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Gen. Bus. Posting Group" : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Gen. Bus. Posting Group" : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Gen. Prod. Posting Group"(Field 45).OnValidate.GenProdPostingGrp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Gen. Prod. Posting Group" : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Gen. Prod. Posting Group" : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.GLBudgetEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.GLBudgetEntry : 96;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.GLBudgetEntry : "G/L Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CommentLine : 97;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CommentLine : "Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ExtTextHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ExtTextHeader : 279;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ExtTextHeader : "Extended Text Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.AnalysisViewEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AnalysisViewEntry : 365;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AnalysisViewEntry : "Analysis View Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.AnalysisViewBudgetEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AnalysisViewBudgetEntry : 366;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AnalysisViewBudgetEntry : "Analysis View Budget Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.MoveEntries(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.MoveEntries : 361;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.MoveEntries : MoveEntries;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnRename.SalesLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnRename.SalesLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.PurchaseLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnRename.PurchaseLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnRename.PurchaseLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetupNewGLAcc(PROCEDURE 1).OldGLAcc2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetupNewGLAcc : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetupNewGLAcc : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAccountSubCategory(PROCEDURE 5).GLAccountCategories(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAccountSubCategory : 790;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAccountSubCategory : "G/L Account Categories";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAccountCategoryOfSubAccounts(PROCEDURE 7).GLAccountSubAccount(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAccountCategoryOfSubAccounts : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAccountCategoryOfSubAccounts : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CostAccSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CostAccSetup : 1108;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CostAccSetup : "Cost Accounting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CostAccMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CostAccMgt : 1100;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CostAccMgt : "Cost Account Mgt";
    //Variable type has not been exported.

    var
        Subject: Text[100];
    // SMTP_MAIL: Codeunit "SMTP Mail";
}


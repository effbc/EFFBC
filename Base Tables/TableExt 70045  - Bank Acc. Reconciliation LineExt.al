tableextension 70045 BankAccReconciliationLineExt extends "Bank Acc. Reconciliation Line"
{
    // version NAVW19.00.00.51852,B2B,Rev01,B2BN1.0

    fields
    {

        //Unsupported feature: Change TableRelation on ""Statement No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 6)". Please convert manually.


        //Unsupported feature: Change BlankZero on "Difference(Field 8)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Applied Amount"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Applied Amount"(Field 9)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Applied Entries"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Data Exch. Entry No."(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Data Exch. Line No."(Field 18)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Statement Type"(Field 20)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Account Type"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Account No."(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Match Confidence"(Field 50)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Match Confidence"(Field 50)". Please convert manually.


        //Unsupported feature: Change Editable on ""Match Confidence"(Field 50)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Match Quality"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Match Quality"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Parent Line No."(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type <> xRec.Type) AND
           ("Applied Entries" <> 0)
        THEN
          IF CONFIRM(Text001,FALSE) THEN BEGIN
            RemoveApplication(xRec.Type);
            VALIDATE("Applied Amount",0);
            "Applied Entries" := 0;
            "Check No." := '';
          END ELSE
            ERROR(Text002);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type <> xRec.Type) and
           ("Applied Entries" <> 0)
        then
          if Confirm(Text001,false) then begin
            RemoveApplication(xRec.Type);
            Validate("Applied Amount",0);
            "Applied Entries" := 0;
            "Check No." := '';
          end else
            Error(Text002);
        */
        //end;


        //Unsupported feature: CodeModification on ""Account Type"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Applied Amount",0);
        IF "Account Type" = "Account Type"::"IC Partner" THEN
          IF NOT ConfirmManagement.ConfirmProcessUI(ICPartnerAccountTypeQst,FALSE) THEN BEGIN
            "Account Type" := xRec."Account Type";
            EXIT;
          END;
        IF "Account Type" <> xRec."Account Type" THEN
          VALIDATE("Account No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Applied Amount",0);
        if "Account Type" = "Account Type"::"IC Partner" then
          if not ConfirmManagement.ConfirmProcessUI(ICPartnerAccountTypeQst,false) then begin
            "Account Type" := xRec."Account Type";
            exit;
          end;
        if "Account Type" <> xRec."Account Type" then
          Validate("Account No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Account No."(Field 22).OnValidate". Please convert manually.

        //trigger "(Field 22)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Applied Amount",0);
        CreateDim(
          DimMgt.TypeToTableID1("Account Type"),"Account No.",
          DATABASE::"Salesperson/Purchaser",GetSalepersonPurchaserCode);
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Applied Amount",0);
        #2..5
        */
        //end;


        //Unsupported feature: CodeModification on ""Transaction Text"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Statement Type" = "Statement Type"::"Payment Application") OR (Description = '') THEN
          Description := COPYSTR("Transaction Text",1,MAXSTRLEN(Description));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Statement Type" = "Statement Type"::"Payment Application") or (Description = '') then
          Description := CopyStr("Transaction Text",1,MaxStrLen(Description));
        */
        //end;
        field(50000; "Cheque No."; Code[10])
        {
            CaptionML = ENU = 'Cheque No.',
                        ENN = 'Cheque No.';
            Description = 'Rev01';
            Editable = false;
        }
        field(50001; "Cheque Date"; Date)
        {
            CaptionML = ENU = 'Cheque Date',
                        ENN = 'Cheque Date';
            Description = 'Rev01';
            Editable = false;
        }
        field(50002; "Transfer to Gen. Jnl"; Boolean)
        {
            Caption = 'Transfer to Gen. Jnl';
            Description = 'B2BN1.0 11Dec2018';
        }
        field(50060; "Bank Acc LE"; Integer)
        {
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Statement Type,Bank Account No.,Statement No.,Statement Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Account Type,Statement Amount"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,Applied Amount"(Key)". Please convert manually.

        key(Statement1; "Statement Type", "Bank Account No.", "Statement No.", "Statement Line No.")
        {
        }
        key(Account2; "Account Type", "Statement Amount")
        {
        }
        key(Type3; Type, "Applied Amount")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    RemoveApplication(Type);
    ClearDataExchEntries;
    RemoveAppliedPaymentEntries;
    DeletePaymentMatchingDetails;
    UpdateParentLineStatementAmount;
    IF FIND THEN;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if Find then;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    BankAccRecon.GET("Statement Type","Bank Account No.","Statement No.");
    "Applied Entries" := 0;
    VALIDATE("Applied Amount",0);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    BankAccRecon.Get("Statement Type","Bank Account No.","Statement No.");
    "Applied Entries" := 0;
    Validate("Applied Amount",0);
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF xRec."Statement Amount" <> "Statement Amount" THEN
      RemoveApplication(Type);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if xRec."Statement Amount" <> "Statement Amount" then
      RemoveApplication(Type);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "DisplayApplication(PROCEDURE 2).PaymentApplication(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayApplication : 1292;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayApplication : "Payment Application";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencyCode(PROCEDURE 3).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencyCode : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencyCode : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearDataExchEntries(PROCEDURE 5).DataExchField(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearDataExchEntries : 1221;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearDataExchEntries : "Data Exch. Field";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearDataExchEntries(PROCEDURE 5).BankAccReconciliationLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearDataExchEntries : 274;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearDataExchEntries : "Bank Acc. Reconciliation Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).BankAccReconciliation(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 273;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Bank Acc. Reconciliation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AcceptApplication(PROCEDURE 4).AppliedPaymentEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AcceptApplication : 1294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AcceptApplication : "Applied Payment Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetManualApplication(PROCEDURE 33).AppliedPaymentEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetManualApplication : 1294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetManualApplication : "Applied Payment Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RemoveAppliedPaymentEntries(PROCEDURE 9).AppliedPmtEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RemoveAppliedPaymentEntries : 1294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RemoveAppliedPaymentEntries : "Applied Payment Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeletePaymentMatchingDetails(PROCEDURE 10).PaymentMatchingDetails(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeletePaymentMatchingDetails : 1299;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeletePaymentMatchingDetails : "Payment Matching Details";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedEntryAccountType(PROCEDURE 43).BankAccountLedgerEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedEntryAccountType : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedEntryAccountType : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedToAccountType(PROCEDURE 36).BankAccountLedgerEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedToAccountType : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedToAccountType : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedEntryAccountNo(PROCEDURE 39).CustLedgerEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedEntryAccountNo : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedEntryAccountNo : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedEntryAccountNo(PROCEDURE 39).VendorLedgerEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedEntryAccountNo : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedEntryAccountNo : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedEntryAccountNo(PROCEDURE 39).BankAccountLedgerEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedEntryAccountNo : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedEntryAccountNo : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedToAccountNo(PROCEDURE 37).BankAccountLedgerEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedToAccountNo : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedToAccountNo : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAccountName(PROCEDURE 45).Customer(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAccountName : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAccountName : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAccountName(PROCEDURE 45).Vendor(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAccountName : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAccountName : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAccountName(PROCEDURE 45).GLAccount(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAccountName : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAccountName : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAccountName(PROCEDURE 45).BankAccount(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAccountName : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAccountName : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAccountPage(PROCEDURE 40).Customer(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAccountPage : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAccountPage : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAccountPage(PROCEDURE 40).Vendor(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAccountPage : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAccountPage : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAccountPage(PROCEDURE 40).GLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAccountPage : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAccountPage : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAccountPage(PROCEDURE 40).BankAccount(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAccountPage : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAccountPage : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnNoOfLedgerEntriesBasedOnAmount(PROCEDURE 24).CustLedgerEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnNoOfLedgerEntriesBasedOnAmount : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnNoOfLedgerEntriesBasedOnAmount : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnNoOfLedgerEntriesBasedOnAmount(PROCEDURE 24).VendorLedgerEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnNoOfLedgerEntriesBasedOnAmount : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnNoOfLedgerEntriesBasedOnAmount : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnNoOfLedgerEntriesBasedOnAmount(PROCEDURE 24).BankAccountLedgerEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnNoOfLedgerEntriesBasedOnAmount : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnNoOfLedgerEntriesBasedOnAmount : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerLedgerEntriesInAmountRange(PROCEDURE 41).BankAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerLedgerEntriesInAmountRange : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerLedgerEntriesInAmountRange : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVendorLedgerEntriesInAmountRange(PROCEDURE 42).BankAccount(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVendorLedgerEntriesInAmountRange : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVendorLedgerEntriesInAmountRange : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBankAccountLedgerEntriesInAmountRange(PROCEDURE 7).BankAccount(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBankAccountLedgerEntriesInAmountRange : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBankAccountLedgerEntriesInAmountRange : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedToDocumentNo(PROCEDURE 30).ApplyType(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedToDocumentNo : Document No.,Entry No.;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedToDocumentNo : "Document No.","Entry No.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedToEntryNo(PROCEDURE 13).ApplyType(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedToEntryNo : Document No.,Entry No.;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedToEntryNo : "Document No.","Entry No.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliedNo(PROCEDURE 32).AppliedPaymentEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliedNo : 1294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliedNo : "Applied Payment Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferRemainingAmountToAccount(PROCEDURE 31).AppliedPaymentEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferRemainingAmountToAccount : 1294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferRemainingAmountToAccount : "Applied Payment Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAmountRangeForTolerance(PROCEDURE 8).BankAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAmountRangeForTolerance : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAmountRangeForTolerance : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateParentLineStatementAmount(PROCEDURE 38).BankAccReconciliationLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateParentLineStatementAmount : 274;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateParentLineStatementAmount : "Bank Acc. Reconciliation Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTransactionPostedAndReconciled(PROCEDURE 27).PostedPaymentReconLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTransactionPostedAndReconciled : 1296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTransactionPostedAndReconciled : "Posted Payment Recon. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTransactionPostedAndReconciled(PROCEDURE 27).BankAccountStatementLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTransactionPostedAndReconciled : 276;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTransactionPostedAndReconciled : "Bank Account Statement Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTransactionPostedAndNotReconciled(PROCEDURE 48).PostedPaymentReconLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTransactionPostedAndNotReconciled : 1296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTransactionPostedAndNotReconciled : "Posted Payment Recon. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTransactionAlreadyImported(PROCEDURE 28).BankAccReconciliationLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTransactionAlreadyImported : 274;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTransactionAlreadyImported : "Bank Acc. Reconciliation Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AllowImportOfPostedNotReconciledTransactions(PROCEDURE 49).BankAccReconciliation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AllowImportOfPostedNotReconciledTransactions : 273;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AllowImportOfPostedNotReconciledTransactions : "Bank Acc. Reconciliation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalepersonPurchaserCode(PROCEDURE 51).Customer(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalepersonPurchaserCode : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalepersonPurchaserCode : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalepersonPurchaserCode(PROCEDURE 51).Vendor(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalepersonPurchaserCode : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalepersonPurchaserCode : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAppliesToID(PROCEDURE 62).CustLedgerEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAppliesToID : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAppliesToID : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDescription(PROCEDURE 53).AppliedPaymentEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDescription : 1294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDescription : "Applied Payment Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAccLedgEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccLedgEntry : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccLedgEntry : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckLedgEntry : 272;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckLedgEntry : "Check Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAccRecon(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccRecon : 273;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccRecon : "Bank Acc. Reconciliation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAccSetStmtNo(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccSetStmtNo : 375;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccSetStmtNo : "Bank Acc. Entry Set Recon.-No.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSetStmtNo(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSetStmtNo : 376;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSetStmtNo : "Check Entry Set Recon.-No.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmManagement(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmManagement : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmManagement : "Confirm Management";
    //Variable type has not been exported.
}


tableextension 70053 SalesReceivablesSetupExt extends "Sales & Receivables Setup"
{
    // version NAVW19.00.00.50785,NAVIN9.00.00.50785,B2B1.0

    fields
    {

        //Unsupported feature: Change OptionString on ""Discount Posting"(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Credit Warnings"(Field 4)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Stockout Warning"(Field 5)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipment on Invoice"(Field 6)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Nos."(Field 11)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Shipment Nos."(Field 16)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order Nos."(Field 23)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appln. between Currencies"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Blanket to Order"(Field 26)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Blanket to Order"(Field 26)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Invoice"(Field 27)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Order to Invoice"(Field 27)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Shpt."(Field 28)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Order to Shpt."(Field 28)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Logo Position on Documents"(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Default Posting Date"(Field 35)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Default Quantity to Ship"(Field 36)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Insert Std. Sales Lines Mode"(Field 170)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Write-in Product No."(Field 5330)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Return Receipt Nos."(Field 5800)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Cmts Ret.Ord. to Ret.Rcpt"(Field 5801)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Cmts Ret.Ord. to Ret.Rcpt"(Field 5801)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Cmts Ret.Ord. to Cr. Memo"(Field 5802)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Cmts Ret.Ord. to Cr. Memo"(Field 5802)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Order Nos."(Field 6600)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Receipt on Credit Memo"(Field 6601)". Please convert manually.


        //Unsupported feature: CodeModification on ""Prepmt. Auto Update Frequency"(Field 33).OnValidate". Please convert manually.

        //trigger  Auto Update Frequency"(Field 33)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepmt. Auto Update Frequency" = xRec."Prepmt. Auto Update Frequency" THEN
          EXIT;

        PrepaymentMgt.CreateAndStartJobQueueEntrySales("Prepmt. Auto Update Frequency");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepmt. Auto Update Frequency" = xRec."Prepmt. Auto Update Frequency" then
          exit;

        PrepaymentMgt.CreateAndStartJobQueueEntrySales("Prepmt. Auto Update Frequency");
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Queue Priority for Post"(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Queue Priority for Post" < 0 THEN
          ERROR(Text001);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Queue Priority for Post" < 0 then
          Error(Text001);
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Q. Prio. for Post & Print"(Field 42).OnValidate". Please convert manually.

        //trigger  Prio();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Queue Priority for Post" < 0 THEN
          ERROR(Text001);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Queue Priority for Post" < 0 then
          Error(Text001);
        */
        //end;


        //Unsupported feature: CodeModification on ""Copy Customer Name to Entries"(Field 58).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Copy Customer Name to Entries" THEN
          CustEntryEdit.UpdateCustomerNamesInLedgerEntries;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Copy Customer Name to Entries" then
          CustEntryEdit.UpdateCustomerNamesInLedgerEntries;
        */
        //end;
        field(13701; "Tax Dependency Type"; Option)
        {
            CaptionML = ENU = 'Tax Dependency Type',
                        ENN = 'Tax Dependency Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Bill To Customer,Ship To Customer',
                              ENN = 'Bill To Customer,Ship To Customer';
            OptionMembers = "Bill To Customer","Ship To Customer";
        }
        field(13790; "Third Party Nos."; Code[10])
        {
            CaptionML = ENU = 'Third Party Nos.',
                        ENN = 'Third Party Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16500; "Posted Invoice Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Invoice Nos. (Trading)',
                        ENN = 'Posted Invoice Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16501; "Posted Ret Rcpt Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Ret Rcpt Nos. (Trading)',
                        ENN = 'Posted Ret Rcpt Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16502; "Posted Sales Shpt. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Sales Shpt. (Trading)',
                        ENN = 'Posted Sales Shpt. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16503; "Posted Sale Cr. Memo (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Sale Cr. Memo (Trading)',
                        ENN = 'Posted Sale Cr. Memo (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
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
        field(16507; "Posted Inv. No. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. No. (Export)',
                        ENN = 'Posted Inv. No. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16508; "Posted Cr. Memo No. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Posted Cr. Memo No. (Export)',
                        ENN = 'Posted Cr. Memo No. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16509; "Posted Inv. No. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. No. (Supp)',
                        ENN = 'Posted Inv. No. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16510; "Posted Cr. Memo No. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Posted Cr. Memo No. (Supp)',
                        ENN = 'Posted Cr. Memo No. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16511; "Posted Inv. No. (Debit Note)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. No. (Debit Note)',
                        ENN = 'Posted Inv. No. (Debit Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16512; "Posted Inv. No. (Non-GST)"; Code[10])
        {
            CaptionML = ENU = 'Posted Inv. No. (Non-GST)',
                        ENN = 'Posted Inv. No. (Non-GST)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16513; "Posted Cr. Memo No. (Non-GST)"; Code[10])
        {
            CaptionML = ENU = 'Posted Cr. Memo No. (Non-GST)',
                        ENN = 'Posted Cr. Memo No. (Non-GST)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(60001; "Tender Nos."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60002; "Tender Posting Nos."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Key1; "Primary Key")
        {
        }
    }

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Prepmt. Auto Update Frequency"(Field 33).OnValidate.PrepaymentMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Prepmt. Auto Update Frequency" : 441;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Prepmt. Auto Update Frequency" : "Prepayment Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Copy Customer Name to Entries"(Field 58).OnValidate.CustEntryEdit(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Copy Customer Name to Entries" : 103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Copy Customer Name to Entries" : "Cust. Entry-Edit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckGLAccPostingTypeBlockedAndGenProdPostingType(PROCEDURE 2).GLAcc(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckGLAccPostingTypeBlockedAndGenProdPostingType : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckGLAccPostingTypeBlockedAndGenProdPostingType : "G/L Account";
    //Variable type has not been exported.
}


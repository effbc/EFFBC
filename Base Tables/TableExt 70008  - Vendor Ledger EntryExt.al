tableextension 70008 VendorLedgerEntryExt extends "Vendor Ledger Entry"
{
    // version NAVW19.00.00.51742,NAVIN9.00.00.51742,Rev01,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change Data type on ""Document No."(Field 6)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 13)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Original Amt. (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Amt. (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amt. (LCY)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amt. (LCY)"(Field 16)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purchaser Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 34)". Please convert manually.


        //Unsupported feature: PropertyModification on ""Original Pmt. Disc. Possible"(Field 39)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Journal Batch Name"(Field 49)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Closed by Currency Amount"(Field 66)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Original Amount"(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Amount"(Field 75)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed by Entry No."(Field 88)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed Entry No."(Field 89)". Please convert manually.


        //Unsupported feature: Change Numeric on ""Payment Reference"(Field 171)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Recipient Bank Account"(Field 288)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exported to Payment File"(Field 290)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""Due Date"(Field 37).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Pmt. Discount Date"(Field 38).OnValidate". Please convert manually.

        //trigger  Discount Date"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to ID"(Field 47).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Remaining Pmt. Disc. Possible"(Field 77).OnValidate". Please convert manually.

        //trigger  Disc();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        CALCFIELDS(Amount,"Original Amount");

        IF "Remaining Pmt. Disc. Possible" * Amount < 0 THEN
          FIELDERROR("Remaining Pmt. Disc. Possible",STRSUBSTNO(MustHaveSameSignErr,FIELDCAPTION(Amount)));

        IF ABS("Remaining Pmt. Disc. Possible") > ABS("Original Amount") THEN
          FIELDERROR("Remaining Pmt. Disc. Possible",STRSUBSTNO(MustNotBeLargerErr,FIELDCAPTION("Original Amount")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        CalcFields(Amount,"Original Amount");

        if "Remaining Pmt. Disc. Possible" * Amount < 0 then
          FieldError("Remaining Pmt. Disc. Possible",StrSubstNo(MustHaveSameSignErr,FieldCaption(Amount)));

        if Abs("Remaining Pmt. Disc. Possible") > Abs("Original Amount") then
          FieldError("Remaining Pmt. Disc. Possible",StrSubstNo(MustNotBeLargerErr,FieldCaption("Original Amount")));
        */
        //end;


        //Unsupported feature: CodeModification on ""Pmt. Disc. Tolerance Date"(Field 78).OnValidate". Please convert manually.

        //trigger  Disc();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Max. Payment Tolerance"(Field 79).OnValidate". Please convert manually.

        //trigger  Payment Tolerance"(Field 79)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        CALCFIELDS(Amount,"Remaining Amount");

        IF "Max. Payment Tolerance" * Amount < 0 THEN
          FIELDERROR("Max. Payment Tolerance",STRSUBSTNO(MustHaveSameSignErr,FIELDCAPTION(Amount)));

        IF ABS("Max. Payment Tolerance") > ABS("Remaining Amount") THEN
          FIELDERROR("Max. Payment Tolerance",STRSUBSTNO(MustNotBeLargerErr,FIELDCAPTION("Remaining Amount")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        CalcFields(Amount,"Remaining Amount");

        if "Max. Payment Tolerance" * Amount < 0 then
          FieldError("Max. Payment Tolerance",StrSubstNo(MustHaveSameSignErr,FieldCaption(Amount)));

        if Abs("Max. Payment Tolerance") > Abs("Remaining Amount") then
          FieldError("Max. Payment Tolerance",StrSubstNo(MustNotBeLargerErr,FieldCaption("Remaining Amount")));
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount to Apply"(Field 84).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        CALCFIELDS("Remaining Amount");

        IF "Amount to Apply" * "Remaining Amount" < 0 THEN
          FIELDERROR("Amount to Apply",STRSUBSTNO(MustHaveSameSignErr,FIELDCAPTION("Remaining Amount")));

        IF ABS("Amount to Apply") > ABS("Remaining Amount") THEN
          FIELDERROR("Amount to Apply",STRSUBSTNO(MustNotBeLargerErr,FIELDCAPTION("Remaining Amount")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        CalcFields("Remaining Amount");

        if "Amount to Apply" * "Remaining Amount" < 0 then
          FieldError("Amount to Apply",StrSubstNo(MustHaveSameSignErr,FieldCaption("Remaining Amount")));

        if Abs("Amount to Apply") > Abs("Remaining Amount") then
          FieldError("Amount to Apply",StrSubstNo(MustNotBeLargerErr,FieldCaption("Remaining Amount")));
        */
        //end;


        //Unsupported feature: CodeModification on ""Creditor No."(Field 170).OnValidate". Please convert manually.

        //trigger "(Field 170)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Creditor No." <> '') AND ("Recipient Bank Account" <> '') THEN
          FIELDERROR("Recipient Bank Account",
            STRSUBSTNO(FieldIsNotEmptyErr,FIELDCAPTION("Creditor No."),FIELDCAPTION("Recipient Bank Account")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Creditor No." <> '') and ("Recipient Bank Account" <> '') then
          FieldError("Recipient Bank Account",
            StrSubstNo(FieldIsNotEmptyErr,FieldCaption("Creditor No."),FieldCaption("Recipient Bank Account")));
        */
        //end;


        //Unsupported feature: CodeModification on ""Payment Method Code"(Field 172).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Recipient Bank Account"(Field 288).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Recipient Bank Account" <> '') AND ("Creditor No." <> '') THEN
          FIELDERROR("Creditor No.",
            STRSUBSTNO(FieldIsNotEmptyErr,FIELDCAPTION("Recipient Bank Account"),FIELDCAPTION("Creditor No.")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Recipient Bank Account" <> '') and ("Creditor No." <> '') then
          FieldError("Creditor No.",
            StrSubstNo(FieldIsNotEmptyErr,FieldCaption("Recipient Bank Account"),FieldCaption("Creditor No.")));
        */
        //end;


        //Unsupported feature: CodeModification on ""Message to Recipient"(Field 289).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        */
        //end;
        field(13702; "TDS Nature of Deduction"; Code[10])
        {
            CaptionML = ENU = 'TDS Nature of Deduction',
                        ENN = 'TDS Nature of Deduction';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = "TDS Nature of Deduction";
        }
        field(13703; "TDS Group"; Option)
        {
            CaptionML = ENU = 'TDS Group',
                        ENN = 'TDS Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,Goods;
        }
        field(13704; "Total TDS Including SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS Including SHE CESS',
                        ENN = 'Total TDS Including SHE CESS';
            DataClassification = ToBeClassified;
        }
        field(16500; "Serv. Tax on Advance Payment"; Boolean)
        {
            CaptionML = ENU = 'Serv. Tax on Advance Payment',
                        ENN = 'Serv. Tax on Advance Payment';
            DataClassification = ToBeClassified;
        }
        field(16501; "Input Service Distribution"; Boolean)
        {
            CaptionML = ENU = 'Input Service Distribution',
                        ENN = 'Input Service Distribution';
            DataClassification = ToBeClassified;
        }
        field(16502; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16503; "Location Code"; Code[10])
        {
            CaptionML = ENU = 'Location Code',
                        ENN = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(16505; "GST on Advance Payment"; Boolean)
        {
            CaptionML = ENU = 'GST on Advance Payment',
                        ENN = 'GST on Advance Payment';
            DataClassification = ToBeClassified;
        }
        field(16506; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16507; "GST Reverse Charge"; Boolean)
        {
            CaptionML = ENU = 'GST Reverse Charge',
                        ENN = 'GST Reverse Charge';
            DataClassification = ToBeClassified;
        }
        field(16509; "Adv. Pmt. Adjustment"; Boolean)
        {
            CaptionML = ENU = 'Adv. Pmt. Adjustment',
                        ENN = 'Adv. Pmt. Adjustment';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16610; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16611; "Buyer State Code"; Code[10])
        {
            CaptionML = ENU = 'Buyer State Code',
                        ENN = 'Buyer State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16612; "Buyer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Buyer GST Reg. No.',
                        ENN = 'Buyer GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16613; "GST Vendor Type"; Option)
        {
            CaptionML = ENU = 'GST Vendor Type',
                        ENN = 'GST Vendor Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Composite,Unregistered,Import,Exempted,SEZ',
                              ENN = ' ,Registered,Composite,Unregistered,Import,Exempted,SEZ';
            OptionMembers = " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;
        }
        field(16614; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16615; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Intrastate,Interstate',
                              ENN = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16616; "GST Input Service Distribution"; Boolean)
        {
            CaptionML = ENU = 'GST Input Service Distribution',
                        ENN = 'GST Input Service Distribution';
            DataClassification = ToBeClassified;
        }
        field(16617; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16628; "RCM Exempt"; Boolean)
        {
            CaptionML = ENU = 'RCM Exempt',
                        ENN = 'RCM Exempt';
            DataClassification = ToBeClassified;
        }
        field(16629; "GST in Journal"; Boolean)
        {
            CaptionML = ENU = 'GST in Journal',
                        ENN = 'GST in Journal';
            DataClassification = ToBeClassified;
        }
        field(16630; "Journal Entry"; Boolean)
        {
            CaptionML = ENU = 'Journal Entry',
                        ENN = 'Journal Entry';
            DataClassification = ToBeClassified;
        }
        field(16631; "Location ARN No."; Code[15])
        {
            CaptionML = ENU = 'Location ARN No.',
                        ENN = 'Location ARN No.';
            DataClassification = ToBeClassified;
        }
        field(16632; "Provisional Entry"; Boolean)
        {
            CaptionML = ENU = 'Provisional Entry',
                        ENN = 'Provisional Entry';
            DataClassification = ToBeClassified;
        }
        field(60019; "Vendor Invoice Date"; Date)
        {
        }
        field(60073; "DD/FDR No."; Code[20])
        {
            Description = 'Rev01';
        }
        field(60074; "Payment Through"; Option)
        {
            Description = 'Rev01';
            OptionCaption = '" ,Cheque,Cash,DD,FDR,RTGS,FTT"';
            OptionMembers = " ",Cheque,Cash,DD,FDR,RTGS,FTT;
        }
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                // ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Currency Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""External Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Open,Positive,Due Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Open,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Vendor No.,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Closed by Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Open,Global Dimension 1 Code,Global Dimension 2 Code,Positive,Due Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Open,Global Dimension 1 Code,Global Dimension 2 Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Vendor No.,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Applies-to ID,Open,Positive,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Pmt. Discount Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Due Date,Open"(Key)". Please convert manually.

        key(Entry1; "Entry No.")
        {
        }
        key(Vendor2; "Vendor No.", "Posting Date", "Currency Code")
        {
            SumIndexFields = "Purchase (LCY)", "Inv. Discount (LCY)";
        }
        key(Currency3; "Vendor No.", "Currency Code", "Posting Date")
        {
            Enabled = false;
        }
        key(Document4; "Document No.")
        {
        }
        key(Extrenal5; "External Document No.")
        {
        }
        key(Vendor6; "Vendor No.", Open, Positive, "Due Date", "Currency Code")
        {
        }
        key(Open7; Open, "Due Date")
        {
        }
        key(Document8; "Document Type", "Vendor No.", "Posting Date", "Currency Code")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Purchase (LCY)", "Inv. Discount (LCY)";
        }
        key(Closed9; "Closed by Entry No.")
        {
        }
        key(Transaction10; "Transaction No.")
        {
        }
        key(Vendor11; "Vendor No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "Currency Code")
        {
            Enabled = false;
            SumIndexFields = "Purchase (LCY)", "Inv. Discount (LCY)";
        }
        key(OPen12; "Vendor No.", Open, "Global Dimension 1 Code", "Global Dimension 2 Code", Positive, "Due Date", "Currency Code")
        {
            Enabled = false;
        }
        key(Global13; Open, "Global Dimension 1 Code", "Global Dimension 2 Code", "Due Date")
        {
            Enabled = false;
        }
        key(DocumentType14; "Document Type", "Vendor No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "Currency Code")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
        key(POsitive15; "Vendor No.", "Applies-to ID", Open, Positive, "Due Date")
        {
        }
        key(VendorPosting16; "Vendor Posting Group")
        {
        }
        key(PmtDiscount17; "Pmt. Discount Date")
        {
        }
        key(DueDate18; "Document Type", "Due Date", Open)
        {
        }
        key(ExternalDocu19; "External Document No.", "Document Type", "Vendor No.")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*

    //modified by durga on 09-08-2021
    USER.Reset;
    USER.SetFilter("User Name",UserId);
    if USER.FindFirst then
      begin
        if not( USER.Tams_Dept in ['ERP']) then//modified by durga on 09-08-2021
          Error('You don''t have Permissions');
      end
      else
        Error('User not found. Contact ERP');




    {     Body:='****  Auto Mail Generated From ERP  ****';
         Mail_From:='erp@efftronics.net';
        Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net'
    ;
        // Mail_To:='santhoshk@efftronics.net';
         USER.SETRANGE(USER."User Security ID",USERID);//Changed User."User Id" to User."User Security ID" B2B
         IF USER.FIND('-') THEN
         Subject:=USER."User Name"+'  is trying to Delete Vendor Ledger Entry Records';//Changed User.Name to User."User Name" B2B
         Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');  }
          Error('U Dont Have Permissions to Delete');
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    var
        GenJnlPostPreview: Codeunit "Gen. Jnl.-Post Preview";
    //begin
    /*
    //GenJnlPostPreview.ModifyVendLedgEntry(Rec);
    {IF UserSetupGRec.GET(USERID) THEN
    BEGIN
      IF NOT UserSetupGRec."Edit Posted Ledger Entries" THEN
        ERROR('You Dont have Permissions');
    END ELSE
      ERROR('User Setup not found. contact ERP Team');
    }
    // Commented by Vishnu Priya on 31-10-2020
    USER.Reset;
    USER.SetFilter("User Name",UserId);
    if USER.FindFirst then
      begin
        if (not( USER.Tams_Dept in ['ERP']) and not (USER."User Name"  in ['EFFTRONICS\VHARIPRASAD','EFFTRONICS\PARDHU','EFFTRONICS\MRAJYALAKSHMI'])) then//modified by durga on 09-08-2021
          Error('You don''t have Permissions');
      end
      else
        Error('User not found. Contact ERP');
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Document No."(Field 6).OnLookup.IncomingDocument(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Document No." : 130;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Document No." : "Incoming Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""User ID"(Field 27).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).PurchInvHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).PurchCrMemoHdr(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 124;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Purch. Cr. Memo Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowPostedDocAttachment(PROCEDURE 15).PurchInvHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowPostedDocAttachment : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowPostedDocAttachment : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowPostedDocAttachment(PROCEDURE 15).PurchCrMemoHdr(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowPostedDocAttachment : 124;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowPostedDocAttachment : "Purch. Cr. Memo Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenDocumentAttachmentDetails(PROCEDURE 17).DocumentAttachmentDetails(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenDocumentAttachmentDetails : 1173;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenDocumentAttachmentDetails : "Document Attachment Details";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasPostedDocAttachment(PROCEDURE 16).PurchInvHeader(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasPostedDocAttachment : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasPostedDocAttachment : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasPostedDocAttachment(PROCEDURE 16).PurchCrMemoHdr(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasPostedDocAttachment : 124;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasPostedDocAttachment : "Purch. Cr. Memo Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnEntries(PROCEDURE 1).VendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnEntries : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnEntries : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnOverdueEntries(PROCEDURE 4).VendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnOverdueEntries : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnOverdueEntries : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 3).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecalculateAmounts(PROCEDURE 36).CurrExchRate(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecalculateAmounts : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecalculateAmounts : "Currency Exchange Rate";
    //Variable type has not been exported.

    var
        USER: Record User;
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];
        UserSetupGRec: Record "User Setup";
}


tableextension 70006 CustLedgerEntryExt extends "Cust. Ledger Entry"
{
    // version NAVW19.00.00.51934,NAVIN9.00.00.51934,Rev01,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 13)". Please convert manually.


        //Unsupported feature: Change Enabled on "Amount(Field 13)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Remaining Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Original Amt. (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Amt. (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Original Amt. (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amt. (LCY)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amt. (LCY)"(Field 16)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Remaining Amt. (LCY)"(Field 16)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Amount (LCY)"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Pmt. Disc. Possible"(Field 39)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Closed by Currency Amount"(Field 68)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Original Amount"(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Amount"(Field 75)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Original Amount"(Field 75)". Please convert manually.


        //Unsupported feature: Change BlankZero on "Reversed(Field 87)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed by Entry No."(Field 88)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed Entry No."(Field 89)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Recipient Bank Account"(Field 288)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exported to Payment File"(Field 290)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Direct Debit Mandate ID"(Field 1200)". Please convert manually.


        //Unsupported feature: CodeModification on ""Due Date"(Field 37).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Open,TRUE);
        IF "Due Date" <> xRec."Due Date" THEN BEGIN
          ReminderEntry.SETCURRENTKEY("Customer Entry No.",Type);
          ReminderEntry.SETRANGE("Customer Entry No.","Entry No.");
          ReminderEntry.SETRANGE(Type,ReminderEntry.Type::Reminder);
          ReminderEntry.SETRANGE("Reminder Level","Last Issued Reminder Level");
          IF ReminderEntry.FINDLAST THEN
            ReminderIssue.ChangeDueDate(ReminderEntry,"Due Date",xRec."Due Date");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        if "Due Date" <> xRec."Due Date" then begin
          ReminderEntry.SetCurrentKey("Customer Entry No.",Type);
          ReminderEntry.SetRange("Customer Entry No.","Entry No.");
          ReminderEntry.SetRange(Type,ReminderEntry.Type::Reminder);
          ReminderEntry.SetRange("Reminder Level","Last Issued Reminder Level");
          if ReminderEntry.FindLast then
            ReminderIssue.ChangeDueDate(ReminderEntry,"Due Date",xRec."Due Date");
        end;
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
          FIELDERROR("Remaining Pmt. Disc. Possible",STRSUBSTNO(Text000,FIELDCAPTION(Amount)));

        IF ABS("Remaining Pmt. Disc. Possible") > ABS("Original Amount") THEN
          FIELDERROR("Remaining Pmt. Disc. Possible",STRSUBSTNO(Text001,FIELDCAPTION("Original Amount")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        CalcFields(Amount,"Original Amount");

        if "Remaining Pmt. Disc. Possible" * Amount < 0 then
          FieldError("Remaining Pmt. Disc. Possible",StrSubstNo(Text000,FieldCaption(Amount)));

        if Abs("Remaining Pmt. Disc. Possible") > Abs("Original Amount") then
          FieldError("Remaining Pmt. Disc. Possible",StrSubstNo(Text001,FieldCaption("Original Amount")));
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
          FIELDERROR("Max. Payment Tolerance",STRSUBSTNO(Text000,FIELDCAPTION(Amount)));

        IF ABS("Max. Payment Tolerance") > ABS("Remaining Amount") THEN
          FIELDERROR("Max. Payment Tolerance",STRSUBSTNO(Text001,FIELDCAPTION("Remaining Amount")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        CalcFields(Amount,"Remaining Amount");

        if "Max. Payment Tolerance" * Amount < 0 then
          FieldError("Max. Payment Tolerance",StrSubstNo(Text000,FieldCaption(Amount)));

        if Abs("Max. Payment Tolerance") > Abs("Remaining Amount") then
          FieldError("Max. Payment Tolerance",StrSubstNo(Text001,FieldCaption("Remaining Amount")));
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
          FIELDERROR("Amount to Apply",STRSUBSTNO(Text000,FIELDCAPTION("Remaining Amount")));

        IF ABS("Amount to Apply") > ABS("Remaining Amount") THEN
          FIELDERROR("Amount to Apply",STRSUBSTNO(Text001,FIELDCAPTION("Remaining Amount")));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Open,true);
        CalcFields("Remaining Amount");

        if "Amount to Apply" * "Remaining Amount" < 0 then
          FieldError("Amount to Apply",StrSubstNo(Text000,FieldCaption("Remaining Amount")));

        if Abs("Amount to Apply") > Abs("Remaining Amount") then
          FieldError("Amount to Apply",StrSubstNo(Text001,FieldCaption("Remaining Amount")));
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
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,Goods;
        }
        field(13704; "Total TDS/TCS Incl SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS/TCS Incl SHE CESS',
                        ENN = 'Total TDS/TCS Incl SHE CESS';
            DataClassification = ToBeClassified;
        }
        field(16500; "TCS Nature of Collection"; Code[10])
        {
            CaptionML = ENU = 'TCS Nature of Collection',
                        ENN = 'TCS Nature of Collection';
            DataClassification = ToBeClassified;
            //TableRelation = "TCS Nature Of Collection";
        }
        field(16501; "TCS Type"; Option)
        {
            CaptionML = ENU = 'TCS Type',
                        ENN = 'TCS Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H',
                              ENN = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,"1H";
        }
        field(16502; "Serv. Tax on Advance Payment"; Boolean)
        {
            CaptionML = ENU = 'Serv. Tax on Advance Payment',
                        ENN = 'Serv. Tax on Advance Payment';
            DataClassification = ToBeClassified;
        }
        field(16503; "TDS Certificate Receivable"; Boolean)
        {
            CaptionML = ENU = 'TDS Certificate Receivable',
                        ENN = 'TDS Certificate Receivable';
            DataClassification = ToBeClassified;
        }
        field(16504; "Certificate Received"; Boolean)
        {
            CaptionML = ENU = 'Certificate Received',
                        ENN = 'Certificate Received';
            DataClassification = ToBeClassified;
        }
        field(16505; "Certificate No."; Code[20])
        {
            CaptionML = ENU = 'Certificate No.',
                        ENN = 'Certificate No.';
            DataClassification = ToBeClassified;
        }
        field(16506; "TDS Certificate Rcpt Date"; Date)
        {
            CaptionML = ENU = 'TDS Certificate Rcpt Date',
                        ENN = 'TDS Certificate Rcpt Date';
            DataClassification = ToBeClassified;
        }
        field(16507; "TDS Certificate Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS Certificate Amount',
                        ENN = 'TDS Certificate Amount';
            DataClassification = ToBeClassified;
        }
        field(16508; "Financial Year"; Integer)
        {
            CaptionML = ENU = 'Financial Year',
                        ENN = 'Financial Year';
            DataClassification = ToBeClassified;
        }
        field(16509; "TDS Receivable Group"; Option)
        {
            CaptionML = ENU = 'TDS Receivable Group',
                        ENN = 'TDS Receivable Group';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(16510; "TDS Certificate Received"; Boolean)
        {
            CaptionML = ENU = 'TDS Certificate Received',
                        ENN = 'TDS Certificate Received';
            DataClassification = ToBeClassified;
        }
        field(16511; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16512; "Location Code"; Code[10])
        {
            CaptionML = ENU = 'Location Code',
                        ENN = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(16604; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16606; "GST on Advance Payment"; Boolean)
        {
            CaptionML = ENU = 'GST on Advance Payment',
                        ENN = 'GST on Advance Payment';
            DataClassification = ToBeClassified;
        }
        field(16608; "Adv. Pmt. Adjustment"; Boolean)
        {
            CaptionML = ENU = 'Adv. Pmt. Adjustment',
                        ENN = 'Adv. Pmt. Adjustment';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16609; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Intrastate,Interstate',
                              ENN = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16610; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16611; "Seller State Code"; Code[10])
        {
            CaptionML = ENU = 'Seller State Code',
                        ENN = 'Seller State Code';
            DataClassification = ToBeClassified;
            Editable = true;
            TableRelation = State;
        }
        field(16612; "Seller GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Seller GST Reg. No.',
                        ENN = 'Seller GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16613; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(16614; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16615; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16616; "GST in Journal"; Boolean)
        {
            CaptionML = ENU = 'GST in Journal',
                        ENN = 'GST in Journal';
            DataClassification = ToBeClassified;
        }
        field(16617; "Journal Entry"; Boolean)
        {
            CaptionML = ENU = 'Journal Entry',
                        ENN = 'Journal Entry';
            DataClassification = ToBeClassified;
        }
        field(16618; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;
        }
        field(16619; "Location ARN No."; Code[15])
        {
            CaptionML = ENU = 'Location ARN No.',
                        ENN = 'Location ARN No.';
            DataClassification = ToBeClassified;
        }
        field(60061; "Sale Order no"; Code[20])
        {
        }
        field(60062; "Customer ord No"; Code[65])
        {
        }
        field(60064; "Payment Type"; Option)
        {
            OptionCaption = ',Supply Payment,AMC Amount,Final Payment,Inst.Payment,Advance,Payment Agst non-issue of C-form,SD,Retention Money,Excess';
            OptionMembers = ,"Supply Payment","AMC Amount","Final Payment","Inst.Payment",Advance,"Payment Agst non-issue of C-form",SD,"Retention Money",Excess;
        }
        field(60065; "Sale Invoice No"; Code[20])
        {
        }
        field(60066; "invoice no"; Code[10])
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
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Currency Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No."(Key)". Please convert manually.


        //Unsupported feature: CodeModification on ""External Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Open,Positive,Due Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Open,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Customer No.,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Salesperson Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Closed by Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Open,Positive,Calculate Interest,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Open,Global Dimension 1 Code,Global Dimension 2 Code,Positive,Due Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Open,Global Dimension 1 Code,Global Dimension 2 Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Customer No.,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date,Currency Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Applies-to ID,Open,Positive,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Customer No.,Open,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Open,Posting Date,Closed at Date"(Key)". Please convert manually.

        key(Entry1; "Entry No.")
        {
        }
        key(Customer2; "Customer No.", "Posting Date", "Currency Code")
        {
            SumIndexFields = "Sales (LCY)", "Profit (LCY)", "Inv. Discount (LCY)";
        }
        key(Currency3; "Customer No.", "Currency Code", "Posting Date")
        {
        }
        key(Documet4; "Document No.")
        {
        }
        key(External5; "External Document No.")
        {
        }
        key(OPen6; "Customer No.", Open, Positive, "Due Date", "Currency Code")
        {
        }
        key(DueDate7; Open, "Due Date")
        {
        }
        key(DocumentType8; "Document Type", "Customer No.", "Posting Date", "Currency Code")
        {
            SumIndexFields = "Sales (LCY)", "Profit (LCY)", "Inv. Discount (LCY)";
        }
        key(SalesPerson9; "Salesperson Code", "Posting Date")
        {
        }
        key(ClosedBy10; "Closed by Entry No.")
        {
        }
        key(Transaction11; "Transaction No.")
        {
        }
        key(Customer12; "Customer No.", Open, Positive, "Calculate Interest", "Due Date")
        {
            Enabled = false;
        }
        key(Global13; "Customer No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "Currency Code")
        {
            Enabled = false;
            SumIndexFields = "Sales (LCY)", "Profit (LCY)", "Inv. Discount (LCY)";
        }
        key(Open14; "Customer No.", Open, "Global Dimension 1 Code", "Global Dimension 2 Code", Positive, "Due Date", "Currency Code")
        {
            Enabled = false;
        }
        key(Global15; Open, "Global Dimension 1 Code", "Global Dimension 2 Code", "Due Date")
        {
            Enabled = false;
        }
        key(Customer16; "Document Type", "Customer No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "Currency Code")
        {
            Enabled = false;
        }
        key(Applies17; "Customer No.", "Applies-to ID", Open, Positive, "Due Date")
        {
        }
        key(Posting18; "Document Type", "Posting Date")
        {
            SumIndexFields = "Sales (LCY)";
        }
        key(DueDate19; "Document Type", "Customer No.", Open, "Due Date")
        {
        }
        key(PostingGroup20; "Customer Posting Group")
        {
        }
        key(Closedatdate21; "Document Type", Open, "Posting Date", "Closed at Date")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
     {USER.RESET;
    USER.SETFILTER("User Name",USERID);
    IF USER.FINDFIRST THEN
      BEGIN
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        IF (NOT( USER.Tams_Dept IN ['ERP']) AND (USER."User Name"<>'EFFTRONICS\VHARIPRASAD')) THEN //modified by priyanka to remove edit permissions
          ERROR('You don''t have Permissions');
      END
      ELSE
        ERROR('User not found. Contact ERP');


    Body:='****  Auto Mail Generated From ERP  ****';
    Mail_From:='erp@efftronics.net';
    Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
    // Mail_To:='santhoshk@efftronics.net';
     USER.SETRANGE(USER."User Security ID",USERID);// Changed User."User Id" to User."User Security ID" B2B
     IF USER.FIND('-') THEN
     Subject:=USER."User Name"+'  is trying to Delete Customer Ledger Entry Records';// Changed User."Name" to User."User Name" B2B
     Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete');
      }
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    var
        GenJnlPostPreview: Codeunit "Gen. Jnl.-Post Preview";
    //begin
    /*
    //GenJnlPostPreview.ModifyCustLedgEntry(Rec);

    // Commented by Vishnu Priya on 31-10-2020
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
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        if (not( USER.Tams_Dept in ['ERP','SAL','F&A'])) and (not(USER."User Name" in ['EFFTRONICS\SSIRISHA','EFFTRONICS\MBNAGAMANI','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) then //modified by priyanka to remove edit permissions
          Error('You don''t have Permissions');
      end
      else
        Error('User not found. Contact ERP');
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


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


    //Unsupported feature: PropertyModification on ""Due Date"(Field 37).OnValidate.ReminderEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Due Date" : 300;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Due Date" : "Reminder/Fin. Charge Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Due Date"(Field 37).OnValidate.ReminderIssue(Variable 1565)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Due Date" : 393;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Due Date" : "Reminder-Issue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).SalesInvoiceHdr(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).SalesCrMemoHdr(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).ServiceInvoiceHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 5992;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Service Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).ServiceCrMemoHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 5994;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Service Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).IssuedFinChargeMemoHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 304;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Issued Fin. Charge Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDoc(PROCEDURE 7).IssuedReminderHeader(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDoc : 297;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDoc : "Issued Reminder Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowPostedDocAttachment(PROCEDURE 15).SalesInvoiceHdr(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowPostedDocAttachment : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowPostedDocAttachment : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowPostedDocAttachment(PROCEDURE 15).SalesCrMemoHdr(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowPostedDocAttachment : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowPostedDocAttachment : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenDocumentAttachmentDetails(PROCEDURE 17).DocumentAttachmentDetails(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenDocumentAttachmentDetails : 1173;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenDocumentAttachmentDetails : "Document Attachment Details";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasPostedDocAttachment(PROCEDURE 16).SalesInvoiceHdr(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasPostedDocAttachment : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasPostedDocAttachment : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasPostedDocAttachment(PROCEDURE 16).SalesCrMemoHdr(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasPostedDocAttachment : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasPostedDocAttachment : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnEntries(PROCEDURE 1).CustLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnEntries : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnEntries : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDownOnOverdueEntries(PROCEDURE 4).CustLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDownOnOverdueEntries : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDownOnOverdueEntries : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 3).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecalculateAmounts(PROCEDURE 26).CurrExchRate(Variable 1004)". Please convert manually.

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


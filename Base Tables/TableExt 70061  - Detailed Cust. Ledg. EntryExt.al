tableextension 70061 DetailedCustLedgEntryExt extends "Detailed Cust. Ledg. Entry"
{
    // version NAVW19.00.00.51934,NAVIN9.00.00.51934,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change OptionString on ""Entry Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount (LCY)"(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""User ID"(Field 11)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Journal Batch Name"(Field 14)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 16)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 17)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount (LCY)"(Field 18)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount (LCY)"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Initial Entry Global Dim. 1"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Initial Entry Global Dim. 2"(Field 22)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Initial Document Type"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Tax Jurisdiction Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Application No."(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ledger Entry Amount"(Field 43)". Please convert manually.

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
        field(13704; "Total TDS/TCS Incl. SHECESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS/TCS Incl. SHECESS',
                        ENN = 'Total TDS/TCS Incl. SHECESS';
            DataClassification = ToBeClassified;
        }
        field(16500; "TCS Nature of Collection"; Code[10])
        {
            CaptionML = ENU = 'TCS Nature of Collection',
                        ENN = 'TCS Nature of Collection';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";
        }
        field(16501; "TCS Type"; Option)
        {
            CaptionML = ENU = 'TCS Type',
                        ENN = 'TCS Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H',
                              ENN = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,"1H";
        }
        field(60063; "Customer Ord No"; Code[65])
        {
        }
        field(60064; "Payment Type"; Option)
        {
            OptionCaption = ',Supply Payment,AMC Amount,Final Payment,Inst.Payment,Advance,Payment Agst non-issue of C-form,SD,Retention Money,Excess';
            OptionMembers = ,"Supply Payment","AMC Amount","Final Payment","Inst.Payment",Advance,"Payment Agst non-issue of C-form",SD,"Retention Money",Excess;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cust. Ledger Entry No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cust. Ledger Entry No.,Entry Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Ledger Entry Amount,Cust. Ledger Entry No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Initial Document Type,Entry Type,Customer No.,Currency Code,Initial Entry Global Dim. 1,Initial Entry Global Dim. 2,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Currency Code,Initial Entry Global Dim. 1,Initial Entry Global Dim. 2,Initial Entry Due Date,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Document Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Applied Cust. Ledger Entry No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No.,Customer No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Application No.,Customer No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Entry Type,Posting Date,Initial Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Initial Document Type,Initial Entry Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Initial Entry Due Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Cust. Ledger Entry No.", "Posting Date")
        {
        }
        key(Key3; "Cust. Ledger Entry No.", "Entry Type", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key4; "Ledger Entry Amount", "Cust. Ledger Entry No.", "Posting Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount (LCY)", "Debit Amount", "Debit Amount (LCY)", "Credit Amount", "Credit Amount (LCY)";
        }
        key(Key5; "Initial Document Type", "Entry Type", "Customer No.", "Currency Code", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key6; "Customer No.", "Currency Code", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Initial Entry Due Date", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key7; "Document No.", "Document Type", "Posting Date")
        {
        }
        key(Key8; "Applied Cust. Ledger Entry No.", "Entry Type")
        {
        }
        key(Key9; "Transaction No.", "Customer No.", "Entry Type")
        {
        }
        key(Key10; "Application No.", "Customer No.", "Entry Type")
        {
        }
        key(Key11; "Customer No.", "Entry Type", "Posting Date", "Initial Document Type")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key12; "Document Type")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key13; "Initial Document Type", "Initial Entry Due Date")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key14; "Customer No.", "Initial Entry Due Date")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key15; "Customer No.", "Posting Date", "Initial Entry Global Dim. 1", "Entry Type")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    { Body:='****  Auto Mail Generated From ERP  ****';
     Mail_From:='erp@efftronics.net';
    Mail_To:='anilkumar@efftronics.com';
    // Mail_To:='santhoshk@efftronics.net';
     USER.SETRANGE(USER."User Security ID" ,USERID);// Changed User."User Id" to User."User Security ID" B2B
     IF USER.FIND('-') THEN
     Subject:=USER."User Name"+'  is trying to Delete Detailed Cust. Ledger Entry Records';// Changed User."Name" to User."User Name" B2B
     Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete');
    }

    USER.Reset;
    USER.SetFilter("User Name",UserId);
    if USER.FindFirst then
      begin
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        if (not( USER.Tams_Dept in ['ERP'])) then //modified by priyanka to remove edit permissions
          Error('You don''t have Permissions');
      end
      else
        Error('User not found. Contact ERP');
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    {IF UserSetupGRec.GET(USERID) THEN
    BEGIN
      IF NOT UserSetupGRec."Edit Posted Ledger Entries" THEN
        ERROR('You Dont have Permissions');
    END ELSE
      ERROR('User Setup not found. contact ERP Team');   }
    USER.Reset;
    USER.SetFilter("User Name",UserId);
    if USER.FindFirst then
      begin
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        if (not( USER.Tams_Dept in ['ERP']) and (USER."User Name"<>'EFFTRONICS\VHARIPRASAD')) then //modified by priyanka to remove edit permissions
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


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 11).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLastEntryNo(PROCEDURE 3).DetailedCustLedgEntryLocal(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLastEntryNo : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLastEntryNo : "Detailed Cust. Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetZeroTransNo(PROCEDURE 87).DtldCustLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetZeroTransNo : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetZeroTransNo : "Detailed Cust. Ledg. Entry";
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


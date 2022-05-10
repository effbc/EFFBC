tableextension 70152 DetailedVendoLedgEntryExt extends "Detailed Vendor Ledg. Entry"
{
    // version NAVW19.00.00.45778,NAVIN9.00.00.45778,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change OptionString on ""Entry Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 11)". Please convert manually.


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
        field(13704; "Total TDS Including SHECESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS Including SHECESS',
                        ENN = 'Total TDS Including SHECESS';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor Ledger Entry No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor Ledger Entry No.,Entry Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Ledger Entry Amount,Vendor Ledger Entry No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Initial Document Type,Entry Type,Vendor No.,Currency Code,Initial Entry Global Dim. 1,Initial Entry Global Dim. 2,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Currency Code,Initial Entry Global Dim. 1,Initial Entry Global Dim. 2,Initial Entry Due Date,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Document Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Applied Vend. Ledger Entry No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No.,Vendor No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Application No.,Vendor No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Initial Document Type,Initial Entry Due Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Vendor Ledger Entry No.", "Posting Date")
        {
        }
        key(Key3; "Vendor Ledger Entry No.", "Entry Type", "Posting Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key4; "Ledger Entry Amount", "Vendor Ledger Entry No.", "Posting Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount (LCY)", "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
        key(Key5; "Initial Document Type", "Entry Type", "Vendor No.", "Currency Code", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key6; "Vendor No.", "Currency Code", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Initial Entry Due Date", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key7; "Document No.", "Document Type", "Posting Date")
        {
        }
        key(Key8; "Applied Vend. Ledger Entry No.", "Entry Type")
        {
        }
        key(Key9; "Transaction No.", "Vendor No.", "Entry Type")
        {
        }
        key(Key10; "Application No.", "Vendor No.", "Entry Type")
        {
        }
        key(Key11; "Initial Document Type", "Initial Entry Due Date")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key12; "Vendor No.", "Posting Date", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Currency Code")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    {//modified by durga on 09-08-2021
    USER.RESET;
    USER.SETFILTER("User Name",USERID);
    IF USER.FINDFIRST THEN
      BEGIN
        IF NOT( USER.Tams_Dept IN ['ERP']) THEN//modified by durga on 09-08-2021
          ERROR('You don''t have Permissions');
      END
      ELSE
        ERROR('User not found. Contact ERP');





     Body:='****  Auto Mail Generated From ERP  ****';
     Mail_From:='erp@efftronics.net';
    Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
    // Mail_To:='santhoshk@efftronics.net';
     //USER.SETRANGE(USER."User Security ID" ,USERID);// Changed User."User Id" to User."User Security ID" B2B//UPGREV2.0
     USER.SETRANGE("User Name" ,USERID);//UPGREV2.0
     IF USER.FIND('-') THEN
     Subject:=USER."User Name"+'  is trying to Delete Detailed Vendor Ledger Entry Records';// Changed User."Name" to User."User Name" B2B
     Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete');
      }
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    {
    IF UserSetupGRec.GET(USERID) THEN
    BEGIN
      IF NOT UserSetupGRec."Edit Posted Ledger Entries" THEN
        ERROR('You Dont have Permissions');
    END ELSE
      ERROR('User Setup not found. contact ERP Team');
    }
    //modified by durga on 09-08-2021
    USER.Reset;
    USER.SetFilter("User Name",UserId);
    if USER.FindFirst then
      begin
        if (not( USER.Tams_Dept in ['ERP']) and (USER."User Name"<>'EFFTRONICS\VHARIPRASAD')) then//modified by durga on 09-08-2021
          Error('You don''t have Permissions');
      end
      else
        Error('User not found. Contact ERP');
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


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


    //Unsupported feature: PropertyModification on "GetLastEntryNo(PROCEDURE 4).DetailedVendorLedgEntryLocal(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLastEntryNo : 380;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLastEntryNo : "Detailed Vendor Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetZeroTransNo(PROCEDURE 3).DtldVendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetZeroTransNo : 380;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetZeroTransNo : "Detailed Vendor Ledg. Entry";
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


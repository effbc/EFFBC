tableextension 70004 GLEntryExt extends "G/L Entry"
{
    // version NAVW19.00.00.51852,NAVIN9.00.00.51852,Rev01

    fields
    {
        modify("Posting Date")
        {
            ClosingDates = true;
        }
        modify("Document Type")
        {
            OptionCaptionML = ENU = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund,Balance Entry', ENN = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund,Balance Entry';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.

        }

        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Gen. Posting Type"(Field 48)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 53)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 54)". Please convert manually.

        modify("Document Date")
        {
            ClosingDates = true;
        }

        //Unsupported feature: Change OptionString on ""Source Type"(Field 57)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 58)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Additional-Currency Amount"(Field 68)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed by Entry No."(Field 74)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed Entry No."(Field 75)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""G/L Account Name"(Field 76)". Please convert manually.


        //Unsupported feature: Change Editable on ""G/L Account Name"(Field 76)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Entry Type"(Field 5600)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Entry Type"(Field 5600)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""FA Entry No."(Field 5601)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""FA Entry No."(Field 5601)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Account Id"(Field 8001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Modified DateTime"(Field 8005)". Please convert manually.

        field(13702; "Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16500; "Location Code"; Code[10])
        {
            CaptionML = ENU = 'Location Code',
                        ENN = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(16616; "Tax Type"; Option)
        {
            CaptionML = ENU = 'Tax Type',
                        ENN = 'Tax Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Tax,Excise,Service Tax,GST Credit,GST Liability,GST TDS Credit,GST TCS Credit',
                              ENN = ' ,Sales Tax,Excise,Service Tax,GST Credit,GST Liability,GST TDS Credit,GST TCS Credit';
            OptionMembers = " ","Sales Tax",Excise,"Service Tax","GST Credit","GST Liability","GST TDS Credit","GST TCS Credit";
        }
        field(50000; "Cheque No."; Code[20])
        {
        }
        field(50001; "Cheque Date"; Date)
        {
        }
        field(60019; "Vendor Invoice Date"; Date)
        {
        }
        field(60063; "customer Ord No"; Code[65])
        {
        }
        field(60064; "Payment Type"; Option)
        {
            OptionCaption = ',Supply Payment,AMC Amount,Final Payment,Inst.Payment,Advance,Receipt,Contra,payment,Journal,Excess';
            OptionMembers = ,"Supply Payment","AMC Amount","Final Payment","Inst.Payment",Advance,Receipt,Contra,payment,Journal,Excess;
        }
        field(60069; "From Date"; Date)
        {
        }
        field(60070; "To Date"; Date)
        {
        }
        field(60071; "System Date"; Date)
        {
        }
        field(60072; Attachment; Boolean)
        {
        }
        field(60073; "Apply Entry No"; Integer)
        {
        }
        field(60074; Check; Boolean)
        {
        }
        field(60075; "Sale Order No."; Code[20])
        {
        }
        field(60079; "DD/FDR No."; Code[20])
        {
            Description = 'Rev01';
        }
        field(60080; "Payment Through"; Option)
        {
            Description = 'Rev01';
            OptionCaption = '" ,Cheque,Cash,DD,FDR,RTGS,FTT,Credit-Card"';
            OptionMembers = " ",Cheque,Cash,DD,FDR,RTGS,FTT,"Credit-Card";
        }
        field(60081; "Tender No"; Code[20])
        {
        }
        field(60082; "Final Bill Payment"; Boolean)
        {
            Description = 'Added by Pranavi for SD Tracking';
        }
        field(60083; "Currency Amount"; Decimal)
        {
            Description = 'Added by Pranavi for foreign currency tracking';
        }
        field(60084; "Currency Rate"; Decimal)
        {
            Description = 'Added by Pranavi for foreign currency tracking';
        }
        field(60085; "Currency Code"; Code[10])
        {
            Description = 'Added by Pranavi for foreign currency tracking';
        }
        field(60086; "Old Order"; Boolean)
        {
        }
        field(60087; Vertical; Option)
        {
            Description = 'Added by vijaya for vertical expenditure';
            OptionCaption = '" ,Smart Signalling,Smart Cities,Smart Building,IOT,other,AMC"';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other,AMC;
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
        field(60092; "GST TDS Claimed Date"; Date)
        {
            Description = 'Added by Vishnu Priya for the TDS Claiming Process';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Account No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Account No.,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Account No.,Business Unit Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Account No.,Business Unit Code,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""IC Partner Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Account No.,Job No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date,G/L Account No.,Dimension Set ID"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Gen. Bus. Posting Group,Gen. Prod. Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""VAT Bus. Posting Group,VAT Prod. Posting Group"(Key)". Please convert manually.

        key(EntryNo; "Entry No.")
        {
        }
        key(GLAccount; "G/L Account No.", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount", "VAT Amount";
        }
        key(PostingDate; "G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount", "VAT Amount";
        }
        key(BusinessUnitCode; "G/L Account No.", "Business Unit Code", "Posting Date")
        {
            Enabled = false;
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount";
        }
        key(GlobalDime1; "G/L Account No.", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date")
        {
            Enabled = false;
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount";
        }
        key(Document; "Document No.", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount", "VAT Amount";
        }
        key(Transaction; "Transaction No.")
        {
        }
        key(ICPartner; "IC Partner Code")
        {
        }
        key(JobNo; "G/L Account No.", "Job No.", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(PostingGLDate; "Posting Date", "G/L Account No.", "Dimension Set ID")
        {
            SumIndexFields = Amount;
        }
        key(GENBUS; "Gen. Bus. Posting Group", "Gen. Prod. Posting Group")
        {
        }
        key(VatBus; "VAT Bus. Posting Group", "VAT Prod. Posting Group")
        {
        }
        /*key(Key13; "Document No.", "System Date")
        {
        }*/
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
      {anil  IF USERID<>'ANIL' THEN
         BEGIN
          Body:='****  Auto Mail Generated From ERP  ****';
         Mail_From:='erp@efftronics.net';
         Mail_To:=
    'anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
        //mail_To:='swarupa@efftronics.net';
         USER.SETRANGE(USER."User Security ID",USERID);// Changed User."User Id" to User."User Security ID" B2B
         IF USER.FIND('-') THEN
         Subject:=USER."User Name"+'  is trying to Delete G/L Entry Records';// Changed User."Name" to User."User Name" B2B
         Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
          ERROR('U Dont Have Permissions to Delete');
         END;
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


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified DateTime" := CURRENTDATETIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified DateTime" := CurrentDateTime;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified DateTime" := CURRENTDATETIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified DateTime" := CurrentDateTime;
    {IF UserSetupGRec.GET(USERID) THEN
    BEGIN
      IF NOT UserSetupGRec."Edit Posted Ledger Entries" THEN
        ERROR('You Dont have Permissions');
    END ELSE
      ERROR('User Setup not found. contact ERP Team');
      }
    {
    USER.RESET;
    USER.SETFILTER("User Name",USERID);
    IF USER.FINDFIRST THEN
      BEGIN
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        IF (NOT( USER.Tams_Dept IN ['ERP']) AND (USER."User Name"<>'EFFTRONICS\VHARIPRASAD')) THEN //modified by priyanka to remove edit permissions
          ERROR('You don''t have Permissions');
      END
      ELSE
        ERROR('User not found. Contact ERP');
        }
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified DateTime" := CURRENTDATETIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified DateTime" := CurrentDateTime;
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


    //Unsupported feature: PropertyModification on "ShowValueEntries(PROCEDURE 8).GLItemLedgRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowValueEntries : 5823;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowValueEntries : "G/L - Item Ledger Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowValueEntries(PROCEDURE 8).ValueEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowValueEntries : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowValueEntries : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowValueEntries(PROCEDURE 8).TempValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowValueEntries : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowValueEntries : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 2).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAccountID(PROCEDURE 1166).GLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAccountID : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAccountID : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAccountNo(PROCEDURE 1164).GLAccount(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAccountNo : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAccountNo : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
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


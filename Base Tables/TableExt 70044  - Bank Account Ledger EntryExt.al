tableextension 70044 BankAccountLedgerEntryExt extends "Bank Account Ledger Entry"
{
    // version NAVW19.00.00.50087,NAVIN9.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Our Contact Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 52)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Statement Status"(Field 55)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Statement No."(Field 56)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Statement No."(Field 56)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Statement Line No."(Field 57)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Statement Line No."(Field 57)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount (LCY)"(Field 61)". Please convert manually.

        modify("Document Date")
        {
            ClosingDates = true;
        }

        //Unsupported feature: Change BlankZero on ""Reversed by Entry No."(Field 65)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed Entry No."(Field 66)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Check Ledger Entries"(Field 70)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(16500; "Location Code"; Code[10])
        {
            CaptionML = ENU = 'Location Code',
                        ENN = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(16501; "Cheque No."; Code[10])
        {
            CaptionML = ENU = 'Cheque No.',
                        ENN = 'Cheque No.';
            DataClassification = ToBeClassified;
        }
        field(16502; "Cheque Date"; Date)
        {
            CaptionML = ENU = 'Cheque Date',
                        ENN = 'Cheque Date';
            DataClassification = ToBeClassified;
        }
        field(16503; "Stale Cheque"; Boolean)
        {
            CaptionML = ENU = 'Stale Cheque',
                        ENN = 'Stale Cheque';
            DataClassification = ToBeClassified;
        }
        field(16504; "Stale Cheque Expiry Date"; Date)
        {
            CaptionML = ENU = 'Stale Cheque Expiry Date',
                        ENN = 'Stale Cheque Expiry Date';
            DataClassification = ToBeClassified;
        }
        field(16505; "Cheque Stale Date"; Date)
        {
            CaptionML = ENU = 'Cheque Stale Date',
                        ENN = 'Cheque Stale Date';
            DataClassification = ToBeClassified;
        }
        field(60063; "customer ord no"; Code[65])
        {
        }
        field(60064; "Payment Type"; Option)
        {
            OptionCaption = ',Supply Payment,AMC Amount,Final Payment,Inst.Payment,Advance,Payment Agst non-issue of C-form,SD,Retention Money';
            OptionMembers = ,"Supply Payment","AMC Amount","Final Payment","Inst.Payment",Advance,"Payment Agst non-issue of C-form",SD,"Retention Money";
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


        //Unsupported feature: Deletion on ""Bank Account No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bank Account No.,Open"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Bank Account No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bank Account No.,Global Dimension 1 Code,Global Dimension 2 Code,Posting Date"(Key)". Please convert manually.

        key(EntryNo1; "Entry No.")
        {
        }
        key(BankAccount2; "Bank Account No.", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
        key(BankAcc3; "Bank Account No.", Open)
        {
        }
        key(Doctype4; "Document Type", "Bank Account No.", "Posting Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount;
        }
        key(DocNo5; "Document No.", "Posting Date")
        {
        }
        key(Trans6; "Transaction No.")
        {
        }
        key(BankAccNo7; "Bank Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date")
        {
            Enabled = false;
            SumIndexFields = Amount, "Amount (LCY)", "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
        key(Post8; "Posting Date")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    User.Reset;
    User.SetFilter("User Name",UserId);
    if User.FindFirst then
      begin
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        if (not( User.Tams_Dept in ['ERP'])) then //modified by priyanka to remove edit permissions
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
    User.Reset;
    User.SetFilter("User Name",UserId);
    if User.FindFirst then
      begin
        //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
        if (not( User.Tams_Dept in ['ERP']) and (User."User Name"<>'EFFTRONICS\VHARIPRASAD')) then //modified by priyanka to remove edit permissions
          Error('You don''t have Permissions');
      end
      else
        Error('User not found. Contact ERP');



    {IF UserSetupGRec.GET(USERID) THEN
    BEGIN
      IF NOT UserSetupGRec."Edit Posted Ledger Entries" THEN
        ERROR('You Dont have Permissions');
    END ELSE
      ERROR('User Setup not found. contact ERP Team');
      }
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 27).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsApplied(PROCEDURE 4).CheckLedgerEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsApplied : 272;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsApplied : "Check Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.

    var
        UserSetupGRec: Record "User Setup";
        User: Record User;
}


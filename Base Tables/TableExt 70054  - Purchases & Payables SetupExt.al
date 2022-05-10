tableextension 70054 PurchasesPayablesSetupExt extends "Purchases & Payables Setup"
{
    // version NAVW19.00.00.51552,NAVIN9.00.00.51552,POAU

    fields
    {

        //Unsupported feature: Change OptionString on ""Discount Posting"(Field 2)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Receipt on Invoice"(Field 6)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Ext. Doc. No. Mandatory"(Field 8)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Nos."(Field 11)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Receipt Nos."(Field 16)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order Nos."(Field 19)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Calc. Inv. Discount"(Field 20)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appln. between Currencies"(Field 21)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Blanket to Order"(Field 22)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Blanket to Order"(Field 22)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Invoice"(Field 23)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Order to Invoice"(Field 23)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Receipt"(Field 24)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Order to Receipt"(Field 24)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Default Posting Date"(Field 35)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Default Qty. to Receive"(Field 36)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Insert Std. Purch. Lines Mode"(Field 170)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Debit Acc. for Non-Item Lines"(Field 1217)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Credit Acc. for Non-Item Lines"(Field 1218)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Return Shpt. Nos."(Field 5800)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Cmts Ret.Ord. to Ret.Shpt"(Field 5801)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Cmts Ret.Ord. to Ret.Shpt"(Field 5801)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Cmts Ret.Ord. to Cr. Memo"(Field 5802)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Cmts Ret.Ord. to Cr. Memo"(Field 5802)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Order Nos."(Field 6600)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Shipment on Credit Memo"(Field 6601)". Please convert manually.


        //Unsupported feature: CodeModification on ""Prepmt. Auto Update Frequency"(Field 33).OnValidate". Please convert manually.

        //trigger  Auto Update Frequency"(Field 33)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepmt. Auto Update Frequency" = xRec."Prepmt. Auto Update Frequency" THEN
          EXIT;

        PrepaymentMgt.CreateAndStartJobQueueEntryPurchase("Prepmt. Auto Update Frequency");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepmt. Auto Update Frequency" = xRec."Prepmt. Auto Update Frequency" then
          exit;

        PrepaymentMgt.CreateAndStartJobQueueEntryPurchase("Prepmt. Auto Update Frequency");
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


        //Unsupported feature: CodeModification on ""Copy Vendor Name to Entries"(Field 58).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Copy Vendor Name to Entries" THEN
          VendEntryEdit.UpdateVendorNamesInLedgerEntries;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Copy Vendor Name to Entries" then
          VendEntryEdit.UpdateVendorNamesInLedgerEntries;
        */
        //end;
        field(13790; "Third Party Nos."; Code[10])
        {
            CaptionML = ENU = 'Third Party Nos.',
                        ENN = 'Third Party Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16360; "Posted Delivery Challan Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Delivery Challan Nos.',
                        ENN = 'Posted Delivery Challan Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16361; "Subcontracting Order Nos."; Code[10])
        {
            CaptionML = ENU = 'Subcontracting Order Nos.',
                        ENN = 'Subcontracting Order Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16362; "Posted SC Comp. Rcpt. Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted SC Comp. Rcpt. Nos.',
                        ENN = 'Posted SC Comp. Rcpt. Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16363; "Delivery Challan Nos."; Code[10])
        {
            CaptionML = ENU = 'Delivery Challan Nos.',
                        ENN = 'Delivery Challan Nos.';
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
        field(16501; "Posted Ret Shpt Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Ret Shpt Nos. (Trading)',
                        ENN = 'Posted Ret Shpt Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16502; "Posted Purch. Rcpt. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Purch. Rcpt. (Trading)',
                        ENN = 'Posted Purch. Rcpt. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16503; "Posted Purch Cr. Memo(Trading)"; Code[10])
        {
            CaptionML = ENU = 'Posted Purch Cr. Memo(Trading)',
                        ENN = 'Posted Purch Cr. Memo(Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16504; "Multiple Subcon. Order Det Nos"; Code[10])
        {
            CaptionML = ENU = 'Multiple Subcon. Order Det Nos',
                        ENN = 'Multiple Subcon. Order Det Nos';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16505; "Posted Purch. Inv.(Unreg)"; Code[10])
        {
            CaptionML = ENU = 'Posted Purch. Inv.(Unreg)',
                        ENN = 'Posted Purch. Inv.(Unreg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16506; "Posted Purch Cr. Memo(Unreg)"; Code[10])
        {
            CaptionML = ENU = 'Posted Purch Cr. Memo(Unreg)',
                        ENN = 'Posted Purch Cr. Memo(Unreg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16507; "Posted Purch Inv.(Unreg Supp)"; Code[10])
        {
            CaptionML = ENU = 'Posted Purch Inv.(Unreg Supp)',
                        ENN = 'Posted Purch Inv.(Unreg Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16508; "Pst. Pur. Inv(Unreg. Deb.Note)"; Code[10])
        {
            CaptionML = ENU = 'Pst. Pur. Inv(Unreg. Deb.Note)',
                        ENN = 'Pst. Pur. Inv(Unreg. Deb.Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16509; "RCM Exempt Start Date (Unreg)"; Date)
        {
            CaptionML = ENU = 'RCM Exempt Start Date (Unreg)',
                        ENN = 'RCM Exempt Start Date (Unreg)';
            DataClassification = ToBeClassified;
        }
        field(16510; "RCM Exempt End Date (Unreg)"; Date)
        {
            CaptionML = ENU = 'RCM Exempt End Date (Unreg)',
                        ENN = 'RCM Exempt End Date (Unreg)';
            DataClassification = ToBeClassified;
        }
        field(16511; "GST Liability Adj. Jnl Nos."; Code[10])
        {
            CaptionML = ENU = 'GST Liability Adj. Jnl Nos.',
                        ENN = 'GST Liability Adj. Jnl Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16512; "Purch. Inv. Nos. (Reg)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Inv. Nos. (Reg)',
                        ENN = 'Purch. Inv. Nos. (Reg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16513; "Purch. Inv. Nos. (Reg Supp)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Inv. Nos. (Reg Supp)',
                        ENN = 'Purch. Inv. Nos. (Reg Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16514; "Pur. Inv. Nos.(Reg Deb.Note)"; Code[10])
        {
            CaptionML = ENU = 'Pur. Inv. Nos.(Reg Deb.Note)',
                        ENN = 'Pur. Inv. Nos.(Reg Deb.Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16515; "Purch. Cr. Memo Nos. (Reg)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Cr. Memo Nos. (Reg)',
                        ENN = 'Purch. Cr. Memo Nos. (Reg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(60001; "Purchase Indent Nos."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60002; "RFQ Nos."; Code[10])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60003; "ICN Nos."; Code[10])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60004; "Enquiry Nos."; Code[10])
        {
            Description = 'POAU';
            TableRelation = "No. Series";
        }
        field(60005; "Price Required"; Boolean)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Price Weightage", 0);
            end;
        }
        field(60006; "Price Weightage"; Decimal)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Price Required");
            end;
        }
        field(60007; "Quality Required"; Boolean)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Quality Weightage", 0);
            end;
        }
        field(60008; "Quality Weightage"; Decimal)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Quality Required");
            end;
        }
        field(60009; "Delivery Required"; Boolean)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Delivery Weightage", 0);
            end;
        }
        field(60010; "Delivery Weightage"; Decimal)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Delivery Required");
            end;
        }
        field(60011; "Payment Terms Required"; Boolean)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Payment Terms Weightage", 0);
            end;
        }
        field(60012; "Payment Terms Weightage"; Decimal)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                TestField("Payment Terms Required");
            end;
        }
        field(60013; "Default Quality Rating"; Decimal)
        {
            Description = 'POAU';
        }
        field(60014; "Default Delivery Rating"; Decimal)
        {
            Description = 'POAU';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Key1; "Primary Key")
        {
        }
    }

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


    //Unsupported feature: PropertyModification on ""Copy Vendor Name to Entries"(Field 58).OnValidate.VendEntryEdit(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Copy Vendor Name to Entries" : 113;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Copy Vendor Name to Entries" : "Vend. Entry-Edit";
    //Variable type has not been exported.
}


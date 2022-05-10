tableextension 70055 InventorySetupExt extends "Inventory Setup"
{
    // version NAVW19.00.00.48466,NAVIN9.00.00.48466,B2B1.0,MI1.0

    fields
    {

        //Unsupported feature: Change AccessByPermission on ""Location Mandatory"(Field 3)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Transfer Order Nos."(Field 5700)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Transfer Shpt. Nos."(Field 5701)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Transfer Rcpt. Nos."(Field 5702)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Shpt."(Field 5703)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Order to Shpt."(Field 5703)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Copy Comments Order to Rcpt."(Field 5704)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Copy Comments Order to Rcpt."(Field 5704)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Nonstock Item Nos."(Field 5718)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5790)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5791)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Average Cost Calc. Type"(Field 5804)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Average Cost Calc. Type"(Field 5804)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Average Cost Calc. Type"(Field 5804)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Average Cost Period"(Field 5805)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Average Cost Period"(Field 5805)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Phys. Invt. Order Nos."(Field 5875)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Phys. Invt. Order Nos."(Field 5876)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inventory Put-away Nos."(Field 7300)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inventory Pick Nos."(Field 7301)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Invt. Put-away Nos."(Field 7302)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posted Invt. Pick Nos."(Field 7303)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inventory Movement Nos."(Field 7304)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Registered Invt. Movement Nos."(Field 7305)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Internal Movement Nos."(Field 7306)". Please convert manually.


        //Unsupported feature: CodeModification on ""Automatic Cost Posting"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Automatic Cost Posting" THEN BEGIN
          IF GLSetup.GET THEN
            IF NOT GLSetup."Use Legacy G/L Entry Locking" THEN
              MESSAGE(Text006,
                FIELDCAPTION("Automatic Cost Posting"),
                "Automatic Cost Posting",
                GLSetup.FIELDCAPTION("Use Legacy G/L Entry Locking"),
                GLSetup.TABLECAPTION,
                GLSetup."Use Legacy G/L Entry Locking");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Automatic Cost Posting" then begin
          if GLSetup.Get then
            if not GLSetup."Use Legacy G/L Entry Locking" then
              Message(Text006,
                FieldCaption("Automatic Cost Posting"),
                "Automatic Cost Posting",
                GLSetup.FieldCaption("Use Legacy G/L Entry Locking"),
                GLSetup.TableCaption,
                GLSetup."Use Legacy G/L Entry Locking");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Automatic Cost Adjustment"(Field 30).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Automatic Cost Adjustment" <> "Automatic Cost Adjustment"::Never THEN BEGIN
          Item.SETCURRENTKEY("Cost is Adjusted","Allow Online Adjustment");
          Item.SETRANGE("Cost is Adjusted",FALSE);
          Item.SETRANGE("Allow Online Adjustment",FALSE);

          UpdateInvtAdjmtEntryOrder;

          InvtAdjmtEntryOrder.SETCURRENTKEY("Cost is Adjusted","Allow Online Adjustment");
          InvtAdjmtEntryOrder.SETRANGE("Cost is Adjusted",FALSE);
          InvtAdjmtEntryOrder.SETRANGE("Allow Online Adjustment",FALSE);
          InvtAdjmtEntryOrder.SETRANGE("Is Finished",TRUE);

          IF NOT (Item.ISEMPTY AND InvtAdjmtEntryOrder.ISEMPTY) THEN
            MESSAGE(Text000);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Automatic Cost Adjustment" <> "Automatic Cost Adjustment"::Never then begin
          Item.SetCurrentKey("Cost is Adjusted","Allow Online Adjustment");
          Item.SetRange("Cost is Adjusted",false);
          Item.SetRange("Allow Online Adjustment",false);
        #5..7
          InvtAdjmtEntryOrder.SetCurrentKey("Cost is Adjusted","Allow Online Adjustment");
          InvtAdjmtEntryOrder.SetRange("Cost is Adjusted",false);
          InvtAdjmtEntryOrder.SetRange("Allow Online Adjustment",false);
          InvtAdjmtEntryOrder.SetRange("Is Finished",true);

          if not (Item.IsEmpty and InvtAdjmtEntryOrder.IsEmpty) then
            Message(Text000);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Expected Cost Posting to G/L"(Field 5800).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Expected Cost Posting to G/L" <> xRec."Expected Cost Posting to G/L" THEN
          IF ItemLedgEntry.FINDFIRST THEN BEGIN
            ChangeExpCostPostToGL.ChangeExpCostPostingToGL(Rec,"Expected Cost Posting to G/L");
            FIND;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Expected Cost Posting to G/L" <> xRec."Expected Cost Posting to G/L" then
          if ItemLedgEntry.FindFirst then begin
            ChangeExpCostPostToGL.ChangeExpCostPostingToGL(Rec,"Expected Cost Posting to G/L");
            Find;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Average Cost Calc. Type"(Field 5804).OnValidate". Please convert manually.

        //trigger  Type"(Field 5804)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Average Cost Calc. Type");
        IF "Average Cost Calc. Type" <> xRec."Average Cost Calc. Type" THEN
          UpdateAvgCostItemSettings(FIELDCAPTION("Average Cost Calc. Type"),FORMAT("Average Cost Calc. Type"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Average Cost Calc. Type");
        if "Average Cost Calc. Type" <> xRec."Average Cost Calc. Type" then
          UpdateAvgCostItemSettings(FieldCaption("Average Cost Calc. Type"),Format("Average Cost Calc. Type"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Average Cost Period"(Field 5805).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Average Cost Period");
        IF "Average Cost Period" <> xRec."Average Cost Period" THEN
          UpdateAvgCostItemSettings(FIELDCAPTION("Average Cost Period"),FORMAT("Average Cost Period"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Average Cost Period");
        if "Average Cost Period" <> xRec."Average Cost Period" then
          UpdateAvgCostItemSettings(FieldCaption("Average Cost Period"),Format("Average Cost Period"));
        */
        //end;
        field(13790; "Third Party Nos."; Code[10])
        {
            CaptionML = ENU = 'Third Party Nos.',
                        ENN = 'Third Party Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16360; "Sub. Component Location"; Code[10])
        {
            CaptionML = ENU = 'Sub. Component Location',
                        ENN = 'Sub. Component Location';
            DataClassification = ToBeClassified;
            TableRelation = Location WHERE("Subcontracting Location" = CONST(false));
        }
        field(16500; "Inward Gate Entry Nos."; Code[10])
        {
            CaptionML = ENU = 'Inward Gate Entry Nos.',
                        ENN = 'Inward Gate Entry Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16501; "Outward Gate Entry Nos."; Code[10])
        {
            CaptionML = ENU = 'Outward Gate Entry Nos.',
                        ENN = 'Outward Gate Entry Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16502; "Captive Consumption %"; Decimal)
        {
            CaptionML = ENU = 'Captive Consumption %',
                        ENN = 'Captive Consumption %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16503; "External Doc. No. Mandatory"; Boolean)
        {
            CaptionML = ENU = 'External Doc. No. Mandatory',
                        ENN = 'External Doc. No. Mandatory';
            DataClassification = ToBeClassified;
        }
        field(16504; "Posted Shpt. Nos. (Captive)"; Code[10])
        {
            CaptionML = ENU = 'Posted Shpt. Nos. (Captive)',
                        ENN = 'Posted Shpt. Nos. (Captive)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16505; "Transfer Order Nos. (Captive)"; Code[10])
        {
            CaptionML = ENU = 'Transfer Order Nos. (Captive)',
                        ENN = 'Transfer Order Nos. (Captive)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16506; "Job Work Return Period"; Integer)
        {
            CaptionML = ENU = 'Job Work Return Period',
                        ENN = 'Job Work Return Period';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16507; "Job Work Return Period (GST)"; Integer)
        {
            CaptionML = ENU = 'Job Work Return Period (GST)',
                        ENN = 'Job Work Return Period (GST)';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16600; "Service Transfer Order Nos."; Code[10])
        {
            CaptionML = ENU = 'Service Transfer Order Nos.',
                        ENN = 'Service Transfer Order Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16601; "Posted Serv. Trans. Shpt. Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Trans. Shpt. Nos.',
                        ENN = 'Posted Serv. Trans. Shpt. Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16602; "Posted Serv. Trans. Rcpt. Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Trans. Rcpt. Nos.',
                        ENN = 'Posted Serv. Trans. Rcpt. Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50001; "Material Issue Nos."; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(50002; "Posted Material Issue Nos."; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(60000; "RGP Out No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60001; "RGP In No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60002; "DC Nos."; Code[10])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60003; "Packing Charge Group"; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Tax/Charge Group";
        }
        field(60004; "Material Issues No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60005; "Posted Issue No."; Code[20])
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

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Automatic Cost Posting"(Field 2).OnValidate.GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Automatic Cost Posting" : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Automatic Cost Posting" : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Expected Cost Posting to G/L"(Field 5800).OnValidate.ChangeExpCostPostToGL(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Expected Cost Posting to G/L" : 5811;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Expected Cost Posting to G/L" : "Change Exp. Cost Post. to G/L";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateInvtAdjmtEntryOrder(PROCEDURE 2).InvtAdjmtEntryOrder(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateInvtAdjmtEntryOrder : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateInvtAdjmtEntryOrder : "Inventory Adjmt. Entry (Order)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAvgCostItemSettings(PROCEDURE 1).ConfirmManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAvgCostItemSettings : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAvgCostItemSettings : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemLedgEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemLedgEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtAdjmtEntryOrder(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtAdjmtEntryOrder : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtAdjmtEntryOrder : "Inventory Adjmt. Entry (Order)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ObjTransl(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ObjTransl : 377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ObjTransl : "Object Translation";
    //Variable type has not been exported.
}


tableextension 70010 ItemLedgerEntryExt extends "Item Ledger Entry"
{
    // version NAVW19.00.00.48067,NAVIN9.00.00.48067,SH1.0,Rev01

    fields
    {

        //Unsupported feature: Change OptionString on ""Entry Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on "Open(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 41)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 47)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 51)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 70)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reserved Quantity"(Field 70)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 70)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 79)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order No."(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Line No."(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Assemble to Order"(Field 904)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job No."(Field 1000)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Originally Ordered No."(Field 5701)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Originally Ordered Var. Code"(Field 5702)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Originally Ordered Var. Code"(Field 5702)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost Amount (Expected)"(Field 5803)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (Expected)"(Field 5803)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost Amount (Actual)"(Field 5804)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (Actual)"(Field 5804)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost Amount (Non-Invtbl.)"(Field 5805)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (Non-Invtbl.)"(Field 5805)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost Amount (Expected) (ACY)"(Field 5806)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (Expected) (ACY)"(Field 5806)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost Amount (Actual) (ACY)"(Field 5807)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (Actual) (ACY)"(Field 5807)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost Amount (Non-Invtbl.)(ACY)"(Field 5808)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost Amount (Non-Invtbl.)(ACY)"(Field 5808)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Purchase Amount (Expected)"(Field 5813)". Please convert manually.


        //Unsupported feature: Change Editable on ""Purchase Amount (Expected)"(Field 5813)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Purchase Amount (Actual)"(Field 5814)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Purchase Amount (Actual)"(Field 5814)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Sales Amount (Expected)"(Field 5815)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales Amount (Expected)"(Field 5815)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Sales Amount (Actual)"(Field 5816)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales Amount (Actual)"(Field 5816)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipped Qty. Not Returned"(Field 5818)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Prod. Order Comp. Line No."(Field 5833)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Serial No."(Field 6500)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serial No."(Field 6500)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Item Tracking"(Field 6510)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item Tracking"(Field 6510)". Please convert manually.

        field(13000; "DSA Entry No."; Integer)
        {
            CaptionML = ENU = 'DSA Entry No.',
                        ENN = 'DSA Entry No.';
            DataClassification = ToBeClassified;
        }
        field(13702; "BED %"; Decimal)
        {
            CaptionML = ENU = 'BED %',
                        ENN = 'BED %';
            DataClassification = ToBeClassified;
        }
        field(13703; "BED Amount"; Decimal)
        {
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
        }
        field(13704; "Other Duties %"; Decimal)
        {
            CaptionML = ENU = 'Other Duties %',
                        ENN = 'Other Duties %';
            DataClassification = ToBeClassified;
        }
        field(13705; "Other Duties Amount"; Decimal)
        {
            CaptionML = ENU = 'Other Duties Amount',
                        ENN = 'Other Duties Amount';
            DataClassification = ToBeClassified;
        }
        field(16500; "Laboratory Test"; Boolean)
        {
            CaptionML = ENU = 'Laboratory Test',
                        ENN = 'Laboratory Test';
            DataClassification = ToBeClassified;
        }
        field(16501; "Other Usage"; Option)
        {
            CaptionML = ENU = 'Other Usage',
                        ENN = 'Other Usage';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Disposal,Wasted/Destroyed',
                              ENN = ' ,Disposal,Wasted/Destroyed';
            OptionMembers = " ",Disposal,"Wasted/Destroyed";
        }
        field(16502; "Nature of Disposal"; Code[10])
        {
            CaptionML = ENU = 'Nature of Disposal',
                        ENN = 'Nature of Disposal';
            DataClassification = ToBeClassified;
        }
        field(16503; "Type of Disposal"; Option)
        {
            CaptionML = ENU = 'Type of Disposal',
                        ENN = 'Type of Disposal';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Purchase return,Transfer Shipment,Sale,Negative Adjustment',
                              ENN = ' ,Purchase return,Transfer Shipment,Sale,Negative Adjustment';
            OptionMembers = " ","Purchase return","Transfer Shipment",Sale,"Negative Adjustment";
        }
        field(16504; "Reason Code"; Code[10])
        {
            CaptionML = ENU = 'Reason Code',
                        ENN = 'Reason Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reason Code";
        }
        field(16505; "Captive Consumption"; Boolean)
        {
            CaptionML = ENU = 'Captive Consumption',
                        ENN = 'Captive Consumption';
            DataClassification = ToBeClassified;
        }
        field(16506; "Re-Dispatch"; Boolean)
        {
            CaptionML = ENU = 'Re-Dispatch',
                        ENN = 'Re-Dispatch';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16510; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16515; "Subcon Order No."; Code[20])
        {
            CaptionML = ENU = 'Subcon Order No.',
                        ENN = 'Subcon Order No.';
            DataClassification = ToBeClassified;
        }
        field(60001; "ITL Doc No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60002; "ITL Doc Line No."; Integer)
        {
            Description = 'B2B';
        }
        field(60003; "ITL Doc Ref Line No."; Integer)
        {
            Description = 'B2B';
        }
        field(60004; "Reason Code22"; Code[10])
        {
            TableRelation = "Reason Code";
        }
        field(60012; "Job No.2"; Code[20])
        {
            Description = 'B2B';
        }
        field(60013; "Job budget Line No."; Integer)
        {
            Description = 'B2B';
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
        field(60105; "User ID"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60106; "Sales Order No"; Code[20])
        {
            Description = 'SH1.0';
        }
        field(60107; "Sales Order Line No"; Integer)
        {
            Description = 'SH1.0';
        }
        field(60108; "Schedule Line No"; Integer)
        {
            Description = 'SH1.0';
        }
        field(60109; "Issued Date Time"; DateTime)
        {
        }
        field(60110; "DC Check"; Boolean)
        {
        }
        field(60111; "MBB Packed Date"; Date)
        {
        }
        field(60112; "MFD Date"; Date)
        {
        }
        field(60113; "Recharge Cycles"; Integer)
        {
        }
        field(60114; "Floor Life"; Decimal)
        {
        }
        field(60115; "MBB Packet Open DateTime"; DateTime)
        {
        }
        field(60116; "MBB Packet Close DateTime"; DateTime)
        {
        }
        field(33000260; "Purch.Rcpt Line"; Integer)
        {
        }
        field(33000261; "QC Check"; Boolean)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Entry Type,Variant Code,Drop Shipment,Location Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source No.,Item No.,Variant Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Open,Variant Code,Positive,Location Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Open,Variant Code,Positive,Location Code,Posting Date,Expiration Date,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Country/Region Code,Entry Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Document Type,Document Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Entry Type,Variant Code,Drop Shipment,Global Dimension 1 Code,Global Dimension 2 Code,Location Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source No.,Global Dimension 1 Code,Global Dimension 2 Code,Item No.,Variant Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order Type,Order No.,Order Line No.,Entry Type,Prod. Order Comp. Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Applied Entry to Adjust"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Positive,Location Code,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type,Nonstock,Item No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Open,Variant Code,Unit of Measure Code,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Open,Variant Code,Positive,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Open,Variant Code,Location Code,Item Tracking,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        key(Entry1; "Entry No.")
        {
        }
        key(Item2; "Item No.")
        {
            SumIndexFields = "Invoiced Quantity", Quantity;
        }
        key(Item3; "Item No.", "Posting Date")
        {
        }
        key(Variant4; "Item No.", "Entry Type", "Variant Code", "Drop Shipment", "Location Code", "Posting Date")
        {
            SumIndexFields = Quantity, "Invoiced Quantity";
        }
        key(Source5; "Source Type", "Source No.", "Item No.", "Variant Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Open6; "Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date")
        {
            SumIndexFields = Quantity, "Remaining Quantity";
        }
        key(POsitive7; "Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date", "Expiration Date", "Lot No.", "Serial No.")
        {
            Enabled = false;
            SumIndexFields = Quantity, "Remaining Quantity";
        }
        key(Country8; "Country/Region Code", "Entry Type", "Posting Date")
        {
        }
        key(Document9; "Document No.", "Document Type", "Document Line No.")
        {
        }
        key(Lot10; "Item No.", "Lot No.", "Serial No.")
        {
            SumIndexFields = Quantity;
        }
        key(Order11; "Order Type", "Order No.", "Order Line No.", "Entry Type", "Prod. Order Comp. Line No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity;
        }
        key(Applied12; "Item No.", "Applied Entry to Adjust")
        {
        }
        key(Location13; "Item No.", Positive, "Location Code", "Variant Code")
        {
        }
        key(AppEntry14; "Applies-to Entry")
        {
        }
        key(Item15; "Item No.", "Entry Type")
        {
            SumIndexFields = "Remaining Quantity";
        }
        key(Serial16; "Item No.", Open, "Variant Code", Positive, "Lot No.", "Serial No.")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
        key(ItemTRacking17; "Item No.", Open, "Variant Code", "Location Code", "Item Tracking", "Lot No.", "Serial No.")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Remaining Quantity";
        }
        key(Prod18; "Item No.", "Prod. Order Comp. Line No.", "Entry Type")
        {
        }
        /*
        key(ItL19; "Item No.", "Lot No.", "ITL Doc No.")
        {
        }*/
        key(POstDate20; "Document No.", "Posting Date")
        {
        }
        key(Item21; "Document No.", "Item No.", "Posting Date")
        {
        }
        key(GlobalDime22; "Location Code", "Global Dimension 2 Code", "Item No.")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Quantity;
        }
        key(LocaItem23; "Location Code", Open, "Item No.")
        {
            SumIndexFields = "Remaining Quantity";
        }
        /*
                key(ITL24; "Entry Type", "Item No.", "Location Code", Open, "Lot No.", "Serial No.", "ITL Doc No.", "ITL Doc Line No.", "ITL Doc Ref Line No.")
                {
                }
                key(Budget25; "Job No.", "Job budget Line No.")
                {
                    SumIndexFields = Quantity;
                }
                */
        key(Loc26; "Global Dimension 1 Code", "Item No.", "Location Code")
        {
            SumIndexFields = Quantity;
        }
        key(Glo27; "Item No.", "Location Code", "Global Dimension 1 Code", "Global Dimension 2 Code", Open, "Remaining Quantity")
        {
            SumIndexFields = Quantity, "Remaining Quantity";
        }
        key(Expiration28; "Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date", "Expiration Date", "Lot No.", "Serial No.")
        {
        }
        key(Schedule29; "Sales Order No", "Sales Order Line No", "Schedule Line No")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    {IF USERID<>'ANIL' THEN
    BEGIN
     Body:='****  Auto Mail Generated From ERP  ****';
     Mail_From:='erp@efftronics.net';
      Mail_To:='anilkumar@efftronics.net,phani@efftronics.net';
    // Mail_To:='santhoshk@efftronics.net';
     USER.SETRANGE(USER."User ID",USERID);
     IF USER.FIND('-') THEN
     Subject:=USER.Name+'  is trying to Delete Item Ledger Entry Records';
     Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete');
    END;
     }
    //ERROR('U Dont Have Permissions to Delete');
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetAvgTransCompletelyInvoiced(PROCEDURE 80).ItemApplnEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetAvgTransCompletelyInvoiced : 339;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetAvgTransCompletelyInvoiced : "Item Application Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetAvgTransCompletelyInvoiced(PROCEDURE 80).InbndItemLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetAvgTransCompletelyInvoiced : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetAvgTransCompletelyInvoiced : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateItemTracking(PROCEDURE 5).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateItemTracking : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateItemTracking : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 6).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateRemQuantity(PROCEDURE 10).ItemApplnEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalculateRemQuantity : 339;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalculateRemQuantity : "Item Application Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyOnInventory(PROCEDURE 9).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyOnInventory : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyOnInventory : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateRemInventoryValue(PROCEDURE 12).ValueEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalculateRemInventoryValue : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalculateRemInventoryValue : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEngineMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEngineMgt : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEngineMgt : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReserveItemLedgEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReserveItemLedgEntry : 99000841;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReserveItemLedgEntry : "Item Ledger Entry-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.

    var
        USER: Record User;
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];
}


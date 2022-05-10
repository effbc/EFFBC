tableextension 70092 ValueEntryExt extends "Value Entry"
{
    // version NAVW19.00.00.50087,NAVIN9.00.00.50087

    fields
    {

        //Unsupported feature: Change OptionString on ""Item Ledger Entry Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source Posting Group"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 41)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reason Code"(Field 46)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Journal Batch Name"(Field 48)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cost Posted to G/L (ACY)"(Field 70)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cost per Unit (ACY)"(Field 72)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 79)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order No."(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Line No."(Field 92)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 105)". Please convert manually.


        //Unsupported feature: Change Editable on ""Entry Type"(Field 105)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Variance Type"(Field 106)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variance Type"(Field 106)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Amount (Expected)"(Field 149)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Sales Amount (Expected)"(Field 150)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cost Amount (Non-Invtbl.)"(Field 152)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cost Amount (Non-Invtbl.)(ACY)"(Field 157)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job No."(Field 1000)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Ledger Entry No."(Field 1002)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Editable on "Adjustment(Field 5818)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5832)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 5834)". Please convert manually.

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
        field(16510; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
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
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry No.,Document No.,Document Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Posting Date,Item Ledger Entry Type,Entry Type,Variance Type,Item Charge No.,Location Code,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Posting Date,Item Ledger Entry Type,Entry Type,Variance Type,Item Charge No.,Location Code,Variant Code,Global Dimension 1 Code,Global Dimension 2 Code,Source Type,Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Valuation Date,Location Code,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source No.,Item No.,Posting Date,Entry Type,Adjustment,Item Ledger Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Charge No.,Inventory Posting Group,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Capacity Ledger Entry No.,Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order Type,Order No.,Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source No.,Global Dimension 1 Code,Global Dimension 2 Code,Item No.,Posting Date,Entry Type,Adjustment"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job No.,Job Task No.,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry Type,Posting Date,Item No.,Inventory Posting Group,Dimension Set ID"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry No.,Valuation Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Inventory Posting Group"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry Type,Order No.,Valuation Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Item Ledger Entry No.", "Entry Type")
        {
            SumIndexFields = "Invoiced Quantity", "Sales Amount (Expected)", "Sales Amount (Actual)", "Cost Amount (Expected)", "Cost Amount (Actual)", "Cost Amount (Non-Invtbl.)", "Cost Amount (Expected) (ACY)", "Cost Amount (Actual) (ACY)", "Cost Amount (Non-Invtbl.)(ACY)", "Purchase Amount (Actual)", "Purchase Amount (Expected)", "Discount Amount";
        }
        key(Key3; "Item Ledger Entry No.", "Document No.", "Document Line No.")
        {
            Enabled = false;
            MaintainSQLIndex = false;
        }
        key(Key4; "Item No.", "Posting Date", "Item Ledger Entry Type", "Entry Type", "Variance Type", "Item Charge No.", "Location Code", "Variant Code")
        {
            SumIndexFields = "Invoiced Quantity", "Sales Amount (Expected)", "Sales Amount (Actual)", "Cost Amount (Expected)", "Cost Amount (Actual)", "Cost Amount (Non-Invtbl.)", "Purchase Amount (Actual)", "Expected Cost Posted to G/L", "Cost Posted to G/L", "Item Ledger Entry Quantity";
        }
        key(Key5; "Item No.", "Posting Date", "Item Ledger Entry Type", "Entry Type", "Variance Type", "Item Charge No.", "Location Code", "Variant Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Source Type", "Source No.")
        {
            Enabled = false;
            SumIndexFields = "Invoiced Quantity", "Sales Amount (Expected)", "Sales Amount (Actual)", "Cost Amount (Expected)", "Cost Amount (Actual)", "Cost Amount (Non-Invtbl.)", "Purchase Amount (Actual)", "Expected Cost Posted to G/L", "Cost Posted to G/L", "Item Ledger Entry Quantity";
        }
        key(Key6; "Document No.")
        {
        }
        key(Key7; "Item No.", "Valuation Date", "Location Code", "Variant Code")
        {
            SumIndexFields = "Cost Amount (Expected)", "Cost Amount (Actual)", "Cost Amount (Expected) (ACY)", "Cost Amount (Actual) (ACY)", "Item Ledger Entry Quantity";
        }
        key(Key8; "Source Type", "Source No.", "Item No.", "Posting Date", "Entry Type", Adjustment, "Item Ledger Entry Type")
        {
            SumIndexFields = "Discount Amount", "Cost Amount (Non-Invtbl.)", "Cost Amount (Actual)", "Cost Amount (Expected)", "Sales Amount (Actual)", "Sales Amount (Expected)", "Invoiced Quantity";
        }
        key(Key9; "Item Charge No.", "Inventory Posting Group", "Item No.")
        {
        }
        key(Key10; "Capacity Ledger Entry No.", "Entry Type")
        {
            SumIndexFields = "Cost Amount (Actual)", "Cost Amount (Actual) (ACY)";
        }
        key(Key11; "Order Type", "Order No.", "Order Line No.")
        {
        }
        key(Key12; "Source Type", "Source No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Item No.", "Posting Date", "Entry Type", Adjustment)
        {
            Enabled = false;
            SumIndexFields = "Discount Amount", "Cost Amount (Non-Invtbl.)", "Cost Amount (Actual)", "Cost Amount (Expected)", "Sales Amount (Actual)", "Sales Amount (Expected)", "Invoiced Quantity";
        }
        key(Key13; "Job No.", "Job Task No.", "Document No.")
        {
        }
        key(Key14; "Item Ledger Entry Type", "Posting Date", "Item No.", "Inventory Posting Group", "Dimension Set ID")
        {
            SumIndexFields = "Invoiced Quantity", "Sales Amount (Actual)", "Purchase Amount (Actual)";
        }
        key(Key15; "Item Ledger Entry No.", "Valuation Date")
        {
            Enabled = false;
        }
        key(Key16; "Location Code", "Inventory Posting Group")
        {
        }
        key(Key17; "Item Ledger Entry Type", "Order No.", "Valuation Date")
        {
        }
        key(Key18; "Item No.", "Expected Cost", "Valuation Date", "Location Code", "Variant Code", "Partial Revaluation")
        {
        }
        key(Key19; "Item No.", "Expected Cost", "Valuation Date", "Location Code", "Variant Code", "Entry Type")
        {
        }
        key(Key20; "Item No.", "Entry No.", "Expected Cost", "Valuation Date", "Location Code", "Variant Code")
        {
        }
        key(Key21; "Valuation Date")
        {
        }
        key(Key22; "Item Ledger Entry No.")
        {
        }
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //begin
    /*
    {IF NOT (USERID IN ['EFFTRONICS\ANILKUMAR','EFFTRONICS\PRANAVI']) THEN
    BEGIN
      Body:='****  Auto Mail Generated From ERP  ****';
      Mail_From:='erp@efftronics.net';
      Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
      //Mail_To:='santhoshk@efftronics.net';
      USER.SETRANGE(USER."User Name",USERID);// Changed User."User Id" to User."User Security ID" B2B
      IF USER.FIND('-') THEN
      Subject:=USER."Full Name"+'  is trying to Delete Value Entry Records';// Changed User."Name" to User."User Name" B2B
      Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete');
    END;
    }
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    if UserSetupGRec.Get(UserId) then
    begin
      if not UserSetupGRec."Edit Posted Ledger Entries" then
        Error('You Dont have Permissions');
    end else
      Error('User Setup not found. contact ERP Team');
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 24).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SumCostsTillValuationDate(PROCEDURE 4).AccountingPeriod(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumCostsTillValuationDate : 50;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumCostsTillValuationDate : "Accounting Period";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SumCostsTillValuationDate(PROCEDURE 4).PrevValueEntrySum(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumCostsTillValuationDate : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumCostsTillValuationDate : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SumCostsTillValuationDate(PROCEDURE 4).Item(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumCostsTillValuationDate : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumCostsTillValuationDate : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcQtyFactor(PROCEDURE 8).ValueEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcQtyFactor : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcQtyFactor : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowGL(PROCEDURE 9).GLItemLedgRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowGL : 5823;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowGL : "G/L - Item Ledger Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowGL(PROCEDURE 9).GLEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowGL : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowGL : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowGL(PROCEDURE 9).TempGLEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowGL : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowGL : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAvgCostException(PROCEDURE 10).ItemApplnEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAvgCostException : 339;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAvgCostException : "Item Application Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAvgCostException(PROCEDURE 10).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAvgCostException : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAvgCostException : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsAvgCostException(PROCEDURE 10).TempItemLedgEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsAvgCostException : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsAvgCostException : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 11).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAvgToDate(PROCEDURE 2).CalendarPeriod(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAvgToDate : 2000000007;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAvgToDate : Date;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAvgToDate(PROCEDURE 2).AvgCostAdjmtEntryPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAvgToDate : 5804;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAvgToDate : "Avg. Cost Adjmt. Entry Point";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAvgFromDate(PROCEDURE 6).PrevAccountingPeriod(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAvgFromDate : 50;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAvgFromDate : "Accounting Period";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetAvgFromDate(PROCEDURE 6).AccountingPeriodMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetAvgFromDate : 360;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetAvgFromDate : "Accounting Period Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
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


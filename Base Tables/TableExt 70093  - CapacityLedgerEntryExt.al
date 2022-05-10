tableextension 70093 CapacityLedgerEntryExt extends "Capacity Ledger Entry"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 4)". Please convert manually.

        modify(Quantity)
        {

            //Unsupported feature: Change Name on "Quantity(Field 10)". Please convert manually.

            CaptionML = ENU = 'Actual Run Time', ENN = 'Actual Run Time';
        }

        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 57)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 58)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Direct Cost"(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Direct Cost"(Field 71)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Overhead Cost"(Field 72)". Please convert manually.


        //Unsupported feature: Change Editable on ""Overhead Cost"(Field 72)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Direct Cost (ACY)"(Field 76)". Please convert manually.


        //Unsupported feature: Change Editable on ""Direct Cost (ACY)"(Field 76)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Overhead Cost (ACY)"(Field 77)". Please convert manually.


        //Unsupported feature: Change Editable on ""Overhead Cost (ACY)"(Field 77)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Order No."(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order No."(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Order Line No."(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Line No."(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(60001; "Operation Description"; Text[50])
        {
            Description = 'B2B';
        }
        field(60002; "Planed Setup Time"; Decimal)
        {
            Caption = 'Planed Setup Time';
            DecimalPlaces = 0 : 5;
            Description = 'B2B';
            Editable = false;
            MinValue = 0;
        }
        field(60003; "Planed Run Time"; Decimal)
        {
            Caption = 'Planed Run Time';
            DecimalPlaces = 0 : 5;
            Description = 'B2B';
            Editable = false;
            MinValue = 0;
        }
        field(60004; "Planed Wait Time"; Decimal)
        {
            Caption = 'Planed Wait Time';
            DecimalPlaces = 0 : 5;
            Description = 'B2B';
            Editable = false;
            MinValue = 0;
        }
        field(60005; "Planed Move Time"; Decimal)
        {
            Caption = 'Planed Move Time';
            DecimalPlaces = 0 : 5;
            Description = 'B2B';
            Editable = false;
            MinValue = 0;
        }
        field(60006; "Internal Rework"; Boolean)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60007; "QC Rework"; Boolean)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60008; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(60009; Remarks; Text[250])
        {
            Description = 'B2B';
        }
        field(60010; "Reworked User Id"; Code[15])
        {
            TableRelation = "Machine Center";
        }
        field(60011; "Work Center Unit Cost"; Decimal)
        {
            CalcFormula = Lookup("Work Center"."Unit Cost" WHERE("No." = FIELD("Work Center No.")));
            FieldClass = FlowField;
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
        field(33000250; "After Inspection"; Boolean)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order Type,Order No.,Order Line No.,Routing No.,Routing Reference No.,Operation No.,Last Output Line"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Work Center No.,Work Shift Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Work Shift Code,Item No.,Posting Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Document No.", "Posting Date")
        {
        }
        key(Key3; "Order Type", "Order No.", "Order Line No.", "Routing No.", "Routing Reference No.", "Operation No.", "Last Output Line")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Actual Run Time", "Output Quantity";
        }
        key(Key4; "Work Center No.", "Work Shift Code", "Posting Date")
        {
        }
        key(Key5; Type, "No.", "Work Shift Code", "Item No.", "Posting Date")
        {
        }
        key(Key6; "No.", "Work Center No.", "Order No.")
        {
        }
        key(Key7; "Order No.", "Order Line No.", "Routing No.", "Routing Reference No.", "Operation No.", "Last Output Line")
        {
            SumIndexFields = "Actual Run Time", "Output Quantity";
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 1).DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.
}


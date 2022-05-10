tableextension 70083 FALedgerEntryExt extends "FA Ledger Entry"
{
    // version NAVW19.00.00.50087,NAVIN9.00.00.50087

    fields
    {

        //Unsupported feature: Change BlankZero on ""G/L Entry No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Category"(Field 12)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Disposal Calculation Method"(Field 20)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Disposal Entry No."(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 32)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Depreciation Method"(Field 33)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 44)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 45)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Gen. Posting Type"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Result on Disposal"(Field 53)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Property Class (Custom 1)"(Field 64)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed by Entry No."(Field 73)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed Entry No."(Field 74)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(16500; "FA Block Code"; Code[10])
        {
            CaptionML = ENU = 'FA Block Code',
                        ENN = 'FA Block Code';
            DataClassification = ToBeClassified;
            TableRelation = "FA Block".Code WHERE("FA Class Code" = FIELD("FA Class Code"));
        }
        field(16501; "FA Book Type"; Option)
        {
            CaptionML = ENU = 'FA Book Type',
                        ENN = 'FA Book Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Income Tax',
                              ENN = ' ,Income Tax';
            OptionMembers = " ","Income Tax";
        }
        field(16502; "Add. Depreciation"; Boolean)
        {
            CaptionML = ENU = 'Add. Depreciation',
                        ENN = 'Add. Depreciation';
            DataClassification = ToBeClassified;
        }
        field(16503; "Add. Depreciation Amount"; Decimal)
        {
            CaptionML = ENU = 'Add. Depreciation Amount',
                        ENN = 'Add. Depreciation Amount';
            DataClassification = ToBeClassified;
        }
        field(16504; "Depr. Reduction Applied"; Boolean)
        {
            CaptionML = ENU = 'Depr. Reduction Applied',
                        ENN = 'Depr. Reduction Applied';
            DataClassification = ToBeClassified;
        }
        field(16505; CWIP; Boolean)
        {
            CaptionML = ENU = 'CWIP',
                        ENN = 'CWIP';
            DataClassification = ToBeClassified;
        }
        field(16506; "Shift Type"; Option)
        {
            CaptionML = ENU = 'Shift Type',
                        ENN = 'Shift Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Single,Double,Triple',
                              ENN = 'Single,Double,Triple';
            OptionMembers = Single,Double,Triple;
        }
        field(16507; "Industry Type"; Option)
        {
            CaptionML = ENU = 'Industry Type',
                        ENN = 'Industry Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Normal,Non Seasonal,Seasonal',
                              ENN = 'Normal,Non Seasonal,Seasonal';
            OptionMembers = Normal,"Non Seasonal",Seasonal;
        }
        field(16510; "Shift Entry"; Boolean)
        {
            CaptionML = ENU = 'Shift Entry',
                        ENN = 'Shift Entry';
            DataClassification = ToBeClassified;
        }
        field(16511; "No. of Days for Shift"; Integer)
        {
            CaptionML = ENU = 'No. of Days for Shift',
                        ENN = 'No. of Days for Shift';
            DataClassification = ToBeClassified;
            MinValue = 0;

            trigger OnValidate();
            begin
                TestField("FA Book Type", "FA Book Type"::" ");
            end;
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


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,FA Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,FA Posting Category,FA Posting Type,FA Posting Date,Part of Book Value,Reclassification Entry"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,Part of Book Value,FA Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,Part of Depreciable Basis,FA Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,FA Posting Category,FA Posting Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Canceled from FA No.,Depreciation Book Code,FA Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,FA Posting Category,FA Posting Type,Document No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "FA No.", "Depreciation Book Code", "FA Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "FA Posting Date", "Part of Book Value", "Reclassification Entry")
        {
            SumIndexFields = Amount;
        }
        key(Key4; "FA No.", "Depreciation Book Code", "Part of Book Value", "FA Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key5; "FA No.", "Depreciation Book Code", "Part of Depreciable Basis", "FA Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key6; "FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key7; "Canceled from FA No.", "Depreciation Book Code", "FA Posting Date")
        {
        }
        key(Key8; "Document No.", "Posting Date")
        {
        }
        key(Key9; "G/L Entry No.")
        {
        }
        key(Key10; "Document Type", "Document No.")
        {
        }
        key(Key11; "Transaction No.")
        {
        }
        key(Key12; "FA No.", "Depreciation Book Code", "FA Posting Category", "FA Posting Type", "Document No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 32).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConvertPostingType(PROCEDURE 1).FAJnlLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConvertPostingType : 5621;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConvertPostingType : "FA Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FAJnlSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FAJnlSetup : 5605;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FAJnlSetup : "FA Journal Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}


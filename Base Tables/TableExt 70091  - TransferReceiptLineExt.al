tableextension 70091 TransferReceiptLineExt extends "Transfer Receipt Line"
{
    // version NAVW19.00.00.49741,NAVIN9.00.00.49741,B2B1.0

    fields
    {

        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer Order No."(Field 24)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer Order No."(Field 24)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 27)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""In-Transit Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""In-Transit Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-from Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Transfer-from Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-to Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Transfer-to Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-To Bin Code"(Field 7301)". Please convert manually.

        field(13701; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU = 'Unit Price',
                        ENN = 'Unit Price';
            DataClassification = ToBeClassified;
        }
        field(13702; Amount; Decimal)
        {
            CaptionML = ENU = 'Amount',
                        ENN = 'Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13709; "BED Amount"; Decimal)
        {
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
        }
        field(13710; "AED(GSI) Amount"; Decimal)
        {
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
        }
        field(13711; "SED Amount"; Decimal)
        {
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
        }
        field(13720; "SAED Amount"; Decimal)
        {
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
        }
        field(13721; "CESS Amount"; Decimal)
        {
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
        }
        field(13722; "NCCD Amount"; Decimal)
        {
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
        }
        field(13723; "eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(13724; "Excise Amount"; Decimal)
        {
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13725; "Amount Including Excise"; Decimal)
        {
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13726; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13727; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(13728; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13730; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
        }
        field(13731; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13738; "Excise Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13775; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13777; "Amount Added to Inventory"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Inventory',
                        ENN = 'Amount Added to Inventory';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13778; "Charges to Transfer"; Decimal)
        {
            CaptionML = ENU = 'Charges to Transfer',
                        ENN = 'Charges to Transfer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13779; "Total Amount to Transfer"; Decimal)
        {
            CaptionML = ENU = 'Total Amount to Transfer',
                        ENN = 'Total Amount to Transfer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13780; "Claim Deferred Excise"; Boolean)
        {
            CaptionML = ENU = 'Claim Deferred Excise',
                        ENN = 'Claim Deferred Excise';
            DataClassification = ToBeClassified;
        }
        field(13782; "Unit Cost"; Decimal)
        {
            CaptionML = ENU = 'Unit Cost',
                        ENN = 'Unit Cost';
            DataClassification = ToBeClassified;
        }
        field(16452; "ADET Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16455; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16459; "ADE Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16460; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16494; "SHE Cess Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16502; "ADC VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16503; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16504; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16505; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16506; "Excise Loading on Inventory"; Boolean)
        {
            CaptionML = ENU = 'Excise Loading on Inventory',
                        ENN = 'Excise Loading on Inventory';
            DataClassification = ToBeClassified;
        }
        field(16507; "Captive Consumption %"; Decimal)
        {
            CaptionML = ENU = 'Captive Consumption %',
                        ENN = 'Captive Consumption %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16508; "Admin. Cost %"; Decimal)
        {
            CaptionML = ENU = 'Admin. Cost %',
                        ENN = 'Admin. Cost %';
            DataClassification = ToBeClassified;
        }
        field(16509; "MRP Price"; Decimal)
        {
            CaptionML = ENU = 'MRP Price',
                        ENN = 'MRP Price';
            DataClassification = ToBeClassified;
        }
        field(16510; MRP; Boolean)
        {
            CaptionML = ENU = 'MRP',
                        ENN = 'MRP';
            DataClassification = ToBeClassified;
        }
        field(16511; "Abatement %"; Decimal)
        {
            CaptionML = ENU = 'Abatement %',
                        ENN = 'Abatement %';
            DataClassification = ToBeClassified;
        }
        field(16512; "Applies-to Entry (RG 23 D)"; Integer)
        {
            CaptionML = ENU = 'Applies-to Entry (RG 23 D)',
                        ENN = 'Applies-to Entry (RG 23 D)';
            DataClassification = ToBeClassified;
            TableRelation = "RG 23 D"."Entry No." WHERE("Location Code" = FIELD("Transfer-from Code"),
                                                         "Item No." = FIELD("Item No."),
                                                         Closed = FILTER(false),
                                                         "Transaction Type" = FILTER(Purchase));
        }
        field(16513; "Cost of Production"; Decimal)
        {
            CaptionML = ENU = 'Cost of Production',
                        ENN = 'Cost of Production';
            DataClassification = ToBeClassified;
        }
        field(16514; "SetOff Available"; Boolean)
        {
            CaptionML = ENU = 'SetOff Available',
                        ENN = 'SetOff Available';
            DataClassification = ToBeClassified;
        }
        field(16515; "Cost Of Prod. Incl. Admin Cost"; Decimal)
        {
            CaptionML = ENU = 'Cost Of Prod. Incl. Admin Cost',
                        ENN = 'Cost Of Prod. Incl. Admin Cost';
            DataClassification = ToBeClassified;
        }
        field(16516; "Custom eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom eCess Amount',
                        ENN = 'Custom eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16517; "Custom SHECess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom SHECess Amount',
                        ENN = 'Custom SHECess Amount';
            DataClassification = ToBeClassified;
        }
        field(16521; "GST Base Amount"; Decimal)
        {
            CaptionML = ENU = 'GST Base Amount',
                        ENN = 'GST Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16522; "GST %"; Decimal)
        {
            CaptionML = ENU = 'GST %',
                        ENN = 'GST %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16523; "Total GST Amount"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount',
                        ENN = 'Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16524; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "GST Group";
        }
        field(16525; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
        }
        field(16526; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16527; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16528; "Custom Duty Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom Duty Amount',
                        ENN = 'Custom Duty Amount';
            DataClassification = ToBeClassified;
            Editable = false;
            MinValue = 0;
        }
        field(16529; "GST Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value',
                        ENN = 'GST Assessable Value';
            DataClassification = ToBeClassified;
            Editable = false;
            MinValue = 0;
        }
        field(60000; "Position Reference No."; Code[10])
        {
            Description = 'B2B';
        }
        field(60001; "Prod. Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));
        }
        field(60002; "Prod. Order Line No."; Integer)
        {
            Description = 'B2B';
            TableRelation = "Prod. Order Line"."Line No." WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                 Status = CONST(Released));
        }
        field(60003; "Allow Excess Qty."; Boolean)
        {
            Description = 'B2B';
        }
        field(60004; "Shelf No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60005; "Transfer Order Line No."; Integer)
        {
            Description = 'B2B';
        }
        field(60006; "Type of Material"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ",Good,Damaged;
        }
        field(60007; "Reason Code"; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            TableRelation = "Reason Code".Code;
        }
        field(60008; "Prod. Order Comp. Line No."; Integer)
        {
            Caption = 'Prod. Order Comp. Line No.';
            Description = 'B2B';
            TableRelation = "Prod. Order Component"."Line No." WHERE(Status = CONST(Released),
                                                                      "Prod. Order No." = FIELD("Prod. Order No."),
                                                                      "Prod. Order Line No." = FIELD("Prod. Order Line No."));
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
        field(33000250; "Spec ID"; Code[20])
        {
            Description = 'QC1.0';
            TableRelation = "Specification Header";
        }
        field(33000251; "Quantity Accepted"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Accepted)));
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000252; "Quantity Rejected"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = CONST(Reject)));
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000253; "QC Enabled"; Boolean)
        {
            Description = 'QC1.0';

            trigger OnValidate();
            begin
                /*
                TestStatusOpen;
                TESTFIELD(Type,Type :: Item);
                IF "QC Enabled" THEN
                  TESTFIELD("Spec ID");
                IF NOT "QC Enabled" THEN
                  IF "Quality Before Receipt" THEN
                    VALIDATE("Quality Before Receipt",FALSE);
                */

            end;
        }
        field(33000256; "Qty. Sending To Quality"; Decimal)
        {
            Description = 'QC1.0';
            Editable = false;
            MinValue = 0;
        }
        field(33000257; "Qty. Sent To Quality"; Decimal)
        {
            Description = 'QC1.0';
            Editable = false;
            MinValue = 0;
        }
        field(33000258; "Qty. Sending To Quality(R)"; Decimal)
        {
            Description = 'QC1.0';
            MinValue = 0;
        }
        field(33000259; "Spec Version"; Code[20])
        {
            Description = 'QC1.0';
            TableRelation = "Specification Version"."Version Code" WHERE("Specification No." = FIELD("Spec ID"));
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transfer Order No.,Item No.,Receipt Date"(Key)". Please convert manually.

        key(Key1; "Document No.", "Line No.")
        {
        }
        key(Key2; "Transfer Order No.", "Item No.", "Receipt Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 3).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
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


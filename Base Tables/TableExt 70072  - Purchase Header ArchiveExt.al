tableextension 70072 PurchaseHeaderArchiveExt extends "Purchase Header Archive"
{
    // version NAVW19.00.00.51014,NAVIN9.00.00.51014,TFS223871,B2B1.0,POAU,Rev01

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change NotBlank on ""Pay-to Vendor No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Date"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purchaser Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""VAT Country/Region Code"(Field 78)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Buy-from City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Buy-from City"(Field 83)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Pay-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Pay-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Pay-to Country/Region Code"(Field 87)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Buy-from Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Buy-from Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Buy-from Country/Region Code"(Field 90)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 94)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Order Address Code"(Field 95)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 120)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buy-from IC Partner Code"(Field 125)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to IC Partner Code"(Field 126)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Compress Prepayment"(Field 136)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Archived Versions"(Field 145)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Archived Versions"(Field 145)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purchase Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Purchase Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Purchase Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Purchase Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Archived By"(Field 5046)". Please convert manually.


        //Unsupported feature: Change Editable on ""Archived By"(Field 5046)". Please convert manually.


        //Unsupported feature: Change Description on ""Archived By"(Field 5046)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Received"(Field 5752)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Received"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.

        field(13701; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            TableRelation = "Assessee Code";
        }
        field(13712; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13716; "Amount to Vendor"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Amount To Vendor" WHERE("Document Type" = FIELD("Document Type"),
                                                                        "Document No." = FIELD("No.")));
            CaptionML = ENU = 'Amount to Vendor',
                        ENN = 'Amount to Vendor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13723; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("C Form" = CONST(false)) "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                                                        "Transit Document" = CONST(false))
            ELSE
            IF ("C Form" = CONST(true)) "Form Codes".Code WHERE("C Form" = CONST(true));
        }
        field(13724; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            TableRelation = IF ("C Form" = CONST(false)) "Tax Forms Details"."Form No." WHERE("Form Code" = FIELD("Form Code"),
                                                                                             Issued = CONST(false),
                                                                                             State = FIELD(State))
            ELSE
            IF ("C Form" = CONST(true)) "Tax Forms Details"."Form No." WHERE("Form Code" = FIELD("Form Code"),
                                                                                                                                                                  Issued = CONST(false));

            trigger OnValidate();
            var
                SalesFormsDetails: Record "Tax Forms Details";
            begin
            end;
        }
        field(13759; "Transit Document"; Boolean)
        {
            CaptionML = ENU = 'Transit Document',
                        ENN = 'Transit Document';
            DataClassification = ToBeClassified;
        }
        field(13760; "LC No."; Code[20])
        {
            CaptionML = ENU = 'LC No.',
                        ENN = 'LC No.';
            DataClassification = ToBeClassified;
            TableRelation = "LC Detail"."No." WHERE("Transaction Type" = CONST(Purchase),
                                                     "Issued To/Received From" = FIELD("Pay-to Vendor No."),
                                                     Closed = CONST(false),
                                                     Released = CONST(true));

            trigger OnValidate();
            var
                LCDetail: Record "LC Detail";
                Text13700: TextConst ENU = 'The LC which you have selected is Foreign type you cannot utilise for this order.', ENN = 'The LC which you have selected is Foreign type you cannot utilise for this order.';
            begin
            end;
        }
        field(13761; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13790; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header";

            trigger OnValidate();
            var
                StrDetails: Record "Structure Details";
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                PurchaseLines: Record "Purchase Line";
            begin
            end;
        }
        field(16360; Subcontracting; Boolean)
        {
            CaptionML = ENU = 'Subcontracting',
                        ENN = 'Subcontracting';
            DataClassification = ToBeClassified;
        }
        field(16371; "Subcon. Order No."; Code[10])
        {
            CaptionML = ENU = 'Subcon. Order No.',
                        ENN = 'Subcon. Order No.';
            DataClassification = ToBeClassified;
        }
        field(16372; "Subcon. Order Line No."; Integer)
        {
            CaptionML = ENU = 'Subcon. Order Line No.',
                        ENN = 'Subcon. Order Line No.';
            DataClassification = ToBeClassified;
        }
        field(16373; SubConPostLine; Integer)
        {
            CaptionML = ENU = 'SubConPostLine',
                        ENN = 'SubConPostLine';
            DataClassification = ToBeClassified;
        }
        field(16375; "Vendor Shipment Date"; Date)
        {
            CaptionML = ENU = 'Vendor Shipment Date',
                        ENN = 'Vendor Shipment Date';
            DataClassification = ToBeClassified;
        }
        field(16376; "C Form"; Boolean)
        {
            CaptionML = ENU = 'C Form',
                        ENN = 'C Form';
            DataClassification = ToBeClassified;
        }
        field(16377; "Consignment Note No."; Code[20])
        {
            CaptionML = ENU = 'Consignment Note No.',
                        ENN = 'Consignment Note No.';
            DataClassification = ToBeClassified;
        }
        field(16378; "Declaration Form (GTA)"; Boolean)
        {
            CaptionML = ENU = 'Declaration Form (GTA)',
                        ENN = 'Declaration Form (GTA)';
            DataClassification = ToBeClassified;
        }
        field(16379; "Service Type (Rev. Chrg.)"; Option)
        {
            CaptionML = ENU = 'Service Type (Rev. Chrg.)',
                        ENN = 'Service Type (Rev. Chrg.)';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Inward,Outward Stock Transfer,Outward Input Service,Outward',
                              ENN = ' ,Inward,Outward Stock Transfer,Outward Input Service,Outward';
            OptionMembers = " ",Inward,"Outward Stock Transfer","Outward Input Service",Outward;
        }
        field(16522; "Service Tax Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Rounding Precision',
                        ENN = 'Service Tax Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16523; "Service Tax Rounding Type"; Option)
        {
            CaptionML = ENU = 'Service Tax Rounding Type',
                        ENN = 'Service Tax Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16601; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16602; "Bill of Entry No."; Text[20])
        {
            CaptionML = ENU = 'Bill of Entry No.',
                        ENN = 'Bill of Entry No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16603; "Bill of Entry Date"; Date)
        {
            CaptionML = ENU = 'Bill of Entry Date',
                        ENN = 'Bill of Entry Date';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16604; "Bill of Entry Value"; Decimal)
        {
            CaptionML = ENU = 'Bill of Entry Value',
                        ENN = 'Bill of Entry Value';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16609; "GST Vendor Type"; Option)
        {
            CaptionML = ENU = 'GST Vendor Type',
                        ENN = 'GST Vendor Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Composite,Unregistered,Import,Exempted,SEZ',
                              ENN = ' ,Registered,Composite,Unregistered,Import,Exempted,SEZ';
            OptionMembers = " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;
        }
        field(16610; "Associated Enterprises"; Boolean)
        {
            CaptionML = ENU = 'Associated Enterprises',
                        ENN = 'Associated Enterprises';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16611; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Self Invoice,Debit Note,Supplementary,Non-GST',
                              ENN = ' ,Self Invoice,Debit Note,Supplementary,Non-GST';
            OptionMembers = " ","Self Invoice","Debit Note",Supplementary,"Non-GST";
        }
        field(16612; "GST Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Rounding Precision',
                        ENN = 'GST Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16613; "GST Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Rounding Type',
                        ENN = 'GST Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16626; "GST Reason Type"; Option)
        {
            CaptionML = ENU = 'GST Reason Type',
                        ENN = 'GST Reason Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others',
                              ENN = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others';
            OptionMembers = " ","Sales Return","Post Sale Discount","Deficiency in Service","Correction in Invoice","Change in POS","Finalization of Provisional Assessment",Others;
        }
        field(16627; "GST Input Service Distribution"; Boolean)
        {
            CaptionML = ENU = 'GST Input Service Distribution',
                        ENN = 'GST Input Service Distribution';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16628; "RCM Exempt"; Boolean)
        {
            CaptionML = ENU = 'RCM Exempt',
                        ENN = 'RCM Exempt';
            DataClassification = ToBeClassified;
        }
        field(16629; "GST Order Address State"; Code[10])
        {
            CaptionML = ENU = 'GST Order Address State',
                        ENN = 'GST Order Address State';
            DataClassification = ToBeClassified;
        }
        field(16630; "Vendor GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Vendor GST Reg. No.',
                        ENN = 'Vendor GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16631; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(16632; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";
        }
        field(16633; "Order Address GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Order Address GST Reg. No.',
                        ENN = 'Order Address GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16634; "Bill to-Location(POS)"; Code[10])
        {
            CaptionML = ENU = 'Bill to-Location(POS)',
                        ENN = 'Bill to-Location(POS)';
            DataClassification = ToBeClassified;
        }
        field(16635; "Vehicle No."; Code[20])
        {
            CaptionML = ENU = 'Vehicle No.',
                        ENN = 'Vehicle No.';
            DataClassification = ToBeClassified;
        }
        field(16636; "Shipping Agent Code"; Code[10])
        {
            CaptionML = ENU = 'Shipping Agent Code',
                        ENN = 'Shipping Agent Code';
            DataClassification = ToBeClassified;
            TableRelation = "Shipping Agent";
        }
        field(16637; "Shipping Agent Service Code"; Code[10])
        {
            CaptionML = ENU = 'Shipping Agent Service Code',
                        ENN = 'Shipping Agent Service Code';
            DataClassification = ToBeClassified;
            TableRelation = "Shipping Agent Services";
        }
        field(16638; "Distance (Km)"; Decimal)
        {
            CaptionML = ENU = 'Distance (Km)',
                        ENN = 'Distance (Km)';
            DataClassification = ToBeClassified;
        }
        field(16639; "Vehicle Type"; Option)
        {
            CaptionML = ENU = 'Vehicle Type',
                        ENN = 'Vehicle Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Regular,ODC',
                              ENN = ' ,Regular,ODC';
            OptionMembers = " ",Regular,ODC;
        }
        field(16640; "Reference Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Reference Invoice No.',
                        ENN = 'Reference Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16641; "Without Bill Of Entry"; Boolean)
        {
            CaptionML = ENU = 'Without Bill Of Entry',
                        ENN = 'Without Bill Of Entry';
            DataClassification = ToBeClassified;
        }
        field(16642; "E-Way Bill No."; Text[50])
        {
            CaptionML = ENU = 'E-Way Bill No.',
                        ENN = 'E-Way Bill No.';
            DataClassification = ToBeClassified;
        }
        field(16643; "POS as Vendor State"; Boolean)
        {
            CaptionML = ENU = 'POS as Vendor State',
                        ENN = 'POS as Vendor State';
            DataClassification = ToBeClassified;
        }
        field(60001; "Vendor Excise Invoice No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60002; "Vend. Excise Inv. Date"; Date)
        {
            Description = 'B2B';
        }
        field(60003; "Cancel / Short Close"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Cancelled,Short Closed"';
            OptionMembers = " ",Cancelled,"Short Closed";
        }
        field(60004; "RFQ No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Create Indents"."Item No.";
        }
        field(60009; "ICN No."; Code[20])
        {
            Description = 'PH1.0';
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
        field(60092; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No.,Doc. No. Occurrence,Version No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Pay-to Vendor No."(Key)". Please convert manually.

        key(Key1; "Document Type", "No.", "Doc. No. Occurrence", "Version No.")
        {
        }
        key(Key2; "Document Type", "Buy-from Vendor No.")
        {
        }
        key(Key3; "Document Type", "Pay-to Vendor No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PurchaseLineArchive.SETRANGE("Document Type","Document Type");
    PurchaseLineArchive.SETRANGE("Document No.","No.");
    PurchaseLineArchive.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    PurchaseLineArchive.SETRANGE("Version No.","Version No.");
    PurchaseLineArchive.DELETEALL;

    PurchCommentLineArch.SETRANGE("Document Type","Document Type");
    PurchCommentLineArch.SETRANGE("No.","No.");
    PurchCommentLineArch.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    PurchCommentLineArch.SETRANGE("Version No.","Version No.");
    PurchCommentLineArch.DELETEALL;

    DeferralHeaderArchive.SETRANGE("Deferral Doc. Type",DeferralUtilities.GetPurchDeferralDocType);
    DeferralHeaderArchive.SETRANGE("Document Type","Document Type");
    DeferralHeaderArchive.SETRANGE("Document No.","No.");
    DeferralHeaderArchive.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    DeferralHeaderArchive.SETRANGE("Version No.","Version No.");
    DeferralHeaderArchive.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    PurchaseLineArchive.SetRange("Document Type","Document Type");
    PurchaseLineArchive.SetRange("Document No.","No.");
    PurchaseLineArchive.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    PurchaseLineArchive.SetRange("Version No.","Version No.");
    PurchaseLineArchive.DeleteAll;

    PurchCommentLineArch.SetRange("Document Type","Document Type");
    PurchCommentLineArch.SetRange("No.","No.");
    PurchCommentLineArch.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    PurchCommentLineArch.SetRange("Version No.","Version No.");
    PurchCommentLineArch.DeleteAll;

    DeferralHeaderArchive.SetRange("Deferral Doc. Type",DeferralUtilities.GetPurchDeferralDocType);
    DeferralHeaderArchive.SetRange("Document Type","Document Type");
    DeferralHeaderArchive.SetRange("Document No.","No.");
    DeferralHeaderArchive.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    DeferralHeaderArchive.SetRange("Version No.","Version No.");
    DeferralHeaderArchive.DeleteAll(true);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Archived By"(Field 5046).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Archived By" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Archived By" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchaseLineArchive(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchaseLineArchive : 5110;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchaseLineArchive : "Purchase Line Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DeferralHeaderArchive(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DeferralHeaderArchive : 5127;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DeferralHeaderArchive : "Deferral Header Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DeferralUtilities(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchCommentLineArch(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchCommentLineArch : 5125;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchCommentLineArch : "Purch. Comment Line Archive";
    //Variable type has not been exported.


    //Unsupported feature: Change TableRelation on "DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.
}


tableextension 70029 PurchRcptHeaderExt extends "Purch. Rcpt. Header"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,TFS223871,B2B1.0

    fields
    {

        //Unsupported feature: Change NotBlank on ""Buy-from Vendor No."(Field 2)". Please convert manually.

        modify("No.")
        {
            CaptionML = ENU = 'Reciept No.', ENN = 'Reciept No.';
        }

        //Unsupported feature: Change NotBlank on ""Pay-to Vendor No."(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to Vendor No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Posting Group"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purchaser Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order No."(Field 44)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Printed"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


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


        //Unsupported feature: Change Editable on ""No. Series"(Field 109)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change Editable on ""Requested Receipt Date"(Field 5790)". Please convert manually.


        //Unsupported feature: Change Editable on ""Promised Receipt Date"(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 53).OnLookup". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VendLedgEntry.SETCURRENTKEY("Document No.");
        VendLedgEntry.SETRANGE("Document Type","Applies-to Doc. Type");
        VendLedgEntry.SETRANGE("Document No.","Applies-to Doc. No.");
        PAGE.RUN(0,VendLedgEntry);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        VendLedgEntry.SetCurrentKey("Document No.");
        VendLedgEntry.SetRange("Document Type","Applies-to Doc. Type");
        VendLedgEntry.SetRange("Document No.","Applies-to Doc. No.");
        PAGE.Run(0,VendLedgEntry);
        */
        //end;
        field(13701; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            //TableRelation = "Assessee Code";
        }
        field(13712; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            // TableRelation = "Excise Bus. Posting Group";
        }
        field(13723; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            /* TableRelation = IF ("C Form" = CONST(false)) "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                                                         "Transit Document" = CONST(false))
             ELSE
             IF ("C Form" = CONST(true)) "Form Codes".Code WHERE("C Form" = CONST(true));*/
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
            /* TableRelation = "LC Detail"."No." WHERE("Transaction Type" = CONST(Purchase),
                                                      "Issued To/Received From" = FIELD("Pay-to Vendor No."),
                                                      Closed = CONST(false),
                                                      Released = CONST(true));*/

            trigger OnValidate();
            var
                // LCDetail: Record "LC Detail";
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
            //TableRelation = "Structure Header";

            trigger OnValidate();
            var
                StrDetails: Record "Structure Details";
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                PurchaseLines: Record "Purchase Line";
            begin
            end;
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
        field(16500; "Manufacturer E.C.C. No."; Code[20])
        {
            CaptionML = ENU = 'Manufacturer E.C.C. No.',
                        ENN = 'Manufacturer E.C.C. No.';
            DataClassification = ToBeClassified;
        }
        field(16501; "Manufacturer Name"; Text[30])
        {
            CaptionML = ENU = 'Manufacturer Name',
                        ENN = 'Manufacturer Name';
            DataClassification = ToBeClassified;
        }
        field(16502; "Manufacturer Address"; Text[30])
        {
            CaptionML = ENU = 'Manufacturer Address',
                        ENN = 'Manufacturer Address';
            DataClassification = ToBeClassified;
        }
        field(16503; Trading; Boolean)
        {
            CaptionML = ENU = 'Trading',
                        ENN = 'Trading';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                PurchLine: Record "Purchase Line";
            begin
            end;
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
            OptionMembers = nearest,up,down;
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
        field(16612; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16613; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(16644; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50000; "MSPT Date"; Date)
        {
            Description = 'MSPT1.0';
            Editable = false;
        }
        field(50001; "MSPT Code"; Code[20])
        {
            Description = 'MSPT1.0';
            Editable = false;
            TableRelation = "MSPT Header".Code WHERE(Status = CONST(Released));

            trigger OnValidate();
            var
                MSPTHeader: Record "MSPT Header";
                "MSPT Details": Record "MSPT Line";
            begin
            end;
        }
        field(50002; "MSPT Applicable at Line Level"; Boolean)
        {
            Description = 'MSPT1.0';
            Editable = false;
        }
        field(60001; "Vendor Excise Invoice No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60002; "Vend. Excise Inv. Date"; Date)
        {
            Description = 'B2B';
        }
        field(60003; "Cancel Short Close"; Option)
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
        field(60005; Make; Text[50])
        {
            Description = 'B2B';
        }
        field(60006; "Packint Type"; Text[50])
        {
            Description = 'B2B';
        }
        field(60007; Verification; Text[50])
        {
            Description = 'B2B';
        }
        field(60013; "Bill Received"; Boolean)
        {
        }
        field(60014; "Bill Transfered"; Boolean)
        {

            trigger OnValidate();
            begin
                if "Bill Received" = false then
                    Error('Bill received must be ticked')
                else begin
                    if UpperCase(UserId) in ['EFFTRONICS\PARDHU', 'EFFTRONICS\DURGAMAHESWARI', 'EFFTRONICS\ANANDA', 'EFFTRONICS\MARY', 'EFFTRONICS\PADMASRI',
                      'EFFTRONICS\B2BOTS', 'EFFTRONICS\20TE061', 'EFFTRONICS\GRAVI', 'EFFTRONICS\NSUDHEER', 'EFFTRONICS\ASWINI', 'EFFTRONICS\CHRAJYALAKSHMI', 'EFFTRONICS\MRAJYALAKSHMI', 'EFFTRONICS\SUJITH', 'EFFTRONICS\BLAVANYA', 'EFFTRONICS\SNANDINI'] then begin
                        "Bill Transfered Date" := Today;
                    end else begin
                        Error(t1);
                        "Bill Transfered Date" := 0D;
                    end;
                end;
            end;
        }
        field(60015; "Bill Transfered Date"; Date)
        {
        }
        field(60016; Remarks; Text[250])
        {
        }
        field(60017; "Created Date Time"; DateTime)
        {
        }
        field(60019; "Vendor Invoice Date"; Date)
        {
        }
        field(60079; "Order (Digits)"; Code[10])
        {
        }
        field(60080; Pending; Boolean)
        {
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

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
        field(60093; "QC Passed"; Boolean)
        {
            Description = 'added  by sujani for QC Passed confirmation to Bill Transfer';
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Pay-to Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code"(Key)". Please convert manually.

        key(No1; "No.")
        {
        }
        key(OrderNo2; "Order No.")
        {
        }
        key(PAytoVendor3; "Pay-to Vendor No.")
        {
        }
        key(BuyFrom4; "Buy-from Vendor No.")
        {
        }
        key(POstingDate5; "Posting Date")
        {
        }
        key(Location6; "Location Code")
        {
        }
        key(Payto7; "Pay-to Vendor No.", "Posting Date", "Order No.", "Vendor Shipment No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LOCKTABLE;
    PostPurchDelete.DeletePurchRcptLines(Rec);

    PurchCommentLine.SETRANGE("Document Type",PurchCommentLine."Document Type"::Receipt);
    PurchCommentLine.SETRANGE("No.","No.");
    PurchCommentLine.DELETEALL;
    ApprovalsMgmt.DeletePostedApprovalEntries(RECORDID);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if not (UserId in ['EFFTRONICS\DURGAMAHESWARI','EFFTRONICS\ANILKUMAR','EFFTRONICS\SUJANI','EFFTRONICS\GRAVI'] ) then
      Error('You donot have rights to delete.Contact ERP Team');

    LockTable;
    PostPurchDelete.DeletePurchRcptLines(Rec);

    PurchCommentLine.SetRange("Document Type",PurchCommentLine."Document Type"::Receipt);
    PurchCommentLine.SetRange("No.","No.");
    PurchCommentLine.DeleteAll;
    Body:='****  Auto Mail Generated From ERP  ****';
     Mail_From:='erp@efftronics.net';
    Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
    // Mail_To:='santhoshk@efftronics.net';
    { USER.SETRANGE(USER."User Security ID",USERID);// Changed User."User Id" to User."User Security ID" B2B
     IF USER.FIND('-') THEN
     Subject:=USER."User Name"+'  is trying to Delete Purchase Receipt Header Records';// Changed User."Name" to User."User Name" B2B
     Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete'); }
    ApprovalsMgmt.DeletePostedApprovalEntries(RecordId);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 112).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostPurchDelete(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostPurchDelete : 364;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostPurchDelete : "PostPurch-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).ReportSelection(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchRcptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchRcptHeader : 120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchRcptHeader : "Purch. Rcpt. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchCommentLine : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchCommentLine : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VendLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VendLedgEntry : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VendLedgEntry : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ApprovalsMgmt(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ApprovalsMgmt : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApprovalsMgmt : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.

    var
        t1: Label 'u have no permissions';
        USER: Record User;
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];
}


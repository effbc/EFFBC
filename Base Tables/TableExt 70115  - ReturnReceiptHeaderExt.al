tableextension 70115 ReturnReceiptHeaderExt extends "Return Receipt Header"
{
    // version NAVW19.00.00.51014,NAVIN9.00.00.51014,TFS225680,Rev01

    fields
    {

        //Unsupported feature: Change NotBlank on ""Sell-to Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bill-to Customer No."(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Posting Group"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Printed"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""VAT Country/Region Code"(Field 78)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to Country/Region Code"(Field 87)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sell-to Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to Country/Region Code"(Field 90)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 109)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 112)". Please convert manually.


        //Unsupported feature: Change Description on ""User ID"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change Editable on ""Requested Delivery Date"(Field 5790)". Please convert manually.


        //Unsupported feature: Change Editable on ""Promised Delivery Date"(Field 5791)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipping Time"(Field 5792)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warehouse Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change Editable on ""Late Order Shipping"(Field 5797)". Please convert manually.


        //Unsupported feature: CodeModification on ""Bill-to City"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Ship-to City"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 53).OnLookup". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CustLedgEntry.SETCURRENTKEY("Document No.");
        CustLedgEntry.SETRANGE("Document Type","Applies-to Doc. Type");
        CustLedgEntry.SETRANGE("Document No.","Applies-to Doc. No.");
        PAGE.RUN(0,CustLedgEntry);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CustLedgEntry.SetCurrentKey("Document No.");
        CustLedgEntry.SetRange("Document Type","Applies-to Doc. Type");
        CustLedgEntry.SetRange("Document No.","Applies-to Doc. No.");
        PAGE.Run(0,CustLedgEntry);
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to City"(Field 83).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Sell-to City","Sell-to Post Code","Sell-to County","Sell-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Sell-to City","Sell-to Post Code","Sell-to County","Sell-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Post Code"(Field 85).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Post Code"(Field 88).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Sell-to City","Sell-to Post Code","Sell-to County","Sell-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Sell-to City","Sell-to Post Code","Sell-to County","Sell-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Ship-to Post Code"(Field 91).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;
        field(13701; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            TableRelation = "Assessee Code";
        }
        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13736; "Bill to Customer State"; Code[10])
        {
            CaptionML = ENU = 'Bill to Customer State',
                        ENN = 'Bill to Customer State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13737; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            TableRelation = "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                             "Transit Document" = CONST(false));
        }
        field(13738; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(13751; "Transit Document"; Boolean)
        {
            CaptionML = ENU = 'Transit Document',
                        ENN = 'Transit Document';
            DataClassification = ToBeClassified;
        }
        field(13752; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13753; "LC No."; Code[20])
        {
            CaptionML = ENU = 'LC No.',
                        ENN = 'LC No.';
            DataClassification = ToBeClassified;
            TableRelation = "LC Detail"."No." WHERE("Transaction Type" = CONST(Sale),
                                                     "Issued To/Received From" = FIELD("Bill-to Customer No."),
                                                     Closed = CONST(false),
                                                     Released = CONST(true));
        }
        field(13790; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header";
        }
        field(16341; Authorized; Boolean)
        {
            CaptionML = ENU = 'Authorized',
                        ENN = 'Authorized';
            DataClassification = ToBeClassified;
        }
        field(16343; "Authorized User ID"; Code[50])
        {
            CaptionML = ENU = 'Authorized User ID',
                        ENN = 'Authorized User ID';
            DataClassification = ToBeClassified;
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(16410; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16503; "Re-Dispatch"; Boolean)
        {
            CaptionML = ENU = 'Re-Dispatch',
                        ENN = 'Re-Dispatch';
            DataClassification = ToBeClassified;
        }
        field(16504; "Return Re-Dispatch Rcpt. No."; Code[20])
        {
            CaptionML = ENU = 'Return Re-Dispatch Rcpt. No.',
                        ENN = 'Return Re-Dispatch Rcpt. No.';
            DataClassification = ToBeClassified;
            TableRelation = "Return Receipt Line"."Document No." WHERE("Sell-to Customer No." = FIELD("Sell-to Customer No."));
        }
        field(16508; "Price Inclusive of Taxes"; Boolean)
        {
            CaptionML = ENU = 'Price Inclusive of Taxes',
                        ENN = 'Price Inclusive of Taxes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16509; "Calc. Inv. Discount (%)"; Boolean)
        {
            CaptionML = ENU = 'Calc. Inv. Discount (%)',
                        ENN = 'Calc. Inv. Discount (%)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16513; "Vehicle No."; Code[20])
        {
            CaptionML = ENU = 'Vehicle No.',
                        ENN = 'Vehicle No.';
            DataClassification = ToBeClassified;
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
        field(16524; "Sales Return Type"; Option)
        {
            CaptionML = ENU = 'Sales Return Type',
                        ENN = 'Sales Return Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Cancellation',
                              ENN = ' ,Sales Cancellation';
            OptionMembers = " ","Sales Cancellation";
        }
        field(16601; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16602; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(16603; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;
        }
        field(16605; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16606; "Bill Of Export No."; Code[20])
        {
            CaptionML = ENU = 'Bill Of Export No.',
                        ENN = 'Bill Of Export No.';
            DataClassification = ToBeClassified;
        }
        field(16607; "Bill Of Export Date"; Date)
        {
            CaptionML = ENU = 'Bill Of Export Date',
                        ENN = 'Bill Of Export Date';
            DataClassification = ToBeClassified;
        }
        field(16608; "e-Commerce Customer"; Code[20])
        {
            CaptionML = ENU = 'e-Commerce Customer',
                        ENN = 'e-Commerce Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer WHERE("e-Commerce Operator" = FILTER(true));
        }
        field(16609; "e-Commerce Merchant Id"; Code[30])
        {
            CaptionML = ENU = 'e-Commerce Merchant Id',
                        ENN = 'e-Commerce Merchant Id';
            DataClassification = ToBeClassified;
            TableRelation = "e-Commerce Merchant Id"."Merchant Id";
        }
        field(16610; "GST Bill-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Bill-to State Code',
                        ENN = 'GST Bill-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16611; "GST Ship-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Ship-to State Code',
                        ENN = 'GST Ship-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16612; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16613; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16614; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16615; "GST Reason Type"; Option)
        {
            CaptionML = ENU = 'GST Reason Type',
                        ENN = 'GST Reason Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others',
                              ENN = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others';
            OptionMembers = " ","Sales Return","Post Sale Discount","Deficiency in Service","Correction in Invoice","Change in POS","Finalization of Provisional Assessment",Others;
        }
        field(16616; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";
        }
        field(16617; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16618; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16619; "Distance (Km)"; Decimal)
        {
            CaptionML = ENU = 'Distance (Km)',
                        ENN = 'Distance (Km)';
            DataClassification = ToBeClassified;
        }
        field(16620; "Vehicle Type"; Option)
        {
            CaptionML = ENU = 'Vehicle Type',
                        ENN = 'Vehicle Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Regular,ODC',
                              ENN = ' ,Regular,ODC';
            OptionMembers = " ",Regular,ODC;
        }
        field(16621; "Reference Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Reference Invoice No.',
                        ENN = 'Reference Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16622; "E-Way Bill No."; Text[50])
        {
            CaptionML = ENU = 'E-Way Bill No.',
                        ENN = 'E-Way Bill No.';
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

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Return Order No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No.,External Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Return Order No.")
        {
        }
        key(Key3; "Sell-to Customer No.", "External Document No.")
        {
        }
        key(Key4; "Bill-to Customer No.")
        {
        }
        key(Key5; "Posting Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("No. Printed");
    LOCKTABLE;
    PostSalesDelete.DeleteSalesRcptLines(Rec);

    SalesCommentLine.SETRANGE("Document Type",SalesCommentLine."Document Type"::"Posted Return Receipt");
    SalesCommentLine.SETRANGE("No.","No.");
    SalesCommentLine.DELETEALL;

    ApprovalsMgmt.DeletePostedApprovalEntries(RECORDID);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("No. Printed");
    LockTable;
    PostSalesDelete.DeleteSalesRcptLines(Rec);

    SalesCommentLine.SetRange("Document Type",SalesCommentLine."Document Type"::"Posted Return Receipt");
    SalesCommentLine.SetRange("No.","No.");
    SalesCommentLine.DeleteAll;

    ApprovalsMgmt.DeletePostedApprovalEntries(RecordId);
    */
    //end;

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


    //Unsupported feature: PropertyModification on "OnDelete.PostSalesDelete(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostSalesDelete : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostSalesDelete : "PostSales-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 3).ReportSelection(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).DocumentSendingProfile(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).DummyReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).ReportDistributionMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReturnRcptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReturnRcptHeader : 6660;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReturnRcptHeader : "Return Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCommentLine : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCommentLine : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
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
}


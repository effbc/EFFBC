table 60068 "Tender Header Archive"
{
    // version B2B1.0,Rev01

    //  DrillDownPageID = 60093;
    // LookupPageID = 60093;

    fields
    {
        field(1; "Tender No."; Code[20])
        {
        }
        field(2; "Tender Description"; Text[50])
        {
        }
        field(3; "Customer No."; Code[20])
        {
            TableRelation = Customer;
        }
        field(4; "Customer Name"; Text[50])
        {
            Editable = false;
        }
        field(5; "Customer Name 2"; Text[50])
        {
            Editable = false;
        }
        field(6; "Customer Address"; Text[50])
        {
            Editable = false;
        }
        field(7; "Customer Address 2"; Text[50])
        {
            Editable = false;
        }
        field(8; City; Text[30])
        {
            Editable = false;
        }
        field(9; "Customer Contact"; Text[30])
        {
            Editable = false;
        }
        field(10; "Post Code"; Code[20])
        {
            Editable = false;
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; Country; Text[30])
        {
            Editable = false;
        }
        field(12; "Country Code"; Code[10])
        {
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(13; Territory; Code[10])
        {
            TableRelation = Territory;
        }
        field(14; State; Code[10])
        {
            Editable = false;
        }
        field(15; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            Editable = false;
        }
        field(16; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
            Editable = false;
        }
        field(17; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
            Editable = false;
        }
        field(18; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            Editable = false;
        }
        field(19; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            Editable = false;
        }
        field(20; "Salesperson Code"; Code[20])
        {
            TableRelation = "Salesperson/Purchaser" WHERE("Salesperson/Purchaser" = CONST(Sale));
        }
        field(21; "Minimum Bid Amount"; Decimal)
        {
        }
        field(37; "Document Position"; Option)
        {
            OptionMembers = CRM,Sales,Design;
        }
        field(51; "Customer Tender No."; Code[50])
        {
        }
        field(52; "Tender Dated"; Date)
        {
        }
        field(53; "Tender doc Issue From"; Date)
        {
        }
        field(54; "Tender doc Issue To"; Date)
        {
        }
        field(55; "Submission Due Date"; Date)
        {
        }
        field(56; "Submission Due Time"; Time)
        {
        }
        field(57; "Tech. Bid Opening Date"; Date)
        {
        }
        field(58; "Tech. Bid Opening Time"; Time)
        {
        }
        field(59; "Commercial Bid Opening Date"; Date)
        {
        }
        field(60; "Commercial Bid Opening Time"; Time)
        {
        }
        field(61; "Tender Status"; Option)
        {
            OptionCaption = '" ,Open,Postponed,Received,Cancelled,Lost,Expected"';
            OptionMembers = " ",Open,Postponed,Received,Cancelled,Lost,Expected;
        }
        field(62; "Tender Submitted Date"; Date)
        {
        }
        field(63; "Not Participated"; Boolean)
        {
        }
        field(64; "Supporting Tender"; Boolean)
        {
        }
        field(65; "Tender Dispatch Details"; Option)
        {
            OptionMembers = Courier,Postal,"Other Sources";
        }
        field(66; "Tender Source"; Option)
        {
            OptionMembers = "News Paper","Web portal",Others;
        }
        field(67; "Tender Source Name"; Text[50])
        {
        }
        field(68; "Tender Source Date"; Date)
        {
        }
        field(69; Status; Option)
        {
            Editable = false;
            OptionMembers = Open,Release;
        }
        field(70; "Tender Realized/Not Realized"; Option)
        {
            OptionMembers = Realized,"Not Realized";
        }
        field(71; "Standard/Customize"; Option)
        {
            OptionMembers = Standard,Customize;
        }
        field(72; "Tender Quote Value"; Decimal)
        {
        }
        field(73; "Tender Application Amount"; Decimal)
        {
        }
        field(74; "Tender Application No."; Code[20])
        {
        }
        field(81; "Tender Posting Group"; Code[20])
        {
            TableRelation = "Tender Posting Groups".Code;
        }
        field(101; "EMD Amount"; Decimal)
        {
        }
        field(102; "EMD Mode of Payment"; Option)
        {
            OptionMembers = Cash,FDR,DD,Cheque,Others;
        }
        field(104; "EMD Payment Date"; Date)
        {
        }
        field(105; "EMD Received Date"; Date)
        {
        }
        field(106; "EMD Status"; Option)
        {
            Editable = false;
            OptionMembers = " ",Received,"Not Received","Partially Received","Adjusted against Security Deposited";
        }
        field(107; "EMD Requested Date"; Date)
        {
        }
        field(108; "EMD Required Date"; Date)
        {
        }
        field(109; "EMD DD No."; Code[30])
        {
        }
        field(110; "EMD Paid Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = CONST(Payment),
                                                                    Type = CONST(EMD)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(111; "EMD Received Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = CONST(Receipt),
                                                                    Type = CONST(EMD)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(112; "EMD Adjusted Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(EMD),
                                                                    "Transaction Type" = CONST(Adjustment)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(113; "EMD Write off Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(EMD),
                                                                    "Transaction Type" = CONST("Write off")));
            FieldClass = FlowField;
        }
        field(131; "Security Mode of Payment"; Option)
        {
            OptionMembers = Cash,BG,FDR,DD,Cheque,Others;
        }
        field(132; "Security Deposit Amount"; Decimal)
        {
        }
        field(133; "Deposit Payment Due Date"; Date)
        {
        }
        field(134; "Deposit Payment Date"; Date)
        {
        }
        field(135; "Security Deposit Status"; Code[20])
        {
        }
        field(136; "SD Requested Date"; Date)
        {
        }
        field(137; "SD Required Date"; Date)
        {
        }
        field(138; "SecurityDeposit Exp. Rcpt Date"; Date)
        {
        }
        field(139; "SD Net Pay"; Decimal)
        {
        }
        field(140; "Mode of Receipt"; Option)
        {
            OptionMembers = Cash,Cheque,DD,FDR;
        }
        field(142; "Received Amount"; Decimal)
        {
        }
        field(144; "Balance Receivable"; Decimal)
        {
        }
        field(148; "Adjusted from EMD"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = CONST(Adjustment)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(149; "Adjusted from Running Bills"; Decimal)
        {
        }
        field(150; "SD Paid Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(SD),
                                                                    "Transaction Type" = CONST(Payment)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(151; "SD Received Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(SD),
                                                                    "Transaction Type" = CONST(Receipt)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(201; "Doc. No. Occurrence"; Integer)
        {
        }
        field(202; "Version No."; Integer)
        {
        }
        field(203; "No. of Archived Versions"; Integer)
        {
            Caption = 'No. of Archived Versions';
            Editable = true;
        }
        field(204; "Product Type"; Text[30])
        {
        }
        field(205; "No. of Sales Order"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Tender No." = FIELD("Tender No.")));
            FieldClass = FlowField;
        }
        field(206; "No. of Posted Sales Order"; Integer)
        {
            CalcFormula = Count("Sales Shipment Header" WHERE("Tender No." = FIELD("Tender No.")));
            FieldClass = FlowField;
        }
        field(301; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(501; "Application Cost Post"; Boolean)
        {
            Description = 'for checking the Application cost posting';
        }
        field(502; "EMD Amount Post"; Boolean)
        {
            Description = 'for checking the EMD Amount posting';
        }
        field(503; "SD Amount Post"; Boolean)
        {
            Description = 'for checking the SD Amount posting';
        }
        field(5044; "Time Archived"; Time)
        {
            Caption = 'Time Archived';
        }
        field(5045; "Date Archived"; Date)
        {
            Caption = 'Date Archived';
        }
        field(5046; "Archived By"; Code[50])
        {
            Caption = 'Archived By';
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(60000; "Tender Position"; Option)
        {
            Description = 'B2B EFF';
            OptionCaption = '" ,L1,L2,L3,L4"';
            OptionMembers = " ",L1,L2,L3,L4;
        }
        field(60123; "Sent For Auth"; Boolean)
        {
        }
        field(60124; TenderType; Option)
        {
            Description = 'Added by Pranavi';
            OptionCaption = 'Sale,AMC,LMD,EffeHyd';
            OptionMembers = Sale,AMC,LMD,EffeHyd;
        }
    }

    keys
    {
        key(Key1; "Version No.", "Tender No.")
        {
        }
    }

    fieldgroups
    {
    }
}


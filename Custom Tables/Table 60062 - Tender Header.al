table 60062 "Tender Header"
{
    // version B2B1.0,SH1.0,Rev01

    DrillDownPageID = 60085;
    LookupPageID = 60085;

    fields
    {
        field(1;"Tender No.";Code[20])
        {
        }
        field(2;"Tender Description";Text[50])
        {
        }
        field(3;"Customer No.";Code[20])
        {
            TableRelation = Customer;

            trigger OnValidate();
            begin
                if Customer.Get("Customer No.") then begin
                  if  Customer."Salesperson Code"='' then
                  Error('Assign the sales Person code to '+Format("Customer No.")+'  in Customer card');
                  "Customer Name" := Customer.Name;
                  "Customer Name 2" := Customer."Name 2";
                  "Customer Address" := Customer.Address;
                  "Customer Address 2" := Customer."Address 2";
                  "Customer Contact" := Customer.Contact;
                  "Post Code" := Customer."Post Code";
                  if PostCode.Get("Post Code") then
                    City := PostCode.City;
                  State := Customer."State Code";
                  "Country Code" := Customer."Country/Region Code";
                  //IF Country.GET("Country Code") THEN
                      //County := Country.Name;
                  "Phone No." := Customer."Phone No.";
                  "Telex No." := Customer."Telex No.";
                  "Fax No." := Customer."Fax No.";
                  "E-Mail" := Customer."E-Mail";
                  "Home Page" := Customer."Home Page";
                end;

                TenderLedgerEntry.SetRange("Tender No.","Tender No.");
                if TenderLedgerEntry.Find('-') then
                  Error(Text002,"Customer No.","Tender No.");
            end;
        }
        field(4;"Customer Name";Text[50])
        {
            Editable = false;
        }
        field(5;"Customer Name 2";Text[50])
        {
            Editable = false;
        }
        field(6;"Customer Address";Text[50])
        {
            Editable = false;
        }
        field(7;"Customer Address 2";Text[50])
        {
            Editable = false;
        }
        field(8;City;Text[30])
        {
            Editable = false;

            trigger OnLookup();
            begin
                /*PostCode.LookUpCity(City,"Post Code",TRUE);*///B2B

            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity(City,"Post Code",County,"Country Code",true);  //B2B
            end;
        }
        field(9;"Customer Contact";Text[30])
        {
            Editable = false;
        }
        field(10;"Post Code";Code[20])
        {
            Editable = false;
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            begin
                /*PostCode.LookUpPostCode(City,"Post Code",TRUE);*///b2B

            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode(City,"Post Code",County,"Country Code",true);//B2B
            end;
        }
        field(11;Country;Text[30])
        {
            Editable = false;
        }
        field(12;"Country Code";Code[10])
        {
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(13;Territory;Code[10])
        {
            TableRelation = Territory;
        }
        field(14;State;Code[10])
        {
            Editable = false;
        }
        field(15;"Phone No.";Text[30])
        {
            Caption = 'Phone No.';
            Editable = false;
        }
        field(16;"Telex No.";Text[20])
        {
            Caption = 'Telex No.';
            Editable = false;
        }
        field(17;"Fax No.";Text[30])
        {
            Caption = 'Fax No.';
            Editable = false;
        }
        field(18;"E-Mail";Text[80])
        {
            Caption = 'E-Mail';
            Editable = false;
        }
        field(19;"Home Page";Text[80])
        {
            Caption = 'Home Page';
            Editable = false;
        }
        field(20;"Salesperson Code";Code[20])
        {
            TableRelation = "Salesperson/Purchaser" WHERE ("Salesperson/Purchaser"=FILTER(Sale|CS));

            trigger OnValidate();
            begin
                // Added by Pranavi on 21-Jun-2016
                if TenderType = TenderType::AMC then
                begin
                  SP.Reset;
                  SP.SetRange(SP.Code,"Salesperson Code");
                  if SP.FindFirst then
                    if SP."Salesperson/Purchaser" <> SP."Salesperson/Purchaser"::CS then
                      Error('Please select only CS Manager as SalesPerson as Tender type is AMC!');
                end
                else
                begin
                  SP.Reset;
                  SP.SetRange(SP.Code,"Salesperson Code");
                  if SP.FindFirst then
                    if SP."Salesperson/Purchaser" <> SP."Salesperson/Purchaser"::Sale then
                      Error('Please select only Sales Manager as SalesPerson as Tender type is Sale Order!');
                end;
                // End by Pranavi
            end;
        }
        field(21;"Minimum Bid Amount";Decimal)
        {
        }
        field(37;"Document Position";Option)
        {
            Editable = false;
            OptionMembers = Sales,Design,Finance,CRM;
        }
        field(51;"Customer Tender No.";Code[50])
        {
        }
        field(52;"Tender Dated";Date)
        {
        }
        field(53;"Tender doc Issue From";Date)
        {
        }
        field(54;"Tender doc Issue To";Date)
        {

            trigger OnValidate();
            begin
                if "Tender doc Issue To" < "Tender doc Issue From" then
                  Error('Tender doc Issue To date Should be Greater Than the Tender doc Issue From Date');
            end;
        }
        field(55;"Submission Due Date";Date)
        {
        }
        field(56;"Submission Due Time";Time)
        {
        }
        field(57;"Tech. Bid Opening Date";Date)
        {
        }
        field(58;"Tech. Bid Opening Time";Time)
        {
        }
        field(59;"Commercial Bid Opening Date";Date)
        {
        }
        field(60;"Commercial Bid Opening Time";Time)
        {
        }
        field(61;"Tender Status";Option)
        {
            OptionCaption = '" ,Open,Postponed,Received,Cancelled,Unsuccessfull,Expected,Yettoparticipate,Not Participated,Participated,Exp.through Contractor"';
            OptionMembers = " ",Open,Postponed,Received,Cancelled,Unsuccessfull,Expected,Yettoparticipate,"Not Participated",Participated,"Exp.through Contractor";

            trigger OnValidate();
            begin
                /*IF FORMAT("Tender Status") IN ['Received','Expected','Exp.through Contractor','Unsuccessfull'] THEN
                BEGIN
                  IF FORMAT("Tender Position")='' THEN
                    ERROR('Specify the Tender Position');
                  TL.RESET;
                  TL.SETFILTER(TL."Document No.","Tender No.");
                  IF TL.FINDSET THEN
                  BEGIN
                    REPEAT
                      IF FORMAT(TL."Schedule Type")='' THEN
                        ERROR('Specify Schedule type in the Tender line %1',TL."Line No.");
                      IF TL.Description ='' THEN
                        ERROR('There is no Item in the Tender line %1',TL."Line No.");
                      IF TL."Cust. Estimated Unit Cost"<=0 THEN
                        ERROR('Enter the customer estimated unit cost in Tender line %1',TL."Line No.");
                    UNTIL TL.NEXT=0;
                  END
                  ELSE
                    ERROR('There are no tender lines to release');
                END;
                */

            end;
        }
        field(62;"Tender Submitted Date";Date)
        {
        }
        field(63;"Not Participated";Boolean)
        {
        }
        field(64;"Supporting Tender";Boolean)
        {
        }
        field(65;"Tender Dispatch Details";Option)
        {
            OptionMembers = Courier,Postal,"Other Sources";
        }
        field(66;"Tender Source";Option)
        {
            OptionMembers = "News Paper","Web portal",Others;
        }
        field(67;"Tender Source Name";Text[50])
        {
        }
        field(68;"Tender Source Date";Date)
        {
        }
        field(69;Status;Option)
        {
            Editable = false;
            OptionMembers = Open,Release;
        }
        field(70;"Tender Realized/Not Realized";Option)
        {
            OptionMembers = Realized,"Not Realized";
        }
        field(71;"Standard/Customize";Option)
        {
            OptionMembers = Standard,Customize;
        }
        field(72;"Tender Quote Value";Decimal)
        {
            CalcFormula = Sum("Tender Line"."Total Amount" WHERE ("Document No."=FIELD("Tender No.")));
            Editable = false;
            FieldClass = FlowField;

            trigger OnValidate();
            begin
                if "Tender Quote Value" < 0 then
                  Error('Amount must be Positive');
            end;
        }
        field(73;"Tender Document Cost";Decimal)
        {
            Caption = 'Tender Document Cost';

            trigger OnValidate();
            begin
                if "Tender Document Cost" < 0 then
                  Error('Amount must be Positive');
            end;
        }
        field(74;"Tender Application No.";Code[20])
        {
            Description = '(MinimumBidamount - Tender Quote Value) / 100';
        }
        field(75;"Quote %";Decimal)
        {
            Editable = false;
        }
        field(81;"Tender Posting Group";Code[20])
        {
            TableRelation = "Tender Posting Groups".Code;

            trigger OnValidate();
            begin
                TenderLedgerEntry.SetRange("Tender No.","Tender No.");
                if TenderLedgerEntry.Find('-') then
                  Error(Text001,"Tender Posting Group","Tender No.");
            end;
        }
        field(101;"EMD Amount";Decimal)
        {

            trigger OnValidate();
            begin
                if "EMD Amount" < 0 then
                  Error('Amount must be Positive');

                CalcFields("EMD Paid Amount");
                if "EMD Paid Amount" <> 0 then
                  if "EMD Paid Amount" > "EMD Amount" then
                    Error(Text005,"Tender No.");
            end;
        }
        field(102;"EMD Mode of Payment";Option)
        {
            OptionMembers = Cash,FDR,DD,Cheque,Others,"On-Line";
        }
        field(104;"EMD Payment Date";Date)
        {
        }
        field(105;"EMD Received Date";Date)
        {
        }
        field(106;"EMD Status";Option)
        {
            Editable = false;
            OptionMembers = " ",Received,"Not Received","Partially Received","Adjusted against Security Deposited",NA;
        }
        field(107;"EMD Requested Date";Date)
        {
        }
        field(108;"EMD Required Date";Date)
        {
        }
        field(109;"EMD DD No.";Code[30])
        {
        }
        field(110;"EMD Paid Amount";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    "Transaction Type"=CONST(Payment),
                                                                    Type=CONST(EMD)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(111;"EMD Received Amount";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    "Transaction Type"=CONST(Receipt),
                                                                    Type=CONST(EMD)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(112;"EMD Adjusted Amount";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    Type=CONST(EMD),
                                                                    "Transaction Type"=CONST(Adjustment)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(113;"EMD Write off Amount";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    Type=CONST(EMD),
                                                                    "Transaction Type"=CONST("Write off")));
            FieldClass = FlowField;
        }
        field(131;"Security Mode of Payment";Option)
        {
            OptionMembers = Cash,BG,FDR,DD,Cheque,Others;
        }
        field(132;"Security Deposit Amount";Decimal)
        {

            trigger OnValidate();
            begin
                if "Security Deposit Amount" < 0 then
                  Error('Amount must be Positive');

                CalcFields("SD Paid Amount");
                if "SD Paid Amount" <> 0 then
                  if "SD Paid Amount" > "Security Deposit Amount" then
                    Error(Text006,"Tender No.");
            end;
        }
        field(133;"Deposit Payment Due Date";Date)
        {
        }
        field(134;"Deposit Payment Date";Date)
        {
        }
        field(135;"Security Deposit Status";Code[20])
        {
        }
        field(136;"SD Requested Date";Date)
        {
        }
        field(137;"SD Required Date";Date)
        {
        }
        field(138;"SecurityDeposit Exp. Rcpt Date";Date)
        {
        }
        field(139;"SD Net Pay";Decimal)
        {
        }
        field(140;"Mode of Receipt";Option)
        {
            OptionMembers = Cash,Cheque,DD,FDR;
        }
        field(142;"Received Amount";Decimal)
        {
        }
        field(144;"Balance Receivable";Decimal)
        {
        }
        field(148;"Adjusted from EMD";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    "Transaction Type"=CONST(Adjustment),
                                                                    "Mode of Receipt / Payment"=FILTER(<>Customer)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(149;"Adjusted from Running Bills";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    "Transaction Type"=FILTER(Adjustment),
                                                                    "Mode of Receipt / Payment"=FILTER(Customer)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(150;"SD Paid Amount";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    Type=CONST(SD),
                                                                    "Transaction Type"=CONST(Payment)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(151;"SD Received Amount";Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE ("Tender No."=FIELD("Tender No."),
                                                                    Type=CONST(SD),
                                                                    "Transaction Type"=CONST(Receipt)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(201;"Doc. No. Occurrence";Integer)
        {
        }
        field(202;"Version No.";Integer)
        {
        }
        field(203;"No. of Archived Versions";Integer)
        {
            CalcFormula = Max("Tender Header Archive"."Version No." WHERE ("Tender No."=FIELD("Tender No.")));
            Caption = 'No. of Archived Versions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(204;"Product Type";Text[30])
        {
        }
        field(205;"No. of Sales Order";Integer)
        {
            CalcFormula = Count("Sales Header" WHERE ("Tender No."=FIELD("Tender No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(206;"No. of Posted Sales Order";Integer)
        {
            CalcFormula = Count("Sales Shipment Header" WHERE ("Tender No."=FIELD("Tender No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(301;"No. Series";Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(501;"Application Cost Post";Boolean)
        {
            Description = 'for checking the Application cost posting';
        }
        field(502;"EMD Amount Post";Boolean)
        {
            Description = 'for checking the EMD Amount posting';
        }
        field(503;"SD Amount Post";Boolean)
        {
            Description = 'for checking the SD Amount posting';
        }
        field(50000;"USER ID";Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60000;"Tender Position";Option)
        {
            Description = 'B2B EFF';
            OptionCaption = '" ,L1,L2,L3,L4"';
            OptionMembers = " ",L1,L2,L3,L4;

            trigger OnValidate();
            begin
                 TCD.Reset;
                 TCD.SetFilter(TCD."Tender No.","Tender No.");
                 TCD.SetFilter(TCD."BID Status",'%1',"Tender Position");
                 if TCD.FindSet then
                 begin
                  // IF TCD.COUNT>1 THEN
                   Error('Tender Position already exits in Competitor Details');
                 end;
            end;
        }
        field(60001;"EMD Satus";Option)
        {
            Caption = '<EMD Status>';
            OptionCaption = 'Due,Received,NA';
            OptionMembers = Due,Received,NA;
        }
        field(60002;"Tender Doc Cost in form of";Option)
        {
            OptionCaption = 'DD,Cash';
            OptionMembers = DD,Cash;
        }
        field(60003;"Payable At";Text[250])
        {
        }
        field(60004;"EMD in form of";Option)
        {
            OptionCaption = 'FDR,DD,Cash';
            OptionMembers = FDR,DD,Cash;
        }
        field(60005;"Expected Order month";Option)
        {
            OptionMembers = "  ",APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC,JAN,FEB,MAR,"     ";
        }
        field(60010;"Sales Order Created";Boolean)
        {
            Editable = true;
            Enabled = true;
        }
        field(60011;"Blanket Order Created";Boolean)
        {
            Editable = false;
        }
        field(60012;"Released to Sales User ID";Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60013;"Released to Sales Date";Date)
        {
            Editable = false;
        }
        field(60014;"Released to Design User ID";Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60015;"Released to Design Date";Date)
        {
            Editable = false;
        }
        field(60016;structure;Code[10])
        {
            TableRelation = "Structure Header".Code;
        }
        field(60032;Product;Code[10])
        {
            TableRelation = "Service Item Group";
        }
        field(60073;Remarks;Text[250])
        {
        }
        field(60090;"Tender Relese Date Time";DateTime)
        {
        }
        field(60100;"Released to Finance";Boolean)
        {
        }
        field(60101;"Released to Sales";Boolean)
        {
        }
        field(60116;"Order Completion Period";Integer)
        {
        }
        field(60117;"Expecting Week";Date)
        {
        }
        field(60118;"InFavour of";Text[50])
        {
        }
        field(60119;"EMD Expected Date";Date)
        {
        }
        field(60120;"Schedule A Percentage";Decimal)
        {
        }
        field(60121;"Schedule B Percentage";Decimal)
        {
        }
        field(60122;"Schedule C Percentage";Decimal)
        {
        }
        field(60123;"Sent For Auth";Boolean)
        {
        }
        field(60124;TenderType;Option)
        {
            Description = 'Added by Pranavi';
            OptionCaption = 'Sale,AMC,LMD,EffeHyd';
            OptionMembers = Sale,AMC,LMD,EffeHyd;

            trigger OnValidate();
            begin
                if "Sales Order Created" = true or "Blanket Order Created" = true then  //Pranavi on 21-jun-2016
                  Error('You Can not change the type when Sale/Exp Order is Created!');
            end;
        }
        field(60125;"Old Tender";Boolean)
        {
            Description = 'Added by pranavi for reporting purpose';
        }
    }

    keys
    {
        key(Key1;"Tender No.")
        {
        }
        key(Key2;"Tender Status")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        
        TenderLedgerEntry.SetRange("Tender No.","Tender No.");
        if TenderLedgerEntry.Find('-') then
          Error(Text003,"Tender No.");
        
        
        if "Tender Relese Date Time"<>0DT then
          Error('You Cannot Delete The Tender Which was Already Released');
        
        
        /*//To delete the Tender Lines
        TenderLine.INIT;
        TenderLine.SETRANGE("Document No.","Tender No.");
        TenderLine.DELETEALL;
        
        //To delete the Tender Competitors
        TenderCompetitorDetails.INIT;
        TenderCompetitorDetails.SETRANGE("Tender No.","Tender No.");
        TenderCompetitorDetails.DELETEALL;
        
        //To delete the tendet comments
        TenderCommentLine.INIT;
        TenderCommentLine.SETRANGE("No.","Tender No.");
        TenderCommentLine.DELETEALL;
        
        //TO Delete the Attachments
        Attachments.INIT;
        Attachments.SETRANGE("Document No.","Tender No.");
        Attachments.DELETEALL;
        
        //To delete From the check list
        TenderChecklist.INIT;
        TenderChecklist.SETRANGE("Document No.","Tender No.");
        TenderChecklist.DELETEALL;
        */

    end;

    trigger OnInsert();
    begin
        SalesSetup.Get;
        SalesSetup.TestField(SalesSetup."Tender Nos.");
        if "Tender No." = '' then
          NoSeriesMgt.InitSeries(SalesSetup."Tender Nos.",xRec."No. Series",WorkDate,"Tender No.","No. Series");
    end;

    trigger OnModify();
    begin
        //TESTFIELD(Status,Status :: Open);
    end;

    var
        Customer : Record Customer;
        PostCode : Record "Post Code";
        Country : Record "Country/Region";
        SalesSetup : Record "Sales & Receivables Setup";
        NoSeriesMgt : Codeunit NoSeriesManagement;
        Test : Boolean;
        TenderCompetitorDetails : Record "Tender Competitor's Details";
        TenderChecklist : Record "Check List";
        TenderCommentLine : Record "Tender Comment Line";
        Attachments : Record Attachments;
        TenderLine : Record "Tender Line";
        TenderLedgerEntry : Record "Tender Ledger Entries";
        Text001 : Label 'You cannot change Posting Group %1 for Tender %2 because there are one or more ledger entries exists for this.';
        Text002 : Label 'You cannot change / Delete Customer %1 for Tender %2 because there are one or more ledger entries exists for this.';
        Text003 : Label 'You cannot Delete Tender %1 because there are one or more ledger entries exists for this.';
        Text004 : Label 'You cannot change Application Amount Cost for Tender %1';
        Text005 : Label 'You cannot change EMD Amount for Tender %1';
        Text006 : Label 'You cannot change SD Amount for Tender %1';
        ATENDER : Record "Tender Header Archive";
        TL : Record "Tender Line";
        TCD : Record "Tender Competitor's Details";
        County : Text[30];
        SP : Record "Salesperson/Purchaser";

    [LineStart(3275)]
    procedure AssistEdit(TenderHeader : Record "Tender Header") : Boolean;
    var
        Tender : Record "Tender Header";
        SalesReceivables : Record "Sales & Receivables Setup";
        NoSeriesMgt : Codeunit NoSeriesManagement;
    begin
        with Tender do begin
          Tender := Rec;
          SalesReceivables.Get;
          SalesReceivables.TestField("Tender Nos.");
          if NoSeriesMgt.SelectSeries(SalesReceivables."Tender Nos.",TenderHeader."No. Series","No. Series") then begin
            NoSeriesMgt.SetSeries("Tender No.");
            Rec := Tender;
            exit(true);
          end;
        end;
    end;

    [LineStart(3287)]
    procedure TenderAttachments();
    var
        Attachments : Record Attachments;
    begin
        Attachments.Reset;
        Attachments.SetRange("Table ID",DATABASE::"Tender Header");
        Attachments.SetRange("Document No.","Tender No.");

        PAGE.Run(PAGE::Page60117,Attachments);
    end;
}


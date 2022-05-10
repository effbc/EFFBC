tableextension 70011 SalesHeaderExt extends "Sales Header"
{
    // version NAVW19.00.00.51947,NAVIN9.00.00.51947,TFS225680,B2B1.0,Rev01,B2BQTO,CR1.0

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Amc', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Amc';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change Data type on ""No."(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bill-to Customer No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to Name"(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Date"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Payment Terms Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Posting Group"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Factor"(Field 33)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Invoice Disc. Code"(Field 37)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Printed"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Recalculate Invoice Disc."(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Recalculate Invoice Disc."(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on "Ship(Field 57)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Shipping No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Posting No."(Field 65)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""VAT Country/Region Code"(Field 78)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to Customer Name"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sell-to City"(Field 83)". Please convert manually.


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


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 105)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 107)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Tax Area Code"(Field 114)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on "Reserve(Field 117)". Please convert manually.

        modify(Status)
        {
            OptionCaptionML = ENU = 'Open,Released,Pending Approval,Pending Prepayment,Closed', ENN = 'Open,Released,Pending Approval,Pending Prepayment,Closed';

            //Unsupported feature: Change OptionString on "Status(Field 120)". Please convert manually.


            //Unsupported feature: Change Editable on "Status(Field 120)". Please convert manually.

        }

        //Unsupported feature: Change OptionString on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Value"(Field 122)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sell-to IC Partner Code"(Field 125)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to IC Partner Code"(Field 126)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Compress Prepayment"(Field 132)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote Sent to Customer"(Field 153)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote Accepted Date"(Field 155)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Queue Status"(Field 160)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Queue Status"(Field 160)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Queue Entry ID"(Field 161)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Last Email Sent Status"(Field 167)". Please convert manually.


        //Unsupported feature: Change Editable on "IsTest(Field 170)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amt. Ship. Not Inv. (LCY)"(Field 300)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amt. Ship. Not Inv. (LCY)"(Field 300)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amt. Ship. Not Inv. (LCY) Base"(Field 301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amt. Ship. Not Inv. (LCY) Base"(Field 301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Direct Debit Mandate ID"(Field 1200)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Invoice Discount Amount"(Field 1305)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Amount"(Field 1305)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Archived Versions"(Field 5043)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Archived Versions"(Field 5043)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Opportunity No."(Field 5055)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Advice"(Field 5750)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Shipped Not Invoiced"(Field 5751)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipped Not Invoiced"(Field 5751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipped Not Invoiced"(Field 5751)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posting from Whse. Ref."(Field 5753)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Shipped(Field 5755)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on "Shipped(Field 5755)". Please convert manually.


        //Unsupported feature: Change Editable on "Shipped(Field 5755)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Last Shipment Date"(Field 5756)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Promised Delivery Date"(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 5794)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Late Order Shipping"(Field 5795)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Late Order Shipping"(Field 5795)". Please convert manually.


        //Unsupported feature: Change Editable on ""Late Order Shipping"(Field 5795)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Return Receipt No."(Field 5803)". Please convert manually.


        //Unsupported feature: Change Editable on ""Get Shipment Used"(Field 7200)". Please convert manually.


        //Unsupported feature: CodeModification on ""Sell-to Customer No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckCreditLimitIfLineNotInsertedYet;
        IF "No." = '' THEN
          InitRecord;
        TestStatusOpen;
        IF ("Sell-to Customer No." <> xRec."Sell-to Customer No.") AND
           (xRec."Sell-to Customer No." <> '')
        THEN BEGIN
          IF ("Opportunity No." <> '') AND ("Document Type" IN ["Document Type"::Quote,"Document Type"::Order]) THEN
            ERROR(
              Text062,
              FIELDCAPTION("Sell-to Customer No."),
              FIELDCAPTION("Opportunity No."),
              "Opportunity No.",
              "Document Type");
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(ConfirmChangeQst,FALSE,SellToCustomerTxt);
          IF Confirmed THEN BEGIN
            SalesLine.SETRANGE("Document Type","Document Type");
            SalesLine.SETRANGE("Document No.","No.");
            IF "Sell-to Customer No." = '' THEN BEGIN
              IF SalesLine.FINDFIRST THEN
                ERROR(
                  Text005,
                  FIELDCAPTION("Sell-to Customer No."));
              INIT;
              OnValidateSellToCustomerNoAfterInit(Rec,xRec);
              GetSalesSetup;
              "No. Series" := xRec."No. Series";
              InitRecord;
              InitNoSeries;
              EXIT;
            END;

            CheckShipmentInfo(SalesLine,FALSE);
            CheckPrepmtInfo(SalesLine);
            CheckReturnInfo(SalesLine,FALSE);

            SalesLine.RESET;
          END ELSE BEGIN
            Rec := xRec;
            EXIT;
          END;
        END;

        IF ("Document Type" = "Document Type"::Order) AND
           (xRec."Sell-to Customer No." <> "Sell-to Customer No.")
        THEN BEGIN
          SalesLine.SETRANGE("Document Type",SalesLine."Document Type"::Order);
          SalesLine.SETRANGE("Document No.","No.");
          SalesLine.SETFILTER("Purch. Order Line No.",'<>0');
          IF NOT SalesLine.ISEMPTY THEN
            ERROR(
              Text006,
              FIELDCAPTION("Sell-to Customer No."));
          SalesLine.RESET;
        END;

        GetCust("Sell-to Customer No.");
        Cust.CheckBlockedCustOnDocs(Cust,"Document Type",FALSE,FALSE);
        Cust.TESTFIELD("Gen. Bus. Posting Group");
        OnAfterCheckSellToCust(Rec,xRec,Cust);

        CopySellToCustomerAddressFieldsFromCustomer(Cust);

        IF "Sell-to Customer No." = xRec."Sell-to Customer No." THEN
          IF ShippedSalesLinesExist OR ReturnReceiptExist THEN BEGIN
            TESTFIELD("VAT Bus. Posting Group",xRec."VAT Bus. Posting Group");
            TESTFIELD("Gen. Bus. Posting Group",xRec."Gen. Bus. Posting Group");
          END;

        "Sell-to IC Partner Code" := Cust."IC Partner Code";
        "Send IC Document" := ("Sell-to IC Partner Code" <> '') AND ("IC Direction" = "IC Direction"::Outgoing);

        VALIDATE("Ship-to Code",Cust."Ship-to Code");
        IF Cust."Bill-to Customer No." <> '' THEN
          VALIDATE("Bill-to Customer No.",Cust."Bill-to Customer No.")
        ELSE BEGIN
          IF "Bill-to Customer No." = "Sell-to Customer No." THEN
            SkipBillToContact := TRUE;
          VALIDATE("Bill-to Customer No.","Sell-to Customer No.");
          SkipBillToContact := FALSE;
        END;

        GetShippingTime(FIELDNO("Sell-to Customer No."));

        IF (xRec."Sell-to Customer No." <> "Sell-to Customer No.") OR
           (xRec."Currency Code" <> "Currency Code") OR
           (xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group") OR
           (xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group")
        THEN
          RecreateSalesLines(SellToCustomerTxt);

        IF NOT SkipSellToContact THEN
          UpdateSellToCont("Sell-to Customer No.");

        IF "No." <> '' THEN
          StandardCodesMgt.CheckShowSalesRecurringLinesNotification(Rec);

        IF (xRec."Sell-to Customer No." <> '') AND (xRec."Sell-to Customer No." <> "Sell-to Customer No.") THEN
          RecallModifyAddressNotification(GetModifyCustomerAddressNotificationId);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          GetSalesSetup;
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
        #2..4
          if  "No." <> '' then
            "Posting Description" := Format("Document Type") + ' ' + "No."; // Added by Pranavi on 10-Mar-2016
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Customer No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        BilltoCustomerNoChanged := xRec."Bill-to Customer No." <> "Bill-to Customer No.";
        IF BilltoCustomerNoChanged THEN
          IF xRec."Bill-to Customer No." = '' THEN
            InitRecord
          ELSE BEGIN
            IF GetHideValidationDialog OR NOT GUIALLOWED THEN
              Confirmed := TRUE
            ELSE
              Confirmed := CONFIRM(ConfirmChangeQst,FALSE,BillToCustomerTxt);
            IF Confirmed THEN BEGIN
              SalesLine.SETRANGE("Document Type","Document Type");
              SalesLine.SETRANGE("Document No.","No.");

              CheckShipmentInfo(SalesLine,TRUE);
              CheckPrepmtInfo(SalesLine);
              CheckReturnInfo(SalesLine,TRUE);

              SalesLine.RESET;
            END ELSE
              "Bill-to Customer No." := xRec."Bill-to Customer No.";
          END;

        GetCust("Bill-to Customer No.");
        Cust.CheckBlockedCustOnDocs(Cust,"Document Type",FALSE,FALSE);
        Cust.TESTFIELD("Customer Posting Group");
        PostingSetupMgt.CheckCustPostingGroupReceivablesAccount("Customer Posting Group");
        CheckCreditLimit;
        OnAfterCheckBillToCust(Rec,xRec,Cust);

        CopyBillToCustomerAddressFieldsFromCustomer(Cust);

        IF NOT BilltoCustomerNoChanged THEN
          IF ShippedSalesLinesExist THEN BEGIN
            TESTFIELD("Customer Disc. Group",xRec."Customer Disc. Group");
            TESTFIELD("Currency Code",xRec."Currency Code");
          END;

        CreateDim(
          DATABASE::Customer,"Bill-to Customer No.",
          DATABASE::"Salesperson/Purchaser","Salesperson Code",
          DATABASE::Campaign,"Campaign No.",
          DATABASE::"Responsibility Center","Responsibility Center",
          DATABASE::"Customer Template","Bill-to Customer Template Code");

        VALIDATE("Payment Terms Code");
        VALIDATE("Prepmt. Payment Terms Code");
        VALIDATE("Payment Method Code");
        VALIDATE("Currency Code");
        VALIDATE("Prepayment %");

        IF (xRec."Sell-to Customer No." = "Sell-to Customer No.") AND
           (xRec."Bill-to Customer No." <> "Bill-to Customer No.")
        THEN BEGIN
          RecreateSalesLines(BillToCustomerTxt);
          BilltoCustomerNoChanged := FALSE;
        END;
        IF NOT SkipBillToContact THEN
          UpdateBillToCont("Bill-to Customer No.");

        "Bill-to IC Partner Code" := Cust."IC Partner Code";
        "Send IC Document" := ("Bill-to IC Partner Code" <> '') AND ("IC Direction" = "IC Direction"::Outgoing);

        IF (xRec."Bill-to Customer No." <> '') AND (xRec."Bill-to Customer No." <> "Bill-to Customer No.") THEN
          RecallModifyAddressNotification(GetModifyBillToCustomerAddressNotificationId);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        BilltoCustomerNoChanged := xRec."Bill-to Customer No." <> "Bill-to Customer No.";
        if BilltoCustomerNoChanged then
          if xRec."Bill-to Customer No." = '' then
            InitRecord
          else begin
            if GetHideValidationDialog or not GuiAllowed then
              Confirmed := true
            else
              Confirmed := Confirm(ConfirmChangeQst,false,BillToCustomerTxt);
            if Confirmed then begin
              SalesLine.SetRange("Document Type","Document Type");
              SalesLine.SetRange("Document No.","No.");

              CheckShipmentInfo(SalesLine,true);
              CheckPrepmtInfo(SalesLine);
              CheckReturnInfo(SalesLine,true);

              SalesLine.Reset;
            end else
              "Bill-to Customer No." := xRec."Bill-to Customer No.";
          end;

        GetCust("Bill-to Customer No.");
        Cust.CheckBlockedCustOnDocs(Cust,"Document Type",false,false);
        if CopyStr("No.",15,1)<>'L' then
        Cust.TestField("Customer Posting Group");
        #27..32
        if not BilltoCustomerNoChanged then
          if ShippedSalesLinesExist then begin
            TestField("Customer Disc. Group",xRec."Customer Disc. Group");
            TestField("Currency Code",xRec."Currency Code");
          end;
        #38..45
        //VALIDATE("Payment Terms Code");
        Validate("Prepmt. Payment Terms Code");
        Validate("Payment Method Code");
        Validate("Currency Code");
        Validate("Prepayment %");

        {
        //MESSAGE(xRec."Sell-to Customer No."+'-'+"Sell-to Customer No.");
        //MESSAGE(xRec."Bill-to Customer No."+'-'+"Bill-to Customer No.");
        MESSAGE(xRec."No.");
        #52..57
           }
        if not SkipBillToContact then
        #59..61
        "Send IC Document" := ("Bill-to IC Partner Code" <> '') and ("IC Direction" = "IC Direction"::Outgoing);

        if (xRec."Bill-to Customer No." <> '') and (xRec."Bill-to Customer No." <> "Bill-to Customer No.") then
          RecallModifyAddressNotification(GetModifyBillToCustomerAddressNotificationId);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Name"(Field 5).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bill-to Customer No." <> '' THEN
          Customer.GET("Bill-to Customer No.");

        IF Customer.LookupCustomer(Customer) THEN BEGIN
          "Bill-to Name" := Customer.Name;
          VALIDATE("Bill-to Customer No.",Customer."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bill-to Customer No." <> '' then
          Customer.Get("Bill-to Customer No.");

        if Customer.LookupCustomer(Customer) then begin
          "Bill-to Name" := Customer.Name;
          Validate("Bill-to Customer No.",Customer."No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Name"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ShouldLookForCustomerByName("Bill-to Customer No.") THEN
          VALIDATE("Bill-to Customer No.",Customer.GetCustNo("Bill-to Name"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ShouldLookForCustomerByName("Bill-to Customer No.") then
          Validate("Bill-to Customer No.",Customer.GetCustNo("Bill-to Name"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to City"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        ModifyBillToCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        ModifyBillToCustomerAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Contact"(Field 10).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Contact.FILTERGROUP(2);
        LookupContact("Bill-to Customer No.","Bill-to Contact No.",Contact);
        IF PAGE.RUNMODAL(0,Contact) = ACTION::LookupOK THEN
          VALIDATE("Bill-to Contact No.",Contact."No.");
        Contact.FILTERGROUP(0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Contact.FilterGroup(2);
        LookupContact("Bill-to Customer No.","Bill-to Contact No.",Contact);
        if PAGE.RunModal(0,Contact) = ACTION::LookupOK then
          Validate("Bill-to Contact No.",Contact."No.");
        Contact.FilterGroup(0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Ship-to Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Document Type" = "Document Type"::Order) AND
           (xRec."Ship-to Code" <> "Ship-to Code")
        THEN BEGIN
          SalesLine.SETRANGE("Document Type",SalesLine."Document Type"::Order);
          SalesLine.SETRANGE("Document No.","No.");
          SalesLine.SETFILTER("Purch. Order Line No.",'<>0');
          IF NOT SalesLine.ISEMPTY THEN
            ERROR(
              Text006,
              FIELDCAPTION("Ship-to Code"));
          SalesLine.RESET;
        END;

        IF NOT IsCreditDocType THEN
          IF "Ship-to Code" <> '' THEN BEGIN
            IF xRec."Ship-to Code" <> '' THEN
              BEGIN
              GetCust("Sell-to Customer No.");
              IF Cust."Location Code" <> '' THEN
                VALIDATE("Location Code",Cust."Location Code");
              "Tax Area Code" := Cust."Tax Area Code";
            END;
            ShipToAddr.GET("Sell-to Customer No.","Ship-to Code");
            CopyShipToCustomerAddressFieldsFromShipToAddr(ShipToAddr);
          END ELSE
            IF "Sell-to Customer No." <> '' THEN BEGIN
              GetCust("Sell-to Customer No.");
              CopyShipToCustomerAddressFieldsFromCustomer(Cust);
            END;

        GetShippingTime(FIELDNO("Ship-to Code"));

        IF (xRec."Sell-to Customer No." = "Sell-to Customer No.") AND
           (xRec."Ship-to Code" <> "Ship-to Code")
        THEN
          IF (xRec."VAT Country/Region Code" <> "VAT Country/Region Code") OR
             (xRec."Tax Area Code" <> "Tax Area Code")
          THEN
            RecreateSalesLines(FIELDCAPTION("Ship-to Code"))
          ELSE BEGIN
            IF xRec."Shipping Agent Code" <> "Shipping Agent Code" THEN
              MessageIfSalesLinesExist(FIELDCAPTION("Shipping Agent Code"));
            IF xRec."Shipping Agent Service Code" <> "Shipping Agent Service Code" THEN
              MessageIfSalesLinesExist(FIELDCAPTION("Shipping Agent Service Code"));
            IF xRec."Tax Liable" <> "Tax Liable" THEN
              VALIDATE("Tax Liable");
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
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


        //Unsupported feature: CodeModification on ""Order Date"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Document Type" IN ["Document Type"::Quote,"Document Type"::Order]) AND
           NOT ("Order Date" = xRec."Order Date")
        THEN
          PriceMessageIfSalesLinesExist(FIELDCAPTION("Order Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Document Type" in ["Document Type"::Quote,"Document Type"::Order]) and
           not ("Order Date" = xRec."Order Date")
        then
          PriceMessageIfSalesLinesExist(FieldCaption("Order Date"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting Date"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Posting Date");
        TestNoSeriesDate(
          "Posting No.","Posting No. Series",
          FIELDCAPTION("Posting No."),FIELDCAPTION("Posting No. Series"));
        TestNoSeriesDate(
          "Prepayment No.","Prepayment No. Series",
          FIELDCAPTION("Prepayment No."),FIELDCAPTION("Prepayment No. Series"));
        TestNoSeriesDate(
          "Prepmt. Cr. Memo No.","Prepmt. Cr. Memo No. Series",
          FIELDCAPTION("Prepmt. Cr. Memo No."),FIELDCAPTION("Prepmt. Cr. Memo No. Series"));

        IsHandled := FALSE;
        OnValidatePostingDateOnBeforeAssignDocumentDate(Rec,IsHandled);
        IF NOT IsHandled THEN
          IF "Incoming Document Entry No." = 0 THEN
            VALIDATE("Document Date","Posting Date");

        IF ("Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"]) AND
           NOT ("Posting Date" = xRec."Posting Date")
        THEN
          PriceMessageIfSalesLinesExist(FIELDCAPTION("Posting Date"));

        IF "Currency Code" <> '' THEN BEGIN
          UpdateCurrencyFactor;
          IF ("Currency Factor" <> xRec."Currency Factor") AND NOT CalledFromWhseDoc THEN
            ConfirmUpdateCurrencyFactor;
        END;

        IF "Posting Date" <> xRec."Posting Date" THEN
          IF DeferralHeadersExist THEN
            ConfirmUpdateDeferralDate;
        SynchronizeAsmHeader;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Posting Date");
        TestNoSeriesDate(
          "Posting No.","Posting No. Series",
          FieldCaption("Posting No."),FieldCaption("Posting No. Series"));
        TestNoSeriesDate(
          "Prepayment No.","Prepayment No. Series",
          FieldCaption("Prepayment No."),FieldCaption("Prepayment No. Series"));
        TestNoSeriesDate(
          "Prepmt. Cr. Memo No.","Prepmt. Cr. Memo No. Series",
          FieldCaption("Prepmt. Cr. Memo No."),FieldCaption("Prepmt. Cr. Memo No. Series"));

        IsHandled := false;
        OnValidatePostingDateOnBeforeAssignDocumentDate(Rec,IsHandled);
        if not IsHandled then
          if "Incoming Document Entry No." = 0 then
            Validate("Document Date","Posting Date");

        if ("Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"]) and
           not ("Posting Date" = xRec."Posting Date")
        then
          PriceMessageIfSalesLinesExist(FieldCaption("Posting Date"));

        if "Currency Code" <> '' then begin
          UpdateCurrencyFactor;
          if ("Currency Factor" <> xRec."Currency Factor") and not CalledFromWhseDoc then
            ConfirmUpdateCurrencyFactor;
        end;

        if "Posting Date" <> xRec."Posting Date" then
          if DeferralHeadersExist then
            ConfirmUpdateDeferralDate;
        SynchronizeAsmHeader;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipment Date"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FIELDNO("Shipment Date"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FieldNo("Shipment Date"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Payment Terms Code"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Payment Terms Code" <> '') AND ("Document Date" <> 0D) THEN BEGIN
          PaymentTerms.GET("Payment Terms Code");
          IF IsCreditDocType AND NOT PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" THEN BEGIN
            IsHandled := FALSE;
            OnValidatePaymentTermsCodeOnBeforeValidateDueDate(Rec,xRec,CurrFieldNo,IsHandled);
            IF NOT IsHandled THEN
              VALIDATE("Due Date","Document Date");
            VALIDATE("Pmt. Discount Date",0D);
            VALIDATE("Payment Discount %",0);
          END ELSE BEGIN
            IsHandled := FALSE;
            OnValidatePaymentTermsCodeOnBeforeCalcDueDate(Rec,xRec,FIELDNO("Payment Terms Code"),CurrFieldNo,IsHandled);
            IF NOT IsHandled THEN
              "Due Date" := CALCDATE(PaymentTerms."Due Date Calculation","Document Date");
            IsHandled := FALSE;
            OnValidatePaymentTermsCodeOnBeforeCalcPmtDiscDate(Rec,xRec,FIELDNO("Payment Terms Code"),CurrFieldNo,IsHandled);
            IF NOT IsHandled THEN
              "Pmt. Discount Date" := CALCDATE(PaymentTerms."Discount Date Calculation","Document Date");
            IF NOT UpdateDocumentDate THEN
              VALIDATE("Payment Discount %",PaymentTerms."Discount %")
          END;
        END ELSE BEGIN
          IsHandled := FALSE;
          OnValidatePaymentTermsCodeOnBeforeValidateDueDateWhenBlank(Rec,xRec,CurrFieldNo,IsHandled);
          IF NOT IsHandled THEN
            VALIDATE("Due Date","Document Date");
          IF NOT UpdateDocumentDate THEN BEGIN
            VALIDATE("Pmt. Discount Date",0D);
            VALIDATE("Payment Discount %",0);
          END;
        END;
        IF xRec."Payment Terms Code" = "Prepmt. Payment Terms Code" THEN BEGIN
          IF xRec."Prepayment Due Date" = 0D THEN
            "Prepayment Due Date" := CALCDATE(PaymentTerms."Due Date Calculation","Document Date");
          VALIDATE("Prepmt. Payment Terms Code","Payment Terms Code");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Payment Terms Code" <> '') and ("Document Date" <> 0D) then begin
          PaymentTerms.Get("Payment Terms Code");
          if IsCreditDocType and not PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" then begin
            IsHandled := false;
            OnValidatePaymentTermsCodeOnBeforeValidateDueDate(Rec,xRec,CurrFieldNo,IsHandled);
            if not IsHandled then
              Validate("Due Date","Document Date");
            Validate("Pmt. Discount Date",0D);
            Validate("Payment Discount %",0);
          end else begin
            IsHandled := false;
            OnValidatePaymentTermsCodeOnBeforeCalcDueDate(Rec,xRec,FieldNo("Payment Terms Code"),CurrFieldNo,IsHandled);
            if not IsHandled then
              "Due Date" := CalcDate(PaymentTerms."Due Date Calculation","Document Date");
            IsHandled := false;
            OnValidatePaymentTermsCodeOnBeforeCalcPmtDiscDate(Rec,xRec,FieldNo("Payment Terms Code"),CurrFieldNo,IsHandled);
            if not IsHandled then
              "Pmt. Discount Date" := CalcDate(PaymentTerms."Discount Date Calculation","Document Date");
            if not UpdateDocumentDate then
              Validate("Payment Discount %",PaymentTerms."Discount %")
          end;
        end else begin
          IsHandled := false;
          OnValidatePaymentTermsCodeOnBeforeValidateDueDateWhenBlank(Rec,xRec,CurrFieldNo,IsHandled);
          if not IsHandled then
            Validate("Due Date","Document Date");
          if not UpdateDocumentDate then begin
            Validate("Pmt. Discount Date",0D);
            Validate("Payment Discount %",0);
          end;
        end;
        if xRec."Payment Terms Code" = "Prepmt. Payment Terms Code" then begin
          if (xRec."Prepayment Due Date" = 0D) and  ("Document Date" <> 0D) then //B2B
            "Prepayment Due Date" := CalcDate(PaymentTerms."Due Date Calculation","Document Date");
          Validate("Prepmt. Payment Terms Code","Payment Terms Code");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Payment Discount %"(Field 25).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT (CurrFieldNo IN [0,FIELDNO("Posting Date"),FIELDNO("Document Date")]) THEN
          TestStatusOpen;
        GLSetup.GET;
        IF "Payment Discount %" < GLSetup."VAT Tolerance %" THEN
          "VAT Base Discount %" := "Payment Discount %"
        ELSE
          "VAT Base Discount %" := GLSetup."VAT Tolerance %";
        VALIDATE("VAT Base Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not (CurrFieldNo in [0,FieldNo("Posting Date"),FieldNo("Document Date")]) then
          TestStatusOpen;
        GLSetup.Get;
        if "Payment Discount %" < GLSetup."VAT Tolerance %" then
          "VAT Base Discount %" := "Payment Discount %"
        else
          "VAT Base Discount %" := GLSetup."VAT Tolerance %";
        Validate("VAT Base Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Location Code" <> xRec."Location Code") AND
           (xRec."Sell-to Customer No." = "Sell-to Customer No.")
        THEN
          MessageIfSalesLinesExist(FIELDCAPTION("Location Code"));

        UpdateShipToAddress;
        UpdateOutboundWhseHandlingTime;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Location Code" <> xRec."Location Code") and
           (xRec."Sell-to Customer No." = "Sell-to Customer No.")
        then
          MessageIfSalesLinesExist(FieldCaption("Location Code"));
        #6..8
        */
        //end;


        //Unsupported feature: CodeModification on ""Currency Code"(Field 32).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT (CurrFieldNo IN [0,FIELDNO("Posting Date")]) OR ("Currency Code" <> xRec."Currency Code") THEN
          TestStatusOpen;
        IF (CurrFieldNo <> FIELDNO("Currency Code")) AND ("Currency Code" = xRec."Currency Code") THEN
          UpdateCurrencyFactor
        ELSE
          IF "Currency Code" <> xRec."Currency Code" THEN
            UpdateCurrencyFactor
          ELSE
            IF "Currency Code" <> '' THEN BEGIN
              UpdateCurrencyFactor;
              IF "Currency Factor" <> xRec."Currency Factor" THEN
                ConfirmUpdateCurrencyFactor;
            END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not (CurrFieldNo in [0,FieldNo("Posting Date")]) or ("Currency Code" <> xRec."Currency Code") then
          TestStatusOpen;
        if (CurrFieldNo <> FieldNo("Currency Code")) and ("Currency Code" = xRec."Currency Code") then
          UpdateCurrencyFactor
        else
          if "Currency Code" <> xRec."Currency Code" then
            UpdateCurrencyFactor
          else
            if "Currency Code" <> '' then begin
              UpdateCurrencyFactor;
              if "Currency Factor" <> xRec."Currency Factor" then
                ConfirmUpdateCurrencyFactor;
            end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Currency Factor"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Currency Factor" <> xRec."Currency Factor" THEN
          UpdateSalesLinesByFieldNo(FIELDNO("Currency Factor"),FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Currency Factor" <> xRec."Currency Factor" then
          UpdateSalesLinesByFieldNo(FieldNo("Currency Factor"),false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Customer Price Group"(Field 34).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        MessageIfSalesLinesExist(FIELDCAPTION("Customer Price Group"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        MessageIfSalesLinesExist(FieldCaption("Customer Price Group"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Prices Including VAT"(Field 35).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IF "Prices Including VAT" <> xRec."Prices Including VAT" THEN BEGIN
          SalesLine.SETRANGE("Document Type","Document Type");
          SalesLine.SETRANGE("Document No.","No.");
          SalesLine.SETFILTER("Job Contract Entry No.",'<>%1',0);
          IF SalesLine.FIND('-') THEN BEGIN
            SalesLine.TESTFIELD("Job No.",'');
            SalesLine.TESTFIELD("Job Contract Entry No.",0);
          END;

          SalesLine.RESET;
          SalesLine.SETRANGE("Document Type","Document Type");
          SalesLine.SETRANGE("Document No.","No.");
          SalesLine.SETFILTER("Unit Price",'<>%1',0);
          SalesLine.SETFILTER("VAT %",'<>%1',0);
          IF SalesLine.FINDFIRST THEN BEGIN
            IF GetHideValidationDialog OR NOT GUIALLOWED THEN
              RecalculatePrice := TRUE
            ELSE
              RecalculatePrice :=
                ConfirmManagement.ConfirmProcess(
                  STRSUBSTNO(
                    Text024,
                    FIELDCAPTION("Prices Including VAT"),SalesLine.FIELDCAPTION("Unit Price")),
                  TRUE);
            OnAfterConfirmSalesPrice(Rec,SalesLine,RecalculatePrice);
            SalesLine.SetSalesHeader(Rec);

            Currency.Initialize("Currency Code");
            SalesLine.LOCKTABLE;
            LOCKTABLE;
            SalesLine.FINDSET;
            REPEAT
              SalesLine.TESTFIELD("Quantity Invoiced",0);
              SalesLine.TESTFIELD("Prepmt. Amt. Inv.",0);
              IF NOT RecalculatePrice THEN BEGIN
                SalesLine."VAT Difference" := 0;
                SalesLine.UpdateAmounts;
              END ELSE BEGIN
                VatFactor := 1 + SalesLine."VAT %" / 100;
                IF VatFactor = 0 THEN
                  VatFactor := 1;
                IF NOT "Prices Including VAT" THEN
                  VatFactor := 1 / VatFactor;
                IF SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT" THEN
                  VatFactor := 1;
                SalesLine."Unit Price" :=
                  ROUND(SalesLine."Unit Price" * VatFactor,Currency."Unit-Amount Rounding Precision");
                SalesLine."Line Discount Amount" :=
                  ROUND(
                    SalesLine.Quantity * SalesLine."Unit Price" * SalesLine."Line Discount %" / 100,
                    Currency."Amount Rounding Precision");
                LineInvDiscAmt := InvDiscRounding + SalesLine."Inv. Discount Amount" * VatFactor;
                SalesLine."Inv. Discount Amount" := ROUND(LineInvDiscAmt,Currency."Amount Rounding Precision");
                InvDiscRounding := LineInvDiscAmt - SalesLine."Inv. Discount Amount";
                IF SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT" THEN
                  SalesLine."Line Amount" := SalesLine."Amount Including VAT"
                ELSE
                  IF "Prices Including VAT" THEN
                    SalesLine."Line Amount" := SalesLine."Amount Including VAT" + SalesLine."Inv. Discount Amount"
                  ELSE
                    SalesLine."Line Amount" := SalesLine.Amount + SalesLine."Inv. Discount Amount";
                UpdatePrepmtAmounts(SalesLine);
              END;
              OnValidatePricesIncludingVATOnBeforeSalesLineModify(Rec,SalesLine,Currency,RecalculatePrice);
              SalesLine.MODIFY;
            UNTIL SalesLine.NEXT = 0;
          END;
          OnAfterChangePricesIncludingVAT(Rec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        if "Prices Including VAT" <> xRec."Prices Including VAT" then begin
          SalesLine.SetRange("Document Type","Document Type");
          SalesLine.SetRange("Document No.","No.");
          SalesLine.SetFilter("Job Contract Entry No.",'<>%1',0);
          if SalesLine.Find('-') then begin
            SalesLine.TestField("Job No.",'');
            SalesLine.TestField("Job Contract Entry No.",0);
          end;

          SalesLine.Reset;
          SalesLine.SetRange("Document Type","Document Type");
          SalesLine.SetRange("Document No.","No.");
          SalesLine.SetFilter("Unit Price",'<>%1',0);
          SalesLine.SetFilter("VAT %",'<>%1',0);
          if SalesLine.FindFirst then begin
            if GetHideValidationDialog or not GuiAllowed then
              RecalculatePrice := true
            else
              RecalculatePrice :=
                ConfirmManagement.ConfirmProcess(
                  StrSubstNo(
                    Text024,
                    FieldCaption("Prices Including VAT"),SalesLine.FieldCaption("Unit Price")),
                  true);
        #27..30
            SalesLine.LockTable;
            LockTable;
            SalesLine.FindSet;
            repeat
              SalesLine.TestField("Quantity Invoiced",0);
              SalesLine.TestField("Prepmt. Amt. Inv.",0);
              if not RecalculatePrice then begin
                SalesLine."VAT Difference" := 0;
                SalesLine.UpdateAmounts;
              end else begin
                VatFactor := 1 + SalesLine."VAT %" / 100;
                if VatFactor = 0 then
                  VatFactor := 1;
                if not "Prices Including VAT" then
                  VatFactor := 1 / VatFactor;
                if SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT" then
                  VatFactor := 1;
                SalesLine."Unit Price" :=
                  Round(SalesLine."Unit Price" * VatFactor,Currency."Unit-Amount Rounding Precision");
                SalesLine."Line Discount Amount" :=
                  Round(
        #52..54
                SalesLine."Inv. Discount Amount" := Round(LineInvDiscAmt,Currency."Amount Rounding Precision");
                InvDiscRounding := LineInvDiscAmt - SalesLine."Inv. Discount Amount";
                if SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT" then
                  SalesLine."Line Amount" := SalesLine."Amount Including VAT"
                else
                  if "Prices Including VAT" then
                    SalesLine."Line Amount" := SalesLine."Amount Including VAT" + SalesLine."Inv. Discount Amount"
                  else
                    SalesLine."Line Amount" := SalesLine.Amount + SalesLine."Inv. Discount Amount";
                UpdatePrepmtAmounts(SalesLine);
              end;
              OnValidatePricesIncludingVATOnBeforeSalesLineModify(Rec,SalesLine,Currency,RecalculatePrice);
              SalesLine.Modify;
            until SalesLine.Next = 0;
          end;
          OnAfterChangePricesIncludingVAT(Rec);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Invoice Disc. Code"(Field 37).OnValidate". Please convert manually.

        //trigger  Code"(Field 37)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FIELDCAPTION("Invoice Disc. Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FieldCaption("Invoice Disc. Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Customer Disc. Group"(Field 40).OnValidate". Please convert manually.

        //trigger  Group"(Field 40)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FIELDCAPTION("Customer Disc. Group"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FieldCaption("Customer Disc. Group"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Language Code"(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        MessageIfSalesLinesExist(FIELDCAPTION("Language Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        MessageIfSalesLinesExist(FieldCaption("Language Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Salesperson Code"(Field 43).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateSalesPersonOnSalesHeader(Rec,FALSE,FALSE);

        ApprovalEntry.SETRANGE("Table ID",DATABASE::"Sales Header");
        ApprovalEntry.SETRANGE("Document Type","Document Type");
        ApprovalEntry.SETRANGE("Document No.","No.");
        ApprovalEntry.SETFILTER(Status,'%1|%2',ApprovalEntry.Status::Created,ApprovalEntry.Status::Open);
        IF NOT ApprovalEntry.ISEMPTY THEN
          ERROR(Text053,FIELDCAPTION("Salesperson Code"));

        CreateDim(
          DATABASE::"Salesperson/Purchaser","Salesperson Code",
          DATABASE::Customer,"Bill-to Customer No.",
          DATABASE::Campaign,"Campaign No.",
          DATABASE::"Responsibility Center","Responsibility Center",
          DATABASE::"Customer Template","Bill-to Customer Template Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {
        //Added by Pranavi on 30-07-2015 for Selecting CS Manager
        IF "Document Type" = "Document Type"::Amc THEN
        BEGIN
          SalesPersonOrPurchsr.RESET;
          SalesPersonOrPurchsr.SETFILTER(SalesPersonOrPurchsr.Code,"Salesperson Code");
          IF SalesPersonOrPurchsr.FINDFIRST THEN
          BEGIN
            IF FORMAT(SalesPersonOrPurchsr."Salesperson/Purchaser")<>'CS' THEN
            BEGIN
              ERROR('Please select CS Manager Only for AMC Order!');
            END;
          END;
        END;
        //End by Pranavi
        }
        ValidateSalesPersonOnSalesHeader(Rec,false,false);

        ApprovalEntry.SetRange("Table ID",DATABASE::"Sales Header");
        ApprovalEntry.SetRange("Document Type","Document Type");
        ApprovalEntry.SetRange("Document No.","No.");
        ApprovalEntry.SetFilter(Status,'%1|%2',ApprovalEntry.Status::Created,ApprovalEntry.Status::Open);
        if not ApprovalEntry.IsEmpty then
          Error(Text053,FieldCaption("Salesperson Code"));
        #9..15
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 53).OnLookup". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Bal. Account No.",'');
        CustLedgEntry.SetApplyToFilters("Bill-to Customer No.","Applies-to Doc. Type","Applies-to Doc. No.",Amount);
        OnAfterSetApplyToFilters(CustLedgEntry,Rec);

        ApplyCustEntries.SetSales(Rec,CustLedgEntry,SalesHeader.FIELDNO("Applies-to Doc. No."));
        ApplyCustEntries.SETTABLEVIEW(CustLedgEntry);
        ApplyCustEntries.SETRECORD(CustLedgEntry);
        ApplyCustEntries.LOOKUPMODE(TRUE);
        IF ApplyCustEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
          ApplyCustEntries.GetCustLedgEntry(CustLedgEntry);
          GenJnlApply.CheckAgainstApplnCurrency(
            "Currency Code",CustLedgEntry."Currency Code",GenJnlLine."Account Type"::Customer,TRUE);
          "Applies-to Doc. Type" := CustLedgEntry."Document Type";
          "Applies-to Doc. No." := CustLedgEntry."Document No.";
          OnAfterAppliesToDocNoOnLookup(Rec,CustLedgEntry);
        END;
        CLEAR(ApplyCustEntries);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Bal. Account No.",'');
        #2..4
        ApplyCustEntries.SetSales(Rec,CustLedgEntry,SalesHeader.FieldNo("Applies-to Doc. No."));
        ApplyCustEntries.SetTableView(CustLedgEntry);
        ApplyCustEntries.SetRecord(CustLedgEntry);
        ApplyCustEntries.LookupMode(true);
        if ApplyCustEntries.RunModal = ACTION::LookupOK then begin
          ApplyCustEntries.GetCustLedgEntry(CustLedgEntry);
          GenJnlApply.CheckAgainstApplnCurrency(
            "Currency Code",CustLedgEntry."Currency Code",GenJnlLine."Account Type"::Customer,true);
        #13..15
        end;
        Clear(ApplyCustEntries);
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 53).OnValidate". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Applies-to Doc. No." <> '' THEN
          TESTFIELD("Bal. Account No.",'');

        IF ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") AND (xRec."Applies-to Doc. No." <> '') AND
           ("Applies-to Doc. No." <> '')
        THEN BEGIN
          CustLedgEntry.SetAmountToApply("Applies-to Doc. No.","Bill-to Customer No.");
          CustLedgEntry.SetAmountToApply(xRec."Applies-to Doc. No.","Bill-to Customer No.");
        END ELSE
          IF ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") AND (xRec."Applies-to Doc. No." = '') THEN
            CustLedgEntry.SetAmountToApply("Applies-to Doc. No.","Bill-to Customer No.")
          ELSE
            IF ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") AND ("Applies-to Doc. No." = '') THEN
              CustLedgEntry.SetAmountToApply(xRec."Applies-to Doc. No.","Bill-to Customer No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Applies-to Doc. No." <> '' then
          TestField("Bal. Account No.",'');

        if ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") and (xRec."Applies-to Doc. No." <> '') and
           ("Applies-to Doc. No." <> '')
        then begin
          CustLedgEntry.SetAmountToApply("Applies-to Doc. No.","Bill-to Customer No.");
          CustLedgEntry.SetAmountToApply(xRec."Applies-to Doc. No.","Bill-to Customer No.");
        end else
          if ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") and (xRec."Applies-to Doc. No." = '') then
            CustLedgEntry.SetAmountToApply("Applies-to Doc. No.","Bill-to Customer No.")
          else
            if ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") and ("Applies-to Doc. No." = '') then
              CustLedgEntry.SetAmountToApply(xRec."Applies-to Doc. No.","Bill-to Customer No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Bal. Account No."(Field 55).OnValidate". Please convert manually.

        //trigger  Account No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bal. Account No." <> '' THEN
          CASE "Bal. Account Type" OF
            "Bal. Account Type"::"G/L Account":
              BEGIN
                GLAcc.GET("Bal. Account No.");
                GLAcc.CheckGLAcc;
                GLAcc.TESTFIELD("Direct Posting",TRUE);
              END;
            "Bal. Account Type"::"Bank Account":
              BEGIN
                BankAcc.GET("Bal. Account No.");
                BankAcc.TESTFIELD(Blocked,FALSE);
                BankAcc.TESTFIELD("Currency Code","Currency Code");
              END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bal. Account No." <> '' then
          case "Bal. Account Type" of
            "Bal. Account Type"::"G/L Account":
              begin
                GLAcc.Get("Bal. Account No.");
                GLAcc.CheckGLAcc;
                GLAcc.TestField("Direct Posting",true);
              end;
            "Bal. Account Type"::"Bank Account":
              begin
                BankAcc.Get("Bal. Account No.");
                BankAcc.TestField(Blocked,false);
                BankAcc.TestField("Currency Code","Currency Code");
              end;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Registration No."(Field 70).OnValidate". Please convert manually.

        //trigger "(Field 70)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "VAT Registration No." := UPPERCASE("VAT Registration No.");
        IF "VAT Registration No." = xRec."VAT Registration No." THEN
          EXIT;

        GLSetup.GetRecordOnce;
        CASE GLSetup."Bill-to/Sell-to VAT Calc." OF
          GLSetup."Bill-to/Sell-to VAT Calc."::"Bill-to/Pay-to No.":
            IF NOT Customer.GET("Bill-to Customer No.") THEN
              EXIT;
          GLSetup."Bill-to/Sell-to VAT Calc."::"Sell-to/Buy-from No.":
            IF NOT Customer.GET("Sell-to Customer No.") THEN
              EXIT;
        END;

        IF "VAT Registration No." = Customer."VAT Registration No." THEN
          EXIT;

        IF NOT VATRegistrationNoFormat.Test("VAT Registration No.",Customer."Country/Region Code",Customer."No.",DATABASE::Customer) THEN
          EXIT;

        Customer."VAT Registration No." := "VAT Registration No.";
        ApplicableCountryCode := Customer."Country/Region Code";
        IF ApplicableCountryCode = '' THEN
          ApplicableCountryCode := VATRegistrationNoFormat."Country/Region Code";

        IF NOT VATRegNoSrvConfig.VATRegNoSrvIsEnabled THEN BEGIN
          Customer.MODIFY(TRUE);
          EXIT;
        END;

        VATRegistrationLogMgt.CheckVIESForVATNo(ResultRecRef,VATRegistrationLog,Customer,Customer."No.",
          ApplicableCountryCode,VATRegistrationLog."Account Type"::Customer);

        IF VATRegistrationLog.Status = VATRegistrationLog.Status::Valid THEN BEGIN
          MESSAGE(ValidVATNoMsg);
          Customer.MODIFY(TRUE);
        END ELSE
          MESSAGE(InvalidVatRegNoMsg);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 74).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN BEGIN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            "VAT Bus. Posting Group" := GenBusPostingGrp."Def. VAT Bus. Posting Group";
          RecreateSalesLines(FIELDCAPTION("Gen. Bus. Posting Group"));
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then begin
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            "VAT Bus. Posting Group" := GenBusPostingGrp."Def. VAT Bus. Posting Group";
          RecreateSalesLines(FieldCaption("Gen. Bus. Posting Group"));
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Transaction Type"(Field 76).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FIELDNO("Transaction Type"),FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FieldNo("Transaction Type"),false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transport Method"(Field 77).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FIELDNO("Transport Method"),FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FieldNo("Transport Method"),false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Customer Name"(Field 79).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sell-to Customer No." <> '' THEN
          Customer.GET("Sell-to Customer No.");

        IF Customer.LookupCustomer(Customer) THEN BEGIN
          "Sell-to Customer Name" := Customer.Name;
          VALIDATE("Sell-to Customer No.",Customer."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sell-to Customer No." <> '' then
          Customer.Get("Sell-to Customer No.");

        if Customer.LookupCustomer(Customer) then begin
          "Sell-to Customer Name" := Customer.Name;
          Validate("Sell-to Customer No.",Customer."No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Customer Name"(Field 79).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT IdentityManagement.IsInvAppId AND ShouldLookForCustomerByName("Sell-to Customer No.") THEN
          VALIDATE("Sell-to Customer No.",Customer.GetCustNo("Sell-to Customer Name"));
        GetShippingTime(FIELDNO("Sell-to Customer Name"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not IdentityManagement.IsInvAppId and ShouldLookForCustomerByName("Sell-to Customer No.") then
          Validate("Sell-to Customer No.",Customer.GetCustNo("Sell-to Customer Name"));
        GetShippingTime(FieldNo("Sell-to Customer Name"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Address"(Field 81).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FIELDNO("Ship-to Address"));
        ModifyCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FieldNo("Ship-to Address"));
        ModifyCustomerAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Address 2"(Field 82).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FIELDNO("Ship-to Address 2"));
        ModifyCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FieldNo("Ship-to Address 2"));
        ModifyCustomerAddress;
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
        UpdateShipToAddressFromSellToAddress(FIELDNO("Ship-to City"));
        ModifyCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Sell-to City","Sell-to Post Code","Sell-to County","Sell-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        UpdateShipToAddressFromSellToAddress(FieldNo("Ship-to City"));
        ModifyCustomerAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Contact"(Field 84).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Document Type" <> "Document Type"::Quote THEN
          IF "Sell-to Customer No." = '' THEN
            EXIT;

        Contact.FILTERGROUP(2);
        LookupContact("Sell-to Customer No.","Sell-to Contact No.",Contact);
        IF PAGE.RUNMODAL(0,Contact) = ACTION::LookupOK THEN
          VALIDATE("Sell-to Contact No.",Contact."No.");
        Contact.FILTERGROUP(0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Document Type" <> "Document Type"::Quote then
          if "Sell-to Customer No." = '' then
            exit;

        Contact.FilterGroup(2);
        LookupContact("Sell-to Customer No.","Sell-to Contact No.",Contact);
        if PAGE.RunModal(0,Contact) = ACTION::LookupOK then
          Validate("Sell-to Contact No.",Contact."No.");
        Contact.FilterGroup(0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Contact"(Field 84).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sell-to Contact" = '' THEN
          VALIDATE("Sell-to Contact No.",'');
        ModifyCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sell-to Contact" = '' then
          Validate("Sell-to Contact No.",'');
        ModifyCustomerAddress;
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
        ModifyBillToCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        ModifyBillToCustomerAddress;
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
        UpdateShipToAddressFromSellToAddress(FIELDNO("Ship-to Post Code"));
        ModifyCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Sell-to City","Sell-to Post Code","Sell-to County","Sell-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        UpdateShipToAddressFromSellToAddress(FieldNo("Ship-to Post Code"));
        ModifyCustomerAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to County"(Field 89).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FIELDNO("Ship-to County"));
        ModifyCustomerAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FieldNo("Ship-to County"));
        ModifyCustomerAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Country/Region Code"(Field 90).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FIELDNO("Ship-to Country/Region Code"));
        ModifyCustomerAddress;
        VALIDATE("Ship-to Country/Region Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateShipToAddressFromSellToAddress(FieldNo("Ship-to Country/Region Code"));
        ModifyCustomerAddress;
        Validate("Ship-to Country/Region Code");
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


        //Unsupported feature: CodeModification on ""Exit Point"(Field 97).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FIELDNO("Exit Point"),FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FieldNo("Exit Point"),false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Document Date"(Field 99).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Document Date" <> "Document Date" THEN
          UpdateDocumentDate := TRUE;
        VALIDATE("Payment Terms Code");
        VALIDATE("Prepmt. Payment Terms Code");

        IF UpdateDocumentDate AND ("Document Type" = "Document Type"::Quote) AND ("Document Date" <> 0D) THEN
          CalcQuoteValidUntilDate;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Document Date" <> "Document Date" then
          UpdateDocumentDate := true;
        Validate("Payment Terms Code");
        Validate("Prepmt. Payment Terms Code");

        if UpdateDocumentDate and ("Document Type" = "Document Type"::Quote) and ("Document Date" <> 0D) then
          CalcQuoteValidUntilDate;
        */
        //end;


        //Unsupported feature: CodeModification on ""External Document No."(Field 100).OnValidate". Please convert manually.

        //trigger "(Field 100)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."External Document No." <> "External Document No.") AND (Status = Status::Released) AND
           ("Document Type" IN ["Document Type"::Order,"Document Type"::"Return Order"])
        THEN
          WhseSalesRelease.UpdateExternalDocNoForReleasedOrder(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."External Document No." <> "External Document No.") and (Status = Status::Released) and
           ("Document Type" in ["Document Type"::Order,"Document Type"::"Return Order"])
        then
          WhseSalesRelease.UpdateExternalDocNoForReleasedOrder(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on "Area(Field 101).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FIELDNO(Area),FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FieldNo(Area),false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transaction Specification"(Field 102).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FIELDNO("Transaction Specification"),FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateSalesLinesByFieldNo(FieldNo("Transaction Specification"),false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Payment Method Code"(Field 104).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PaymentMethod.INIT;
        IF "Payment Method Code" <> '' THEN
          PaymentMethod.GET("Payment Method Code");
        IF PaymentMethod."Direct Debit" THEN BEGIN
          "Direct Debit Mandate ID" := SEPADirectDebitMandate.GetDefaultMandate("Bill-to Customer No.","Due Date");
          IF "Payment Terms Code" = '' THEN
            "Payment Terms Code" := PaymentMethod."Direct Debit Pmt. Terms Code";
        END ELSE
          "Direct Debit Mandate ID" := '';
        "Bal. Account Type" := PaymentMethod."Bal. Account Type";
        "Bal. Account No." := PaymentMethod."Bal. Account No.";
        IF "Bal. Account No." <> '' THEN BEGIN
          TESTFIELD("Applies-to Doc. No.",'');
          TESTFIELD("Applies-to ID",'');
          CLEAR("Payment Service Set ID");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PaymentMethod.Init;
        if "Payment Method Code" <> '' then
          PaymentMethod.Get("Payment Method Code");
        if PaymentMethod."Direct Debit" then begin
          "Direct Debit Mandate ID" := SEPADirectDebitMandate.GetDefaultMandate("Bill-to Customer No.","Due Date");
          if "Payment Terms Code" = '' then
            "Payment Terms Code" := PaymentMethod."Direct Debit Pmt. Terms Code";
        end else
        #9..11
        if "Bal. Account No." <> '' then begin
          TestField("Applies-to Doc. No.",'');
          TestField("Applies-to ID",'');
          Clear("Payment Service Set ID");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Code"(Field 105).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF xRec."Shipping Agent Code" = "Shipping Agent Code" THEN
          EXIT;

        "Shipping Agent Service Code" := '';
        GetShippingTime(FIELDNO("Shipping Agent Code"));

        OnValidateShippingAgentCodeOnBeforeUpdateLines(Rec,CurrFieldNo,HideValidationDialog);
        UpdateSalesLinesByFieldNo(FIELDNO("Shipping Agent Code"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if xRec."Shipping Agent Code" = "Shipping Agent Code" then
          exit;

        "Shipping Agent Service Code" := '';
        GetShippingTime(FieldNo("Shipping Agent Code"));

        OnValidateShippingAgentCodeOnBeforeUpdateLines(Rec,CurrFieldNo,HideValidationDialog);
        UpdateSalesLinesByFieldNo(FieldNo("Shipping Agent Code"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting No. Series"(Field 108).OnLookup". Please convert manually.

        //trigger  Series"(Field 108)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH SalesHeader DO BEGIN
          SalesHeader := Rec;
          GetSalesSetup;
          TestNoSeries;
          IF NoSeriesMgt.LookupSeries(GetPostingNoSeriesCode,"Posting No. Series") THEN
            VALIDATE("Posting No. Series");
          Rec := SalesHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with SalesHeader do begin
        #2..4
          if NoSeriesMgt.LookupSeries(GetPostingNoSeriesCode,"Posting No. Series") then
            Validate("Posting No. Series");
          Rec := SalesHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting No. Series"(Field 108).OnValidate". Please convert manually.

        //trigger  Series"(Field 108)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Posting No. Series" <> '' THEN BEGIN
          GetSalesSetup;
          TestNoSeries;
          NoSeriesMgt.TestSeries(GetPostingNoSeriesCode,"Posting No. Series");
        END;
        TESTFIELD("Posting No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Posting No. Series" <> '' then begin
        #2..4
        end;
        TestField("Posting No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping No. Series"(Field 109).OnLookup". Please convert manually.

        //trigger  Series"(Field 109)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH SalesHeader DO BEGIN
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Shipment Nos.");
          IF NoSeriesMgt.LookupSeries(SalesSetup."Posted Shipment Nos.","Shipping No. Series") THEN
            VALIDATE("Shipping No. Series");
          Rec := SalesHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with SalesHeader do begin
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TestField("Posted Shipment Nos.");
          if NoSeriesMgt.LookupSeries(SalesSetup."Posted Shipment Nos.","Shipping No. Series") then
            Validate("Shipping No. Series");
          Rec := SalesHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping No. Series"(Field 109).OnValidate". Please convert manually.

        //trigger  Series"(Field 109)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Shipping No. Series" <> '' THEN BEGIN
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Shipment Nos.");
          NoSeriesMgt.TestSeries(SalesSetup."Posted Shipment Nos.","Shipping No. Series");
        END;
        TESTFIELD("Shipping No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Shipping No. Series" <> '' then begin
          GetSalesSetup;
          SalesSetup.TestField("Posted Shipment Nos.");
          NoSeriesMgt.TestSeries(SalesSetup."Posted Shipment Nos.","Shipping No. Series");
        end;
        TestField("Shipping No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Tax Area Code"(Field 114).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        ValidateTaxAreaCode;
        MessageIfSalesLinesExist(FIELDCAPTION("Tax Area Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        ValidateTaxAreaCode;
        MessageIfSalesLinesExist(FieldCaption("Tax Area Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Tax Liable"(Field 115).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FIELDCAPTION("Tax Liable"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FieldCaption("Tax Liable"));
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Bus. Posting Group"(Field 116).OnValidate". Please convert manually.

        //trigger  Posting Group"(Field 116)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group" THEN
          RecreateSalesLines(FIELDCAPTION("VAT Bus. Posting Group"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group" then
          RecreateSalesLines(FieldCaption("VAT Bus. Posting Group"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to ID"(Field 118).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Applies-to ID" <> '' THEN
          TESTFIELD("Bal. Account No.",'');
        IF ("Applies-to ID" <> xRec."Applies-to ID") AND (xRec."Applies-to ID" <> '') THEN BEGIN
          CustLedgEntry.SETCURRENTKEY("Customer No.",Open);
          CustLedgEntry.SETRANGE("Customer No.","Bill-to Customer No.");
          CustLedgEntry.SETRANGE(Open,TRUE);
          CustLedgEntry.SETRANGE("Applies-to ID",xRec."Applies-to ID");
          IF CustLedgEntry.FINDFIRST THEN
            CustEntrySetApplID.SetApplId(CustLedgEntry,TempCustLedgEntry,'');
          CustLedgEntry.RESET;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //IF "Applies-to ID" <> '' THEN
        //  TESTFIELD("Bal. Account No.",'');
        //IF ("Applies-to ID" <> xRec."Applies-to ID") AND (xRec."Applies-to ID" <> '') THEN BEGIN
        //  CustLedgEntry.SETCURRENTKEY("Customer No.",Open);
        //  CustLedgEntry.SETRANGE("Customer No.","Bill-to Customer No.");
        //  CustLedgEntry.SETRANGE(Open,TRUE);
        //  CustLedgEntry.SETRANGE("Applies-to ID",xRec."Applies-to ID");
        //  IF CustLedgEntry.FINDFIRST THEN
        //    CustEntrySetApplID.SetApplId(CustLedgEntry,TempCustLedgEntry,'');
        //{>>>>>>>} ORIGINAL
        //  END;
        //{=======} MODIFIED
        //{=======} TARGET
        //END;
        //{<<<<<<<}
        //  CustLedgEntry.RESET;
        //END;
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Base Discount %"(Field 119).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT (CurrFieldNo IN [0,FIELDNO("Posting Date"),FIELDNO("Document Date")]) THEN
          TestStatusOpen;
        GLSetup.GET;
        IF "VAT Base Discount %" > GLSetup."VAT Tolerance %" THEN
          ERROR(
            Text007,
            FIELDCAPTION("VAT Base Discount %"),
            GLSetup.FIELDCAPTION("VAT Tolerance %"),
            GLSetup.TABLECAPTION);

        IF ("VAT Base Discount %" = xRec."VAT Base Discount %") AND (CurrFieldNo <> 0) THEN
          EXIT;

        UpdateSalesLineAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not (CurrFieldNo in [0,FieldNo("Posting Date"),FieldNo("Document Date")]) then
          TestStatusOpen;
        GLSetup.Get;
        if "VAT Base Discount %" > GLSetup."VAT Tolerance %" then
          Error(
            Text007,
            FieldCaption("VAT Base Discount %"),
            GLSetup.FieldCaption("VAT Tolerance %"),
            GLSetup.TableCaption);

        if ("VAT Base Discount %" = xRec."VAT Base Discount %") and (CurrFieldNo <> 0) then
          exit;

        UpdateSalesLineAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Send IC Document"(Field 123).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Send IC Document" THEN BEGIN
          IF "Bill-to IC Partner Code" = '' THEN
            TESTFIELD("Sell-to IC Partner Code");
          TESTFIELD("IC Direction","IC Direction"::Outgoing);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Send IC Document" then begin
          if "Bill-to IC Partner Code" = '' then
            TestField("Sell-to IC Partner Code");
          TestField("IC Direction","IC Direction"::Outgoing);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Direction"(Field 129).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "IC Direction" = "IC Direction"::Incoming THEN
          "Send IC Document" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "IC Direction" = "IC Direction"::Incoming then
          "Send IC Document" := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment %"(Field 130).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Prepayment %" <> "Prepayment %" THEN
          UpdateSalesLinesByFieldNo(FIELDNO("Prepayment %"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Prepayment %" <> "Prepayment %" then
          UpdateSalesLinesByFieldNo(FieldNo("Prepayment %"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment No. Series"(Field 131).OnLookup". Please convert manually.

        //trigger  Series"(Field 131)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH SalesHeader DO BEGIN
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Prepmt. Inv. Nos.");
          IF NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series") THEN
            VALIDATE("Prepayment No. Series");
          Rec := SalesHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with SalesHeader do begin
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TestField("Posted Prepmt. Inv. Nos.");
          if NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series") then
            Validate("Prepayment No. Series");
          Rec := SalesHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment No. Series"(Field 131).OnValidate". Please convert manually.

        //trigger  Series"(Field 131)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepayment No. Series" <> '' THEN BEGIN
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Prepmt. Inv. Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series");
        END;
        TESTFIELD("Prepayment No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepayment No. Series" <> '' then begin
          GetSalesSetup;
          SalesSetup.TestField("Posted Prepmt. Inv. Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series");
        end;
        TestField("Prepayment No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Cr. Memo No. Series"(Field 134).OnLookup". Please convert manually.

        //trigger  Cr();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH SalesHeader DO BEGIN
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Prepmt. Cr. Memo Nos.");
          IF NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series") THEN
            VALIDATE("Prepmt. Cr. Memo No. Series");
          Rec := SalesHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with SalesHeader do begin
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TestField("Posted Prepmt. Cr. Memo Nos.");
          if NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series") then
            Validate("Prepmt. Cr. Memo No. Series");
          Rec := SalesHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Cr. Memo No. Series"(Field 134).OnValidate". Please convert manually.

        //trigger  Cr();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepmt. Cr. Memo No." <> '' THEN BEGIN
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Prepmt. Cr. Memo Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series");
        END;
        TESTFIELD("Prepmt. Cr. Memo No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepmt. Cr. Memo No." <> '' then begin
          GetSalesSetup;
          SalesSetup.TestField("Posted Prepmt. Cr. Memo Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series");
        end;
        TestField("Prepmt. Cr. Memo No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Payment Terms Code"(Field 139).OnValidate". Please convert manually.

        //trigger  Payment Terms Code"(Field 139)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Prepmt. Payment Terms Code" <> '') AND ("Document Date" <> 0D) THEN BEGIN
          PaymentTerms.GET("Prepmt. Payment Terms Code");
          IF IsCreditDocType AND NOT PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" THEN BEGIN
            VALIDATE("Prepayment Due Date","Document Date");
            VALIDATE("Prepmt. Pmt. Discount Date",0D);
            VALIDATE("Prepmt. Payment Discount %",0);
          END ELSE BEGIN
            IsHandled := FALSE;
            OnValidatePaymentTermsCodeOnBeforeCalcDueDate(Rec,xRec,FIELDNO("Prepmt. Payment Terms Code"),CurrFieldNo,IsHandled);
            IF NOT IsHandled THEN
              "Prepayment Due Date" := CALCDATE(PaymentTerms."Due Date Calculation","Document Date");
            IsHandled := FALSE;
            OnValidatePaymentTermsCodeOnBeforeCalcPmtDiscDate(Rec,xRec,FIELDNO("Prepmt. Payment Terms Code"),CurrFieldNo,IsHandled);
            IF NOT IsHandled THEN
              "Prepmt. Pmt. Discount Date" := CALCDATE(PaymentTerms."Discount Date Calculation","Document Date");
            IF NOT UpdateDocumentDate THEN
              VALIDATE("Prepmt. Payment Discount %",PaymentTerms."Discount %")
          END;
        END ELSE BEGIN
          VALIDATE("Prepayment Due Date","Document Date");
          IF NOT UpdateDocumentDate THEN BEGIN
            VALIDATE("Prepmt. Pmt. Discount Date",0D);
            VALIDATE("Prepmt. Payment Discount %",0);
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Prepmt. Payment Terms Code" <> '') and ("Document Date" <> 0D) then begin
          PaymentTerms.Get("Prepmt. Payment Terms Code");
          if IsCreditDocType and not PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" then begin
            Validate("Prepayment Due Date","Document Date");
            Validate("Prepmt. Pmt. Discount Date",0D);
            Validate("Prepmt. Payment Discount %",0);
          end else begin
            IsHandled := false;
            OnValidatePaymentTermsCodeOnBeforeCalcDueDate(Rec,xRec,FieldNo("Prepmt. Payment Terms Code"),CurrFieldNo,IsHandled);
            if not IsHandled then
              "Prepayment Due Date" := CalcDate(PaymentTerms."Due Date Calculation","Document Date");
            IsHandled := false;
            OnValidatePaymentTermsCodeOnBeforeCalcPmtDiscDate(Rec,xRec,FieldNo("Prepmt. Payment Terms Code"),CurrFieldNo,IsHandled);
            if not IsHandled then
              "Prepmt. Pmt. Discount Date" := CalcDate(PaymentTerms."Discount Date Calculation","Document Date");
            if not UpdateDocumentDate then
              Validate("Prepmt. Payment Discount %",PaymentTerms."Discount %")
          end;
        end else begin
          Validate("Prepayment Due Date","Document Date");
          if not UpdateDocumentDate then begin
            Validate("Prepmt. Pmt. Discount Date",0D);
            Validate("Prepmt. Payment Discount %",0);
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Payment Discount %"(Field 140).OnValidate". Please convert manually.

        //trigger  Payment Discount %"(Field 140)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT (CurrFieldNo IN [0,FIELDNO("Posting Date"),FIELDNO("Document Date")]) THEN
          TestStatusOpen;
        GLSetup.GET;
        IF "Payment Discount %" < GLSetup."VAT Tolerance %" THEN
          "VAT Base Discount %" := "Payment Discount %"
        ELSE
          "VAT Base Discount %" := GLSetup."VAT Tolerance %";
        VALIDATE("VAT Base Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not (CurrFieldNo in [0,FieldNo("Posting Date"),FieldNo("Document Date")]) then
          TestStatusOpen;
        GLSetup.Get;
        if "Payment Discount %" < GLSetup."VAT Tolerance %" then
          "VAT Base Discount %" := "Payment Discount %"
        else
          "VAT Base Discount %" := GLSetup."VAT Tolerance %";
        Validate("VAT Base Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Quote Accepted"(Field 154).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Quote Accepted" THEN BEGIN
          "Quote Accepted Date" := WORKDATE;
          OnAfterSalesQuoteAccepted(Rec);
        END ELSE
          "Quote Accepted Date" := 0D;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Quote Accepted" then begin
          "Quote Accepted Date" := WorkDate;
          OnAfterSalesQuoteAccepted(Rec);
        end else
          "Quote Accepted Date" := 0D;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Queue Status"(Field 160).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Queue Status" = "Job Queue Status"::" " THEN
          EXIT;
        JobQueueEntry.ShowStatusMsg("Job Queue Entry ID");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Queue Status" = "Job Queue Status"::" " then
          exit;
        JobQueueEntry.ShowStatusMsg("Job Queue Entry ID");
        */
        //end;


        //Unsupported feature: CodeModification on ""Incoming Document Entry No."(Field 165).OnValidate". Please convert manually.

        //trigger "(Field 165)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Incoming Document Entry No." = xRec."Incoming Document Entry No." THEN
          EXIT;
        IF "Incoming Document Entry No." = 0 THEN
          IncomingDocument.RemoveReferenceToWorkingDocument(xRec."Incoming Document Entry No.")
        ELSE
          IncomingDocument.SetSalesDoc(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Incoming Document Entry No." = xRec."Incoming Document Entry No." then
          exit;
        if "Incoming Document Entry No." = 0 then
          IncomingDocument.RemoveReferenceToWorkingDocument(xRec."Incoming Document Entry No.")
        else
          IncomingDocument.SetSalesDoc(Rec);
        */
        //end;

        //Unsupported feature: Change Editable on ""Last Email Sent Time"(Field 166)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Last Email Sent Status"(Field 167)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Sent as Email"(Field 168)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Last Email Notif Cleared"(Field 169)". Please convert manually.



        //Unsupported feature: CodeModification on ""Sell-to Phone No."(Field 171).OnValidate". Please convert manually.

        //trigger "(Field 171)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        FOR i := 1 TO STRLEN("Sell-to Phone No.") DO
          IF Char.IsLetter("Sell-to Phone No."[i]) THEN
            ERROR(PhoneNoCannotContainLettersErr);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        for i := 1 to StrLen("Sell-to Phone No.") do
          if Char.IsLetter("Sell-to Phone No."[i]) then
            Error(PhoneNoCannotContainLettersErr);
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to E-Mail"(Field 172).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sell-to E-Mail" = '' THEN
          EXIT;
        MailManagement.CheckValidEmailAddresses("Sell-to E-Mail");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sell-to E-Mail" = '' then
          exit;
        MailManagement.CheckValidEmailAddresses("Sell-to E-Mail");
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Payment Instructions Id"(Field 175)". Please convert manually.



        //Unsupported feature: CodeModification on ""Sell-to Customer Template Code"(Field 5051).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Document Type","Document Type"::Quote);
        TestStatusOpen;

        IF NOT InsertMode AND
           ("Sell-to Customer Template Code" <> xRec."Sell-to Customer Template Code") AND
           (xRec."Sell-to Customer Template Code" <> '')
        THEN BEGIN
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(ConfirmChangeQst,FALSE,FIELDCAPTION("Sell-to Customer Template Code"));
          IF Confirmed THEN BEGIN
            IF InitFromTemplate("Sell-to Customer Template Code",FIELDCAPTION("Sell-to Customer Template Code")) THEN
              EXIT
          END ELSE BEGIN
            "Sell-to Customer Template Code" := xRec."Sell-to Customer Template Code";
            EXIT;
          END;
        END;

        IF SellToCustTemplate.GET("Sell-to Customer Template Code") THEN
          CopyFromSellToCustTemplate(SellToCustTemplate);

        IF NOT InsertMode AND
           ((xRec."Sell-to Customer Template Code" <> "Sell-to Customer Template Code") OR
            (xRec."Currency Code" <> "Currency Code"))
        THEN
          RecreateSalesLines(FIELDCAPTION("Sell-to Customer Template Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Document Type","Document Type"::Quote);
        TestStatusOpen;

        if not InsertMode and
           ("Sell-to Customer Template Code" <> xRec."Sell-to Customer Template Code") and
           (xRec."Sell-to Customer Template Code" <> '')
        then begin
          if GetHideValidationDialog or not GuiAllowed then
            Confirmed := true
          else
            Confirmed := Confirm(ConfirmChangeQst,false,FieldCaption("Sell-to Customer Template Code"));
          if Confirmed then begin
            if InitFromTemplate("Sell-to Customer Template Code",FieldCaption("Sell-to Customer Template Code")) then
              exit
          end else begin
            "Sell-to Customer Template Code" := xRec."Sell-to Customer Template Code";
            exit;
          end;
        end;

        if SellToCustTemplate.Get("Sell-to Customer Template Code") then
          CopyFromSellToCustTemplate(SellToCustTemplate);

        if not InsertMode and
           ((xRec."Sell-to Customer Template Code" <> "Sell-to Customer Template Code") or
            (xRec."Currency Code" <> "Currency Code"))
        then
          RecreateSalesLines(FieldCaption("Sell-to Customer Template Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Contact No."(Field 5052).OnLookup". Please convert manually.

        //trigger "(Field 5052)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sell-to Customer No." <> '' THEN
          IF Cont.GET("Sell-to Contact No.") THEN
            Cont.SETRANGE("Company No.",Cont."Company No.")
          ELSE
            IF ContBusinessRelation.FindByRelation(ContBusinessRelation."Link to Table"::Customer,"Sell-to Customer No.") THEN
              Cont.SETRANGE("Company No.",ContBusinessRelation."Contact No.")
            ELSE
              Cont.SETRANGE("No.",'');

        IF "Sell-to Contact No." <> '' THEN
          IF Cont.GET("Sell-to Contact No.") THEN ;
        IF PAGE.RUNMODAL(0,Cont) = ACTION::LookupOK THEN BEGIN
          xRec := Rec;
          VALIDATE("Sell-to Contact No.",Cont."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Contact No."(Field 5052).OnValidate". Please convert manually.

        //trigger "(Field 5052)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IF "Sell-to Contact No." <> '' THEN
          IF Cont.GET("Sell-to Contact No.") THEN
            Cont.CheckIfPrivacyBlockedGeneric;

        IF ("Sell-to Contact No." <> xRec."Sell-to Contact No.") AND
           (xRec."Sell-to Contact No." <> '')
        THEN BEGIN
          IF ("Sell-to Contact No." = '') AND ("Opportunity No." <> '') THEN
            ERROR(Text049,FIELDCAPTION("Sell-to Contact No."));
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(ConfirmChangeQst,FALSE,FIELDCAPTION("Sell-to Contact No."));
          IF Confirmed THEN BEGIN
            IF InitFromContact("Sell-to Contact No.","Sell-to Customer No.",FIELDCAPTION("Sell-to Contact No.")) THEN
              EXIT;
            IF "Opportunity No." <> '' THEN BEGIN
              Opportunity.GET("Opportunity No.");
              IF Opportunity."Contact No." <> "Sell-to Contact No." THEN BEGIN
                MODIFY;
                Opportunity.VALIDATE("Contact No.","Sell-to Contact No.");
                Opportunity.MODIFY;
              END
            END;
          END ELSE BEGIN
            Rec := xRec;
            EXIT;
          END;
        END;

        IF ("Sell-to Customer No." <> '') AND ("Sell-to Contact No." <> '') THEN BEGIN
          Cont.GET("Sell-to Contact No.");
          IF ContBusinessRelation.FindByRelation(ContBusinessRelation."Link to Table"::Customer,"Sell-to Customer No.") THEN
            IF (ContBusinessRelation."Contact No." <> Cont."Company No.") AND (ContBusinessRelation."Contact No." <> Cont."No.") THEN
              ERROR(Text038,Cont."No.",Cont.Name,"Sell-to Customer No.");
        END;

        IF "Sell-to Contact No." <> '' THEN
          IF Cont.GET("Sell-to Contact No.") THEN
            IF ("Salesperson Code" = '') AND (Cont."Salesperson Code" <> '') THEN
              VALIDATE("Salesperson Code",Cont."Salesperson Code");

        UpdateSellToCust("Sell-to Contact No.");
        UpdateSellToCustTemplateCode;
        UpdateShipToContact;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Contact No."(Field 5053).OnLookup". Please convert manually.

        //trigger "(Field 5053)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bill-to Customer No." <> '' THEN
          IF Cont.GET("Bill-to Contact No.") THEN
            Cont.SETRANGE("Company No.",Cont."Company No.")
          ELSE
            IF ContBusinessRelation.FindByRelation(ContBusinessRelation."Link to Table"::Customer,"Bill-to Customer No.") THEN
              Cont.SETRANGE("Company No.",ContBusinessRelation."Contact No.")
            ELSE
              Cont.SETRANGE("No.",'');

        IF "Bill-to Contact No." <> '' THEN
          IF Cont.GET("Bill-to Contact No.") THEN ;
        IF PAGE.RUNMODAL(0,Cont) = ACTION::LookupOK THEN BEGIN
          xRec := Rec;
          VALIDATE("Bill-to Contact No.",Cont."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Contact No."(Field 5053).OnValidate". Please convert manually.

        //trigger "(Field 5053)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IF "Bill-to Contact No." <> '' THEN
          IF Cont.GET("Bill-to Contact No.") THEN
            Cont.CheckIfPrivacyBlockedGeneric;

        IF ("Bill-to Contact No." <> xRec."Bill-to Contact No.") AND
           (xRec."Bill-to Contact No." <> '')
        THEN BEGIN
          IsHandled := FALSE;
          OnBeforeConfirmBillToContactNoChange(Rec,xRec,CurrFieldNo,Confirmed,IsHandled);
          IF NOT IsHandled THEN
            IF GetHideValidationDialog OR (NOT GUIALLOWED) THEN
              Confirmed := TRUE
            ELSE
              Confirmed := CONFIRM(ConfirmChangeQst,FALSE,FIELDCAPTION("Bill-to Contact No."));
          IF Confirmed THEN BEGIN
            IF InitFromContact("Bill-to Contact No.","Bill-to Customer No.",FIELDCAPTION("Bill-to Contact No.")) THEN
              EXIT;
          END ELSE BEGIN
            "Bill-to Contact No." := xRec."Bill-to Contact No.";
            EXIT;
          END;
        END;

        IF ("Bill-to Customer No." <> '') AND ("Bill-to Contact No." <> '') THEN BEGIN
          Cont.GET("Bill-to Contact No.");
          IF ContBusinessRelation.FindByRelation(ContBusinessRelation."Link to Table"::Customer,"Bill-to Customer No.") THEN
            IF (ContBusinessRelation."Contact No." <> Cont."Company No.") AND (ContBusinessRelation."Contact No." <> Cont."No.") THEN
              ERROR(Text038,Cont."No.",Cont.Name,"Bill-to Customer No.");
        END;

        UpdateBillToCust("Bill-to Contact No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Bill-to Customer Template Code"(Field 5054).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Document Type","Document Type"::Quote);
        TestStatusOpen;

        IF NOT InsertMode AND
           ("Bill-to Customer Template Code" <> xRec."Bill-to Customer Template Code") AND
           (xRec."Bill-to Customer Template Code" <> '')
        THEN BEGIN
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(ConfirmChangeQst,FALSE,FIELDCAPTION("Bill-to Customer Template Code"));
          IF Confirmed THEN BEGIN
            IF InitFromTemplate("Bill-to Customer Template Code",FIELDCAPTION("Bill-to Customer Template Code")) THEN
              EXIT
          END ELSE BEGIN
            "Bill-to Customer Template Code" := xRec."Bill-to Customer Template Code";
            EXIT;
          END;
        END;

        VALIDATE("Ship-to Code",'');
        IF BillToCustTemplate.GET("Bill-to Customer Template Code") THEN BEGIN
          BillToCustTemplate.TESTFIELD("Customer Posting Group");
          "Customer Posting Group" := BillToCustTemplate."Customer Posting Group";
          "Invoice Disc. Code" := BillToCustTemplate."Invoice Disc. Code";
          "Customer Price Group" := BillToCustTemplate."Customer Price Group";
          "Customer Disc. Group" := BillToCustTemplate."Customer Disc. Group";
          "Allow Line Disc." := BillToCustTemplate."Allow Line Disc.";
          VALIDATE("Payment Terms Code",BillToCustTemplate."Payment Terms Code");
          VALIDATE("Payment Method Code",BillToCustTemplate."Payment Method Code");
          "Prices Including VAT" := BillToCustTemplate."Prices Including VAT";
          "Shipment Method Code" := BillToCustTemplate."Shipment Method Code";
        END;

        CreateDim(
          DATABASE::"Customer Template","Bill-to Customer Template Code",
          DATABASE::"Salesperson/Purchaser","Salesperson Code",
          DATABASE::Customer,"Bill-to Customer No.",
          DATABASE::Campaign,"Campaign No.",
          DATABASE::"Responsibility Center","Responsibility Center");

        OnValidateBilltoCustomerTemplateCodeBeforeRecreateSalesLines(Rec,CurrFieldNo);

        IF NOT InsertMode AND
           (xRec."Sell-to Customer Template Code" = "Sell-to Customer Template Code") AND
           (xRec."Bill-to Customer Template Code" <> "Bill-to Customer Template Code")
        THEN
          RecreateSalesLines(FIELDCAPTION("Bill-to Customer Template Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Responsibility Center"(Field 5700).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF NOT UserSetupMgt.CheckRespCenter(0,"Responsibility Center") THEN
          ERROR(
            Text027,
            RespCenter.TABLECAPTION,UserSetupMgt.GetSalesFilter);

        UpdateLocationCode('');
        UpdateOutboundWhseHandlingTime;
        #9..14
          DATABASE::Campaign,"Campaign No.",
          DATABASE::"Customer Template","Bill-to Customer Template Code");

        IF xRec."Responsibility Center" <> "Responsibility Center" THEN BEGIN
          RecreateSalesLines(FIELDCAPTION("Responsibility Center"));
          "Assigned User ID" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if not UserSetupMgt.CheckRespCenter(0,"Responsibility Center") then
          Error(
            Text027,
            RespCenter.TableCaption,UserSetupMgt.GetSalesFilter);
        #6..17
        if xRec."Responsibility Center" <> "Responsibility Center" then begin
          RecreateSalesLines(FieldCaption("Responsibility Center"));
          "Assigned User ID" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Advice"(Field 5750).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF InventoryPickConflict("Document Type","No.","Shipping Advice") THEN
          ERROR(Text066,FIELDCAPTION("Shipping Advice"),FORMAT("Shipping Advice"),TABLECAPTION);
        IF WhseShpmntConflict("Document Type","No.","Shipping Advice") THEN
          ERROR(Text070,FIELDCAPTION("Shipping Advice"),FORMAT("Shipping Advice"),TABLECAPTION);
        WhseSourceHeader.SalesHeaderVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if InventoryPickConflict("Document Type","No.","Shipping Advice") then
          Error(Text066,FieldCaption("Shipping Advice"),Format("Shipping Advice"),TableCaption);
        if WhseShpmntConflict("Document Type","No.","Shipping Advice") then
          Error(Text070,FieldCaption("Shipping Advice"),Format("Shipping Advice"),TableCaption);
        WhseSourceHeader.SalesHeaderVerifyChange(Rec,xRec);
        */
        //end;

        //Unsupported feature: Deletion on ""Requested Delivery Date"(Field 5790).OnValidate". Please convert manually.


        //Unsupported feature: Deletion on ""Promised Delivery Date"(Field 5791).OnValidate". Please convert manually.



        //Unsupported feature: CodeModification on ""Shipping Time"(Field 5792).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Shipping Time" <> xRec."Shipping Time" THEN
          UpdateSalesLinesByFieldNo(FIELDNO("Shipping Time"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Shipping Time" <> xRec."Shipping Time" then
          UpdateSalesLinesByFieldNo(FieldNo("Shipping Time"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Outbound Whse. Handling Time"(Field 5793).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5793)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Outbound Whse. Handling Time" <> xRec."Outbound Whse. Handling Time") AND
           (xRec."Sell-to Customer No." = "Sell-to Customer No.")
        THEN
          UpdateSalesLinesByFieldNo(FIELDNO("Outbound Whse. Handling Time"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Outbound Whse. Handling Time" <> xRec."Outbound Whse. Handling Time") and
           (xRec."Sell-to Customer No." = "Sell-to Customer No.")
        then
          UpdateSalesLinesByFieldNo(FieldNo("Outbound Whse. Handling Time"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Service Code"(Field 5794).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        GetShippingTime(FIELDNO("Shipping Agent Service Code"));
        UpdateSalesLinesByFieldNo(FIELDNO("Shipping Agent Service Code"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GetShippingTime(FieldNo("Shipping Agent Service Code"));
        UpdateSalesLinesByFieldNo(FieldNo("Shipping Agent Service Code"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Receipt No. Series"(Field 5802).OnLookup". Please convert manually.

        //trigger  Series"(Field 5802)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH SalesHeader DO BEGIN
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Return Receipt Nos.");
          IF NoSeriesMgt.LookupSeries(SalesSetup."Posted Return Receipt Nos.","Return Receipt No. Series") THEN
            VALIDATE("Return Receipt No. Series");
          Rec := SalesHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with SalesHeader do begin
          SalesHeader := Rec;
          GetSalesSetup;
          SalesSetup.TestField("Posted Return Receipt Nos.");
          if NoSeriesMgt.LookupSeries(SalesSetup."Posted Return Receipt Nos.","Return Receipt No. Series") then
            Validate("Return Receipt No. Series");
          Rec := SalesHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Receipt No. Series"(Field 5802).OnValidate". Please convert manually.

        //trigger  Series"(Field 5802)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Return Receipt No. Series" <> '' THEN BEGIN
          GetSalesSetup;
          SalesSetup.TESTFIELD("Posted Return Receipt Nos.");
          NoSeriesMgt.TestSeries(SalesSetup."Posted Return Receipt Nos.","Return Receipt No. Series");
        END;
        TESTFIELD("Return Receipt No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Return Receipt No. Series" <> '' then begin
          GetSalesSetup;
          SalesSetup.TestField("Posted Return Receipt Nos.");
          NoSeriesMgt.TestSeries(SalesSetup."Posted Return Receipt Nos.","Return Receipt No. Series");
        end;
        TestField("Return Receipt No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Allow Line Disc."(Field 7001).OnValidate". Please convert manually.

        //trigger "(Field 7001)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FIELDCAPTION("Allow Line Disc."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfSalesLinesExist(FieldCaption("Allow Line Disc."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Assigned User ID"(Field 9000).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT UserSetupMgt.CheckRespCenter2(0,"Responsibility Center","Assigned User ID") THEN
          ERROR(
            Text061,"Assigned User ID",
            RespCenter.TABLECAPTION,UserSetupMgt.GetSalesFilter2("Assigned User ID"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not UserSetupMgt.CheckRespCenter2(0,"Responsibility Center","Assigned User ID") then
          Error(
            Text061,"Assigned User ID",
            RespCenter.TableCaption,UserSetupMgt.GetSalesFilter2("Assigned User ID"));
        */
        //end;
        field(13701; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            //TableRelation = "Assessee Code";
        }
        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13731; "Amount to Customer"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line".Amount WHERE("Document Type" = FIELD("Document Type"),
                                                         "Document No." = FIELD("No.")));
            CaptionML = ENU = 'Amount to Customer',
                        ENN = 'Amount to Customer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13736; "Bill to Customer State"; Code[10])
        {
            CaptionML = ENU = 'Bill to Customer State',
                        ENN = 'Bill to Customer State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13737; "Form Code"; Code[20])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            Editable = true;
            /*
            TableRelation = "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                             "Transit Document" = CONST(false));*/
        }
        field(13738; "Form No."; Code[20])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            Editable = false;
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
            /*
            TableRelation = "LC Detail"."No." WHERE("Transaction Type" = CONST(Sale),
                                                     "Issued To/Received From" = FIELD("Bill-to Customer No."),
                                                     Closed = CONST(false),
                                                     Released = CONST(true));
                                                     */

            trigger OnValidate();
            var
                // LCDetail: Record "LC Detail";
                Text13700: TextConst ENU = 'The LC which you have selected is Foreign type you cannot utilise for this order.', ENN = 'The LC which you have selected is Foreign type you cannot utilise for this order.';
            begin
            end;
        }
        field(13790; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            // TableRelation = "Structure Header";

            trigger OnValidate();
            var
                StrDetails: Record "Structure Details";
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                SaleLines: Record "Sales Line";
                Currency: Record Currency;
            begin
                /*
                IF xRec.Structure <> Structure THEN
                  CheckShipmentOnSalesLine;
                */ // Pranavi Commented on 29-Jun-2017
                /*StrOrderDetails.SETCURRENTKEY("Document Type","Document No.",Type);
                StrOrderDetails.SETRANGE(Type,StrOrderDetails.Type::Sale);
                StrOrderDetails.SETRANGE("Document Type","Document Type");
                StrOrderDetails.SETRANGE("Document No.","No.");
                StrOrderDetails.SETRANGE("Price Inclusive of Tax",FALSE);
                IF StrOrderDetails.FINDFIRST THEN
                  StrOrderDetails.DELETEALL;
                
                StrOrderLines.SETCURRENTKEY("Document Type","Document No.",Type);
                StrOrderLines.SETRANGE(Type,StrOrderLines.Type::Sale);
                StrOrderLines.SETRANGE("Document Type","Document Type");
                StrOrderLines.SETRANGE("Document No.","No.");
                StrOrderLines.SETRANGE("Price Inclusive of Tax",FALSE);
                IF StrOrderLines.FINDFIRST THEN
                  StrOrderLines.DELETEALL;
                
                SaleLines.SETRANGE("Document Type","Document Type");
                SaleLines.SETRANGE("Document No.","No.");
                SaleLines.SETFILTER(Type,'<>%1',SaleLines.Type::" ");
                SaleLines.SETRANGE("Price Inclusive of Tax",FALSE);
                IF SaleLines.FIND('-') THEN
                  REPEAT
                    SaleLines."Service Tax Base" := 0;
                    SaleLines."Charges To Customer" := 0;
                    SaleLines."Amount Added to Excise Base" := 0;
                    SaleLines."Amount Added to Tax Base" := 0;
                    SaleLines."Excise Amount" := 0;
                    SaleLines."VAT Base Amount" := 0;
                    SaleLines.GetCurrentSalesHeader(Rec);
                    SaleLines.VALIDATE("Tax Liable",FALSE);
                    SaleLines.UpdateAmounts;
                    SaleLines.GetStandardDeduction(Rec);
                    SaleLines.MODIFY;
                  UNTIL SaleLines.NEXT = 0;
                GetGLSetup;
                PoT := FALSE;
                "POS Out Of India" := FALSE;
                StrDetails.SETRANGE(Code,Structure);
                IF StrDetails.FIND('-') THEN
                  REPEAT
                    IF StrDetails."Include PIT Calculation" AND "Calc. Inv. Discount (%)" THEN
                      ERROR(PITCalcInvDiscErr);
                    StrOrderDetails.Type := StrOrderDetails.Type::Sale;
                    StrOrderDetails."Document Type" := "Document Type";
                    StrOrderDetails."Document No." := "No.";
                    StrOrderDetails."Structure Code" := Structure;
                    StrOrderDetails."Calculation Order" := StrDetails."Calculation Order";
                    StrOrderDetails."Tax/Charge Type" := StrDetails.Type;
                    StrOrderDetails."Tax/Charge Group" := StrDetails."Tax/Charge Group";
                    StrOrderDetails."Tax/Charge Code" := StrDetails."Tax/Charge Code";
                    StrOrderDetails."Calculation Type" := StrDetails."Calculation Type";
                    StrOrderDetails."Calculation Value" := StrDetails."Calculation Value";
                    StrOrderDetails."Quantity Per" := StrDetails."Quantity Per";
                    StrOrderDetails."Loading on Inventory" := StrDetails."Loading on Inventory";
                    StrOrderDetails."% Loading on Inventory" := StrDetails."% Loading on Inventory";
                    StrOrderDetails."Payable to Third Party" := StrDetails."Payable to Third Party";
                    StrOrderDetails."Account No." := StrDetails."Account No.";
                    StrOrderDetails."Base Formula" := StrDetails."Base Formula";
                    StrOrderDetails."Include Base" := StrDetails."Include Base";
                    StrOrderDetails."Include Line Discount" := StrDetails."Include Line Discount";
                    StrOrderDetails."Include Invoice Discount" := StrDetails."Include Invoice Discount";
                    StrOrderDetails."Charge Basis" := StrDetails."Charge Basis";
                    StrOrderDetails."Header/Line" := StrDetails."Header/Line";
                    StrOrderDetails."Available for VAT Input" := StrDetails."Available for VAT Input";
                    StrOrderDetails.CVD := StrDetails.CVD;
                    StrOrderDetails."Exclude GST in TCS Base" := StrDetails."Exclude GST in TCS Base";
                    StrOrderDetails.INSERT;
                    IF NOT PoT THEN
                      IF StrOrderDetails."Tax/Charge Type" = StrOrderDetails."Tax/Charge Type"::"Service Tax" THEN
                        PoT := GLSetup.PoT;
                  UNTIL StrDetails.NEXT = 0;
                
                IF "Applies-to Doc. No." = '' THEN BEGIN
                  StrDetails.SETRANGE(Type,StrDetails.Type::"Service Tax");
                  IF StrDetails.FINDFIRST THEN BEGIN
                    GLSetup.GET;
                    "Service Tax Rounding Precision" := GLSetup."Service Tax Rounding Precision";
                    "Service Tax Rounding Type" := GLSetup."Service Tax Rounding Type";
                  END ELSE BEGIN
                    "Service Tax Rounding Precision" := 0;
                    "Service Tax Rounding Type" := "Service Tax Rounding Type"::Nearest;
                  END;
                END;
                GSTManagement.UpdateInvoiceType(Rec);
                
                IF GSTManagement.IsGSTApplicable(Structure) THEN BEGIN
                  IF "Invoice Type" = "Invoice Type"::"Non-GST" THEN
                    ERROR(NonGSTInvTypeErr);
                  IF "Currency Code" <> '' THEN BEGIN
                    Currency.GET("Currency Code");
                    "GST Inv. Rounding Precision" := Currency."GST Inv. Rounding Precision";
                    "GST Inv. Rounding Type" := Currency."GST Inv. Rounding Type";
                  END ELSE BEGIN
                    "GST Inv. Rounding Precision" := GLSetup."GST Inv. Rounding Precision";
                    "GST Inv. Rounding Type" := GLSetup."GST Inv. Rounding Type";
                  END;
                END ELSE BEGIN
                  IF "Ship-to Customer" <> '' THEN
                    ERROR(GSTTypeStructErr);
                  "GST Inv. Rounding Precision" := 0;
                  "GST Inv. Rounding Type" := GLSetup."GST Inv. Rounding Type"::Nearest;
                END;
                
                ReferenceInvoiceNoValidation;
                */

            end;
        }
        field(16410; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16411; "Export or Deemed Export"; Boolean)
        {
            CaptionML = ENU = 'Export or Deemed Export',
                        ENN = 'Export or Deemed Export';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16412; "VAT Exempted"; Boolean)
        {
            CaptionML = ENU = 'VAT Exempted',
                        ENN = 'VAT Exempted';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16501; Trading; Boolean)
        {
            CaptionML = ENU = 'Trading',
                        ENN = 'Trading';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                // SalesSetup.Get;
                InitRecord;
            end;
        }
        field(16502; "Transaction No. Serv. Tax"; Integer)
        {
            CaptionML = ENU = 'Transaction No. Serv. Tax',
                        ENN = 'Transaction No. Serv. Tax';
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

            trigger OnLookup();
            var
                ReturnRcptLine: Record "Return Receipt Line";
            begin
                /*ReturnRcptLine.RESET;
                ReturnRcptLine.SETCURRENTKEY("Qty. to be Re-Dispatched","Location Code");
                ReturnRcptLine.SETFILTER("Qty. to be Re-Dispatched",'>%1',0);
                ReturnRcptLine.SETFILTER("Location Code","Location Code");
                IF PAGE.RUNMODAL(0,ReturnRcptLine) = ACTION::LookupOK THEN BEGIN
                  "Return Re-Dispatch Rcpt. No." := ReturnRcptLine."Document No.";
                  MODIFY;
                  VALIDATE("Return Re-Dispatch Rcpt. No.");
                END;
                */

            end;

            trigger OnValidate();
            var
                ReturnRcptLine: Record "Return Receipt Line";
                LineNo: Integer;
            begin
                /*SalesLine.RESET;
                SalesLine.SETCURRENTKEY("Document Type","Document No.","Line No.");
                SalesLine.SETRANGE("Document No.","No.");
                SalesLine.SETRANGE("Document Type","Document Type");
                SalesLine.SETRANGE("Re-Dispatch",TRUE);
                SalesLine.DELETEALL;
                
                ReturnRcptLine.RESET;
                ReturnRcptLine.SETRANGE("Document No.","Return Re-Dispatch Rcpt. No.");
                ReturnRcptLine.SETFILTER(Type,'<>%1',ReturnRcptLine.Type::" ");
                IF ReturnRcptLine.FINDSET THEN
                  REPEAT
                    LineNo := 10000;
                    SalesLine.RESET;
                    SalesLine.SETRANGE("Document Type","Document Type");
                    SalesLine.SETRANGE("Document No.","No.");
                    IF SalesLine.FINDLAST THEN
                      LineNo := SalesLine."Line No." + 10000;
                
                    SalesLine.INIT;
                    SalesLine.VALIDATE("Document Type","Document Type");
                    SalesLine.VALIDATE("Document No.","No.");
                    SalesLine."Line No." := LineNo;
                    SalesLine.INSERT;
                    SalesLine.VALIDATE(Type,ReturnRcptLine.Type);
                    SalesLine.VALIDATE("No.",ReturnRcptLine."No.");
                    SalesLine.VALIDATE("Variant Code",ReturnRcptLine."Variant Code");
                    SalesLine.VALIDATE("Unit of Measure Code",ReturnRcptLine."Unit of Measure Code");
                    SalesLine.VALIDATE("Location Code",ReturnRcptLine."Location Code");
                    SalesLine.VALIDATE(Quantity,ReturnRcptLine."Qty. to be Re-Dispatched");
                    SalesLine.VALIDATE("Re-Dispatch","Re-Dispatch");
                    SalesLine.VALIDATE("Return Rcpt Line No.",ReturnRcptLine."Line No.");
                    SalesLine.VALIDATE("Unit Price",ReturnRcptLine."Unit Price");
                    SalesLine.VALIDATE("Return Re-Dispatch Rcpt. No.","Return Re-Dispatch Rcpt. No.");
                    SalesLine.MODIFY;
                  UNTIL ReturnRcptLine.NEXT = 0;
                  */

            end;
        }
        field(16505; "TDS Certificate Receivable"; Boolean)
        {
            CaptionML = ENU = 'TDS Certificate Receivable',
                        ENN = 'TDS Certificate Receivable';
            DataClassification = ToBeClassified;
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

            trigger OnValidate();
            var
                SalesLine2: Record "Sales Line";
                StructureDetails: Record "Structure Details";
            begin
                /*CALCFIELDS("Price Inclusive of Taxes");
                StructureDetails.RESET;
                StructureDetails.SETRANGE(Code,Structure);
                StructureDetails.SETRANGE("Include PIT Calculation",TRUE);
                IF StructureDetails.FINDFIRST THEN
                  IF "Calc. Inv. Discount (%)" THEN
                    ERROR(PITCalcInvDiscErr);
                IF "Price Inclusive of Taxes" AND (NOT "Calc. Inv. Discount (%)") THEN BEGIN
                  SalesLine2.RESET;
                  SalesLine2.SETRANGE("Document Type","Document Type");
                  SalesLine2.SETRANGE("Document No.","No.");
                  IF SalesLine2.FINDSET THEN
                    REPEAT
                      SalesLine2."Inv. Discount Amount" := 0;
                      SalesLine2."Inv. Disc. Amount to Invoice" := 0;
                      SalesLine2."Inv Discount Fixed" := 0;
                      SalesLine2."Inv Discount Variable" := 0;
                      SalesLine2.MODIFY;
                    UNTIL SalesLine2.NEXT = 0;
                END;*/

            end;
        }
        field(16510; "Time of Removal"; Time)
        {
            CaptionML = ENU = 'Time of Removal',
                        ENN = 'Time of Removal';
            DataClassification = ToBeClassified;
        }
        field(16511; "LR/RR No."; Code[20])
        {
            CaptionML = ENU = 'LR/RR No.',
                        ENN = 'LR/RR No.';
            DataClassification = ToBeClassified;
        }
        field(16512; "LR/RR Date"; Date)
        {
            CaptionML = ENU = 'LR/RR Date',
                        ENN = 'LR/RR Date';
            DataClassification = ToBeClassified;
        }
        field(16513; "Vehicle No."; Code[20])
        {
            CaptionML = ENU = 'Vehicle No.',
                        ENN = 'Vehicle No.';
            DataClassification = ToBeClassified;
        }
        field(16514; "Mode of Transport"; Text[15])
        {
            CaptionML = ENU = 'Mode of Transport',
                        ENN = 'Mode of Transport';
            DataClassification = ToBeClassified;
        }
        field(16515; "ST Pure Agent"; Boolean)
        {
            CaptionML = ENU = 'ST Pure Agent',
                        ENN = 'ST Pure Agent';
            DataClassification = ToBeClassified;
        }
        field(16516; "Nature of Services"; Option)
        {
            CaptionML = ENU = 'Nature of Services',
                        ENN = 'Nature of Services';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Exempted,Export',
                              ENN = ' ,Exempted,Export';
            OptionMembers = " ",Exempted,Export;
        }
        field(16522; "Service Tax Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Rounding Precision',
                        ENN = 'Service Tax Rounding Precision';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(16523; "Service Tax Rounding Type"; Option)
        {
            CaptionML = ENU = 'Service Tax Rounding Type',
                        ENN = 'Service Tax Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(16524; "Sale Return Type"; Option)
        {
            CaptionML = ENU = 'Sale Return Type',
                        ENN = 'Sale Return Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Cancellation',
                              ENN = ' ,Sales Cancellation';
            OptionMembers = " ","Sales Cancellation";

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(16525; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;
        }
        field(16601; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            Editable = true;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16602; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";

            trigger OnValidate();
            begin
                //GSTManagement.UpdateInvoiceType(Rec);
            end;
        }
        field(16603; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*CLEAR(GSTManagement);
                IF (NOT ("GST Customer Type" IN ["GST Customer Type"::Export,"GST Customer Type"::"Deemed Export",
                                                 "GST Customer Type"::"SEZ Development","GST Customer Type"::"SEZ Unit"])) OR
                   GSTManagement.IsExportDocumentWithRegShiptoCustomer(Rec)
                THEN
                  ERROR(GSTPaymentDutyErr);
                  */

            end;
        }
        field(16605; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;

            trigger OnValidate();
            begin
                /*IF "Invoice Type" = "Invoice Type"::"Non-GST" THEN
                  IF GSTManagement.IsGSTApplicable(Structure) THEN
                    ERROR(NonGSTInvTypeErr);
                IF "Document Type" <> "Document Type"::Amc THEN
                   // CheckShippedDocument;
                IF (("Ship-to Customer" = '') AND ("GST Customer Type" <> "GST Customer Type"::Exempted)) OR
                   (("Ship-to Customer" <> '') AND ("Ship-to GST Customer Type" <> "Ship-to GST Customer Type"::Exempted))
                THEN BEGIN
                  IF GSTManagement.CheckAllLinesExemptedSales(Rec) THEN
                    GSTManagement.CheckInvoiceType(Rec)
                  ELSE BEGIN
                    SalesLine.RESET;
                    SalesLine.SETRANGE("Document Type","Document Type");
                    SalesLine.SETRANGE("Document No.","No.");
                    IF SalesLine.FINDFIRST THEN
                      TESTFIELD("Invoice Type","Invoice Type"::"Bill of Supply")
                    ELSE
                      GSTManagement.CheckInvoiceType(Rec);
                  END;
                END ELSE
                  GSTManagement.CheckInvoiceType(Rec);
                IF "Document Type" IN ["Document Type"::Order,"Document Type"::Invoice] THEN
                  GetPostInvoiceNoSeries
                ELSE
                  IF "Document Type" IN ["Document Type"::"Credit Memo","Document Type"::"Return Order"] THEN
                    GetPostedCrMemoNoSeries;
                
                UpdateInvoiceTypeLine;
                IF ("Document Type" = "Document Type"::Invoice) AND ("Reference Invoice No." <> '') THEN
                  IF NOT ("Invoice Type" IN ["Invoice Type"::"Debit Note","Invoice Type"::Supplementary]) THEN
                    ERROR(ReferenceNoErr);
                IF "Document Type" IN ["Document Type"::Order,"Document Type"::Invoice] THEN
                  ReferenceInvoiceNoValidation;
                  */

            end;
        }
        field(16606; "Bill Of Export No."; Code[20])
        {
            CaptionML = ENU = 'Bill Of Export No.',
                        ENN = 'Bill Of Export No.';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //TESTFIELD("GST Customer Type","GST Customer Type"::Export);
            end;
        }
        field(16607; "Bill Of Export Date"; Date)
        {
            CaptionML = ENU = 'Bill Of Export Date',
                        ENN = 'Bill Of Export Date';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //TESTFIELD("GST Customer Type","GST Customer Type"::Export);
            end;
        }
        field(16608; "e-Commerce Customer"; Code[20])
        {
            CaptionML = ENU = 'e-Commerce Customer',
                        ENN = 'e-Commerce Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer WHERE("e-Commerce Operator" = CONST(true));
        }
        field(16609; "e-Commerce Merchant Id"; Code[30])
        {
            CaptionML = ENU = 'e-Commerce Merchant Id',
                        ENN = 'e-Commerce Merchant Id';
            DataClassification = ToBeClassified;
            /*
            TableRelation = "e-Commerce Merchant Id"."Merchant Id" WHERE("Merchant Id" = FIELD("e-Commerce Merchant Id"),
                                                                          "Customer No." = FIELD("e-Commerce Customer"));
                                                                          */
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
            InitValue = 0.01;
            MinValue = 0;
        }
        field(16614; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
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

            trigger OnValidate();
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
            begin
                /*TESTFIELD(Status,Status::Open);
                IF GSTRegistrationNos.GET("Location GST Reg. No.") THEN
                  "Location State Code" := GSTRegistrationNos."State Code"
                ELSE
                  "Location State Code" := '';
                
                ReferenceInvoiceNoValidation;
                
                "POS Out Of India" := FALSE;
                */

            end;
        }
        field(16617; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16618; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(16623; "Supply Finish Date"; Option)
        {
            CaptionML = ENU = 'Supply Finish Date',
                        ENN = 'Supply Finish Date';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Before Rate Change,After Rate Change',
                              ENN = ' ,Before Rate Change,After Rate Change';
            OptionMembers = " ","Before Rate Change","After Rate Change";
        }
        field(16624; "Payment Date"; Option)
        {
            CaptionML = ENU = 'Payment Date',
                        ENN = 'Payment Date';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Before Rate Change,After Rate Change',
                              ENN = ' ,Before Rate Change,After Rate Change';
            OptionMembers = " ","Before Rate Change","After Rate Change";
        }
        field(16625; "Rate Change Applicable"; Boolean)
        {
            CaptionML = ENU = 'Rate Change Applicable',
                        ENN = 'Rate Change Applicable';
            DataClassification = ToBeClassified;
        }
        field(16626; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                SalesLine: Record "Sales Line";
                ConfigType: Option Vendor,Customer;
                GSTVendorType: Option " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;
            begin
                /*TESTFIELD(Status,Status::Open);
                TESTFIELD("Ship-to Customer",'');
                ReferenceInvoiceNoValidation;
                
                IF NOT GSTManagement.IsGSTApplicable(Structure) THEN
                  ERROR(POSGSTStructErr);
                SalesLine.SETRANGE("Document Type","Document Type");
                SalesLine.SETRANGE("Document No.","No.");
                IF SalesLine.FINDSET THEN
                  REPEAT
                    IF SalesLine."GST Place of Supply" <> SalesLine."GST Place of Supply"::"Location Address" THEN
                      GSTManagement.VerifyPOSOutOfIndia(
                        ConfigType::Customer,"Location State Code",SalesLine.GetPlaceOfSupplyStateCode(SalesLine),GSTVendorType::" ","GST Customer Type")
                    ELSE
                      ERROR(GSTPlaceOfSuppErr);
                  UNTIL SalesLine.NEXT = 0;
                
                GSTManagement.VerifyPOSOutOfIndia(
                  ConfigType::Customer,"Location State Code","GST Bill-to State Code",GSTVendorType::" ","GST Customer Type");
                  */

            end;
        }
        field(16630; "Ship-to Customer"; Code[20])
        {
            CaptionML = ENU = 'Ship-to Customer',
                        ENN = 'Ship-to Customer';
            DataClassification = ToBeClassified;
            TableRelation = IF ("GST Customer Type" = CONST(Export)) Customer."No." WHERE("GST Customer Type" = CONST(Registered));

            trigger OnValidate();
            begin
                /*TESTFIELD(Status,Status::Open);
                CheckShipToCustomer;
                IF NOT GSTManagement.IsGSTApplicable(Structure) THEN
                  ERROR(GSTTypeStructErr);
                GetCust("Ship-to Customer");
                IF "Ship-to Customer" <> '' THEN BEGIN
                  TESTFIELD("GST Customer Type","GST Customer Type"::Export);
                  "Ship-to Code" := '';
                  GetCust("Ship-to Customer");
                END ELSE
                  IF "Ship-to Code" <> '' THEN
                    VALIDATE("Ship-to Code");
                // BUG 121842 +
                // PA052383 +
                TESTFIELD("POS Out Of India",FALSE);
                TESTFIELD("Applies-to Doc. Type","Applies-to Doc. Type"::" ");
                TESTFIELD("Applies-to Doc. No.",'');
                ReferenceInvoiceNoValidation;
                // BUG 121842 -
                IF "Ship-to Customer" <> '' THEN BEGIN
                  Cust.TESTFIELD("GST Customer Type",Cust."GST Customer Type"::Registered); // PA052383
                  "Ship-to Name" := Cust.Name;
                  "Ship-to Name 2" := Cust."Name 2";
                  "Ship-to Address" := Cust.Address;
                  "Ship-to Address 2" := Cust."Address 2";
                  "Ship-to City" := Cust.City;
                  "GST Ship-to State Code" := Cust."State Code";
                  "Ship-to Contact" := Cust.Contact;
                  "Ship-to Post Code" := Cust."Post Code";
                  "Ship-to County" := Cust.County;
                  "Ship-to Country/Region Code" := Cust."Country/Region Code";
                  "Ship-to GST Reg. No." := Cust."GST Registration No.";
                  IF "Ship-to Customer" <> '' THEN
                    Cust.TESTFIELD("GST Customer Type");
                  "Ship-to GST Customer Type" := Cust."GST Customer Type";
                
                  GSTManagement.UpdateInvoiceType(Rec);
                END;
                // BUG 121842 +
                */

            end;
        }
        field(16631; "Ship-to GST Customer Type"; Option)
        {
            CaptionML = ENU = 'Ship-to GST Customer Type',
                        ENN = 'Ship-to GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(50000; "MSPT Date"; Date)
        {
            Description = 'MSPT1.0';

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);

                MSPTOrderDetails.SetRange(Type, MSPTOrderDetails.Type::Sale);
                MSPTOrderDetails.SetRange("Document Type", "Document Type");
                MSPTOrderDetails.SetRange("Document No.", "No.");
                if MSPTOrderDetails.Find('-') then begin
                    repeat
                        MSPTOrderDetails."Due Date" := CalcDate(MSPTOrderDetails."Calculation Period", Rec."MSPT Date");
                        MSPTOrderDetails.Modify;
                    until MSPTOrderDetails.Next = 0;
                end;
            end;
        }
        field(50001; "MSPT Code"; Code[20])
        {
            Description = 'MSPT1.0';
            TableRelation = "MSPT Header".Code WHERE(Status = CONST(Released));

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);

                MSPTOrderDetails.SetRange(Type, MSPTOrderDetails.Type::Sale);
                MSPTOrderDetails.SetRange("Document Type", "Document Type");
                MSPTOrderDetails.SetRange("Document No.", "No.");
                if MSPTOrderDetails.Find('-') then begin
                    MSPTOrderDetails.DeleteAll;
                end;

                MSPTHeader.SetRange(MSPTHeader.Code, "MSPT Code");
                if MSPTHeader.Find('-') then begin
                    "MSPT Details".SetRange("MSPT Details"."MSPT Header Code", "MSPT Code");
                    if "MSPT Details".Find('-') then begin
                        repeat
                            MSPTOrderDetails.Type := MSPTOrderDetails.Type::Sale;
                            MSPTOrderDetails."Document Type" := "Document Type";
                            MSPTOrderDetails."Document No." := "No.";
                            MSPTOrderDetails."Party Type" := MSPTOrderDetails."Party Type"::Customer;
                            MSPTOrderDetails."Party No." := "Sell-to Customer No.";
                            MSPTOrderDetails."MSPT Header Code" := "MSPT Code";
                            //MSPTOrderDetails."Calculation Type" := MSPTHeader.Type;
                            MSPTOrderDetails."MSPT Code" := "MSPT Details".Code;
                            MSPTOrderDetails."MSPT Line No." := "MSPT Details"."Line No.";
                            MSPTOrderDetails.Percentage := "MSPT Details".Percentage;
                            //MSPTOrderDetails.Amount:="MSPT Details".Amount;
                            MSPTOrderDetails.Description := "MSPT Details".Description;
                            MSPTOrderDetails."Calculation Period" := "MSPT Details"."Calculation Period";
                            MSPTOrderDetails.Remarks := "MSPT Details".Remarks;
                            //SalesHeader.Get(MSPTOrderDetails."Document Type", MSPTOrderDetails."Document No.");
                            MSPTOrderDetails."Due Date" := CalcDate(MSPTOrderDetails."Calculation Period", "MSPT Date");
                            MSPTOrderDetails.Insert;
                        until "MSPT Details".Next = 0;
                    end;
                end;
            end;
        }
        field(50002; "MSPT Applicable at Line Level"; Boolean)
        {
            Description = 'MSPT1.0';
        }
        field(50003; WayBillNo; Text[30])
        {
        }
        field(50004; "posting time"; Time)
        {
            Enabled = false;
        }
        field(50005; userid1; Code[50])
        {
            Description = 'Rev01';
            Enabled = false;
            TableRelation = User;
        }
        field(50006; "Work Order Number"; Text[30])
        {
            Enabled = false;
        }
        field(60001; "RDSO Charges Paid By"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ","By Customer","By Railways";
        }
        field(60002; "CA Number"; Code[20])
        {
            Description = 'B2B';
            Enabled = false;

            trigger OnLookup();
            begin
                CANumber.SetFilter("Customer No.", '=%1 | %2', '', "Sell-to Customer No.");
                if PAGE.RunModal(60008, CANumber) = ACTION::LookupOK then begin
                    "CA Number" := CANumber.Code;
                    CANumber."Customer No." := "Sell-to Customer No.";
                    CANumber.Modify;
                end;
            end;
        }
        field(60003; "CA Date"; Date)
        {
            Description = 'B2B';
        }
        field(60004; "Type of Enquiry"; Option)
        {
            Description = 'B2B';
            OptionMembers = Direct,Indirect;
        }
        field(60005; "Type of Product"; Option)
        {
            Description = 'B2B';
            OptionMembers = Standard,Customized;
        }
        field(60006; "Document Position"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = Sales,Design,CRM;
        }
        field(60007; "Cancel Short Close"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Cancelled,Short Closed"';
            OptionMembers = " ",Cancelled,"Short Closed";
        }
        field(60008; "RDSO Inspection Required"; Boolean)
        {
            Description = 'B2B';
        }
        field(60009; "RDSO Inspection By"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ","By RDSO","By Consignee";
        }
        field(60010; "BG Required"; Boolean)
        {
            Description = 'B2B';
        }
        field(60011; "BG No."; Code[20])
        {
            Description = 'B2B';
            Enabled = false;
        }
        field(60012; Territory; Code[20])
        {
            Description = 'B2B';
            TableRelation = Territory;
        }
        field(60013; "Security Status"; Code[20])
        {
            Description = 'B2B';
            Enabled = false;
        }
        field(60014; "LD Amount"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';
            Enabled = false;
        }
        field(60015; "RDSO Charges"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';
        }
        field(60016; "Customer OrderNo."; Code[65])
        {
            Description = 'B2B';
        }
        field(60017; "Customer Order Date"; Date)
        {
            Description = 'B2B';
        }
        field(60018; "Security Deposit"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,BG,FDR,DD,Running Bills"';
            OptionMembers = " ",BG,FDR,DD,"Running Bills";
        }
        field(60019; "RDSO Call Letter"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Customer,RDSO"';
            OptionMembers = " ",Customer,RDSO;
        }
        field(60020; "Enquiry Status"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Open,Closed,Order Received';
            OptionMembers = Open,Closed,"Order Received";
        }
        field(60021; "Project Completion Date"; Date)
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                if "Document Type" = "Document Type"::Order then begin
                    if "Project Completion Date" < "Promised Delivery Date" then
                        Error('Project Completion Date must be Greater than Promised Delivery Date');
                end;
            end;
        }
        field(60022; "Extended Date"; Date)
        {
            Description = 'B2B';
        }
        field(60023; "Bktord Des Approval"; Boolean)
        {
        }
        field(60024; "SalOrd Des Approval"; Boolean)
        {
        }
        field(60030; "Type of Customer"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Existing,New';
            OptionMembers = Existing,New;
        }
        field(60031; "Nature of Enquiry"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Single,Multiple';
            OptionMembers = Single,Multiple;
        }
        field(60032; Product; Code[10])
        {
            Description = 'B2B';
            TableRelation = "Service Item Group";

            trigger OnValidate();
            begin
                //ADDED BY PRANAVI ON 01-01-2016
                if (Product = 'SPARES') and ("Sell-to Customer No." = 'CUST00536') then begin
                    "Order Completion Period" := 45;
                    Validate("Shortcut Dimension 1 Code", 'CUS-005');
                    "Customer OrderNo." := 'NILL';
                    if "Order Date" <> 0D then
                        "Customer Order Date" := "Order Date"
                    else
                        "Customer Order Date" := Today();
                    "RDSO Inspection Req" := "RDSO Inspection Req"::NA;
                    "Call letters Status" := "Call letters Status"::NA;
                    "BG Status" := "BG Status"::NA;
                    Validate("Payment Terms Code", '100-I');
                end;
                //end by pranavi
            end;
        }
        field(60033; "Quote Value"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Line Amount" WHERE("Document Type" = CONST(Quote),
                                                                "Document No." = FIELD("No.")));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60034; "Installation Amount"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Line Amount(LOA)" WHERE("Document No." = FIELD("No."),
                                                                     "No." = FILTER('47300')));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60035; "Bought out Items Amount"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Line Amount(LOA)" WHERE("Document No." = FIELD("No."),
                                                                     "Gen. Prod. Posting Group" = FILTER('BOI' | 'RAW-MAT')));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60036; "Software Amount"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Line Amount(LOA)" WHERE("Document No." = FIELD("No."),
                                                                     "No." = FILTER('46400' | '18100' | '47505')));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60037; "Total Order Amount"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Line Amount" WHERE("Document No." = FIELD("No.")));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60038; "Total Order Amount(With Taxes)"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Amount Including Tax" WHERE("Document No." = FIELD("No.")));
            Description = 'EFF';
            FieldClass = FlowField;
        }
        field(60041; "Security Deposit Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60042; "Deposit Payment Due Date"; Date)
        {
            Description = 'B2B';
        }
        field(60043; "Deposit Payment Date"; Date)
        {
            Description = 'B2B';
        }
        field(60044; "Security Deposit Status"; Code[20])
        {
            Description = 'B2B';
            Enabled = false;
        }
        field(60045; "SD Requested Date"; Date)
        {
            Description = 'B2B';
        }
        field(60046; "SD Required Date"; Date)
        {
            Description = 'B2B';
        }
        field(60047; "SecurityDeposit Exp. Rcpt Date"; Date)
        {
            Description = 'B2B';
        }
        field(60048; "Adjusted from EMD"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = CONST(Adjustment),
                                                                    "Mode of Receipt / Payment" = FILTER(<> Customer)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60049; "Adjusted from Running Bills"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = FILTER(Adjustment),
                                                                    "Mode of Receipt / Payment" = FILTER(Customer)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60050; "Tender No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Tender Header";
        }
        field(60051; "SD Paid Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(SD),
                                                                    "Transaction Type" = CONST(Payment)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60052; "SD Received Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(SD),
                                                                    "Transaction Type" = CONST(Receipt)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60053; "Final Bill Date"; Date)
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                "Due Date" := CalcDate("Warranty Period", "Final Bill Date");
            end;
        }
        field(60054; "Warranty Period"; DateFormula)
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                if "Final Bill Date" <> 0D then
                    "Due Date" := CalcDate("Warranty Period", "Final Bill Date");
            end;
        }
        field(60055; "SD Status"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Not Received,Received,NA';
            OptionMembers = "Not Received",Received,NA;
        }
        field(60056; "Released to Sales User ID"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            Enabled = false;
            TableRelation = User."User Name";
        }
        field(60057; "Released to Sales Date"; Date)
        {
            Editable = false;
        }
        field(60058; "Released to Design User ID"; Code[40])
        {
            Description = 'Rev01';
            Editable = false;
            Enabled = false;
            TableRelation = User;
        }
        field(60059; "Released to Design Date"; Date)
        {
            Editable = false;
        }
        field(60060; "Quote No 2."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            Enabled = false;
        }
        field(60061; "Sale Order Total Amount"; Decimal)
        {
        }
        field(60062; "Reason For Pending"; Text[230])
        {
            Enabled = false;
        }
        field(60063; "Order Status"; Option)
        {
            OptionMembers = ,Dispatched,Inprogress,"Ready For Dispatch","Ready For RDSO","Under RDSO Inspection","Yet to Start","Order Pending","   ","Temporary Close";
        }
        field(60064; Inspection; Code[50])
        {
            Enabled = false;
        }
        field(60065; CallLetterExpireDate; Date)
        {
        }
        field(60066; CallLetterRecivedDate; Date)
        {

            trigger OnValidate();
            begin
                /*
                  SalesLine.Reset;
                  SalesLine.SetRange("Document No.", Rec."No.");
                  SalesLine.SetFilter(Quantity, '>%1', 0);
                  if SalesLine.FindSet then
                      repeat
                          SalesLine."Material Reuired Date" := Rec.CallLetterRecivedDate;
                          SalesLine.Modify;
                      until SalesLine.Next = 0;
                      */
            end;
        }
        field(60067; "Payments Date"; Date)
        {
            Enabled = false;
        }
        field(60068; Installation; Option)
        {
            OptionMembers = " ",RlyInstallation,EffInstallation,"RLY&EFF";
        }
        field(60069; "Inst.Status"; Option)
        {
            OptionMembers = ," Raliway Pending","Railway Inprogress",Inprogress,Planned,"To Be Planned",Completed," ";
        }
        field(60070; "Base PLan Comp. Date"; Date)
        {
            Enabled = false;
        }
        field(60071; "Revised Target Date"; Date)
        {
            Enabled = false;
        }
        field(60072; "Sales Date"; Date)
        {
            Enabled = false;
        }
        field(60073; Remarks; Text[230])
        {
        }
        field(60074; "Call letters Status"; Option)
        {
            OptionMembers = " ",Received,Pending,NA,"Cust.Pending";

            trigger OnValidate();
            begin
                /*
                  SalesLine.Reset;
                  SalesLine.SetRange("Document No.", Rec."No.");
                  SalesLine.SetFilter(Quantity, '>%1', 0);
                  if SalesLine.FindSet then
                      repeat
                          SalesLine."Call Letter Status" := Rec."Call letters Status";
                          SalesLine.Modify;
                      until SalesLine.Next = 0;*/
            end;
        }
        field(60075; "Call Letter Exp.Date"; Date)
        {

            trigger OnValidate();
            begin
                //Commented by Vishnu Priya on 18-07-2020  as per the Mail from Sales Dept.
                /*SalesLine.RESET;
                SalesLine.SETRANGE("Document No.",Rec."No.");
                SalesLine.SETFILTER(Quantity,'>%1',0);
                IF SalesLine.FINDSET THEN
                  REPEAT
                    SalesLine."Call Letter Exp Date" := Rec."Call Letter Exp.Date";
                    SalesLine.MODIFY;
                  UNTIL SalesLine.NEXT =0;
                  */
                //Commented by Vishnu Priya on 18-07-2020

            end;
        }
        field(60076; "BG Status"; Option)
        {
            OptionMembers = " ",Submitted,Pending,NA;
        }
        field(60077; "Inst.Start Date"; Date)
        {
        }
        field(60078; "Exp.Payment"; Decimal)
        {
        }
        field(60080; "Revised Comp.Date"; Date)
        {
            Enabled = false;
        }
        field(60081; "Assured Date"; Date)
        {
        }
        field(60082; "Deviated Days"; Code[10])
        {
            Enabled = false;
        }
        field(60083; "Product 1"; Text[30])
        {
            Enabled = false;
        }
        field(60084; "Product 2"; Text[30])
        {
            Enabled = false;
        }
        field(60085; "Product 3"; Text[30])
        {
            Enabled = false;
        }
        field(60086; "Product 4"; Text[30])
        {
            Enabled = false;
        }
        field(60087; Consignee; Text[50])
        {
            Description = 'modified from station name to consignee by sujani';
        }
        field(60088; "Shortage Calculation"; Boolean)
        {
        }
        field(60089; "Sale Order No."; Code[20])
        {
            TableRelation = "Sales Header"."No." WHERE("Document Type" = CONST(Order));
        }
        field(60090; "RDSO Inspection Req"; Option)
        {
            OptionMembers = " ",YES,NA;
        }
        field(60095; "Order Assurance"; Boolean)
        {
        }
        field(60096; "Expected Order Month"; Option)
        {
            OptionMembers = "  ",APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC,JAN,FEB,MAR,"     ";
        }
        field(60097; "Sale Order Created"; Boolean)
        {
        }
        field(60098; "Purchase Value"; Decimal)
        {
            CalcFormula = Sum("Item Lot Numbers".Total WHERE("Sales Order No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(60099; "Request for Authorisation"; Boolean)
        {
        }
        field(60110; "Shipment Type"; Option)
        {
            Description = 'added by sujani';
            OptionMembers = "  ","Partially Allowed","Partially Not Allowed","No issue in Shipment";
        }
        field(60115; "SD Running Bill Percent"; Decimal)
        {
            Enabled = false;
        }
        field(60116; "Order Completion Period"; Integer)
        {
            MaxValue = 360;
            MinValue = 1;
        }
        field(60117; "Expecting Week"; Date)
        {
        }
        field(60119; "Total Order(LOA)Value"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Line Amount(LOA)" WHERE("Document No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(60120; "Pending(LOA)Value"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."OutStanding(LOA)" WHERE("Document No." = FIELD("No."),
                                                                     "Document Type" = FILTER(Quote | Order)));
            FieldClass = FlowField;
        }
        field(60121; "Blanket Order No"; Text[30])
        {
        }
        field(60122; "Installation Amount(CS)"; Decimal)
        {
        }
        field(60139; "First Released Date Time"; DateTime)
        {
        }
        field(80000; "Order Released Date"; Date)
        {
            Caption = 'Order Released Date';
        }
        field(80001; "Payment Received"; Boolean)
        {
            Description = 'Pranavi';

            trigger OnValidate();
            begin
                //Added by pranavi on 18-Jun-2015
                SHA.Reset;
                SHA.SetFilter(SHA."No.", "No.");
                if "Payment Received" = true then begin
                    if "Customer Posting Group" <> 'PRIVATE' then
                        Error('Allowed Only for PRIVATE Customers!')
                    else begin
                        if Order_After_CF_Integration = true then
                            Error('Not Allowed for Orders after Cashflow Payment Terms Integration!');
                    end;
                    if not SHA.FindFirst then
                        Error('Order Must be released at least one time!');
                end;
                //end by pranavi
            end;
        }
        field(80002; "Order Verified"; Boolean)
        {
            Description = 'Pranavi';
        }
        field(80003; "Calculate Tax Structure"; Boolean)
        {
            Description = 'Pranavi';
        }
        field(80004; "RDSO No"; Option)
        {
            Description = 'Added by Vijaya';
            OptionMembers = ,Pending,"RDSO 01","RDSO 02","RDSO 03","RDSO 04","RDSO 05","RDSO 06","RDSO 07","RDSO 08","RDSO 09","RDSO 10";
        }
        field(80005; "EMD Amount"; Decimal)
        {
        }
        field(80006; "Verfication Req MailID"; Text[30])
        {
            Description = 'Added by Vijaya';
            Enabled = false;
        }
        field(80007; "Verification Status"; Option)
        {
            Description = 'Added by Vijaya';
            OptionMembers = " ",Accept,Reject,Request;
        }
        field(80008; SecDepStatus; Option)
        {
            Description = 'Added by Pranavi for sd tracking';
            OptionCaption = 'Running,Warranty,Due,Received';
            OptionMembers = Running,Warranty,Due,Received;
        }
        field(80009; "Remarks for Sales Status"; Text[20])
        {
            Enabled = false;

            trigger OnValidate();
            begin
                if (UserId in ['EFFTRONICS\VIJAYA', 'EFFTRONICS\PRANAVI', 'EFFTRONICS\ANILKUMAR', 'EFFTRONICS\SPURTHI', 'EFFTRONICS\BSATISH', 'EFFTRONICS\SARDHAR']) then begin
                    Modify;
                    FlagValue := true;
                end;
            end;
        }
        field(80010; "PT Release Auth Stutus"; Option)
        {
            Description = 'Added by Pranavi for PT Authorizations';
            OptionMembers = " ","Sent For Auth",Authorized,Rejected;
        }
        field(80011; "PT Post Auth Stutus"; Option)
        {
            Description = 'Added by Pranavi for PT Authorizations';
            OptionMembers = " ","Sent For Auth",Authorized,Rejected;
        }
        field(80012; Order_After_CF_Integration; Boolean)
        {
            Description = 'Added by Pranavi for PT Authorizations';
        }
        field(80013; "Order Confirmed"; Boolean)
        {
        }
        field(80014; "SD Fin Verification"; Option)
        {
            Description = 'Added by Vijaya for Finance Verification';
            OptionCaption = '" ,Released,Order Verified, Final Payment,Final Verified,Need Data Correction"';
            OptionMembers = " ",Released,"Order Verified"," Final Payment","Final Verified","Need Data Correction";
        }
        field(80017; Vertical; Option)
        {
            Description = 'Added by Vijaya for Vertical information';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other;
        }
        field(80022; "Tender Published Date"; Date)
        {
            Description = 'added by sujani for Pre Expected orderes';
        }
        field(80023; "Tender Due Date"; Date)
        {
            Description = 'added by sujani for Pre Expected orderes';
        }
        field(80024; "Railway Division"; Code[10])
        {
            // TableRelation = Division."Division Code";
        }
        field(80025; "BG Fin Status"; Option)
        {
            Description = 'Added By Vishnu for BG Status Confirmation';
            OptionCaption = '" ,Final Payment"';
            OptionMembers = " ","Final Payment";
        }
        field(80100; "Insurance Applicable"; Boolean)
        {
        }
        field(80101; Customer_PAN_No; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(80102; Location_PAN_No; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Sell-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Bill-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Combine Shipments,Bill-to Customer No.,Currency Code,EU 3-Party Trade,Dimension Set ID"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No.,External Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Sell-to Contact No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Contact No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Incoming Document Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Shipment Date,Status,Location Code,Responsibility Center"(Key)". Please convert manually.

        key(DOCUMENT1; "Document Type", "No.")
        {
        }
        key(No2; "No.", "Document Type")
        {
        }
        key(Document3; "Document Type", "Sell-to Customer No.")
        {
        }
        key(Bill4; "Document Type", "Bill-to Customer No.")
        {
        }
        key(Combine5; "Document Type", "Combine Shipments", "Bill-to Customer No.", "Currency Code", "EU 3-Party Trade", "Dimension Set ID")
        {
        }
        key(SelltoCustomer6; "Sell-to Customer No.", "External Document No.")
        {
        }
        key(SelltoContact7; "Document Type", "Sell-to Contact No.")
        {
        }
        key(Bill8; "Bill-to Contact No.")
        {
        }
        key(Incoming9; "Incoming Document Entry No.")
        {
        }
        key(Ship10; "Shipment Date", Status, "Location Code", "Responsibility Center")
        {
        }
        key(Order11; "Order Date", "Customer Posting Group")
        {
        }
        key(DocDate12; "Document Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF NOT UserSetupMgt.CheckRespCenter(0,"Responsibility Center") THEN
      ERROR(
        Text022,
        RespCenter.TABLECAPTION,UserSetupMgt.GetSalesFilter);

    ArchiveManagement.AutoArchiveSalesDocument(Rec);
    PostSalesDelete.DeleteHeader(
      Rec,SalesShptHeader,SalesInvHeader,SalesCrMemoHeader,ReturnRcptHeader,
      SalesInvHeaderPrepmt,SalesCrMemoHeaderPrepmt);
    UpdateOpportunity;

    VALIDATE("Applies-to ID",'');
    VALIDATE("Incoming Document Entry No.",0);

    ApprovalsMgmt.OnDeleteRecordInApprovalRequest(RECORDID);
    SalesLine.RESET;
    SalesLine.LOCKTABLE;

    WhseRequest.SETRANGE("Source Type",DATABASE::"Sales Line");
    WhseRequest.SETRANGE("Source Subtype","Document Type");
    WhseRequest.SETRANGE("Source No.","No.");
    IF NOT WhseRequest.ISEMPTY THEN
      WhseRequest.DELETEALL(TRUE);

    SalesLine.SETRANGE("Document Type","Document Type");
    SalesLine.SETRANGE("Document No.","No.");
    SalesLine.SETRANGE(Type,SalesLine.Type::"Charge (Item)");

    DeleteSalesLines;
    SalesLine.SETRANGE(Type);
    DeleteSalesLines;

    SalesCommentLine.SETRANGE("Document Type","Document Type");
    SalesCommentLine.SETRANGE("No.","No.");
    SalesCommentLine.DELETEALL;

    IF (SalesShptHeader."No." <> '') OR
       (SalesInvHeader."No." <> '') OR
       (SalesCrMemoHeader."No." <> '') OR
       (ReturnRcptHeader."No." <> '') OR
       (SalesInvHeaderPrepmt."No." <> '') OR
       (SalesCrMemoHeaderPrepmt."No." <> '')
    THEN
      MESSAGE(PostedDocsToPrintCreatedMsg);

    IF IdentityManagement.IsInvAppId AND CustInvoiceDisc.GET(SalesHeader."Invoice Disc. Code") THEN
      CustInvoiceDisc.DELETE; // Cleanup of autogenerated cust. invoice discounts
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    InitInsert;
    InsertMode := TRUE;

    SetSellToCustomerFromFilter;

    IF GetFilterContNo <> '' THEN
      VALIDATE("Sell-to Contact No.",GetFilterContNo);

    VALIDATE("Payment Instructions Id",O365SalesInvoiceMgmt.GetDefaultPaymentInstructionsId);

    IF "Salesperson Code" = '' THEN
      SetDefaultSalesperson;

    IF "Sell-to Customer No." <> '' THEN
      StandardCodesMgt.CheckShowSalesRecurringLinesNotification(Rec);

    // Remove view filters so that the cards does not show filtered view notification
    SETVIEW('');
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    InitInsert;
    InsertMode := true;
    #3..5
    if GetFilterContNo <> '' then
      Validate("Sell-to Contact No.",GetFilterContNo);

    Validate("Payment Instructions Id",O365SalesInvoiceMgmt.GetDefaultPaymentInstructionsId);

    if "Salesperson Code" = '' then
      SetDefaultSalesperson;
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    //sreenivas -eff
    {
    IF ("Document Type" IN ["Document Type"::Quote,"Document Type"::"Blanket Order"]) AND (Status=Status::Released) THEN
      ERROR('You Cannot Modify This Document Which Was Already Released');
    }
    //IF ("Document Type" IN ["Document Type"::Order]) AND("No. of Archived Versions">0) THEN
    //ERROR('You Cannot Modify This Document Which Was Already Released');
    //sreenivas -eff
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text003,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //ERROR(Text003,TABLECAPTION);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Sell-to Customer No."(Field 2).OnValidate.StandardCodesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Customer No." : 170;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Customer No." : "Standard Codes Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Name"(Field 5).OnLookup.Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Name" : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Name" : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Name"(Field 5).OnValidate.Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Name" : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Name" : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Contact"(Field 10).OnLookup.Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Contact" : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Contact" : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Ship-to Code"(Field 12).OnValidate.ShipToAddr(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Ship-to Code" : 222;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Ship-to Code" : "Ship-to Address";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Prices Including VAT"(Field 35).OnValidate.SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Prices Including VAT" : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Prices Including VAT" : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Prices Including VAT"(Field 35).OnValidate.Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Prices Including VAT" : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Prices Including VAT" : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Prices Including VAT"(Field 35).OnValidate.ConfirmManagement(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Prices Including VAT" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Prices Including VAT" : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Salesperson Code"(Field 43).OnValidate.ApprovalEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Salesperson Code" : 454;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Salesperson Code" : "Approval Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 53).OnLookup.GenJnlLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 53).OnLookup.GenJnlApply(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Gen. Jnl.-Apply";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 53).OnLookup.ApplyCustEntries(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 232;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Apply Customer Entries";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 70).OnValidate.Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 70).OnValidate.VATRegistrationLog(Variable 1200)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration Log";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 70).OnValidate.VATRegistrationNoFormat(Variable 1300)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 381;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration No. Format";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Registration No."(Field 70).OnValidate.VATRegistrationLogMgt(Variable 1400)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Registration No." : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Registration No." : "VAT Registration Log Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Customer Name"(Field 79).OnLookup.Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Customer Name" : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Customer Name" : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Customer Name"(Field 79).OnValidate.Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Customer Name" : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Customer Name" : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Customer Name"(Field 79).OnValidate.IdentityManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Customer Name" : 9801;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Customer Name" : "Identity Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Contact"(Field 84).OnLookup.Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Contact" : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Contact" : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""External Document No."(Field 100).OnValidate.WhseSalesRelease(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"External Document No." : 5771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"External Document No." : "Whse.-Sales Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Payment Method Code"(Field 104).OnValidate.SEPADirectDebitMandate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Payment Method Code" : 1230;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Payment Method Code" : "SEPA Direct Debit Mandate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to ID"(Field 118).OnValidate.TempCustLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to ID" : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to ID" : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to ID"(Field 118).OnValidate.CustEntrySetApplID(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to ID" : 101;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to ID" : "Cust. Entry-SetAppl.ID";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Prepmt. Payment Terms Code"(Field 139).OnValidate.PaymentTerms(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Prepmt. Payment Terms Code" : 3;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Prepmt. Payment Terms Code" : "Payment Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Queue Status"(Field 160).OnLookup.JobQueueEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Queue Status" : 472;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Queue Status" : "Job Queue Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Incoming Document Entry No."(Field 165).OnValidate.IncomingDocument(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Incoming Document Entry No." : 130;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Incoming Document Entry No." : "Incoming Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to E-Mail"(Field 172).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Customer Template Code"(Field 5051).OnValidate.SellToCustTemplate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Customer Template Code" : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Customer Template Code" : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Contact No."(Field 5052).OnLookup.Cont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Contact No."(Field 5052).OnLookup.ContBusinessRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Contact No."(Field 5052).OnValidate.ContBusinessRelation(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Contact No."(Field 5052).OnValidate.Cont(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sell-to Contact No."(Field 5052).OnValidate.Opportunity(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sell-to Contact No." : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sell-to Contact No." : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Contact No."(Field 5053).OnLookup.Cont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Contact No."(Field 5053).OnLookup.ContBusinessRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Contact No."(Field 5053).OnValidate.ContBusinessRelation(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Contact No."(Field 5053).OnValidate.Cont(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bill-to Customer Template Code"(Field 5054).OnValidate.BillToCustTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bill-to Customer Template Code" : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bill-to Customer Template Code" : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CustInvoiceDisc(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CustInvoiceDisc : 19;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CustInvoiceDisc : "Cust. Invoice Disc.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostSalesDelete(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostSalesDelete : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostSalesDelete : "PostSales-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ArchiveManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ArchiveManagement : 5063;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ArchiveManagement : ArchiveManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.O365SalesInvoiceMgmt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.O365SalesInvoiceMgmt : 2310;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.O365SalesInvoiceMgmt : "O365 Sales Invoice Mgmt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.StandardCodesMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.StandardCodesMgt : 170;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.StandardCodesMgt : "Standard Codes Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitRecord(PROCEDURE 10).ArchiveManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitRecord : 5063;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitRecord : ArchiveManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEdit(PROCEDURE 1).SalesHeader2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssistEdit : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssistEdit : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNoSeriesDate(PROCEDURE 40).NoSeries(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoSeriesDate : 308;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoSeriesDate : "No. Series";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).SourceCode(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 230;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "Source Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).SourceCodeSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).PostSalesDelete(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "PostSales-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).ConfirmManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).TempSalesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).ItemChargeAssgntSales(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 5809;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : "Item Charge Assignment (Sales)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).TempItemChargeAssgntSales(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 5809;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : "Item Charge Assignment (Sales)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).TempInteger(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 2000000026;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : Integer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).TempATOLink(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).ATOLink(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateSalesLines(PROCEDURE 4).TransferExtendedText(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLines : 378;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLines : "Transfer Extended Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCurrencyFactor(PROCEDURE 12).UpdateCurrencyExchangeRates(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCurrencyFactor : 1281;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCurrencyFactor : "Update Currency Exchange Rates";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCurrencyFactor(PROCEDURE 12).ConfirmManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCurrencyFactor : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCurrencyFactor : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetHideValidationDialog(PROCEDURE 123).IdentityManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetHideValidationDialog : 9801;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetHideValidationDialog : "Identity Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesLines(PROCEDURE 15).Field(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesLines : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesLines : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesLineAmounts(PROCEDURE 259).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesLineAmounts : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesLineAmounts : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesLinesByFieldNo(PROCEDURE 154).Field(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesLinesByFieldNo : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesLinesByFieldNo : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesLinesByFieldNo(PROCEDURE 154).JobTransferLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesLinesByFieldNo : 1004;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesLinesByFieldNo : "Job Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesLinesByFieldNo(PROCEDURE 154).PermissionManager(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesLinesByFieldNo : 9002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesLinesByFieldNo : "Permission Manager";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmResvDateConflict(PROCEDURE 41).ResvEngMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmResvDateConflict : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmResvDateConflict : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 16).SourceCodeSetup(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteSalesLines(PROCEDURE 20).ReservMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteSalesLines : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteSalesLines : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCustomerCreated(PROCEDURE 18).Cont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCustomerCreated : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCustomerCreated : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCustomerCreated(PROCEDURE 18).ConfirmManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCustomerCreated : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCustomerCreated : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateReqLine(PROCEDURE 33).ReqLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateReqLine : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateReqLine : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateReqLine(PROCEDURE 33).TempReqLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateReqLine : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateReqLine : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCont(PROCEDURE 24).ContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCont : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCont : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCont(PROCEDURE 24).Cust(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCont : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCont : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCont(PROCEDURE 24).OfficeContact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCont : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCont : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCont(PROCEDURE 24).OfficeMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCont : 1630;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCont : "Office Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCont(PROCEDURE 27).ContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCont : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCont : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCont(PROCEDURE 27).Cust(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCont : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCont : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCont(PROCEDURE 27).Contact(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCont : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCont : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCust(PROCEDURE 25).ContBusinessRelation(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCust : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCust : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCust(PROCEDURE 25).Customer(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCust(PROCEDURE 25).Cont(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCust : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCust : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCust(PROCEDURE 25).CustTemplate(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCust : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCust : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSellToCust(PROCEDURE 25).SearchContact(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSellToCust : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSellToCust : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCust(PROCEDURE 26).ContBusinessRelation(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCust : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCust : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCust(PROCEDURE 26).Cust(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCust(PROCEDURE 26).Cont(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCust : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCust : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCust(PROCEDURE 26).CustTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCust : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCust : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBillToCust(PROCEDURE 26).SearchContact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBillToCust : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBillToCust : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetShippingTime(PROCEDURE 23).ShippingAgentServices(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetShippingTime : 5790;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetShippingTime : "Shipping Agent Services";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSellToCustomerFaxNo(PROCEDURE 209).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSellToCustomerFaxNo : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSellToCustomerFaxNo : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCreditMaxBeforeInsert(PROCEDURE 28).SalesHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCreditMaxBeforeInsert : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCreditMaxBeforeInsert : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCreditMaxBeforeInsert(PROCEDURE 28).ContBusinessRelation(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCreditMaxBeforeInsert : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCreditMaxBeforeInsert : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCreditMaxBeforeInsert(PROCEDURE 28).Cont(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCreditMaxBeforeInsert : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCreditMaxBeforeInsert : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCreditMaxBeforeInsert(PROCEDURE 28).CustCheckCreditLimit(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCreditMaxBeforeInsert : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCreditMaxBeforeInsert : "Cust-Check Cr. Limit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInvtPutAwayPick(PROCEDURE 29).WhseRequest(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInvtPutAwayPick : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInvtPutAwayPick : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTask(PROCEDURE 30).TempTask(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTask : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTask : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAllLineDim(PROCEDURE 34).ATOLink(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAllLineDim : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAllLineDim : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAdjmtValueEntries(PROCEDURE 37).ItemLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAdjmtValueEntries : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAdjmtValueEntries : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAdjmtValueEntries(PROCEDURE 37).SalesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAdjmtValueEntries : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAdjmtValueEntries : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAdjmtValueEntries(PROCEDURE 37).SalesShptLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAdjmtValueEntries : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAdjmtValueEntries : "Sales Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAdjmtValueEntries(PROCEDURE 37).ReturnRcptLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAdjmtValueEntries : 6661;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAdjmtValueEntries : "Return Receipt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAdjmtValueEntries(PROCEDURE 37).TempValueEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAdjmtValueEntries : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAdjmtValueEntries : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTempAdjmtValueEntries(PROCEDURE 38).ValueEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTempAdjmtValueEntries : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTempAdjmtValueEntries : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPstdDocLinesToRevere(PROCEDURE 39).SalesPostedDocLines(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPstdDocLinesToRevere : 5850;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPstdDocLinesToRevere : "Posted Sales Document Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcInvDiscForHeader(PROCEDURE 45).SalesInvDisc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcInvDiscForHeader : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcInvDiscForHeader : "Sales-Calc. Discount";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InventoryPickConflict(PROCEDURE 46).WarehouseActivityLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InventoryPickConflict : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InventoryPickConflict : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InventoryPickConflict(PROCEDURE 46).SalesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InventoryPickConflict : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InventoryPickConflict : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseShpmntConflict(PROCEDURE 52).WarehouseShipmentLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseShpmntConflict : 7321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseShpmntConflict : "Warehouse Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCreditLimit(PROCEDURE 47).SalesHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCreditLimit : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCreditLimit : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailabilityInLines(PROCEDURE 142).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailabilityInLines : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailabilityInLines : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailabilityInLines(PROCEDURE 142).ItemCheckAvail(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailabilityInLines : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailabilityInLines : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsApprovedForPosting(PROCEDURE 53).PrepaymentMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsApprovedForPosting : 441;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsApprovedForPosting : "Prepayment Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsApprovedForPostingBatch(PROCEDURE 54).PrepaymentMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsApprovedForPostingBatch : 441;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsApprovedForPostingBatch : "Prepayment Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendToPosting(PROCEDURE 57).ErrorMessageMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendToPosting : 28;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendToPosting : "Error Message Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendToPosting(PROCEDURE 57).ErrorMessageHandler(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendToPosting : 29;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendToPosting : "Error Message Handler";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CancelBackgroundPosting(PROCEDURE 48).SalesPostViaJobQueue(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CancelBackgroundPosting : 88;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CancelBackgroundPosting : "Sales Post via Job Queue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 135).DocumentSendingProfile(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 135).DummyReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDocTypeTxt(PROCEDURE 140).IdentityManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDocTypeTxt : 9801;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDocTypeTxt : "Identity Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDocTypeTxt(PROCEDURE 140).ReportDistributionMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDocTypeTxt : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDocTypeTxt : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LinkSalesDocWithOpportunity(PROCEDURE 79).SalesHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LinkSalesDocWithOpportunity : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LinkSalesDocWithOpportunity : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LinkSalesDocWithOpportunity(PROCEDURE 79).Opportunity(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LinkSalesDocWithOpportunity : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LinkSalesDocWithOpportunity : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LinkSalesDocWithOpportunity(PROCEDURE 79).ConfirmManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LinkSalesDocWithOpportunity : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LinkSalesDocWithOpportunity : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SynchronizeAsmHeader(PROCEDURE 56).AsmHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SynchronizeAsmHeader : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SynchronizeAsmHeader : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SynchronizeAsmHeader(PROCEDURE 56).ATOLink(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SynchronizeAsmHeader : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SynchronizeAsmHeader : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckShippingAdvice(PROCEDURE 55).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckShippingAdvice : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckShippingAdvice : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckShippingAdvice(PROCEDURE 55).Item(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckShippingAdvice : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckShippingAdvice : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFilterCustNoByApplyingFilter(PROCEDURE 129).SalesHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFilterCustNoByApplyingFilter : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFilterCustNoByApplyingFilter : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvoicedLineExists(PROCEDURE 156).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvoicedLineExists : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvoicedLineExists : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDimSetForPrepmtAccDefaultDim(PROCEDURE 73).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDimSetForPrepmtAccDefaultDim(PROCEDURE 73).TempSalesLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CollectParamsInBufferForCreateDimSet(PROCEDURE 72).GenPostingSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CollectParamsInBufferForCreateDimSet : 252;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CollectParamsInBufferForCreateDimSet : "General Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CollectParamsInBufferForCreateDimSet(PROCEDURE 72).DefaultDimension(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CollectParamsInBufferForCreateDimSet : 352;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CollectParamsInBufferForCreateDimSet : "Default Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckAvailableCreditLimit(PROCEDURE 67).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckAvailableCreditLimit : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckAvailableCreditLimit : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateItemChargeAssgntSales(PROCEDURE 83).ItemChargeAssgntSales(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateItemChargeAssgntSales : 5809;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateItemChargeAssgntSales : "Item Charge Assignment (Sales)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSalesReleaseRestrictions(PROCEDURE 162).ApprovalsMgmt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSalesReleaseRestrictions : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSalesReleaseRestrictions : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralHeadersExist(PROCEDURE 82).DeferralHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralHeadersExist : 1701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralHeadersExist : "Deferral Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralHeadersExist(PROCEDURE 82).DeferralUtilities(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralHeadersExist : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralHeadersExist : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasItemChargeAssignment(PROCEDURE 170).ItemChargeAssgntSales(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasItemChargeAssignment : 5809;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasItemChargeAssignment : "Item Charge Assignment (Sales)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyShipToCustomerAddressFieldsFromCustomer(PROCEDURE 98).SellToCustTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyShipToCustomerAddressFieldsFromCustomer : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyShipToCustomerAddressFieldsFromCustomer : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmCloseUnposted(PROCEDURE 104).InstructionMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmCloseUnposted : 1330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmCloseUnposted : "Instruction Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateOpportunity(PROCEDURE 108).Opp(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateOpportunity : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateOpportunity : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateOpportunity(PROCEDURE 108).OpportunityEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateOpportunity : 5093;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateOpportunity : "Opportunity Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateOpportunity(PROCEDURE 108).ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateOpportunity : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateOpportunity : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetOpportunityEntryNo(PROCEDURE 106).OpportunityEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetOpportunityEntryNo : 5093;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetOpportunityEntryNo : "Opportunity Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetOpportunityEntryEstimatedValue(PROCEDURE 107).OpportunityEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetOpportunityEntryEstimatedValue : 5093;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetOpportunityEntryEstimatedValue : "Opportunity Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateTaxAreaCode(PROCEDURE 36).TaxArea(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateTaxAreaCode : 318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateTaxAreaCode : "Tax Area";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateTaxAreaCode(PROCEDURE 36).IdentityManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateTaxAreaCode : 9801;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateTaxAreaCode : "Identity Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetWorkDescription(PROCEDURE 120).TempBlob(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetWorkDescription : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetWorkDescription : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWorkDescriptionWorkDescriptionCalculated(PROCEDURE 160).TempBlob(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWorkDescriptionWorkDescriptionCalculated : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWorkDescriptionWorkDescriptionCalculated : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupContact(PROCEDURE 122).ContactBusinessRelation(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupContact : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupContact : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUserSetupSalespersonCode(PROCEDURE 261).UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUserSetupSalespersonCode : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUserSetupSalespersonCode : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectSalesHeaderCustomerTemplate(PROCEDURE 127).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectSalesHeaderCustomerTemplate : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectSalesHeaderCustomerTemplate : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectSalesHeaderCustomerTemplate(PROCEDURE 127).ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectSalesHeaderCustomerTemplate : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectSalesHeaderCustomerTemplate : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ModifyBillToCustomerAddress(PROCEDURE 194).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyBillToCustomerAddress : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyBillToCustomerAddress : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ModifyCustomerAddress(PROCEDURE 150).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyCustomerAddress : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyCustomerAddress : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowModifyAddressNotification(PROCEDURE 157).NotificationLifecycleMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowModifyAddressNotification : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowModifyAddressNotification : "Notification Lifecycle Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowModifyAddressNotification(PROCEDURE 157).PageMyNotifications(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowModifyAddressNotification : 1518;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowModifyAddressNotification : "My Notifications";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowInteractionLogEntries(PROCEDURE 131).InteractionLogEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowInteractionLogEntries : 5065;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowInteractionLogEntries : "Interaction Log Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencySymbol(PROCEDURE 146).GeneralLedgerSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencySymbol : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencySymbol : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencySymbol(PROCEDURE 146).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencySymbol : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencySymbol : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShouldLookForCustomerByName(PROCEDURE 181).Customer(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShouldLookForCustomerByName : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShouldLookForCustomerByName : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForBlockedLines(PROCEDURE 220).CurrentSalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForBlockedLines : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForBlockedLines : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForBlockedLines(PROCEDURE 220).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForBlockedLines : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForBlockedLines : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForBlockedLines(PROCEDURE 220).Resource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForBlockedLines : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForBlockedLines : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrepmtAmounts(PROCEDURE 2661).Currency(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrepmtAmounts : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrepmtAmounts : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesSetup(Variable 1033)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesSetup : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesSetup : "Sales & Receivables Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1034)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLAcc(Variable 1035)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLAcc : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLAcc : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesHeader(Variable 1036)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesHeader : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesHeader : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesLine(Variable 1037)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1038)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cust(Variable 1039)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PaymentTerms(Variable 1040)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PaymentTerms : 3;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PaymentTerms : "Payment Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PaymentMethod(Variable 1041)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PaymentMethod : 289;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PaymentMethod : "Payment Method";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1042)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCommentLine(Variable 1043)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCommentLine : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCommentLine : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1045)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAcc(Variable 1046)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAcc : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAcc : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesShptHeader(Variable 1047)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesShptHeader : 110;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesShptHeader : "Sales Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesInvHeader(Variable 1048)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesInvHeader : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesInvHeader : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCrMemoHeader(Variable 1049)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCrMemoHeader : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCrMemoHeader : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReturnRcptHeader(Variable 1050)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReturnRcptHeader : 6660;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReturnRcptHeader : "Return Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesInvHeaderPrepmt(Variable 1101)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesInvHeaderPrepmt : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesInvHeaderPrepmt : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCrMemoHeaderPrepmt(Variable 1100)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCrMemoHeaderPrepmt : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCrMemoHeaderPrepmt : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1051)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenBusPostingGrp : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenBusPostingGrp : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RespCenter(Variable 1053)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RespCenter : 5714;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RespCenter : "Responsibility Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtSetup(Variable 1054)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtSetup : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtSetup : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1055)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseRequest(Variable 1056)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseRequest : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseRequest : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempReservEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempReservEntry : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempReservEntry : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CompanyInfo(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CompanyInfo : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CompanyInfo : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Salesperson(Variable 1932)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Salesperson : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Salesperson : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1058)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1059)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustCheckCreditLimit(Variable 1060)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustCheckCreditLimit : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustCheckCreditLimit : "Cust-Check Cr. Limit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1065)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IdentityManagement(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IdentityManagement : 9801;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IdentityManagement : "Identity Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ApprovalsMgmt(Variable 1082)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ApprovalsMgmt : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApprovalsMgmt : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseSourceHeader(Variable 1073)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseSourceHeader : 5781;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseSourceHeader : "Whse. Validate Source Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesLineReserve(Variable 1066)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesLineReserve : 99000832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesLineReserve : "Sales Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostingSetupMgt(Variable 1085)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostingSetupMgt : 48;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostingSetupMgt : PostingSetupManagement;
    //Variable type has not been exported.

    var
        CANumber: Record "CA Number";
        "--MSPT---": Integer;
        MSPTOrderDetails: Record "MSPT Order Details";
        MSPTHeader: Record "MSPT Header";
        "MSPT Details": Record "MSPT Line";
        "No. of Days": Integer;
        TransShptHeader: Record "Transfer Shipment Header";
        TO_doc: Text;
        temp1: Integer;
        SHA: Record "Sales Header Archive";
        SalesPersonOrPurchsr: Record "Salesperson/Purchaser";
        FlagValue: Boolean;
        ArchiveManagement: Codeunit ArchiveManagement;
}


tableextension 70013 PurhaseheaderExt extends "Purchase Header"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,TFS223871,QC1.0,B2B1.0,POAU,Rev01

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change TableRelation on ""Buy-from Vendor No."(Field 2)". Please convert manually.

        modify("No.")
        {
            CaptionML = ENU = 'Purchase Order No', ENN = 'Purchase Order No';
        }
        modify("Pay-to Vendor No.")
        {
            CaptionML = ENU = 'Vendor No.', ENN = 'Vendor No.';

            //Unsupported feature: Change NotBlank on ""Pay-to Vendor No."(Field 4)". Please convert manually.

        }

        //Unsupported feature: Change ValidateTableRelation on ""Pay-to Name"(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Pay-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Date"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Vendor Posting Group"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Factor"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purchaser Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Printed"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Recalculate Invoice Disc."(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Recalculate Invoice Disc."(Field 56)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Receiving No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Posting No."(Field 65)". Please convert manually.

        modify("Vendor Cr. Memo No.")
        {
            CaptionML = ENU = 'Debit Note No.', ENN = 'Debit Note No.';
        }

        //Unsupported feature: Change Data type on ""Transport Method"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""VAT Country/Region Code"(Field 78)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Buy-from Vendor Name"(Field 79)". Please convert manually.


        //Unsupported feature: Change Data type on ""Buy-from Address 2"(Field 82)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Buy-from City"(Field 83)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Buy-from City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Buy-from City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Pay-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Pay-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Pay-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Pay-to Country/Region Code"(Field 87)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Buy-from Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Buy-from Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Buy-from Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Buy-from Country/Region Code"(Field 90)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 94)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Order Address Code"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 107)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 120)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 120)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Value"(Field 122)". Please convert manually.


        //Unsupported feature: Change Editable on ""Buy-from IC Partner Code"(Field 125)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to IC Partner Code"(Field 126)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Compress Prepayment"(Field 136)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Queue Status"(Field 160)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Queue Status"(Field 160)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Queue Entry ID"(Field 161)". Please convert manually.


        //Unsupported feature: Change Numeric on ""Payment Reference"(Field 171)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""A. Rcd. Not Inv. Ex. VAT (LCY)"(Field 300)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amt. Rcd. Not Invoiced (LCY)"(Field 301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Invoice Discount Amount"(Field 1305)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Amount"(Field 1305)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Archived Versions"(Field 5043)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Archived Versions"(Field 5043)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Partially Invoiced"(Field 5751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Partially Invoiced"(Field 5751)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Received"(Field 5752)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Received"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Posting from Whse. Ref."(Field 5753)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Return Shipment No."(Field 5804)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Pending Approvals"(Field 9001)". Please convert manually.


        //Unsupported feature: CodeModification on ""Buy-from Vendor No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." = '' THEN
          InitRecord;
        TestStatusOpen;
        IF ("Buy-from Vendor No." <> xRec."Buy-from Vendor No.") AND
           (xRec."Buy-from Vendor No." <> '')
        THEN BEGIN
          CheckDropShipmentLineExists;
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(ConfirmChangeQst,FALSE,BuyFromVendorTxt);
          IF Confirmed THEN BEGIN
            IF InitFromVendor("Buy-from Vendor No.",FIELDCAPTION("Buy-from Vendor No.")) THEN
              EXIT;

            CheckReceiptInfo(PurchLine,FALSE);
            CheckPrepmtInfo(PurchLine);
            CheckReturnInfo(PurchLine,FALSE);

            PurchLine.RESET;
          END ELSE BEGIN
            Rec := xRec;
            EXIT;
          END;
        END;

        GetVend("Buy-from Vendor No.");
        Vend.CheckBlockedVendOnDocs(Vend,FALSE);
        Vend.TESTFIELD("Gen. Bus. Posting Group");
        OnAfterCheckBuyFromVendor(Rec,xRec,Vend);

        "Buy-from Vendor Name" := Vend.Name;
        "Buy-from Vendor Name 2" := Vend."Name 2";
        CopyBuyFromVendorAddressFieldsFromVendor(Vend,FALSE);
        IF NOT SkipBuyFromContact THEN
          "Buy-from Contact" := Vend.Contact;
        "Gen. Bus. Posting Group" := Vend."Gen. Bus. Posting Group";
        "VAT Bus. Posting Group" := Vend."VAT Bus. Posting Group";
        "Tax Area Code" := Vend."Tax Area Code";
        "Tax Liable" := Vend."Tax Liable";
        "VAT Country/Region Code" := Vend."Country/Region Code";
        "VAT Registration No." := Vend."VAT Registration No.";
        VALIDATE("Lead Time Calculation",Vend."Lead Time Calculation");
        "Responsibility Center" := UserSetupMgt.GetRespCenter(1,Vend."Responsibility Center");
        ValidateEmptySellToCustomerAndLocation;
        OnAfterCopyBuyFromVendorFieldsFromVendor(Rec,Vend,xRec);

        IF "Buy-from Vendor No." = xRec."Pay-to Vendor No." THEN
          IF ReceivedPurchLinesExist OR ReturnShipmentExist THEN BEGIN
            TESTFIELD("VAT Bus. Posting Group",xRec."VAT Bus. Posting Group");
            TESTFIELD("Gen. Bus. Posting Group",xRec."Gen. Bus. Posting Group");
          END;

        "Buy-from IC Partner Code" := Vend."IC Partner Code";
        "Send IC Document" := ("Buy-from IC Partner Code" <> '') AND ("IC Direction" = "IC Direction"::Outgoing);

        IF Vend."Pay-to Vendor No." <> '' THEN
          VALIDATE("Pay-to Vendor No.",Vend."Pay-to Vendor No.")
        ELSE BEGIN
          IF "Buy-from Vendor No." = "Pay-to Vendor No." THEN
            SkipPayToContact := TRUE;
          VALIDATE("Pay-to Vendor No.","Buy-from Vendor No.");
          SkipPayToContact := FALSE;
        END;
        "Order Address Code" := '';

        CopyPayToVendorAddressFieldsFromVendor(Vend,FALSE);
        IF IsCreditDocType THEN BEGIN
          "Ship-to Name" := Vend.Name;
          "Ship-to Name 2" := Vend."Name 2";
          CopyShipToVendorAddressFieldsFromVendor(Vend,TRUE);
          "Ship-to Contact" := Vend.Contact;
          "Shipment Method Code" := Vend."Shipment Method Code";
          IF Vend."Location Code" <> '' THEN
            VALIDATE("Location Code",Vend."Location Code");
        END;

        OnValidateBuyFromVendorNoBeforeRecreateLines(Rec,CurrFieldNo);

        IF (xRec."Buy-from Vendor No." <> "Buy-from Vendor No.") OR
           (xRec."Currency Code" <> "Currency Code") OR
           (xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group") OR
           (xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group")
        THEN
          RecreatePurchLines(BuyFromVendorTxt);

        IF NOT SkipBuyFromContact THEN
          UpdateBuyFromCont("Buy-from Vendor No.");

        IF "No." <> '' THEN
          StandardCodesMgt.CheckShowPurchRecurringLinesNotification(Rec);

        IF (xRec."Buy-from Vendor No." <> '') AND (xRec."Buy-from Vendor No." <> "Buy-from Vendor No.") THEN
          RecallModifyAddressNotification(GetModifyVendorAddressNotificationId);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //InitRecOnVendUpdate;
        //TESTFIELD(Status,Status::Open);
        //// Added by Pranavi on 22-Jul-2016 for TIN No of vendor checking
        //IF "Document Type" = "Document Type"::Order THEN
        //BEGIN
        //  Vndr.RESET;
        //  Vndr.SETRANGE(Vndr."No.","Buy-from Vendor No.");
        //  IF Vndr.FINDFIRST THEN
        //    IF Vndr."Gen. Bus. Posting Group" <> 'FOREIGN' THEN
        //      IF (Vndr."T.I.N. No." = '') AND (Vndr."T.I.N Status" IN[Vndr."T.I.N Status"::" ",Vndr."T.I.N Status"::TINAPPLIED]) THEN
        //        ERROR('Please enter T.I.N Number in Vendor Card in Tax Information Tab!\IF TIN Not Applicable update TIN Status to TIN Invalid!');
        //END;
        //// end by pranavi
        //
        //IF ("Buy-from Vendor No." <> xRec."Buy-from Vendor No.") AND
        //   (xRec."Buy-from Vendor No." <> '')
        //THEN BEGIN
        //  CheckDropShipmentLineExists;
        //  IF GetHideValidationDialog OR NOT GUIALLOWED THEN
        //    Confirmed := TRUE
        //  ELSE
        //    Confirmed := CONFIRM(ConfirmChangeQst,FALSE,BuyFromVendorTxt);
        //  IF Confirmed THEN BEGIN
        //    IF InitFromVendor("Buy-from Vendor No.",FIELDCAPTION("Buy-from Vendor No.")) THEN
        //      EXIT;
        //{>>>>>>>} ORIGINAL
        //    END;
        //    IF "Document Type" = "Document Type"::Order THEN
        //      PurchLine.SETFILTER("Quantity Received",'<>0')
        //    ELSE
        //      IF "Document Type" = "Document Type"::Invoice THEN BEGIN
        //        PurchLine.SETRANGE("Buy-from Vendor No.",xRec."Buy-from Vendor No.");
        //        PurchLine.SETFILTER("Receipt No.",'<>%1','');
        //      END;
        //    IF PurchLine.FINDFIRST THEN
        //      IF "Document Type" = "Document Type"::Order THEN
        //        PurchLine.TESTFIELD("Quantity Received",0)
        //      ELSE
        //        PurchLine.TESTFIELD("Receipt No.",'');
        //
        //    PurchLine.SETRANGE("Receipt No.");
        //    PurchLine.SETRANGE("Quantity Received");
        //    PurchLine.SETRANGE("Buy-from Vendor No.");
        //{=======} MODIFIED
        //{=======} TARGET
        //    END ELSE
        //    BEGIN
        //      IF PurchLine.FIND('-') THEN
        //      REPEAT
        //        PurchLine."Buy-from Vendor No.":="Buy-from Vendor No.";
        //        PurchLine.VALIDATE(PurchLine."Buy-from Vendor No.","Buy-from Vendor No.");
        //        PurchLine.MODIFY;
        //      UNTIL PurchLine.NEXT=0;
        //    END;
        //    IF "Document Type" = "Document Type"::Order THEN
        //      PurchLine.SETFILTER("Quantity Received",'<>0')
        //    ELSE
        //      IF "Document Type" = "Document Type"::Invoice THEN BEGIN
        //        PurchLine.SETRANGE("Buy-from Vendor No.",xRec."Buy-from Vendor No.");
        //        PurchLine.SETFILTER("Receipt No.",'<>%1','');
        //      END;
        //    IF PurchLine.FINDFIRST THEN
        //      IF "Document Type" = "Document Type"::Order THEN
        //       // MESSAGE('ok')
        //        PurchLine.TESTFIELD("Quantity Received",0)
        //      ELSE
        //        PurchLine.TESTFIELD("Receipt No.",'');
        //
        //    PurchLine.SETRANGE("Receipt No.");
        //    PurchLine.SETRANGE("Quantity Received");
        //    PurchLine.SETRANGE("Buy-from Vendor No.");
        //{<<<<<<<}
        //
        //    CheckReceiptInfo(PurchLine,FALSE);
        //    CheckPrepmtInfo(PurchLine);
        //    CheckReturnInfo(PurchLine,FALSE);
        //
        //    PurchLine.RESET;
        //  END ELSE BEGIN
        //    Rec := xRec;
        //    EXIT;
        //  END;
        //END;
        //
        //GetVend("Buy-from Vendor No.");
        //Vend.CheckBlockedVendOnDocs(Vend,FALSE);
        //{>>>>>>>} ORIGINAL
        //VALIDATE("GST Vendor Type",Vend."GST Vendor Type");
        //"RCM Exempt" := CheckRCMExemptDate;
        //{=======} MODIFIED
        //{=======} TARGET
        //VALIDATE("GST Vendor Type",Vend."GST Vendor Type");
        //"RCM Exempt" := CheckRCMExemptDate;
        //Vend.TESTFIELD(Vend."Updated in Cashflow",TRUE);
        //{<<<<<<<}
        //Vend.TESTFIELD("Gen. Bus. Posting Group");
        //OnAfterCheckBuyFromVendor(Rec,xRec,Vend);
        //
        //"Buy-from Vendor Name" := Vend.Name;
        //"Buy-from Vendor Name 2" := Vend."Name 2";
        //{>>>>>>>} ORIGINAL
        //"Buy-from Address" := Vend.Address;
        //"Buy-from Address 2" := Vend."Address 2";
        //"Buy-from City" := Vend.City;
        //"Buy-from Post Code" := Vend."Post Code";
        //"Buy-from County" := Vend.County;
        //"Buy-from Country/Region Code" := Vend."Country/Region Code";
        //{=======} MODIFIED
        //CopyBuyFromVendorAddressFieldsFromVendor(Vend,FALSE);
        //{=======} TARGET
        //"Buy-from Address" := Vend.Address;
        //"Buy-from Address 2" := Vend."Address 2";
        //"Buy-from Address 3":=Vend."Address 3";
        //"Buy-from City" := Vend.City;
        //"Buy-from Post Code" := Vend."Post Code";
        //"Buy-from County" := Vend.County;
        //"Buy-from Country/Region Code" := Vend."Country/Region Code";
        ////Structure:=Vend."Tax Area Code";
        ////Structure := 'PURCH_GST';    //pranavi
        ////VALIDATE(Structure,'PURCH_GST');
        //{<<<<<<<}
        //IF NOT SkipBuyFromContact THEN
        //  "Buy-from Contact" := Vend.Contact;
        //"Gen. Bus. Posting Group" := Vend."Gen. Bus. Posting Group";
        //IF Vend."Gen. Bus. Posting Group" = 'FOREIGN' THEN
        //BEGIN
        //   "Shipment Method Code" := 'EX2';
        //  "Type of Supplier":= "Type of Supplier"::Importer;
        //  "GST Inv. Rounding Precision":= 0.01;
        //  //Structure := 'PUR_FR_GST';
        //    VALIDATE(Structure,'PUR_FR_GST');//modified by durga on 06-12-2021
        //END
        //ELSE
        //BEGIN
        //  "Shipment Method Code" := 'DOD';
        //  //Structure := 'PURCH_GST';
        //   VALIDATE(Structure,'PURCH_GST');
        //END;
        //"VAT Bus. Posting Group" := Vend."VAT Bus. Posting Group";
        //"Tax Area Code" := Vend."Tax Area Code";
        //"Tax Liable" := Vend."Tax Liable";
        //"VAT Country/Region Code" := Vend."Country/Region Code";
        //"VAT Registration No." := Vend."VAT Registration No.";
        //VALIDATE("Lead Time Calculation",Vend."Lead Time Calculation");
        //"Responsibility Center" := UserSetupMgt.GetRespCenter(1,Vend."Responsibility Center");
        //VALIDATE("Sell-to Customer No.",'');
        //VALIDATE("Location Code",UserSetupMgt.GetLocation(1,Vend."Location Code","Responsibility Center"));
        //VALIDATE(Structure,Vend.Structure);
        //"Excise Bus. Posting Group" := Vend."Excise Bus. Posting Group";
        //"Associated Enterprises" := Vend."Associated Enterprises";
        //ValidateEmptySellToCustomerAndLocation;
        //OnAfterCopyBuyFromVendorFieldsFromVendor(Rec,Vend,xRec);
        //
        //VALIDATE("Sell-to Customer No.",'');
        //VALIDATE("Location Code",UserSetupMgt.GetLocation(1,Vend."Location Code","Responsibility Center"));
        ////VALIDATE(Structure,'PURCH_GST');
        //"Excise Bus. Posting Group" := Vend."Excise Bus. Posting Group";
        //"Associated Enterprises" := Vend."Associated Enterprises";
        //IF "Buy-from Vendor No." = xRec."Pay-to Vendor No." THEN
        //  IF ReceivedPurchLinesExist OR ReturnShipmentExist THEN BEGIN
        //    TESTFIELD("VAT Bus. Posting Group",xRec."VAT Bus. Posting Group");
        //    TESTFIELD("Gen. Bus. Posting Group",xRec."Gen. Bus. Posting Group");
        //  END;
        //
        //"Buy-from IC Partner Code" := Vend."IC Partner Code";
        //"Send IC Document" := ("Buy-from IC Partner Code" <> '') AND ("IC Direction" = "IC Direction"::Outgoing);
        //
        //IF Vend."Pay-to Vendor No." <> '' THEN
        //  VALIDATE("Pay-to Vendor No.",Vend."Pay-to Vendor No.")
        //ELSE BEGIN
        //  IF "Buy-from Vendor No." = "Pay-to Vendor No." THEN
        //    SkipPayToContact := TRUE;
        //  VALIDATE("Pay-to Vendor No.","Buy-from Vendor No.");
        //  SkipPayToContact := FALSE;
        //END;
        //"Order Address Code" := '';
        //
        //CopyPayToVendorAddressFieldsFromVendor(Vend,FALSE);
        //IF IsCreditDocType THEN BEGIN
        //  "Ship-to Name" := Vend.Name;
        //  "Ship-to Name 2" := Vend."Name 2";
        //  CopyShipToVendorAddressFieldsFromVendor(Vend,TRUE);
        //  "Ship-to Contact" := Vend.Contact;
        //  "Shipment Method Code" := Vend."Shipment Method Code";
        //  IF Vend."Location Code" <> '' THEN
        //    VALIDATE("Location Code",Vend."Location Code");
        //END;
        //
        //OnValidateBuyFromVendorNoBeforeRecreateLines(Rec,CurrFieldNo);
        //
        //IF (xRec."Buy-from Vendor No." <> "Buy-from Vendor No.") OR
        //   (xRec."Currency Code" <> "Currency Code") OR
        //   (xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group") OR
        //   (xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group")
        //THEN
        //  RecreatePurchLines(BuyFromVendorTxt);
        //
        //IF NOT SkipBuyFromContact THEN
        //  UpdateBuyFromCont("Buy-from Vendor No.");
        //
        //IF "No." <> '' THEN
        //  StandardCodesMgt.CheckShowPurchRecurringLinesNotification(Rec);
        //
        //IF (xRec."Buy-from Vendor No." <> '') AND (xRec."Buy-from Vendor No." <> "Buy-from Vendor No.") THEN
        //  RecallModifyAddressNotification(GetModifyVendorAddressNotificationId);
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          GetPurchSetup;
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
        end;
        */
        //end;

        //Unsupported feature: Deletion on ""Pay-to Vendor No."(Field 4).OnValidate". Please convert manually.



        //Unsupported feature: CodeModification on ""Pay-to Name"(Field 5).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Pay-to Vendor No." <> '' THEN
          Vendor.GET("Pay-to Vendor No.");

        IF Vendor.LookupVendor(Vendor) THEN BEGIN
          "Pay-to Name" := Vendor.Name;
          VALIDATE("Pay-to Vendor No.",Vendor."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Pay-to Vendor No." <> '' then
          Vendor.Get("Pay-to Vendor No.");

        if Vendor.LookupVendor(Vendor) then begin
          "Pay-to Name" := Vendor.Name;
          Validate("Pay-to Vendor No.",Vendor."No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Pay-to Name"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ShouldLookForVendorByName("Pay-to Vendor No.") THEN
          VALIDATE("Pay-to Vendor No.",Vendor.GetVendorNo("Pay-to Name"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ShouldLookForVendorByName("Pay-to Vendor No.") then
          Validate("Pay-to Vendor No.",Vendor.GetVendorNo("Pay-to Name"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Pay-to City"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Pay-to City","Pay-to Post Code","Pay-to County","Pay-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        ModifyPayToVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Pay-to City","Pay-to Post Code","Pay-to County","Pay-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        ModifyPayToVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Pay-to Contact"(Field 10).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Contact.FILTERGROUP(2);
        LookupContact("Pay-to Vendor No.","Pay-to Contact No.",Contact);
        IF PAGE.RUNMODAL(0,Contact) = ACTION::LookupOK THEN
          VALIDATE("Pay-to Contact No.",Contact."No.");
        Contact.FILTERGROUP(0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Contact.FilterGroup(2);
        LookupContact("Pay-to Vendor No.","Pay-to Contact No.",Contact);
        if PAGE.RunModal(0,Contact) = ACTION::LookupOK then
          Validate("Pay-to Contact No.",Contact."No.");
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
          PurchLine.SETRANGE("Document Type",PurchLine."Document Type"::Order);
          PurchLine.SETRANGE("Document No.","No.");
          PurchLine.SETFILTER("Sales Order Line No.",'<>0');
          IF NOT PurchLine.ISEMPTY THEN
            ERROR(
              YouCannotChangeFieldErr,
              FIELDCAPTION("Ship-to Code"));
        END;

        IF "Ship-to Code" <> '' THEN BEGIN
          ShipToAddr.GET("Sell-to Customer No.","Ship-to Code");
          SetShipToAddress(
            ShipToAddr.Name,ShipToAddr."Name 2",ShipToAddr.Address,ShipToAddr."Address 2",
            ShipToAddr.City,ShipToAddr."Post Code",ShipToAddr.County,ShipToAddr."Country/Region Code");
          "Ship-to Contact" := ShipToAddr.Contact;
          "Shipment Method Code" := ShipToAddr."Shipment Method Code";
          IF ShipToAddr."Location Code" <> '' THEN
            VALIDATE("Location Code",ShipToAddr."Location Code");
        END ELSE BEGIN
          TESTFIELD("Sell-to Customer No.");
          Cust.GET("Sell-to Customer No.");
          SetShipToAddress(
            Cust.Name,Cust."Name 2",Cust.Address,Cust."Address 2",
            Cust.City,Cust."Post Code",Cust.County,Cust."Country/Region Code");
          "Ship-to Contact" := Cust.Contact;
          "Shipment Method Code" := Cust."Shipment Method Code";
          IF Cust."Location Code" <> '' THEN
            VALIDATE("Location Code",Cust."Location Code");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Document Type" = "Document Type"::Order) and
           (xRec."Ship-to Code" <> "Ship-to Code")
        then begin
          PurchLine.SetRange("Document Type",PurchLine."Document Type"::Order);
          PurchLine.SetRange("Document No.","No.");
          PurchLine.SetFilter("Sales Order Line No.",'<>0');
          if not PurchLine.IsEmpty then
            Error(
              YouCannotChangeFieldErr,
              FieldCaption("Ship-to Code"));
        end;

        if "Ship-to Code" <> '' then begin
          ShipToAddr.Get("Sell-to Customer No.","Ship-to Code");
        #15..19
          if ShipToAddr."Location Code" <> '' then
            Validate("Location Code",ShipToAddr."Location Code");
        end else begin
          TestField("Sell-to Customer No.");
          Cust.Get("Sell-to Customer No.");
        #25..29
          if Cust."Location Code" <> '' then
            Validate("Location Code",Cust."Location Code");
        end;
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
        TestStatusOpen;
        IF ("Document Type" IN ["Document Type"::Quote,"Document Type"::Order]) AND
           NOT ("Order Date" = xRec."Order Date")
        THEN
          PriceMessageIfPurchLinesExist(FIELDCAPTION("Order Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        PurchLine.SetFilter(PurchLine."Document No.","No.");
        if PurchLine.Find('-') then
        repeat
        PurchLine."Order Date":="Order Date";
        PurchLine.Modify;
        until PurchLine.Next=0;

        GLSetup.Get;

        if not(("Order Date">=GLSetup."Allow Posting From") and
               ("Order Date">=GLSetup."Allow Posting To")) then
         // ERROR('ORDER DATE IS NOT IN SYSTEM RANGE , ONCE CHECK THE ORDER DATE');


        {<<<<<<<}
        if ("Document Type" in ["Document Type"::Quote,"Document Type"::Order]) and
           not ("Order Date" = xRec."Order Date")
        then
          PriceMessageIfPurchLinesExist(FieldCaption("Order Date"));
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

        IF "Incoming Document Entry No." = 0 THEN
          VALIDATE("Document Date","Posting Date");

        IF ("Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"]) AND
           NOT ("Posting Date" = xRec."Posting Date")
        THEN
          PriceMessageIfPurchLinesExist(FIELDCAPTION("Posting Date"));

        IF "Currency Code" <> '' THEN BEGIN
          UpdateCurrencyFactor;
          IF ("Currency Factor" <> xRec."Currency Factor") AND NOT CalledFromWhseDoc THEN
            SkipJobCurrFactorUpdate := NOT ConfirmUpdateCurrencyFactor;
        END;

        IF "Posting Date" <> xRec."Posting Date" THEN
          IF DeferralHeadersExist THEN
            ConfirmUpdateDeferralDate;

        IF PurchLinesExist THEN
          JobUpdatePurchLines(SkipJobCurrFactorUpdate);
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

        if "Incoming Document Entry No." = 0 then
          Validate("Document Date","Posting Date");

        if ("Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"]) and
           not ("Posting Date" = xRec."Posting Date")
        then
          PriceMessageIfPurchLinesExist(FieldCaption("Posting Date"));

        if "Currency Code" <> '' then begin
          UpdateCurrencyFactor;
          if ("Currency Factor" <> xRec."Currency Factor") and not CalledFromWhseDoc then
            SkipJobCurrFactorUpdate := not ConfirmUpdateCurrencyFactor;
        end;

        if "Posting Date" <> xRec."Posting Date" then
          if DeferralHeadersExist then
            ConfirmUpdateDeferralDate;

        if PurchLinesExist then
          JobUpdatePurchLines(SkipJobCurrFactorUpdate);
        */
        //end;


        //Unsupported feature: CodeModification on ""Expected Receipt Date"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Expected Receipt Date" <> 0D THEN
          UpdatePurchLinesByFieldNo(FIELDNO("Expected Receipt Date"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Expected Receipt Date" <> 0D then
          UpdatePurchLinesByFieldNo(FieldNo("Expected Receipt Date"),CurrFieldNo <> 0);
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
        IF xRec."Payment Terms Code" = "Prepmt. Payment Terms Code" THEN
          VALIDATE("Prepmt. Payment Terms Code","Payment Terms Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GLSetup.Get;
        if GLSetup."Active ERP-CF Connection"  then
        Cashflow_Modification; // GST
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
        if xRec."Payment Terms Code" = "Prepmt. Payment Terms Code" then
          Validate("Prepmt. Payment Terms Code","Payment Terms Code");
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

        //Unsupported feature: Deletion on ""Location Code"(Field 28).OnValidate". Please convert manually.



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
          UpdatePurchLinesByFieldNo(FIELDNO("Currency Factor"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Currency Factor" <> xRec."Currency Factor" then
          UpdatePurchLinesByFieldNo(FieldNo("Currency Factor"),CurrFieldNo <> 0);
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
          PurchLine.SETRANGE("Document Type","Document Type");
          PurchLine.SETRANGE("Document No.","No.");
          PurchLine.SETFILTER("Direct Unit Cost",'<>%1',0);
          PurchLine.SETFILTER("VAT %",'<>%1',0);
          IF PurchLine.FIND('-') THEN BEGIN
            IF GetHideValidationDialog OR NOT GUIALLOWED THEN
              RecalculatePrice := TRUE
            ELSE
              RecalculatePrice :=
                ConfirmManagement.ConfirmProcess(
                  STRSUBSTNO(
                    Text025 +
                    Text027,
                    FIELDCAPTION("Prices Including VAT"),PurchLine.FIELDCAPTION("Direct Unit Cost")),
                  TRUE);
            OnAfterConfirmPurchPrice(Rec,PurchLine,RecalculatePrice);
            PurchLine.SetPurchHeader(Rec);

            IF "Currency Code" = '' THEN
              Currency.InitRoundingPrecision
            ELSE
              Currency.GET("Currency Code");

            PurchLine.FINDSET;
            REPEAT
              PurchLine.TESTFIELD("Quantity Invoiced",0);
              PurchLine.TESTFIELD("Prepmt. Amt. Inv.",0);
              IF NOT RecalculatePrice THEN BEGIN
                PurchLine."VAT Difference" := 0;
                PurchLine.UpdateAmounts;
              END ELSE BEGIN
                VatFactor := 1 + PurchLine."VAT %" / 100;
                IF VatFactor = 0 THEN
                  VatFactor := 1;
                IF NOT "Prices Including VAT" THEN
                  VatFactor := 1 / VatFactor;
                IF PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT" THEN
                  VatFactor := 1;
                PurchLine."Direct Unit Cost" :=
                  ROUND(PurchLine."Direct Unit Cost" * VatFactor,Currency."Unit-Amount Rounding Precision");
                PurchLine."Line Discount Amount" :=
                  ROUND(
                    PurchLine.Quantity * PurchLine."Direct Unit Cost" * PurchLine."Line Discount %" / 100,
                    Currency."Amount Rounding Precision");
                LineInvDiscAmt := InvDiscRounding + PurchLine."Inv. Discount Amount" * VatFactor;
                PurchLine."Inv. Discount Amount" := ROUND(LineInvDiscAmt,Currency."Amount Rounding Precision");
                InvDiscRounding := LineInvDiscAmt - PurchLine."Inv. Discount Amount";
                IF PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT" THEN
                  PurchLine."Line Amount" := PurchLine."Amount Including VAT"
                ELSE
                  IF "Prices Including VAT" THEN
                    PurchLine."Line Amount" := PurchLine."Amount Including VAT" + PurchLine."Inv. Discount Amount"
                  ELSE
                    PurchLine."Line Amount" := PurchLine.Amount + PurchLine."Inv. Discount Amount";
                UpdatePrepmtAmounts(PurchLine);
              END;
              PurchLine.MODIFY;
            UNTIL PurchLine.NEXT = 0;
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
          PurchLine.SetRange("Document Type","Document Type");
          PurchLine.SetRange("Document No.","No.");
          PurchLine.SetFilter("Direct Unit Cost",'<>%1',0);
          PurchLine.SetFilter("VAT %",'<>%1',0);
          if PurchLine.Find('-') then begin
            if GetHideValidationDialog or not GuiAllowed then
              RecalculatePrice := true
            else
              RecalculatePrice :=
                ConfirmManagement.ConfirmProcess(
                  StrSubstNo(
                    Text025 +
                    Text027,
                    FieldCaption("Prices Including VAT"),PurchLine.FieldCaption("Direct Unit Cost")),
                  true);
        #19..21
            if "Currency Code" = '' then
              Currency.InitRoundingPrecision
            else
              Currency.Get("Currency Code");

            PurchLine.FindSet;
            repeat
              PurchLine.TestField("Quantity Invoiced",0);
              PurchLine.TestField("Prepmt. Amt. Inv.",0);
              if not RecalculatePrice then begin
                PurchLine."VAT Difference" := 0;
                PurchLine.UpdateAmounts;
              end else begin
                VatFactor := 1 + PurchLine."VAT %" / 100;
                if VatFactor = 0 then
                  VatFactor := 1;
                if not "Prices Including VAT" then
                  VatFactor := 1 / VatFactor;
                if PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT" then
                  VatFactor := 1;
                PurchLine."Direct Unit Cost" :=
                  Round(PurchLine."Direct Unit Cost" * VatFactor,Currency."Unit-Amount Rounding Precision");
                PurchLine."Line Discount Amount" :=
                  Round(
        #46..48
                PurchLine."Inv. Discount Amount" := Round(LineInvDiscAmt,Currency."Amount Rounding Precision");
                InvDiscRounding := LineInvDiscAmt - PurchLine."Inv. Discount Amount";
                if PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT" then
                  PurchLine."Line Amount" := PurchLine."Amount Including VAT"
                else
                  if "Prices Including VAT" then
                    PurchLine."Line Amount" := PurchLine."Amount Including VAT" + PurchLine."Inv. Discount Amount"
                  else
                    PurchLine."Line Amount" := PurchLine.Amount + PurchLine."Inv. Discount Amount";
                UpdatePrepmtAmounts(PurchLine);
              end;
              PurchLine.Modify;
            until PurchLine.Next = 0;
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
        MessageIfPurchLinesExist(FIELDCAPTION("Invoice Disc. Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfPurchLinesExist(FieldCaption("Invoice Disc. Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Language Code"(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        MessageIfPurchLinesExist(FIELDCAPTION("Language Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        MessageIfPurchLinesExist(FieldCaption("Language Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchaser Code"(Field 43).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidatePurchaserOnPurchHeader(Rec,FALSE,FALSE);

        ApprovalEntry.SETRANGE("Table ID",DATABASE::"Purchase Header");
        ApprovalEntry.SETRANGE("Document Type","Document Type");
        ApprovalEntry.SETRANGE("Document No.","No.");
        ApprovalEntry.SETFILTER(Status,'%1|%2',ApprovalEntry.Status::Created,ApprovalEntry.Status::Open);
        IF NOT ApprovalEntry.ISEMPTY THEN
          ERROR(Text042,FIELDCAPTION("Purchaser Code"));

        CreateDim(
          DATABASE::"Salesperson/Purchaser","Purchaser Code",
          DATABASE::Vendor,"Pay-to Vendor No.",
          DATABASE::Campaign,"Campaign No.",
          DATABASE::"Responsibility Center","Responsibility Center");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidatePurchaserOnPurchHeader(Rec,false,false);

        ApprovalEntry.SetRange("Table ID",DATABASE::"Purchase Header");
        ApprovalEntry.SetRange("Document Type","Document Type");
        ApprovalEntry.SetRange("Document No.","No.");
        ApprovalEntry.SetFilter(Status,'%1|%2',ApprovalEntry.Status::Created,ApprovalEntry.Status::Open);
        if not ApprovalEntry.IsEmpty then
          Error(Text042,FieldCaption("Purchaser Code"));
        #9..14
        */
        //end;


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 53).OnLookup". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Bal. Account No.",'');
        VendLedgEntry.SETCURRENTKEY("Vendor No.",Open,Positive,"Due Date");
        VendLedgEntry.SETRANGE("Vendor No.","Pay-to Vendor No.");
        VendLedgEntry.SETRANGE(Open,TRUE);
        IF "Applies-to Doc. No." <> '' THEN BEGIN
          VendLedgEntry.SETRANGE("Document Type","Applies-to Doc. Type");
          VendLedgEntry.SETRANGE("Document No.","Applies-to Doc. No.");
          IF VendLedgEntry.FINDFIRST THEN;
          VendLedgEntry.SETRANGE("Document Type");
          VendLedgEntry.SETRANGE("Document No.");
        END ELSE
          IF "Applies-to Doc. Type" <> 0 THEN BEGIN
            VendLedgEntry.SETRANGE("Document Type","Applies-to Doc. Type");
            IF VendLedgEntry.FINDFIRST THEN;
            VendLedgEntry.SETRANGE("Document Type");
          END ELSE
            IF Amount <> 0 THEN BEGIN
              VendLedgEntry.SETRANGE(Positive,Amount < 0);
              IF VendLedgEntry.FINDFIRST THEN;
              VendLedgEntry.SETRANGE(Positive);
            END;
        ApplyVendEntries.SetPurch(Rec,VendLedgEntry,PurchHeader.FIELDNO("Applies-to Doc. No."));
        ApplyVendEntries.SETTABLEVIEW(VendLedgEntry);
        ApplyVendEntries.SETRECORD(VendLedgEntry);
        ApplyVendEntries.LOOKUPMODE(TRUE);
        IF ApplyVendEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
          ApplyVendEntries.GetVendLedgEntry(VendLedgEntry);
          GenJnlApply.CheckAgainstApplnCurrency(
            "Currency Code",VendLedgEntry."Currency Code",GenJnlLine."Account Type"::Vendor,TRUE);
          "Applies-to Doc. Type" := VendLedgEntry."Document Type";
          "Applies-to Doc. No." := VendLedgEntry."Document No.";
          OnAfterAppliesToDocNoOnLookup(Rec,VendLedgEntry);
        END;
        CLEAR(ApplyVendEntries);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Bal. Account No.",'');
        VendLedgEntry.SetCurrentKey("Vendor No.",Open,Positive,"Due Date");
        VendLedgEntry.SetRange("Vendor No.","Pay-to Vendor No.");
        VendLedgEntry.SetRange(Open,true);
        if "Applies-to Doc. No." <> '' then begin
          VendLedgEntry.SetRange("Document Type","Applies-to Doc. Type");
          VendLedgEntry.SetRange("Document No.","Applies-to Doc. No.");
          if VendLedgEntry.FindFirst then;
          VendLedgEntry.SetRange("Document Type");
          VendLedgEntry.SetRange("Document No.");
        end else
          if "Applies-to Doc. Type" <> 0 then begin
            VendLedgEntry.SetRange("Document Type","Applies-to Doc. Type");
            if VendLedgEntry.FindFirst then;
            VendLedgEntry.SetRange("Document Type");
          end else
            if Amount <> 0 then begin
              VendLedgEntry.SetRange(Positive,Amount < 0);
              if VendLedgEntry.FindFirst then;
              VendLedgEntry.SetRange(Positive);
            end;
        ApplyVendEntries.SetPurch(Rec,VendLedgEntry,PurchHeader.FieldNo("Applies-to Doc. No."));
        ApplyVendEntries.SetTableView(VendLedgEntry);
        ApplyVendEntries.SetRecord(VendLedgEntry);
        ApplyVendEntries.LookupMode(true);
        if ApplyVendEntries.RunModal = ACTION::LookupOK then begin
          ApplyVendEntries.GetVendLedgEntry(VendLedgEntry);
          GenJnlApply.CheckAgainstApplnCurrency(
            "Currency Code",VendLedgEntry."Currency Code",GenJnlLine."Account Type"::Vendor,true);
        #30..32
        end;
        Clear(ApplyVendEntries);
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
          SetAmountToApply("Applies-to Doc. No.","Buy-from Vendor No.");
          SetAmountToApply(xRec."Applies-to Doc. No.","Buy-from Vendor No.");
        END ELSE
          IF ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") AND (xRec."Applies-to Doc. No." = '') THEN
            SetAmountToApply("Applies-to Doc. No.","Buy-from Vendor No.")
          ELSE
            IF ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") AND ("Applies-to Doc. No." = '') THEN
              SetAmountToApply(xRec."Applies-to Doc. No.","Buy-from Vendor No.");
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
          SetAmountToApply("Applies-to Doc. No.","Buy-from Vendor No.");
          SetAmountToApply(xRec."Applies-to Doc. No.","Buy-from Vendor No.");
        end else
          if ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") and (xRec."Applies-to Doc. No." = '') then
            SetAmountToApply("Applies-to Doc. No.","Buy-from Vendor No.")
          else
            if ("Applies-to Doc. No." <> xRec."Applies-to Doc. No.") and ("Applies-to Doc. No." = '') then
              SetAmountToApply(xRec."Applies-to Doc. No.","Buy-from Vendor No.");
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


        //Unsupported feature: CodeModification on ""Vendor Shipment No."(Field 67).OnValidate". Please convert manually.

        //trigger "(Field 67)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Vendor Shipment No." <> "Vendor Shipment No.") AND (Status = Status::Released) AND
           ("Document Type" IN ["Document Type"::Order,"Document Type"::"Return Order"])
        THEN
          WhsePurchRelease.UpdateExternalDocNoForReleasedOrder(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Vendor Shipment No." <> "Vendor Shipment No.") and (Status = Status::Released) and
           ("Document Type" in ["Document Type"::Order,"Document Type"::"Return Order"])
        then
          WhsePurchRelease.UpdateExternalDocNoForReleasedOrder(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Vendor Invoice No."(Field 68).OnValidate". Please convert manually.

        //trigger "(Field 68)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Vendor Invoice No." <> '' THEN
          IF FindPostedDocumentWithSameExternalDocNo(VendorLedgerEntry,"Vendor Invoice No.") THEN
            ShowExternalDocAlreadyExistNotification(VendorLedgerEntry)
          ELSE
            RecallExternalDocAlreadyExistsNotification;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Vendor Invoice No." <> '' then
          if FindPostedDocumentWithSameExternalDocNo(VendorLedgerEntry,"Vendor Invoice No.") then
            ShowExternalDocAlreadyExistNotification(VendorLedgerEntry)
          else
            RecallExternalDocAlreadyExistsNotification;
        */
        //end;


        //Unsupported feature: CodeModification on ""Vendor Cr. Memo No."(Field 69).OnValidate". Please convert manually.

        //trigger  Memo No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Vendor Cr. Memo No." <> '' THEN
          IF FindPostedDocumentWithSameExternalDocNo(VendorLedgerEntry,"Vendor Cr. Memo No.") THEN
            ShowExternalDocAlreadyExistNotification(VendorLedgerEntry)
          ELSE
            RecallExternalDocAlreadyExistsNotification;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Vendor Cr. Memo No." <> '' then
          if FindPostedDocumentWithSameExternalDocNo(VendorLedgerEntry,"Vendor Cr. Memo No.") then
            ShowExternalDocAlreadyExistNotification(VendorLedgerEntry)
          else
            RecallExternalDocAlreadyExistsNotification;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sell-to Customer No."(Field 72).OnValidate". Please convert manually.

        //trigger "(Field 72)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Document Type" = "Document Type"::Order) AND
           (xRec."Sell-to Customer No." <> "Sell-to Customer No.")
        THEN BEGIN
          PurchLine.SETRANGE("Document Type",PurchLine."Document Type"::Order);
          PurchLine.SETRANGE("Document No.","No.");
          PurchLine.SETFILTER("Sales Order Line No.",'<>0');
          IF NOT PurchLine.ISEMPTY THEN
            ERROR(
              YouCannotChangeFieldErr,
              FIELDCAPTION("Sell-to Customer No."));

          PurchLine.SETRANGE("Sales Order Line No.");
          PurchLine.SETFILTER("Special Order Sales Line No.",'<>0');
          IF NOT PurchLine.ISEMPTY THEN
            ERROR(
              YouCannotChangeFieldErr,
              FIELDCAPTION("Sell-to Customer No."));
        END;

        IF "Sell-to Customer No." = '' THEN
          UpdateLocationCode('')
        ELSE
          VALIDATE("Ship-to Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Document Type" = "Document Type"::Order) and
           (xRec."Sell-to Customer No." <> "Sell-to Customer No.")
        then begin
          PurchLine.SetRange("Document Type",PurchLine."Document Type"::Order);
          PurchLine.SetRange("Document No.","No.");
          PurchLine.SetFilter("Sales Order Line No.",'<>0');
          if not PurchLine.IsEmpty then
            Error(
              YouCannotChangeFieldErr,
              FieldCaption("Sell-to Customer No."));

          PurchLine.SetRange("Sales Order Line No.");
          PurchLine.SetFilter("Special Order Sales Line No.",'<>0');
          if not PurchLine.IsEmpty then
            Error(
              YouCannotChangeFieldErr,
              FieldCaption("Sell-to Customer No."));
        end;

        if "Sell-to Customer No." = '' then
          UpdateLocationCode('')
        else
          Validate("Ship-to Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 74).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF (xRec."Buy-from Vendor No." = "Buy-from Vendor No.") AND
           (xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group")
        THEN BEGIN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            "VAT Bus. Posting Group" := GenBusPostingGrp."Def. VAT Bus. Posting Group";
          RecreatePurchLines(FIELDCAPTION("Gen. Bus. Posting Group"));
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if (xRec."Buy-from Vendor No." = "Buy-from Vendor No.") and
           (xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group")
        then begin
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            "VAT Bus. Posting Group" := GenBusPostingGrp."Def. VAT Bus. Posting Group";
          RecreatePurchLines(FieldCaption("Gen. Bus. Posting Group"));
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Transaction Type"(Field 76).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FIELDNO("Transaction Type"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FieldNo("Transaction Type"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transport Method"(Field 77).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FIELDNO("Transport Method"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FieldNo("Transport Method"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Vendor Name"(Field 79).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Buy-from Vendor No." <> '' THEN
          Vendor.GET("Buy-from Vendor No.");

        IF Vendor.LookupVendor(Vendor) THEN BEGIN
          "Buy-from Vendor Name" := Vendor.Name;
          VALIDATE("Buy-from Vendor No.",Vendor."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Buy-from Vendor No." <> '' then
          Vendor.Get("Buy-from Vendor No.");

        if Vendor.LookupVendor(Vendor) then begin
          "Buy-from Vendor Name" := Vendor.Name;
          Validate("Buy-from Vendor No.",Vendor."No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Vendor Name"(Field 79).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ShouldLookForVendorByName("Buy-from Vendor No.") THEN
          VALIDATE("Buy-from Vendor No.",Vendor.GetVendorNo("Buy-from Vendor Name"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ShouldLookForVendorByName("Buy-from Vendor No.") then
          Validate("Buy-from Vendor No.",Vendor.GetVendorNo("Buy-from Vendor Name"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Address"(Field 81).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FIELDNO("Pay-to Address"));
        ModifyVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FieldNo("Pay-to Address"));
        ModifyVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Address 2"(Field 82).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FIELDNO("Pay-to Address 2"));
        ModifyVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FieldNo("Pay-to Address 2"));
        ModifyVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from City"(Field 83).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        UpdatePayToAddressFromBuyFromAddress(FIELDNO("Pay-to City"));
        ModifyVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        UpdatePayToAddressFromBuyFromAddress(FieldNo("Pay-to City"));
        ModifyVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Contact"(Field 84).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Buy-from Vendor No." = '' THEN
          EXIT;

        Contact.FILTERGROUP(2);
        LookupContact("Buy-from Vendor No.","Buy-from Contact No.",Contact);
        IF PAGE.RUNMODAL(0,Contact) = ACTION::LookupOK THEN
          VALIDATE("Buy-from Contact No.",Contact."No.");
        Contact.FILTERGROUP(0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Buy-from Vendor No." = '' then
          exit;

        Contact.FilterGroup(2);
        LookupContact("Buy-from Vendor No.","Buy-from Contact No.",Contact);
        if PAGE.RunModal(0,Contact) = ACTION::LookupOK then
          Validate("Buy-from Contact No.",Contact."No.");
        Contact.FilterGroup(0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Pay-to Post Code"(Field 85).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Pay-to City","Pay-to Post Code","Pay-to County","Pay-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        ModifyPayToVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Pay-to City","Pay-to Post Code","Pay-to County","Pay-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        ModifyPayToVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Post Code"(Field 88).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        UpdatePayToAddressFromBuyFromAddress(FIELDNO("Pay-to Post Code"));
        ModifyVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        UpdatePayToAddressFromBuyFromAddress(FieldNo("Pay-to Post Code"));
        ModifyVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from County"(Field 89).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FIELDNO("Pay-to County"));
        ModifyVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FieldNo("Pay-to County"));
        ModifyVendorAddress;
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Country/Region Code"(Field 90).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FIELDNO("Pay-to Country/Region Code"));
        ModifyVendorAddress;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePayToAddressFromBuyFromAddress(FieldNo("Pay-to Country/Region Code"));
        ModifyVendorAddress;
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


        //Unsupported feature: CodeModification on ""Order Address Code"(Field 95).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Order Address Code" <> '' THEN BEGIN
          OrderAddr.GET("Buy-from Vendor No.","Order Address Code");
          "Buy-from Vendor Name" := OrderAddr.Name;
          "Buy-from Vendor Name 2" := OrderAddr."Name 2";
          "Buy-from Address" := OrderAddr.Address;
          "Buy-from Address 2" := OrderAddr."Address 2";
          "Buy-from City" := OrderAddr.City;
          "Buy-from Contact" := OrderAddr.Contact;
          "Buy-from Post Code" := OrderAddr."Post Code";
          "Buy-from County" := OrderAddr.County;
          "Buy-from Country/Region Code" := OrderAddr."Country/Region Code";

          IF IsCreditDocType THEN BEGIN
            SetShipToAddress(
              OrderAddr.Name,OrderAddr."Name 2",OrderAddr.Address,OrderAddr."Address 2",
              OrderAddr.City,OrderAddr."Post Code",OrderAddr.County,OrderAddr."Country/Region Code");
            "Ship-to Contact" := OrderAddr.Contact;
          END
        END ELSE BEGIN
          GetVend("Buy-from Vendor No.");
          "Buy-from Vendor Name" := Vend.Name;
          "Buy-from Vendor Name 2" := Vend."Name 2";
          CopyBuyFromVendorAddressFieldsFromVendor(Vend,TRUE);

          IF IsCreditDocType THEN BEGIN
            "Ship-to Name" := Vend.Name;
            "Ship-to Name 2" := Vend."Name 2";
            CopyShipToVendorAddressFieldsFromVendor(Vend,TRUE);
            "Ship-to Contact" := Vend.Contact;
            "Shipment Method Code" := Vend."Shipment Method Code";
            IF Vend."Location Code" <> '' THEN
              VALIDATE("Location Code",Vend."Location Code");
          END
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //IF "Order Address Code" <> '' THEN BEGIN
        //  OrderAddr.GET("Buy-from Vendor No.","Order Address Code");
        //  "Buy-from Vendor Name" := OrderAddr.Name;
        //  "Buy-from Vendor Name 2" := OrderAddr."Name 2";
        //  "Buy-from Address" := OrderAddr.Address;
        //  "Buy-from Address 2" := OrderAddr."Address 2";
        //  "Buy-from City" := OrderAddr.City;
        //  "Buy-from Contact" := OrderAddr.Contact;
        //  "Buy-from Post Code" := OrderAddr."Post Code";
        //  "Buy-from County" := OrderAddr.County;
        //  "Buy-from Country/Region Code" := OrderAddr."Country/Region Code";
        //{>>>>>>>} ORIGINAL
        //  "GST Order Address State" := OrderAddr.State;
        //  IF "GST Vendor Type" IN ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,
        //                           "GST Vendor Type"::SEZ,"GST Vendor Type"::Exempted]
        //  THEN
        //    IF OrderAddr."GST Registration No." = '' THEN
        //      IF OrderAddr."ARN No." = '' THEN
        //        ERROR(OrderAddGSTARNErr);
        //  "Order Address GST Reg. No." := OrderAddr."GST Registration No.";
        //  PurchLine.SETRANGE("Document Type","Document Type");
        //  PurchLine.SETRANGE("Document No.","No.");
        //  IF "GST Vendor Type" = "GST Vendor Type"::Unregistered THEN
        //    TESTFIELD("GST Order Address State");
        //  IF "GST Vendor Type" IN ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,
        //                           "GST Vendor Type"::SEZ,"GST Vendor Type"::Exempted]
        //  THEN
        //    IF "Vendor GST Reg. No." = '' THEN
        //      IF Vendor.GET("Buy-from Vendor No.") THEN
        //        IF Vendor."ARN No." = '' THEN
        //          ERROR(VendGSTARNErr);
        //  IF PurchLine.FINDSET THEN
        //    REPEAT
        //      PurchLine."Order Address Code" := "Order Address Code";
        //      PurchLine."Buy-From GST Registration No" := "Order Address GST Reg. No.";
        //      PurchLine.MODIFY
        //    UNTIL PurchLine.NEXT = 0;
        //  IF ("Document Type" = "Document Type"::"Return Order") OR
        //     ("Document Type" = "Document Type"::"Credit Memo")
        //  THEN BEGIN
        //    "Ship-to Name" := OrderAddr.Name;
        //    "Ship-to Name 2" := OrderAddr."Name 2";
        //    "Ship-to Address" := OrderAddr.Address;
        //    "Ship-to Address 2" := OrderAddr."Address 2";
        //    "Ship-to City" := OrderAddr.City;
        //    "Ship-to Post Code" := OrderAddr."Post Code";
        //    "Ship-to County" := OrderAddr.County;
        //    "Ship-to Country/Region Code" := OrderAddr."Country/Region Code";
        //{=======} MODIFIED
        //
        //  IF IsCreditDocType THEN BEGIN
        //    SetShipToAddress(
        //      OrderAddr.Name,OrderAddr."Name 2",OrderAddr.Address,OrderAddr."Address 2",
        //      OrderAddr.City,OrderAddr."Post Code",OrderAddr.County,OrderAddr."Country/Region Code");
        //{=======} TARGET
        //  "GST Order Address State" := OrderAddr.State;
        //  IF "GST Vendor Type" IN ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,
        //                           "GST Vendor Type"::SEZ,"GST Vendor Type"::Exempted]
        //  THEN
        //    IF OrderAddr."GST Registration No." = '' THEN
        //      IF OrderAddr."ARN No." = '' THEN
        //        ERROR(OrderAddGSTARNErr);
        //  "Order Address GST Reg. No." := OrderAddr."GST Registration No.";
        //  PurchLine.SETRANGE("Document Type","Document Type");
        //  PurchLine.SETRANGE("Document No.","No.");
        //  IF "GST Vendor Type" = "GST Vendor Type"::Unregistered THEN
        //    TESTFIELD("GST Order Address State");
        //  IF "GST Vendor Type" IN ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,
        //                           "GST Vendor Type"::SEZ,"GST Vendor Type"::Exempted]
        //  THEN
        //    IF "Vendor GST Reg. No." = '' THEN
        //      IF Vendor.GET("Buy-from Vendor No.") THEN
        //        IF Vendor."ARN No." = '' THEN
        //          ERROR(VendGSTARNErr);
        //  IF PurchLine.FINDSET THEN
        //    REPEAT
        //      PurchLine."Order Address Code" := "Order Address Code";
        //      PurchLine."Buy-From GST Registration No" := "Order Address GST Reg. No.";
        //      PurchLine.MODIFY
        //    UNTIL PurchLine.NEXT = 0;
        //
        //  // << Pranavi
        //  State := OrderAddr.State;
        //  IF OrderAddr."GST Registration No." <> '' THEN
        //    IF "GST Vendor Type" <> "GST Vendor Type"::Registered THEN
        //      "GST Vendor Type" := "GST Vendor Type"::Registered;
        //  // << Pranavi
        //
        //  IF ("Document Type" = "Document Type"::"Return Order") OR
        //     ("Document Type" = "Document Type"::"Credit Memo")
        //  THEN BEGIN
        //    "Ship-to Name" := OrderAddr.Name;
        //    "Ship-to Name 2" := OrderAddr."Name 2";
        //    "Ship-to Address" := OrderAddr.Address;
        //    "Ship-to Address 2" := OrderAddr."Address 2";
        //    "Ship-to City" := OrderAddr.City;
        //    "Ship-to Post Code" := OrderAddr."Post Code";
        //    "Ship-to County" := OrderAddr.County;
        //    "Ship-to Country/Region Code" := OrderAddr."Country/Region Code";
        //{<<<<<<<}
        //    "Ship-to Contact" := OrderAddr.Contact;
        //  END
        //END ELSE BEGIN
        //  GetVend("Buy-from Vendor No.");
        //  "Buy-from Vendor Name" := Vend.Name;
        //  "Buy-from Vendor Name 2" := Vend."Name 2";
        //{>>>>>>>} ORIGINAL
        //  "Buy-from Address" := Vend.Address;
        //  "Buy-from Address 2" := Vend."Address 2";
        //  "Buy-from City" := Vend.City;
        //  "Buy-from Contact" := Vend.Contact;
        //  "Buy-from Post Code" := Vend."Post Code";
        //  "Buy-from County" := Vend.County;
        //  "Buy-from Country/Region Code" := Vend."Country/Region Code";
        //  "GST Order Address State" := '';
        //  "Order Address GST Reg. No." := '';
        //  PurchLine.SETRANGE("Document Type","Document Type");
        //  PurchLine.SETRANGE("Document No.","No.");
        //  IF PurchLine.FINDSET THEN
        //    REPEAT
        //      PurchLine."Order Address Code" := "Order Address Code";
        //      PurchLine."Buy-From GST Registration No" := "Vendor GST Reg. No.";
        //      PurchLine.MODIFY
        //    UNTIL PurchLine.NEXT = 0;
        //  IF ("Document Type" = "Document Type"::"Return Order") OR
        //     ("Document Type" = "Document Type"::"Credit Memo")
        //  THEN BEGIN
        //{=======} MODIFIED
        //  CopyBuyFromVendorAddressFieldsFromVendor(Vend,TRUE);
        //
        //  IF IsCreditDocType THEN BEGIN
        //{=======} TARGET
        //  "Buy-from Address" := Vend.Address;
        //  "Buy-from Address 2" := Vend."Address 2";
        //  "Buy-from City" := Vend.City;
        //  "Buy-from Contact" := Vend.Contact;
        //  "Buy-from Post Code" := Vend."Post Code";
        //  "Buy-from County" := Vend.County;
        //  "Buy-from Country/Region Code" := Vend."Country/Region Code";
        //  "GST Order Address State" := '';
        //  "Order Address GST Reg. No." := '';
        //  PurchLine.SETRANGE("Document Type","Document Type");
        //  PurchLine.SETRANGE("Document No.","No.");
        //  IF PurchLine.FINDSET THEN
        //    REPEAT
        //      PurchLine."Order Address Code" := "Order Address Code";
        //      PurchLine."Buy-From GST Registration No" := "Vendor GST Reg. No.";
        //      PurchLine.MODIFY
        //    UNTIL PurchLine.NEXT = 0;
        //  // >> Pranavi
        //  State := Vend."State Code";
        //  "GST Vendor Type" := Vend."GST Vendor Type";
        //  // << Pranavi
        //  IF ("Document Type" = "Document Type"::"Return Order") OR
        //     ("Document Type" = "Document Type"::"Credit Memo")
        //  THEN BEGIN
        //{<<<<<<<}
        //    "Ship-to Name" := Vend.Name;
        //    "Ship-to Name 2" := Vend."Name 2";
        //    CopyShipToVendorAddressFieldsFromVendor(Vend,TRUE);
        //    "Ship-to Contact" := Vend.Contact;
        //    "Shipment Method Code" := Vend."Shipment Method Code";
        //    IF Vend."Location Code" <> '' THEN
        //      VALIDATE("Location Code",Vend."Location Code");
        //{>>>>>>>} ORIGINAL
        //  END;
        //  GetVend("Pay-to Vendor No.");
        //  "Vendor GST Reg. No." := Vend."GST Registration No.";
        //{=======} MODIFIED
        //  END
        //{=======} TARGET
        //END;
        //  GetVend("Pay-to Vendor No.");
        //  "Vendor GST Reg. No." := Vend."GST Registration No.";
        //{<<<<<<<}
        //END;
        */
        //end;


        //Unsupported feature: CodeModification on ""Entry Point"(Field 97).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FIELDNO("Entry Point"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FieldNo("Entry Point"),CurrFieldNo <> 0);
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
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Document Date" <> "Document Date" then
          UpdateDocumentDate := true;
        //VALIDATE("Payment Terms Code"); // commented by santhosh due to problem in erp-cf integration
        Validate("Prepmt. Payment Terms Code");
        */
        //end;


        //Unsupported feature: CodeModification on "Area(Field 101).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FIELDNO(Area),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FieldNo(Area),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transaction Specification"(Field 102).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FIELDNO("Transaction Specification"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdatePurchLinesByFieldNo(FieldNo("Transaction Specification"),CurrFieldNo <> 0);
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
        "Bal. Account Type" := PaymentMethod."Bal. Account Type";
        "Bal. Account No." := PaymentMethod."Bal. Account No.";
        IF "Bal. Account No." <> '' THEN BEGIN
          TESTFIELD("Applies-to Doc. No.",'');
          TESTFIELD("Applies-to ID",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PaymentMethod.Init;
        if "Payment Method Code" <> '' then
          PaymentMethod.Get("Payment Method Code");
        "Bal. Account Type" := PaymentMethod."Bal. Account Type";
        "Bal. Account No." := PaymentMethod."Bal. Account No.";
        if "Bal. Account No." <> '' then begin
          TestField("Applies-to Doc. No.",'');
          TestField("Applies-to ID",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Posting No. Series"(Field 108).OnLookup". Please convert manually.

        //trigger  Series"(Field 108)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH PurchHeader DO BEGIN
          PurchHeader := Rec;
          GetPurchSetup;
          TestNoSeries;
          IF NoSeriesMgt.LookupSeries(GetPostingNoSeriesCode,"Posting No. Series") THEN
            VALIDATE("Posting No. Series");
          Rec := PurchHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with PurchHeader do begin
        #2..4
          if NoSeriesMgt.LookupSeries(GetPostingNoSeriesCode,"Posting No. Series") then
            Validate("Posting No. Series");
          Rec := PurchHeader;
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
          GetPurchSetup;
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


        //Unsupported feature: CodeModification on ""Receiving No. Series"(Field 109).OnLookup". Please convert manually.

        //trigger  Series"(Field 109)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH PurchHeader DO BEGIN
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Receipt Nos.");
          IF NoSeriesMgt.LookupSeries(PurchSetup."Posted Receipt Nos.","Receiving No. Series") THEN
            VALIDATE("Receiving No. Series");
          Rec := PurchHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with PurchHeader do begin
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TestField("Posted Receipt Nos.");
          if NoSeriesMgt.LookupSeries(PurchSetup."Posted Receipt Nos.","Receiving No. Series") then
            Validate("Receiving No. Series");
          Rec := PurchHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Receiving No. Series"(Field 109).OnValidate". Please convert manually.

        //trigger  Series"(Field 109)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Receiving No. Series" <> '' THEN BEGIN
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Receipt Nos.");
          NoSeriesMgt.TestSeries(PurchSetup."Posted Receipt Nos.","Receiving No. Series");
        END;
        TESTFIELD("Receiving No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Receiving No. Series" <> '' then begin
          GetPurchSetup;
          PurchSetup.TestField("Posted Receipt Nos.");
          NoSeriesMgt.TestSeries(PurchSetup."Posted Receipt Nos.","Receiving No. Series");
        end;
        TestField("Receiving No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Tax Area Code"(Field 114).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfPurchLinesExist(FIELDCAPTION("Tax Area Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfPurchLinesExist(FieldCaption("Tax Area Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Tax Liable"(Field 115).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfPurchLinesExist(FIELDCAPTION("Tax Liable"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        MessageIfPurchLinesExist(FieldCaption("Tax Liable"));
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Bus. Posting Group"(Field 116).OnValidate". Please convert manually.

        //trigger  Posting Group"(Field 116)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF (xRec."Buy-from Vendor No." = "Buy-from Vendor No.") AND
           (xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group")
        THEN
          RecreatePurchLines(FIELDCAPTION("VAT Bus. Posting Group"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if (xRec."Buy-from Vendor No." = "Buy-from Vendor No.") and
           (xRec."VAT Bus. Posting Group" <> "VAT Bus. Posting Group")
        then
          RecreatePurchLines(FieldCaption("VAT Bus. Posting Group"));
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
          VendLedgEntry.SETCURRENTKEY("Vendor No.",Open);
          VendLedgEntry.SETRANGE("Vendor No.","Pay-to Vendor No.");
          VendLedgEntry.SETRANGE(Open,TRUE);
          VendLedgEntry.SETRANGE("Applies-to ID",xRec."Applies-to ID");
          IF VendLedgEntry.FINDFIRST THEN
            VendEntrySetApplID.SetApplId(VendLedgEntry,TempVendLedgEntry,'');
          VendLedgEntry.RESET;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Applies-to ID" <> '' then
          TestField("Bal. Account No.",'');
        if ("Applies-to ID" <> xRec."Applies-to ID") and (xRec."Applies-to ID" <> '') then begin
          VendLedgEntry.SetCurrentKey("Vendor No.",Open);
          VendLedgEntry.SetRange("Vendor No.","Pay-to Vendor No.");
          VendLedgEntry.SetRange(Open,true);
          VendLedgEntry.SetRange("Applies-to ID",xRec."Applies-to ID");
          if VendLedgEntry.FindFirst then
            VendEntrySetApplID.SetApplId(VendLedgEntry,TempVendLedgEntry,'');
          VendLedgEntry.Reset;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Base Discount %"(Field 119).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GLSetup.GET;
        IF "VAT Base Discount %" > GLSetup."VAT Tolerance %" THEN BEGIN
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed :=
              CONFIRM(
                Text007 +
                Text008,FALSE,
                FIELDCAPTION("VAT Base Discount %"),
                GLSetup.FIELDCAPTION("VAT Tolerance %"),
                GLSetup.TABLECAPTION);
          IF NOT Confirmed THEN
            "VAT Base Discount %" := xRec."VAT Base Discount %";
        END;

        IF ("VAT Base Discount %" = xRec."VAT Base Discount %") AND (CurrFieldNo <> 0) THEN
          EXIT;

        UpdatePurchAmountLines;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GLSetup.Get;
        if "VAT Base Discount %" > GLSetup."VAT Tolerance %" then begin
          if GetHideValidationDialog or not GuiAllowed then
            Confirmed := true
          else
            Confirmed :=
              Confirm(
                Text007 +
                Text008,false,
                FieldCaption("VAT Base Discount %"),
                GLSetup.FieldCaption("VAT Tolerance %"),
                GLSetup.TableCaption);
          if not Confirmed then
            "VAT Base Discount %" := xRec."VAT Base Discount %";
        end;

        if ("VAT Base Discount %" = xRec."VAT Base Discount %") and (CurrFieldNo <> 0) then
          exit;

        UpdatePurchAmountLines;
        */
        //end;


        //Unsupported feature: CodeModification on ""Send IC Document"(Field 123).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Send IC Document" THEN BEGIN
          TESTFIELD("Buy-from IC Partner Code");
          TESTFIELD("IC Direction","IC Direction"::Outgoing);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Send IC Document" then begin
          TestField("Buy-from IC Partner Code");
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


        //Unsupported feature: CodeModification on ""Prepayment %"(Field 134).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Prepayment %" <> "Prepayment %" THEN
          UpdatePurchLinesByFieldNo(FIELDNO("Prepayment %"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Prepayment %" <> "Prepayment %" then
          UpdatePurchLinesByFieldNo(FieldNo("Prepayment %"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment No. Series"(Field 135).OnLookup". Please convert manually.

        //trigger  Series"(Field 135)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH PurchHeader DO BEGIN
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Prepmt. Inv. Nos.");
          IF NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series") THEN
            VALIDATE("Prepayment No. Series");
          Rec := PurchHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with PurchHeader do begin
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TestField("Posted Prepmt. Inv. Nos.");
          if NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series") then
            Validate("Prepayment No. Series");
          Rec := PurchHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment No. Series"(Field 135).OnValidate". Please convert manually.

        //trigger  Series"(Field 135)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepayment No. Series" <> '' THEN BEGIN
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Prepmt. Inv. Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series");
        END;
        TESTFIELD("Prepayment No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepayment No. Series" <> '' then begin
          GetPurchSetup;
          PurchSetup.TestField("Posted Prepmt. Inv. Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepayment No. Series");
        end;
        TestField("Prepayment No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Cr. Memo No. Series"(Field 138).OnLookup". Please convert manually.

        //trigger  Cr();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH PurchHeader DO BEGIN
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Prepmt. Cr. Memo Nos.");
          IF NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series") THEN
            VALIDATE("Prepmt. Cr. Memo No. Series");
          Rec := PurchHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with PurchHeader do begin
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TestField("Posted Prepmt. Cr. Memo Nos.");
          if NoSeriesMgt.LookupSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series") then
            Validate("Prepmt. Cr. Memo No. Series");
          Rec := PurchHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Cr. Memo No. Series"(Field 138).OnValidate". Please convert manually.

        //trigger  Cr();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepmt. Cr. Memo No. Series" <> '' THEN BEGIN
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Prepmt. Cr. Memo Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series");
        END;
        TESTFIELD("Prepmt. Cr. Memo No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepmt. Cr. Memo No. Series" <> '' then begin
          GetPurchSetup;
          PurchSetup.TestField("Posted Prepmt. Cr. Memo Nos.");
          NoSeriesMgt.TestSeries(GetPostingPrepaymentNoSeriesCode,"Prepmt. Cr. Memo No. Series");
        end;
        TestField("Prepmt. Cr. Memo No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Payment Terms Code"(Field 143).OnValidate". Please convert manually.

        //trigger  Payment Terms Code"(Field 143)();
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


        //Unsupported feature: CodeModification on ""Prepmt. Payment Discount %"(Field 144).OnValidate". Please convert manually.

        //trigger  Payment Discount %"(Field 144)();
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
          IncomingDocument.SetPurchDoc(Rec);
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
          IncomingDocument.SetPurchDoc(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Contact No."(Field 5052).OnLookup". Please convert manually.

        //trigger "(Field 5052)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Buy-from Vendor No." <> '' THEN
          IF Cont.GET("Buy-from Contact No.") THEN
            Cont.SETRANGE("Company No.",Cont."Company No.")
          ELSE
        #5..12
          xRec := Rec;
          VALIDATE("Buy-from Contact No.",Cont."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {IF "Buy-from Vendor No." <> '' THEN
        #2..15
        }
        */
        //end;


        //Unsupported feature: CodeModification on ""Buy-from Contact No."(Field 5052).OnValidate". Please convert manually.

        //trigger "(Field 5052)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IF "Buy-from Contact No." <> '' THEN
          IF Cont.GET("Buy-from Contact No.") THEN
            Cont.CheckIfPrivacyBlockedGeneric;

        IF ("Buy-from Contact No." <> xRec."Buy-from Contact No.") AND
           (xRec."Buy-from Contact No." <> '')
        THEN BEGIN
          IF GetHideValidationDialog OR NOT GUIALLOWED THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(ConfirmChangeQst,FALSE,FIELDCAPTION("Buy-from Contact No."));
          IF Confirmed THEN BEGIN
            IF InitFromContact("Buy-from Contact No.","Buy-from Vendor No.",FIELDCAPTION("Buy-from Contact No.")) THEN
              EXIT
          END ELSE BEGIN
            Rec := xRec;
            EXIT;
          END;
        END;

        IF ("Buy-from Vendor No." <> '') AND ("Buy-from Contact No." <> '') THEN BEGIN
          Cont.GET("Buy-from Contact No.");
          IF ContBusinessRelation.FindByRelation(ContBusinessRelation."Link to Table"::Vendor,"Buy-from Vendor No.") THEN
            IF ContBusinessRelation."Contact No." <> Cont."Company No." THEN
              ERROR(Text038,Cont."No.",Cont.Name,"Buy-from Vendor No.");
        END;

        UpdateBuyFromVend("Buy-from Contact No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        if "Buy-from Contact No." <> '' then
          if Cont.Get("Buy-from Contact No.") then
            Cont.CheckIfPrivacyBlockedGeneric;

        if ("Buy-from Contact No." <> xRec."Buy-from Contact No.") and
           (xRec."Buy-from Contact No." <> '')
        then begin
          if GetHideValidationDialog or not GuiAllowed then
            Confirmed := true
          else
            Confirmed := Confirm(ConfirmChangeQst,false,FieldCaption("Buy-from Contact No."));
          if Confirmed then begin
            if InitFromContact("Buy-from Contact No.","Buy-from Vendor No.",FieldCaption("Buy-from Contact No.")) then
              exit
          end else begin
            Rec := xRec;
            exit;
          end;
        end;

        {IF ("Buy-from Vendor No." <> '') AND ("Buy-from Contact No." <> '') THEN BEGIN
        #24..28
        }
        UpdateBuyFromVend("Buy-from Contact No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Pay-to Contact No."(Field 5053).OnLookup". Please convert manually.

        //trigger "(Field 5053)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Pay-to Vendor No." <> '' THEN
          IF Cont.GET("Pay-to Contact No.") THEN
            Cont.SETRANGE("Company No.",Cont."Company No.")
          ELSE
        #5..11
        IF PAGE.RUNMODAL(0,Cont) = ACTION::LookupOK THEN BEGIN
          xRec := Rec;
          VALIDATE("Pay-to Contact No.",Cont."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {IF "Pay-to Vendor No." <> '' THEN
        #2..14
        END;}
        */
        //end;


        //Unsupported feature: CodeModification on ""Pay-to Contact No."(Field 5053).OnValidate". Please convert manually.

        //trigger "(Field 5053)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IF "Pay-to Contact No." <> '' THEN
          IF Cont.GET("Pay-to Contact No.") THEN
        #5..27
        END;

        UpdatePayToVend("Pay-to Contact No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {TestStatusOpen;
        #2..30
        }
        */
        //end;


        //Unsupported feature: CodeModification on ""Responsibility Center"(Field 5700).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF NOT UserSetupMgt.CheckRespCenter(1,"Responsibility Center") THEN
          ERROR(
            Text028,
            RespCenter.TABLECAPTION,UserSetupMgt.GetPurchasesFilter);

        UpdateLocationCode('');
        UpdateInboundWhseHandlingTime;
        #9..14
          DATABASE::"Salesperson/Purchaser","Purchaser Code",
          DATABASE::Campaign,"Campaign No.");

        IF xRec."Responsibility Center" <> "Responsibility Center" THEN BEGIN
          RecreatePurchLines(FIELDCAPTION("Responsibility Center"));
          "Assigned User ID" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if not UserSetupMgt.CheckRespCenter(1,"Responsibility Center") then
          Error(
            Text028,
            RespCenter.TableCaption,UserSetupMgt.GetPurchasesFilter);
        #6..17
        if xRec."Responsibility Center" <> "Responsibility Center" then begin
          RecreatePurchLines(FieldCaption("Responsibility Center"));
          "Assigned User ID" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Requested Receipt Date"(Field 5790).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Promised Receipt Date" <> 0D THEN
          ERROR(
            Text034,
            FIELDCAPTION("Requested Receipt Date"),
            FIELDCAPTION("Promised Receipt Date"));

        IF "Requested Receipt Date" <> xRec."Requested Receipt Date" THEN
          UpdatePurchLinesByFieldNo(FIELDNO("Requested Receipt Date"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Promised Receipt Date" <> 0D then
          Error(
            Text034,
            FieldCaption("Requested Receipt Date"),
            FieldCaption("Promised Receipt Date"));

        if "Requested Receipt Date" <> xRec."Requested Receipt Date" then
          UpdatePurchLinesByFieldNo(FieldNo("Requested Receipt Date"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: Change TestTableRelation on ""Promised Receipt Date"(Field 5791).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Promised Receipt Date" <> xRec."Promised Receipt Date" THEN
          UpdatePurchLinesByFieldNo(FIELDNO("Promised Receipt Date"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Promised Receipt Date" <> xRec."Promised Receipt Date" then
          UpdatePurchLinesByFieldNo(FieldNo("Promised Receipt Date"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Lead Time Calculation"(Field 5792).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        LeadTimeMgt.CheckLeadTimeIsNotNegative("Lead Time Calculation");

        IF "Lead Time Calculation" <> xRec."Lead Time Calculation" THEN
          UpdatePurchLinesByFieldNo(FIELDNO("Lead Time Calculation"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if "Lead Time Calculation" <> xRec."Lead Time Calculation" then
          UpdatePurchLinesByFieldNo(FieldNo("Lead Time Calculation"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Inbound Whse. Handling Time"(Field 5793).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5793)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Inbound Whse. Handling Time" <> xRec."Inbound Whse. Handling Time" THEN
          UpdatePurchLinesByFieldNo(FIELDNO("Inbound Whse. Handling Time"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Inbound Whse. Handling Time" <> xRec."Inbound Whse. Handling Time" then
          UpdatePurchLinesByFieldNo(FieldNo("Inbound Whse. Handling Time"),CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Shipment No. Series"(Field 5802).OnLookup". Please convert manually.

        //trigger  Series"(Field 5802)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH PurchHeader DO BEGIN
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Return Shpt. Nos.");
          IF NoSeriesMgt.LookupSeries(PurchSetup."Posted Return Shpt. Nos.","Return Shipment No. Series") THEN
            VALIDATE("Return Shipment No. Series");
          Rec := PurchHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with PurchHeader do begin
          PurchHeader := Rec;
          GetPurchSetup;
          PurchSetup.TestField("Posted Return Shpt. Nos.");
          if NoSeriesMgt.LookupSeries(PurchSetup."Posted Return Shpt. Nos.","Return Shipment No. Series") then
            Validate("Return Shipment No. Series");
          Rec := PurchHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Shipment No. Series"(Field 5802).OnValidate". Please convert manually.

        //trigger  Series"(Field 5802)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Return Shipment No. Series" <> '' THEN BEGIN
          GetPurchSetup;
          PurchSetup.TESTFIELD("Posted Return Shpt. Nos.");
          NoSeriesMgt.TestSeries(PurchSetup."Posted Return Shpt. Nos.","Return Shipment No. Series");
        END;
        TESTFIELD("Return Shipment No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Return Shipment No. Series" <> '' then begin
          GetPurchSetup;
          PurchSetup.TestField("Posted Return Shpt. Nos.");
          NoSeriesMgt.TestSeries(PurchSetup."Posted Return Shpt. Nos.","Return Shipment No. Series");
        end;
        TestField("Return Shipment No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Assigned User ID"(Field 9000).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT UserSetupMgt.CheckRespCenter2(1,"Responsibility Center","Assigned User ID") THEN
          ERROR(
            Text049,"Assigned User ID",
            RespCenter.TABLECAPTION,UserSetupMgt.GetPurchasesFilter2("Assigned User ID"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not UserSetupMgt.CheckRespCenter2(1,"Responsibility Center","Assigned User ID") then
          Error(
            Text049,"Assigned User ID",
            RespCenter.TableCaption,UserSetupMgt.GetPurchasesFilter2("Assigned User ID"));
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
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13716; "Amount to Vendor"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line".Amount WHERE("Document Type" = FIELD("Document Type"),
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
            /*TableRelation = IF ("C Form" = CONST(false)) "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                                                        "Transit Document" = CONST(false),
                                                                                        "C Form" = CONST(false))
            ELSE
            IF ("C Form" = CONST(true)) "Form Codes".Code WHERE("C Form" = CONST(true));*/

            trigger OnValidate();
            begin
                UpdatePurchLines(FieldCaption("Form Code"), CurrFieldNo <> 0);
            end;
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
                //LCDetail: Record "LC Detail";
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
                Currency: Record Currency;
            begin
                /*IF (xRec.Structure <> Structure) AND AlreadyRecieved  AND NOT ( USERID IN['EFFTRONICS\VISHNUPRIYA','EFFTRONICS\SUJANI']) THEN
                  ERROR(StructureErr);
                
                //added by mnraju
                IF Structure='PURC-CST' THEN
                BEGIN
                  "Form Code":='C';
                //  "C Form":=TRUE;
                   VALIDATE("C Form",TRUE);
                  PurchaseLines.RESET;
                  PurchaseLines.SETFILTER(PurchaseLines."Document No.","No.");
                  PurchaseLines.SETFILTER(PurchaseLines."Document Type",'%1',"Document Type");
                  PurchaseLines.SETFILTER(Type,'<>%1',PurchaseLines.Type::" ");
                  IF PurchaseLines.FINDSET THEN
                  REPEAT
                    PurchaseLines.VALIDATE(PurchaseLines."Tax Group Code",'2%');
                    PurchaseLines.VALIDATE(PurchaseLines."Excise Prod. Posting Group",'');
                
                    PurchaseLines.MODIFY;
                  UNTIL PurchaseLines.NEXT=0;
                
                END
                ELSE IF Structure='PURC-E+CST' THEN
                BEGIN
                  "Form Code":='C';
                  VALIDATE("C Form",TRUE);
                  PurchaseLines.RESET;
                  PurchaseLines.SETFILTER(PurchaseLines."Document No.","No.");
                  PurchaseLines.SETFILTER(PurchaseLines."Document Type",'%1',"Document Type");
                  PurchaseLines.SETFILTER(Type,'<>%1',PurchaseLines.Type::" ");
                  IF PurchaseLines.FINDSET THEN
                  REPEAT
                    PurchaseLines.VALIDATE(PurchaseLines."Tax Group Code",'2%');
                    PurchaseLines.VALIDATE(PurchaseLines."Excise Prod. Posting Group",'12.5%');    //Changed to 12.5% from 10% by Pranavi on 19-09-2015
                        PurchaseLines.MODIFY;
                  UNTIL PurchaseLines.NEXT=0;
                
                END
                ELSE IF Structure='PURC-VAT' THEN
                BEGIN
                  "Form Code":='';
                //  "C Form":=FALSE;
                  VALIDATE("C Form",FALSE);
                  PurchaseLines.RESET;
                  PurchaseLines.SETFILTER(PurchaseLines."Document No.","No.");
                  PurchaseLines.SETFILTER(PurchaseLines."Document Type",'%1',"Document Type");
                  PurchaseLines.SETFILTER(Type,'<>%1',PurchaseLines.Type::" ");
                  IF PurchaseLines.FINDSET THEN
                  REPEAT
                    PurchaseLines.VALIDATE(PurchaseLines."Tax Group Code",'5%');
                    PurchaseLines.VALIDATE(PurchaseLines."Excise Prod. Posting Group",'');
                        PurchaseLines.MODIFY;
                  UNTIL PurchaseLines.NEXT=0;
                
                END
                ELSE IF Structure='PURC-E+VAT' THEN
                BEGIN
                  "Form Code":='';
                //  "C Form":=FALSE;
                  VALIDATE("C Form",FALSE);
                  PurchaseLines.RESET;
                  PurchaseLines.SETFILTER(PurchaseLines."Document No.","No.");
                  PurchaseLines.SETFILTER(PurchaseLines."Document Type",'%1',"Document Type");
                  PurchaseLines.SETFILTER(Type,'<>%1',PurchaseLines.Type::" ");
                  IF PurchaseLines.FINDSET THEN
                  REPEAT
                    PurchaseLines.VALIDATE(PurchaseLines."Tax Group Code",'5%');
                    PurchaseLines.VALIDATE(PurchaseLines."Excise Prod. Posting Group",'12.5%');
                        PurchaseLines.MODIFY;
                  UNTIL PurchaseLines.NEXT=0;
                
                END;
                
                  PurchaseLines.RESET;
                
                //added by mnraju
                
                
                
                //Cashflow_Modification;
                StrOrderDetails.SETCURRENTKEY("Document Type","Document No.",Type);
                StrOrderDetails.SETRANGE(Type,StrOrderDetails.Type::Purchase);
                StrOrderDetails.SETRANGE("Document Type","Document Type");
                StrOrderDetails.SETRANGE("Document No.","No.");
                IF StrOrderDetails.FINDFIRST THEN
                  StrOrderDetails.DELETEALL;
                
                
                PurchaseLines.SETRANGE("Document Type","Document Type");
                PurchaseLines.SETRANGE("Document No.","No.");
                PurchaseLines.SETFILTER(Type,'<>%1',PurchaseLines.Type::" ");
                IF PurchaseLines.FINDFIRST THEN
                  REPEAT
                    PurchaseLines."Service Tax Base" := 0;
                    PurchaseLines."Charges To Vendor" := 0;
                    PurchaseLines."Amount Added to Excise Base" := 0;
                    PurchaseLines."Amount Added to Tax Base" := 0;
                    PurchaseLines."Excise Amount" := 0;
                    PurchaseLines."VAT Base Amount" := 0;
                    PurchaseLines.GetCurrentPurchHeader(Rec);
                    PurchaseLines.VALIDATE("Tax Liable",FALSE);
                    PurchaseLines.MODIFY;
                  UNTIL PurchaseLines.NEXT = 0;
                GLSetup.GET;
                PoT := FALSE;
                "POS Out Of India" := FALSE;
                
                StrDetails.SETRANGE(Code,Structure);
                IF StrDetails.FIND('-') THEN
                  REPEAT
                    StrOrderDetails.Type := StrOrderDetails.Type::Purchase;
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
                    IF StrDetails.Type = StrDetails.Type::Excise THEN
                      CVD := StrDetails.CVD;
                    StrOrderDetails.CVD := StrDetails.CVD;
                    StrOrderDetails."CVD Payable to Third Party" := StrDetails."CVD Payable to Third Party";
                    StrOrderDetails."CVD Third Party Code" := StrDetails."CVD Third Party Code";
                    StrOrderDetails."Include in TDS Base" := StrDetails."Include in TDS Base";
                    StrOrderDetails."Inc. GST in TDS Base" := StrDetails."Inc. GST in TDS Base";
                    IF NOT PoT THEN BEGIN
                      IF (StrOrderDetails."Tax/Charge Type" = StrOrderDetails."Tax/Charge Type"::"Service Tax" ) AND
                         NOT "Input Service Distribution"
                      THEN
                        PoT := GLSetup.PoT;
                    END;
                    StrOrderDetails.INSERT;
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
                  END ;
                END;
                
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
                  "GST Inv. Rounding Precision" := 0;
                  "GST Inv. Rounding Type" := GLSetup."GST Inv. Rounding Type"::Nearest;
                END;
                CheckReferenceInvoiceNo;
                */

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
            begin
                /*TESTFIELD(Status,Status::Open);
                PurchSetup.GET;
                InitRecord;
                PurchLine2.RESET;
                PurchLine2.SETRANGE("Document Type","Document Type");
                PurchLine2.SETRANGE("Document No.","No.");
                PurchLine2.SETRANGE("Excise Loading on Inventory",TRUE);
                IF PurchLine2.FINDFIRST THEN
                  ERROR(Text16500);
                  */

            end;
        }
        field(16504; "Transaction No. Serv. Tax"; Integer)
        {
            CaptionML = ENU = 'Transaction No. Serv. Tax',
                        ENN = 'Transaction No. Serv. Tax';
            DataClassification = ToBeClassified;
        }
        field(16505; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16506; "Input Service Distribution"; Boolean)
        {
            CaptionML = ENU = 'Input Service Distribution',
                        ENN = 'Input Service Distribution';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF PoT THEN
                  ERROR(Text16502);
                */

            end;
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
        field(16524; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF "Input Service Distribution" THEN
                  ERROR(Text16502);
                  */

            end;
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
        }
        field(16603; "Bill of Entry Date"; Date)
        {
            CaptionML = ENU = 'Bill of Entry Date',
                        ENN = 'Bill of Entry Date';
            DataClassification = ToBeClassified;
        }
        field(16604; "Bill of Entry Value"; Decimal)
        {
            CaptionML = ENU = 'Bill of Entry Value',
                        ENN = 'Bill of Entry Value';
            DataClassification = ToBeClassified;
            MinValue = 0;
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

            trigger OnValidate();
            var
                Vendor: Record Vendor;
            begin
                /*Vendor.GET("Buy-from Vendor No.");//commented by durga maheswari
                //Vendor.GET("Pay-to Vendor No.");//added by durgamaheswari on 27-01-2021
                TESTFIELD("GST Vendor Type",Vendor."GST Vendor Type");
                IF "GST Vendor Type" IN ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,
                                         "GST Vendor Type"::Exempted,"GST Vendor Type"::SEZ]
                THEN
                  IF Vendor."GST Registration No." = '' THEN
                    IF Vendor."ARN No." = '' THEN
                      ERROR(GSTARNErr);
                IF "POS as Vendor State" THEN
                  IF NOT ("GST Vendor Type" = "GST Vendor Type"::Registered) THEN
                    ERROR(POSasVendorErr,"GST Vendor Type");
                    */

            end;
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
            OptionCaptionML = ENU = ' ,Self Invoice,Debit Note,Supplementary,Non-GST',
                              ENN = ' ,Self Invoice,Debit Note,Supplementary,Non-GST';
            OptionMembers = " ","Self Invoice","Debit Note",Supplementary,"Non-GST";

            trigger OnValidate();
            begin
                /*IF "Invoice Type" = "Invoice Type"::"Non-GST" THEN
                  IF GSTManagement.IsGSTApplicable(Structure) THEN
                    ERROR(NonGSTInvTypeErr);
                IF "Invoice Type" = "Invoice Type"::"Self Invoice" THEN
                  IF NOT ("GST Vendor Type" = "GST Vendor Type"::Unregistered) AND NOT CheckReverseChargeGSTRegistered THEN
                    ERROR(SelfInvoiceTypeErr);
                CheckReverseChargeGSTRegistered;
                  InitRecordGST;
                IF "Invoice Type" = "Invoice Type"::Supplementary THEN
                  SetSupplementaryInLine("Document Type","No.",TRUE)
                ELSE
                  SetSupplementaryInLine("Document Type","No.",FALSE);
                
                IF "Reference Invoice No." <> '' THEN
                  IF NOT ("Invoice Type" IN ["Invoice Type"::"Debit Note","Invoice Type"::Supplementary]) THEN
                    ERROR(ReferenceNoErr);
                    */

            end;
        }
        field(16612; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16613; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
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
            Editable = false;
        }
        field(16631; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16632; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";

            trigger OnValidate();
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
            begin
            end;
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
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
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
            TableRelation = "Shipping Agent Services".Code;
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
        field(16644; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                PurchaseLine: Record "Purchase Line";
                ConfigType: Option Vendor,Customer;
                GSTCustType: Option " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
            begin
            end;
        }
        field(50000; "MSPT Date"; Date)
        {

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);

                MSPTOrderDetails.SetRange(Type, MSPTOrderDetails.Type::Purchase);
                MSPTOrderDetails.SetRange("Document Type", "Document Type");
                MSPTOrderDetails.SetRange("Document No.", "No.");
                if MSPTOrderDetails.FindFirst then begin
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
            var
                MSPTHeader: Record "MSPT Header";
                "MSPT Details": Record "MSPT Line";
            begin
                TestField(Status, Status::Open);

                MSPTOrderDetails.SetRange(Type, MSPTOrderDetails.Type::Purchase);
                MSPTOrderDetails.SetRange("Document Type", "Document Type");
                MSPTOrderDetails.SetRange("Document No.", "No.");
                MSPTOrderDetails.DeleteAll;

                MSPTHeader.SetRange(MSPTHeader.Code, "MSPT Code");
                if MSPTHeader.FindFirst then begin
                    "MSPT Details".SetRange("MSPT Details"."MSPT Header Code", "MSPT Code");
                    if "MSPT Details".FindFirst then begin
                        repeat
                            MSPTOrderDetails.Type := MSPTOrderDetails.Type::Purchase;
                            MSPTOrderDetails."Document Type" := "Document Type";
                            MSPTOrderDetails."Document No." := "No.";
                            MSPTOrderDetails."Party Type" := MSPTOrderDetails."Party Type"::Vendor;
                            MSPTOrderDetails."Party No." := "Buy-from Vendor No.";
                            MSPTOrderDetails."MSPT Header Code" := "MSPT Code";
                            //MSPTOrderDetails."Calculation Type" := MSPTHeader.Type;
                            MSPTOrderDetails."MSPT Code" := "MSPT Details".Code;
                            MSPTOrderDetails."MSPT Line No." := "MSPT Details"."Line No.";
                            MSPTOrderDetails.Percentage := "MSPT Details".Percentage;
                            //MSPTOrderDetails.Amount:="MSPT Details".Amount;
                            MSPTOrderDetails.Description := "MSPT Details".Description;
                            MSPTOrderDetails."Calculation Period" := "MSPT Details"."Calculation Period";
                            MSPTOrderDetails.Remarks := "MSPT Details".Remarks;
                            //PurchHeader.Get(MSPTOrderDetails."Document Type", MSPTOrderDetails."Document No.");
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
        field(60001; "Vendor Excise Invoice No."; Code[10])
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
        field(60004; "RFQ No."; Code[10])
        {
            Description = 'B2B';
            TableRelation = "Mech & Wirning Items"."Production Order No.";
        }
        field(60005; Make; Text[50])
        {
            Description = 'B2B';
            Enabled = false;
        }
        field(60006; "Packing Type"; Text[25])
        {
            Description = 'B2B';
        }
        field(60007; Verification; Text[50])
        {
            Description = 'B2B';
            Enabled = false;
        }
        field(60008; "Quotation No."; Code[30])
        {
            Description = 'PH1.0';
        }
        field(60009; "ICN No."; Code[10])
        {
            Description = 'PH1.0';
            Editable = false;
        }
        field(60010; "Release Date Time"; DateTime)
        {
        }
        field(60011; "Tender No"; Code[20])
        {
            TableRelation = "Tender Header"."Tender No.";
        }
        field(60012; "Sale Order No"; Code[30])
        {
            TableRelation = "Sales Header"."No.";
        }
        field(60013; "Bill Received"; Boolean)
        {
        }
        field(60014; "Duplicate For Transporter"; Boolean)
        {
        }
        field(60018; "Quotation Date"; Date)
        {
        }
        field(60019; "Vendor Invoice Date"; Date)
        {
        }
        field(60020; "Purchase Journal"; Boolean)
        {
        }
        field(60021; "Calculate Tax Structure"; Boolean)
        {
        }
        field(60079; "Order (Digits)"; Code[10])
        {
            Enabled = false;
        }
        field(60090; "Buy-from Address 3"; Text[50])
        {
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

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
        field(60095; "Actual Invoiced Date"; Date)
        {
        }
        field(60096; "Additional Duty Value"; Decimal)
        {
        }
        field(60097; "Type of Supplier"; Option)
        {
            OptionCaption = '" ,Manufacturer,First Stage Dealer,Importer"';
            OptionMembers = " ",Manufacturer,"First Stage Dealer",Importer;
        }
        field(60098; "Inclusive of All Taxes"; Boolean)
        {
        }
        field(60100; "Vehicle Number"; Text[12])
        {
        }
        field(60101; "Transporter Name"; Text[20])
        {
            TableRelation = "Transport Method";
        }
        field(60102; "C-Form Number"; Code[20])
        {
            Enabled = false;
        }
        field(60103; "C-Form Issue Date"; Date)
        {
            Enabled = false;
        }
        field(60115; "OrderCreated by"; Code[35])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(60116; "Released By"; Code[35])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(60117; Mail_Sent; DateTime)
        {
        }
        field(60118; "Way bill"; Code[20])
        {
        }
        field(60119; Mail_count; Decimal)
        {
        }
        field(60120; "Acknowledge Given by"; Text[15])
        {
        }
        field(60121; "Acknowledged Dt"; Date)
        {
        }
        field(60122; "Tarrif Heading No"; Code[35])
        {
        }
        field(60123; QA_Auth_Status; Option)
        {
            OptionMembers = " ","Sent For Auth",Authorized,Rejected;
        }
        field(60124; QA_Auth_Date; Date)
        {
        }
        field(60125; "First Release DateTime"; DateTime)
        {
        }
        field(60126; "First Release By"; Code[35])
        {
        }
        field(60128; "USER ID"; Code[35])
        {
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60129; "Do not Consider GST"; Boolean)
        {
            Description = 'Do not Consider GST in cashflow or not';

            trigger OnValidate();
            begin
                if "Payment Terms Code" <> 'TOTADV' then
                    Error('This is only applicable for TOTAL ADVANCE payment terms');
            end;
        }
        field(70000; "Sales Order Ref No."; Code[20])
        {

            trigger OnLookup();
            var
                PrevDocNo: Code[30];
            begin
                /*
                IF "USER ID" IN['EFFTRONICS\SUSMITHAL','EFFTRONICS\YESU','EFFTRONICS\PADJAMAM','EFFTRONICS\B2BOTS'] THEN BEGIN
                  CLEAR(SalesListArchive);
                  PrevDocNo := '';
                  SalesHeaderArchive.RESET;
                  SalesHeaderArchive.SETCURRENTKEY("Date Archived","Time Archived");
                  //SalesHeaderArchive.ASCENDING(FALSE);
                  SalesHeaderArchive.SETRANGE("Document Type",SalesHeaderArchive."Document Type"::Order);
                  IF SalesHeaderArchive.FINDSET THEN
                    REPEAT
                      IF PrevDocNo <> SalesHeaderArchive."No." THEN BEGIN
                        SalesHeaderArchive.MARK(TRUE);
                        PrevDocNo := SalesHeaderArchive."No.";
                      END;
                    UNTIL SalesHeaderArchive.NEXT = 0;
                  SalesHeaderArchive.MARKEDONLY(TRUE);
                  SalesListArchive.SETRECORD(SalesHeaderArchive);
                  SalesListArchive.SETTABLEVIEW(SalesHeaderArchive);
                  SalesListArchive.LOOKUPMODE(TRUE);
                  IF SalesListArchive.RUNMODAL =ACTION::LookupOK THEN BEGIN
                    SalesListArchive.GETRECORD(SalesHeaderArchive);
                    "Sales Order Ref No." := SalesHeaderArchive."No.";
                  END;
                END;
                */

            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Pay-to Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Incoming Document Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Expected Receipt Date,Location Code,Responsibility Center"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Assigned User ID"(Key)". Please convert manually.

        key(DcoType1; "Document Type", "No.")
        {
        }
        key(No2; "No.", "Document Type")
        {
        }
        key(BuyFrom3; "Document Type", "Buy-from Vendor No.")
        {
        }
        key(Payto4; "Document Type", "Pay-to Vendor No.")
        {
        }
        key(BuyFrom5; "Buy-from Vendor No.")
        {
        }
        key(Incoming6; "Incoming Document Entry No.")
        {
        }
        key(DocumentDate7; "Document Date")
        {
        }
        key(Status8; Status, "Expected Receipt Date", "Location Code", "Responsibility Center")
        {
        }
        key(Assigned9; "Assigned User ID")
        {
        }
        key(POstingDate10; "Posting Date")
        {
        }
        key(VendorExcise11; "Vendor Excise Invoice No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF NOT UserSetupMgt.CheckRespCenter(1,"Responsibility Center") THEN
      ERROR(
        Text023,
        RespCenter.TABLECAPTION,UserSetupMgt.GetPurchasesFilter);

    ArchiveManagement.AutoArchivePurchDocument(Rec);
    PostPurchDelete.DeleteHeader(
      Rec,PurchRcptHeader,PurchInvHeader,PurchCrMemoHeader,
      ReturnShptHeader,PurchInvHeaderPrepmt,PurchCrMemoHeaderPrepmt);
    VALIDATE("Applies-to ID",'');
    VALIDATE("Incoming Document Entry No.",0);

    ApprovalsMgmt.OnDeleteRecordInApprovalRequest(RECORDID);
    PurchLine.LOCKTABLE;

    WhseRequest.SETRANGE("Source Type",DATABASE::"Purchase Line");
    WhseRequest.SETRANGE("Source Subtype","Document Type");
    WhseRequest.SETRANGE("Source No.","No.");
    WhseRequest.DELETEALL(TRUE);

    PurchLine.SETRANGE("Document Type","Document Type");
    PurchLine.SETRANGE("Document No.","No.");
    PurchLine.SETRANGE(Type,PurchLine.Type::"Charge (Item)");
    DeletePurchaseLines;
    PurchLine.SETRANGE(Type);
    DeletePurchaseLines;

    PurchCommentLine.SETRANGE("Document Type","Document Type");
    PurchCommentLine.SETRANGE("No.","No.");
    PurchCommentLine.DELETEALL;

    IF (PurchRcptHeader."No." <> '') OR
       (PurchInvHeader."No." <> '') OR
       (PurchCrMemoHeader."No." <> '') OR
       (ReturnShptHeader."No." <> '') OR
       (PurchInvHeaderPrepmt."No." <> '') OR
       (PurchCrMemoHeaderPrepmt."No." <> '')
    THEN
      MESSAGE(PostedDocsToPrintCreatedMsg);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {IF NOT (USERID IN['EFFTRONICS\PRANAVI','EFFTRONICS\ANILKUMAR','EFFTRONICS\ANVESH','EFFTRONICS\SPURTHI','EFFTRONICS\VIJAYA']) THEN    //Added by Pranavi on 03-Dec-2015
      ERROR('You Do Not Have Rights to Delete!');}

    // added on 18-SEP-2017 To provide the provision of deleting empty purchase order lines for the Purchase Department
    if not (UserId in['EFFTRONICS\SUJANI','EFFTRONICS\ANILKUMAR','EFFTRONICS\ANVESH','EFFTRONICS\SPURTHI','EFFTRONICS\VISHNUPRIYA','EFFTRONICS\B2BOTS'])
    then
      begin
        UserDetails.Reset;
        UserDetails.SetRange("User Name",UserId);
        if UserDetails.FindSet then
        begin
            if UserDetails.Dept in ['CR ROOM','F&A']   then
                  begin
                        PurchLine.Reset;
                        PurchLine.SetRange("Document No.","No.");
                        if PurchLine.FindFirst
                          then
                          Error('You Don''t Have Rights to Delete Purchase Order(Empty Line)');
              end else
                 Error('You Don''t Have Rights to Delete Purchase Order');
        end
        else    Error('You Don''t Have Rights to Delete Purchase Order');
       end;

    //--------------------------------------------------------------

    Cashflow_Modification;
    //EFFUPG Start
    {
    IF Status = Status:: Released THEN
      ERROR(Text043,"No.");
    }
    //EFFUPG End
    if not UserSetupMgt.CheckRespCenter(1,"Responsibility Center") then
      Error(
        Text023,
        RespCenter.TableCaption,UserSetupMgt.GetPurchasesFilter);
    #5..9
    Validate("Applies-to ID",'');
    Validate("Incoming Document Entry No.",0);

    ApprovalsMgmt.OnDeleteRecordInApprovalRequest(RecordId);
    PurchLine.LockTable;

    WhseRequest.SetRange("Source Type",DATABASE::"Purchase Line");
    WhseRequest.SetRange("Source Subtype","Document Type");
    WhseRequest.SetRange("Source No.","No.");
    WhseRequest.DeleteAll(true);

    PurchLine.SetRange("Document Type","Document Type");
    PurchLine.SetRange("Document No.","No.");
    PurchLine.SetRange(Type,PurchLine.Type::"Charge (Item)");
    DeletePurchaseLines;
    PurchLine.SetRange(Type);
    DeletePurchaseLines;

    PurchCommentLine.SetRange("Document Type","Document Type");
    PurchCommentLine.SetRange("No.","No.");
    PurchCommentLine.DeleteAll;

    if (PurchRcptHeader."No." <> '') or
       (PurchInvHeader."No." <> '') or
       (PurchCrMemoHeader."No." <> '') or
       (ReturnShptHeader."No." <> '') or
       (PurchInvHeaderPrepmt."No." <> '') or
       (PurchCrMemoHeaderPrepmt."No." <> '')
    then
      Message(PostedDocsToPrintCreatedMsg);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    InitInsert;

    IF GETFILTER("Buy-from Vendor No.") <> '' THEN
      IF GETRANGEMIN("Buy-from Vendor No.") = GETRANGEMAX("Buy-from Vendor No.") THEN
        VALIDATE("Buy-from Vendor No.",GETRANGEMIN("Buy-from Vendor No."));

    IF "Purchaser Code" = '' THEN
      SetDefaultPurchaser;

    IF "Buy-from Vendor No." <> '' THEN
      StandardCodesMgt.CheckShowPurchRecurringLinesNotification(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {IF NOT SkipInitialization THEN
      InitInsert;
    "OrderCreated by":=USERID; //sreenivas
    #3..7
    #9..11

    //B2B-MSPT1.0
    IF "Document Type"="Document Type"::Order THEN
      "MSPT Date":="Posting Date"
    ELSE IF "Document Type"="Document Type"::Quote THEN
      "MSPT Date":="Document Date";
    //B2B-MSPT1.0
    "Bill Received":=TRUE;
    "Packing Type":='Standard Packing';
    "Shortcut Dimension 1 Code":='PRD-0010';
    "USER ID" := USERID;}
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    // Cashflow_Modification;
    "USER ID":=UserId;
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
    Error(Text003,TableCaption);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: InsertAfter on "(FieldGroup: ordermenu)". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Buy-from Vendor No."(Field 2).OnValidate.StandardCodesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Vendor No." : 170;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Vendor No." : "Standard Codes Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Name"(Field 5).OnLookup.Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Name" : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Name" : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Name"(Field 5).OnValidate.Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Name" : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Name" : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Contact"(Field 10).OnLookup.Contact(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Contact" : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Contact" : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Ship-to Code"(Field 12).OnValidate.ShipToAddr(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Ship-to Code" : 222;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Ship-to Code" : "Ship-to Address";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Prices Including VAT"(Field 35).OnValidate.PurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Prices Including VAT" : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Prices Including VAT" : "Purchase Line";
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


    //Unsupported feature: PropertyModification on ""Purchaser Code"(Field 43).OnValidate.ApprovalEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Purchaser Code" : 454;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Purchaser Code" : "Approval Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 53).OnLookup.GenJnlLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 53).OnLookup.GenJnlApply(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Gen. Jnl.-Apply";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to Doc. No."(Field 53).OnLookup.ApplyVendEntries(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to Doc. No." : 233;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to Doc. No." : "Apply Vendor Entries";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Vendor Shipment No."(Field 67).OnValidate.WhsePurchRelease(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Vendor Shipment No." : 5772;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Vendor Shipment No." : "Whse.-Purch. Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Vendor Invoice No."(Field 68).OnValidate.VendorLedgerEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Vendor Invoice No." : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Vendor Invoice No." : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Vendor Cr. Memo No."(Field 69).OnValidate.VendorLedgerEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Vendor Cr. Memo No." : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Vendor Cr. Memo No." : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Buy-from Vendor Name"(Field 79).OnLookup.Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Vendor Name" : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Vendor Name" : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Buy-from Vendor Name"(Field 79).OnValidate.Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Vendor Name" : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Vendor Name" : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Buy-from Contact"(Field 84).OnLookup.Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Contact" : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Contact" : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to ID"(Field 118).OnValidate.TempVendLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to ID" : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to ID" : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Applies-to ID"(Field 118).OnValidate.VendEntrySetApplID(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Applies-to ID" : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Applies-to ID" : "Vend. Entry-SetAppl.ID";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Prepmt. Payment Terms Code"(Field 143).OnValidate.PaymentTerms(Variable 1000)". Please convert manually.

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


    //Unsupported feature: PropertyModification on ""Buy-from Contact No."(Field 5052).OnLookup.Cont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Buy-from Contact No."(Field 5052).OnLookup.ContBusinessRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Buy-from Contact No."(Field 5052).OnValidate.ContBusinessRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Buy-from Contact No."(Field 5052).OnValidate.Cont(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Buy-from Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Buy-from Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Contact No."(Field 5053).OnLookup.Cont(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Contact No."(Field 5053).OnLookup.ContBusinessRelation(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Contact No."(Field 5053).OnValidate.ContBusinessRelation(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Contact No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Contact No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Pay-to Contact No."(Field 5053).OnValidate.Cont(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Pay-to Contact No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Pay-to Contact No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostPurchDelete(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostPurchDelete : 364;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostPurchDelete : "PostPurch-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ArchiveManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ArchiveManagement : 5063;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ArchiveManagement : ArchiveManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.StandardCodesMgt(Variable 1000)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "TestNoSeriesDate(PROCEDURE 40).NoSeries(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNoSeriesDate : 308;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNoSeriesDate : "No. Series";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).SourceCode(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 230;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "Source Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).SourceCodeSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).PostPurchDelete(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 364;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "PostPurch-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmDeletion(PROCEDURE 11).ConfirmManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmDeletion : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmDeletion : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).TempPurchLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).ItemChargeAssgntPurch(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).TempItemChargeAssgntPurch(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).TempInteger(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 2000000026;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : Integer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).SalesHeader(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).TransferExtendedText(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 378;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : "Transfer Extended Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreatePurchLines(PROCEDURE 4).ConfirmManagement(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreatePurchLines : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreatePurchLines : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateItemChargeAssgntPurch(PROCEDURE 159).ItemChargeAssgntPurch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateItemChargeAssgntPurch : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateItemChargeAssgntPurch : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferSavedFieldsDropShipment(PROCEDURE 79).SalesLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferSavedFieldsDropShipment : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferSavedFieldsDropShipment : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferSavedFieldsDropShipment(PROCEDURE 79).CopyDocMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferSavedFieldsDropShipment : 6620;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferSavedFieldsDropShipment : "Copy Document Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferSavedFieldsSpecialOrder(PROCEDURE 82).SalesLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferSavedFieldsSpecialOrder : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferSavedFieldsSpecialOrder : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferSavedFieldsSpecialOrder(PROCEDURE 82).CopyDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferSavedFieldsSpecialOrder : 6620;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferSavedFieldsSpecialOrder : "Copy Document Mgt.";
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


    //Unsupported feature: PropertyModification on "UpdatePurchLines(PROCEDURE 15).Field(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePurchLines : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePurchLines : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePurchAmountLines(PROCEDURE 198).PurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePurchAmountLines : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePurchAmountLines : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePurchLinesByFieldNo(PROCEDURE 99).Field(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePurchLinesByFieldNo : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePurchLinesByFieldNo : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePurchLinesByFieldNo(PROCEDURE 99).PurchLineReserve(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePurchLinesByFieldNo : 99000834;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePurchLinesByFieldNo : "Purch. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmResvDateConflict(PROCEDURE 31).ResvEngMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmResvDateConflict : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmResvDateConflict : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmResvDateConflict(PROCEDURE 31).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmResvDateConflict : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmResvDateConflict : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 16).SourceCodeSetup(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeletePurchaseLines(PROCEDURE 17).ReservMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeletePurchaseLines : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeletePurchaseLines : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromCont(PROCEDURE 24).ContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromCont : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromCont : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromCont(PROCEDURE 24).Vend(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromCont : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromCont : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromCont(PROCEDURE 24).OfficeContact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromCont : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromCont : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromCont(PROCEDURE 24).OfficeMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromCont : 1630;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromCont : "Office Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePayToCont(PROCEDURE 27).ContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePayToCont : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePayToCont : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePayToCont(PROCEDURE 27).Vend(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePayToCont : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePayToCont : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePayToCont(PROCEDURE 27).Contact(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePayToCont : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePayToCont : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromVend(PROCEDURE 25).ContBusinessRelation(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromVend : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromVend : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromVend(PROCEDURE 25).Vend(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromVend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromVend : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBuyFromVend(PROCEDURE 25).Cont(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBuyFromVend : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBuyFromVend : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePayToVend(PROCEDURE 26).ContBusinessRelation(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePayToVend : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePayToVend : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePayToVend(PROCEDURE 26).Vend(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePayToVend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePayToVend : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePayToVend(PROCEDURE 26).Cont(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePayToVend : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePayToVend : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInvtPutAwayPick(PROCEDURE 29).WhseRequest(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInvtPutAwayPick : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInvtPutAwayPick : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAllLineDim(PROCEDURE 34).ConfirmManagement(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAllLineDim : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAllLineDim : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetAmountToApply(PROCEDURE 18).VendLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetAmountToApply : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetAmountToApply : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPstdDocLinesToRevere(PROCEDURE 47).PurchPostedDocLines(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPstdDocLinesToRevere : 5855;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPstdDocLinesToRevere : "Posted Purchase Document Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcInvDiscForHeader(PROCEDURE 45).PurchaseInvDisc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcInvDiscForHeader : 70;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcInvDiscForHeader : "Purch.-Calc.Discount";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddShipToAddress(PROCEDURE 46).PurchLine2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddShipToAddress : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddShipToAddress : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DropShptOrderExists(PROCEDURE 48).SalesLine2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DropShptOrderExists : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DropShptOrderExists : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SpecialOrderExists(PROCEDURE 81).SalesLine3(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SpecialOrderExists : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SpecialOrderExists : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDropShipmentLineExists(PROCEDURE 153).SalesShipmentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDropShipmentLineExists : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDropShipmentLineExists : "Sales Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsApprovedForPosting(PROCEDURE 50).PrepaymentMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsApprovedForPosting : 441;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsApprovedForPosting : "Prepayment Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsApprovedForPosting(PROCEDURE 50).ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsApprovedForPosting : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsApprovedForPosting : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsApprovedForPostingBatch(PROCEDURE 51).PrepaymentMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsApprovedForPostingBatch : 441;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsApprovedForPostingBatch : "Prepayment Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTotalValid(PROCEDURE 36).IncomingDocument(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTotalValid : 130;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTotalValid : "Incoming Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTotalValid(PROCEDURE 36).PurchaseLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTotalValid : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTotalValid : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTotalValid(PROCEDURE 36).TempTotalPurchaseLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTotalValid : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTotalValid : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTotalValid(PROCEDURE 36).GeneralLedgerSetup(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTotalValid : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTotalValid : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsTotalValid(PROCEDURE 36).DocumentTotals(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsTotalValid : 57;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsTotalValid : "Document Totals";
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


    //Unsupported feature: PropertyModification on "CancelBackgroundPosting(PROCEDURE 33).PurchasePostViaJobQueue(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CancelBackgroundPosting : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CancelBackgroundPosting : "Purchase Post via Job Queue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddSpecialOrderToAddress(PROCEDURE 80).PurchaseHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddSpecialOrderToAddress : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddSpecialOrderToAddress : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvoicedLineExists(PROCEDURE 56).PurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvoicedLineExists : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvoicedLineExists : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDimSetForPrepmtAccDefaultDim(PROCEDURE 44).PurchaseLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDimSetForPrepmtAccDefaultDim(PROCEDURE 44).TempPurchaseLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDimSetForPrepmtAccDefaultDim : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CollectParamsInBufferForCreateDimSet(PROCEDURE 49).GenPostingSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CollectParamsInBufferForCreateDimSet : 252;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CollectParamsInBufferForCreateDimSet : "General Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CollectParamsInBufferForCreateDimSet(PROCEDURE 49).DefaultDimension(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CollectParamsInBufferForCreateDimSet : 352;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CollectParamsInBufferForCreateDimSet : "Default Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckPurchaseReleaseRestrictions(PROCEDURE 105).ApprovalsMgmt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckPurchaseReleaseRestrictions : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckPurchaseReleaseRestrictions : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TriggerOnAfterPostPurchaseDoc(PROCEDURE 116).PurchPost(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TriggerOnAfterPostPurchaseDoc : 90;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TriggerOnAfterPostPurchaseDoc : "Purch.-Post";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralHeadersExist(PROCEDURE 38).DeferralHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralHeadersExist : 1701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralHeadersExist : "Deferral Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralHeadersExist(PROCEDURE 38).DeferralUtilities(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralHeadersExist : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralHeadersExist : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasItemChargeAssignment(PROCEDURE 171).ItemChargeAssgntPurch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasItemChargeAssignment : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasItemChargeAssignment : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShouldLookForVendorByName(PROCEDURE 182).Vendor(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShouldLookForVendorByName : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShouldLookForVendorByName : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmCloseUnposted(PROCEDURE 104).InstructionMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmCloseUnposted : 1330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmCloseUnposted : "Instruction Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupContact(PROCEDURE 122).ContactBusinessRelation(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupContact : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupContact : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendRecords(PROCEDURE 75).DocumentSendingProfile(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendRecords(PROCEDURE 75).ReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 74).DocumentSendingProfile(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 74).DummyReportSelections(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendProfile(PROCEDURE 73).DummyReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendProfile : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendProfile : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendProfile(PROCEDURE 73).ReportDistributionMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendProfile : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendProfile : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasMixedDropShipment(PROCEDURE 83).PurchaseLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasMixedDropShipment : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasMixedDropShipment : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUserSetupPurchaserCode(PROCEDURE 203).UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUserSetupPurchaserCode : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUserSetupPurchaserCode : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ModifyPayToVendorAddress(PROCEDURE 194).Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyPayToVendorAddress : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyPayToVendorAddress : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ModifyVendorAddress(PROCEDURE 150).Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyVendorAddress : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyVendorAddress : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowModifyAddressNotification(PROCEDURE 157).NotificationLifecycleMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowModifyAddressNotification : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowModifyAddressNotification : "Notification Lifecycle Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindPostedDocumentWithSameExternalDocNo(PROCEDURE 88).VendorMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindPostedDocumentWithSameExternalDocNo : 1312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindPostedDocumentWithSameExternalDocNo : "Vendor Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FilterPartialReceived(PROCEDURE 108).PurchaseHeaderOriginal(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FilterPartialReceived : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FilterPartialReceived : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FilterPartialInvoiced(PROCEDURE 307).PurchaseHeaderOriginal(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FilterPartialInvoiced : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FilterPartialInvoiced : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasReceivedLines(PROCEDURE 126).PurchaseLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasReceivedLines : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasReceivedLines : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasInvoicedLines(PROCEDURE 123).PurchaseLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasInvoicedLines : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasInvoicedLines : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowExternalDocAlreadyExistNotification(PROCEDURE 89).NotificationLifecycleMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowExternalDocAlreadyExistNotification : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowExternalDocAlreadyExistNotification : "Notification Lifecycle Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetGenJnlDocumentType(PROCEDURE 90).RefGenJournalLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetGenJnlDocumentType : 81;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetGenJnlDocumentType : "Gen. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecallExternalDocAlreadyExistsNotification(PROCEDURE 39).NotificationLifecycleMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecallExternalDocAlreadyExistsNotification : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecallExternalDocAlreadyExistsNotification : "Notification Lifecycle Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsDocAlreadyExistNotificationEnabled(PROCEDURE 91).InstructionMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsDocAlreadyExistNotificationEnabled : 1330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsDocAlreadyExistNotificationEnabled : "Instruction Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShipToAddressEqualsCompanyShipToAddress(PROCEDURE 111).CompanyInformation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShipToAddressEqualsCompanyShipToAddress : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShipToAddressEqualsCompanyShipToAddress : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetReportSelectionsUsageFromDocumentType(PROCEDURE 124).ReportSelections(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetReportSelectionsUsageFromDocumentType : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetReportSelectionsUsageFromDocumentType : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetReportSelectionsUsageFromDocumentType(PROCEDURE 124).ReportDistributionMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetReportSelectionsUsageFromDocumentType : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetReportSelectionsUsageFromDocumentType : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForBlockedLines(PROCEDURE 220).CurrentPurchLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForBlockedLines : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForBlockedLines : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForBlockedLines(PROCEDURE 220).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForBlockedLines : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForBlockedLines : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrepmtAmounts(PROCEDURE 204).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrepmtAmounts : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrepmtAmounts : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchSetup(Variable 1033)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchSetup : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchSetup : "Purchases & Payables Setup";
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


    //Unsupported feature: PropertyModification on "PurchLine(Variable 1036)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "xPurchLine(Variable 1080)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //xPurchLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //xPurchLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VendLedgEntry(Variable 1037)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VendLedgEntry : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VendLedgEntry : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Vend(Variable 1038)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Vend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Vend : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PaymentTerms(Variable 1039)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PaymentTerms : 3;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PaymentTerms : "Payment Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PaymentMethod(Variable 1040)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PaymentMethod : 289;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PaymentMethod : "Payment Method";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1041)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchHeader(Variable 1042)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchHeader : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchHeader : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchCommentLine(Variable 1043)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchCommentLine : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchCommentLine : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cust(Variable 1045)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CompanyInfo(Variable 1046)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CompanyInfo : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CompanyInfo : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1047)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OrderAddr(Variable 1048)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OrderAddr : 224;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OrderAddr : "Order Address";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAcc(Variable 1049)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAcc : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAcc : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchRcptHeader(Variable 1050)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchRcptHeader : 120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchRcptHeader : "Purch. Rcpt. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchInvHeader(Variable 1051)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchInvHeader : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchInvHeader : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchCrMemoHeader(Variable 1052)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchCrMemoHeader : 124;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchCrMemoHeader : "Purch. Cr. Memo Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReturnShptHeader(Variable 1053)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReturnShptHeader : 6650;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReturnShptHeader : "Return Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchInvHeaderPrepmt(Variable 1090)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchInvHeaderPrepmt : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchInvHeaderPrepmt : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchCrMemoHeaderPrepmt(Variable 1089)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchCrMemoHeaderPrepmt : 124;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchCrMemoHeaderPrepmt : "Purch. Cr. Memo Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1054)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenBusPostingGrp : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenBusPostingGrp : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RespCenter(Variable 1056)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RespCenter : 5714;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RespCenter : "Responsibility Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1057)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseRequest(Variable 1058)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseRequest : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseRequest : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtSetup(Variable 1059)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtSetup : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtSetup : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalespersonPurchaser(Variable 1932)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalespersonPurchaser : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalespersonPurchaser : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1060)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1065)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ApprovalsMgmt(Variable 1082)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ApprovalsMgmt : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApprovalsMgmt : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1066)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LeadTimeMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LeadTimeMgt : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LeadTimeMgt : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostingSetupMgt(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostingSetupMgt : 48;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostingSetupMgt : PostingSetupManagement;
    //Variable type has not been exported.

    var
        "--QC--": Integer;
        "---Indent---": Integer;
        PurchHeader1: Record "Purchase Header";
        Selection: Integer;
        IndentHeader: Record "Indent Header";
        IndentLine: Record "Indent Line";
        PurchLine1: Record "Purchase Line";
        PurchLineNo: Integer;
        TaxFormsDetails: Record "Tax Forms Details";
        "---MPST---": Integer;
        MSPTOrderDetails: Record "MSPT Order Details";
        SQLQuery: Text[1000];
        LineSQLQuery: Text[250];
        HeadID: Text[30];
        UpdateWebHead: Text[250];
        WebRecStatus: Text[30];
        OldWebStatus: Text[30];
        "G|l": Record "General Ledger Setup";
        Quotes: Label '''';
        Text50001: Label 'NEW';
        Text50002: Label 'OLD';
        "--Rev01": Integer;
        //SQLConnection: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000514-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Connection";
        //RecordSet: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000535-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Recordset";
        //LRecordSet: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000535-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Recordset";
        Vndr: Record Vendor;
        ArchiveManagement: Codeunit ArchiveManagement;
        UserDetails: Record User;
        SalesHeaderArchive: Record "Sales Header Archive";
        SalesListArchive: Page "Sales List Archive";
}


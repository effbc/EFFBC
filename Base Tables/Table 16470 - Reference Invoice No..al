table 16470 "Reference Invoice No."
{
    // version NAVIN9.00.00.51418

    CaptionML = ENU='Reference Invoice No.',
                ENN='Reference Invoice No.';

    fields
    {
        field(1;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Source No.";Code[20])
        {
            CaptionML = ENU='Source No.',
                        ENN='Source No.';
        }
        field(4;"Reference Invoice Nos.";Code[20])
        {
            CaptionML = ENU='Reference Invoice Nos.',
                        ENN='Reference Invoice Nos.';

            trigger OnValidate();
            var
                PurchaseHeader : Record "Purchase Header";
                VendorLedgerEntry : Record "Vendor Ledger Entry";
                VendorLedgerEntry1 : Record "Vendor Ledger Entry";
                VendorLedgerEntry2 : Record "Vendor Ledger Entry";
                CustLedgerEntry : Record "Cust. Ledger Entry";
                DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
                GenJournalLine : Record "Gen. Journal Line";
            begin
                /*IF xRec."Reference Invoice Nos." <> '' THEN
                  IF (xRec."Reference Invoice Nos." <> "Reference Invoice Nos.") AND Verified THEN
                    ERROR(RefNoAlterErr);
                IF Verified THEN
                  ERROR(ReferenceVerifyErr);
                IF "Reference Invoice Nos." <> '' THEN
                  IF "Source Type" = "Source Type"::Vendor THEN BEGIN
                    VendorLedgerEntry1.SETRANGE("Document No.","Reference Invoice Nos.");
                    IF NOT VendorLedgerEntry1.FINDFIRST THEN
                      ERROR(GarbageErr,"Reference Invoice Nos.");
                  END ELSE BEGIN
                    CustLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
                    IF NOT CustLedgerEntry.FINDFIRST THEN
                      ERROR(GarbageCutErr,"Reference Invoice Nos.");
                  END;
                IF "Source Type" <> "Source Type"::Customer THEN BEGIN
                  IF PurchaseHeader.GET("Document Type","Document No.") THEN BEGIN
                    VendorLedgerEntry1.SETRANGE("Document No.","Reference Invoice Nos.");
                    IF VendorLedgerEntry1.FINDFIRST THEN
                      IF NOT (VendorLedgerEntry1."Document Type" = VendorLedgerEntry1."Document Type"::Invoice) THEN
                        ERROR(DocumentTypeErr);
                    DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
                    DetailedGSTLedgerEntry.SETRANGE("Source No.",VendorLedgerEntry1."Vendor No.");
                    IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
                     ERROR(ReferenceInvoiceErr);
                    GSTApplicationManagement.CheckGSTPurchCrMemoValidationReference(PurchaseHeader,"Reference Invoice Nos.");
                  END ELSE BEGIN
                    GenJournalLine.SETRANGE("Journal Template Name","Journal Template Name");
                    GenJournalLine.SETRANGE("Journal Batch Name","Journal Batch Name");
                    GenJournalLine.SETRANGE("Document No.","Document No.");
                    IF GenJournalLine.FINDFIRST THEN BEGIN
                      VendorLedgerEntry1.SETRANGE("Document No.","Reference Invoice Nos.");
                      IF VendorLedgerEntry1.FINDFIRST THEN
                        IF NOT (VendorLedgerEntry1."Document Type" = VendorLedgerEntry1."Document Type"::Invoice) THEN
                          ERROR(DocumentTypeErr);
                      DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
                      DetailedGSTLedgerEntry.SETRANGE("Source No.",VendorLedgerEntry1."Vendor No.");
                      IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
                        ERROR(ReferenceInvoiceErr);
                      GSTApplicationManagement.CheckGSTPurchCrMemoValidationsJournalReference(GenJournalLine,"Reference Invoice Nos.");
                    END;
                  END;
                  VendorLedgerEntry1.SETRANGE("Document No.","Document No.");
                  IF VendorLedgerEntry1.FINDFIRST THEN BEGIN
                    VendorLedgerEntry2.COPY(VendorLedgerEntry1);
                    VendorLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
                    IF VendorLedgerEntry.FINDFIRST THEN BEGIN
                      IF NOT (VendorLedgerEntry."Document Type" = VendorLedgerEntry."Document Type"::Invoice) THEN
                        ERROR(DocumentTypeErr);
                      IF VendorLedgerEntry1."Vendor No." <> "Source No." THEN
                        ERROR(VendorNoErr);
                      DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
                      DetailedGSTLedgerEntry.SETRANGE("Source No.",VendorLedgerEntry."Vendor No.");
                      IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
                        ERROR(ReferenceInvoiceErr);
                      GSTApplicationManagement.CheckGSTPurchCrMemoValidationsOffline(
                        VendorLedgerEntry2,VendorLedgerEntry,0,"Reference Invoice Nos.");
                    END;
                  END;
                END;
                UpdateCustomerValidations;
                */

            end;
        }
        field(5;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(6;"Source Type";Option)
        {
            CaptionML = ENU='Source Type',
                        ENN='Source Type';
            OptionCaptionML = ENU='Vendor,Customer',
                              ENN='Vendor,Customer';
            OptionMembers = Vendor,Customer;
        }
        field(8;Verified;Boolean)
        {
            CaptionML = ENU='Verified',
                        ENN='Verified';
        }
        field(9;"Journal Template Name";Code[10])
        {
            CaptionML = ENU='Journal Template Name',
                        ENN='Journal Template Name';
            DataClassification = ToBeClassified;
        }
        field(10;"Journal Batch Name";Code[10])
        {
            CaptionML = ENU='Journal Batch Name',
                        ENN='Journal Batch Name';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Document No.","Document Type","Source No.","Reference Invoice Nos.","Journal Template Name","Journal Batch Name")
        {
        }
    }

    fieldgroups
    {
    }

    var
        ReferenceNoMsg : TextConst ENU='Reference Invoice No is  required where Invoice Type is Debit Note and Supplementary.',ENN='Reference Invoice No is  required where Invoice Type is Debit Note and Supplementary.';
        ReferenceNoErr : TextConst ENU='Selected Document No does not exist for Reference Invoice No.',ENN='Selected Document No does not exist for Reference Invoice No.';
        ReferenceNoNonGSTErr : TextConst ENU='You cannot select  Non GST - Invoice in Reference Invoice No.',ENN='You cannot select  Non GST - Invoice in Reference Invoice No.';
        ReferenceInvoiceNoErr : TextConst ENU='You cannot select Non GST document to GST Docment.',ENN='You cannot select Non GST document to GST Docment.';
        VendorNoErr : TextConst ENU='System does not allow Reference Invoice No for different vendor No''s.',ENN='System does not allow Reference Invoice No for different vendor No''s.';
        CustomerNoErr : TextConst ENU='System does not allow Reference Invoice No for different Customer No''s.',ENN='System does not allow Reference Invoice No for different Customer No''s.';
        ReferenceInvoiceErr : TextConst ENU='Reference Invoice No is not require updation for Non-GST Document.',ENN='Reference Invoice No is not require updation for Non-GST Document.';
        ReferenceVerifyErr : TextConst ENU='Reference Invoice No cannot be update after Verification.',ENN='Reference Invoice No cannot be update after Verification.';
        GarbageErr : TextConst Comment='%1',ENU='The field Reference Invoice No. of table %1 contains a value  that cannot be found in the related table Vendor Ledger Entry.',ENN='The field Reference Invoice No. of table %1 contains a value  that cannot be found in the related table Vendor Ledger Entry.';
        GarbageCutErr : TextConst Comment='%1',ENU='The field Reference Invoice No. of table %1 contains a value  that cannot be found in the related table Customer Ledger Entry.',ENN='The field Reference Invoice No. of table %1 contains a value  that cannot be found in the related table Customer Ledger Entry.';
        DocumentTypeErr : TextConst ENU='You cannot select Credit Memo/Payment for Reference Invoice.',ENN='You cannot select Credit Memo/Payment for Reference Invoice.';
        SameDocErr : TextConst ENU='You cannot apply same document.',ENN='You cannot apply same document.';
        RefNoAlterErr : TextConst ENU='Reference Invoice No cannot be updated after verification.',ENN='Reference Invoice No cannot be updated after verification.';
        RCMValueCheckErr : TextConst ENU='You cannot select RCM and Non - RCM Invoice together.',ENN='You cannot select RCM and Non - RCM Invoice together.';

    [LineStart(63165)]
    procedure VerifyReferenceNo();
    var
        VendorLedgerEntry : Record "Vendor Ledger Entry";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        ReferenceInvoiceNo : Record "Reference Invoice No.";
        CustLedgerEntry : Record "Cust. Ledger Entry";
        FirstRecord : Boolean;
        RCMValue : Boolean;
    begin
        /*ReferenceInvoiceNo.SETRANGE("Document No.","Document No.");
        ReferenceInvoiceNo.SETRANGE("Document Type","Document Type");
        ReferenceInvoiceNo.SETRANGE("Source No.","Source No.");
        IF ReferenceInvoiceNo.FINDSET THEN BEGIN
          REPEAT
            IF "Document No." = "Reference Invoice Nos." THEN
              ERROR(SameDocErr);
            IF "Source Type" = "Source Type"::Vendor THEN BEGIN
              VendorLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Vendor No.");
              VendorLedgerEntry.SETRANGE("Vendor No.","Source No.");
              VendorLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
              IF VendorLedgerEntry.FINDFIRST THEN BEGIN
                IF NOT FirstRecord THEN BEGIN
                  RCMValue := VendorLedgerEntry."RCM Exempt";
                  FirstRecord := TRUE;
                END ELSE
                  IF RCMValue <> VendorLedgerEntry."RCM Exempt" THEN
                    ERROR(RCMValueCheckErr);
                DetailedGSTLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",VendorLedgerEntry."Document Type");
                DetailedGSTLedgerEntry.SETRANGE("Source No.","Source No.");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF NOT ReferenceInvoiceNo.Verified THEN
                    ReferenceInvoiceNo.Verified := TRUE;
                  ReferenceInvoiceNo.MODIFY;
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END ELSE
                ERROR(ReferenceNoErr);
            END;
        
            IF "Source Type" = "Source Type"::Customer THEN BEGIN
              CustLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Customer No.");
              CustLedgerEntry.SETRANGE("Customer No.","Source No.");
              CustLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
              IF CustLedgerEntry.FINDFIRST THEN BEGIN
                DetailedGSTLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type");
                DetailedGSTLedgerEntry.SETRANGE("Source No.","Source No.");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF NOT ReferenceInvoiceNo.Verified THEN
                    ReferenceInvoiceNo.Verified := TRUE;
                  ReferenceInvoiceNo.MODIFY;
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END ELSE
                ERROR(ReferenceNoErr);
            END;
          UNTIL ReferenceInvoiceNo.NEXT = 0;
        END;
        */

    end;

    [LineStart(63218)]
    procedure UpdateReferenceInvoiceNoforVendor(DocumentType : Option;DocumentNo : Code[20]);
    var
        VendorLedgerEntry : Record "Vendor Ledger Entry";
        PurchaseHeader1 : Record "Purchase Header";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        VendorLedgerEntries : Page "Vendor Ledger Entries";
    begin
        /*PurchaseHeader1.SETRANGE("Document Type",DocumentType);
        PurchaseHeader1.SETRANGE("No.",DocumentNo);
        IF PurchaseHeader1.FINDFIRST THEN BEGIN
          IF GSTManagement.IsGSTApplicable(PurchaseHeader1.Structure) THEN BEGIN
            VendorLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Vendor No.");
            VendorLedgerEntry.SETRANGE("Vendor No.",PurchaseHeader1."Pay-to Vendor No.");
            VendorLedgerEntry.SETRANGE("Document Type",PurchaseHeader1."Document Type"::Invoice);
            IF VendorLedgerEntry.FINDFIRST THEN BEGIN
              VendorLedgerEntries.SETTABLEVIEW(VendorLedgerEntry);
              VendorLedgerEntries.SETRECORD(VendorLedgerEntry);
              VendorLedgerEntries.LOOKUPMODE(TRUE);
              IF VendorLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
                VendorLedgerEntries.GETRECORD(VendorLedgerEntry);
                IF NOT (VendorLedgerEntry."Document Type" = VendorLedgerEntry."Document Type"::Invoice) THEN
                  ERROR(DocumentTypeErr);
                DetailedGSTLedgerEntry.SETRANGE("Document No.",VendorLedgerEntry."Document No.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",VendorLedgerEntry."Document Type");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF (PurchaseHeader1."Invoice Type" IN [PurchaseHeader1."Invoice Type"::"Debit Note",
                                                         PurchaseHeader1."Invoice Type"::Supplementary]) OR
                     (PurchaseHeader1."Document Type" IN [PurchaseHeader1."Document Type"::"Credit Memo",
                                                          PurchaseHeader1."Document Type"::"Return Order"])
                  THEN
                    "Reference Invoice Nos." := VendorLedgerEntry."Document No."
                  ELSE
                    MESSAGE(ReferenceNoMsg);
                  IF PurchaseHeader1."Pay-to Vendor No." <> VendorLedgerEntry."Vendor No." THEN
                    ERROR(VendorNoErr);
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END;
              GSTApplicationManagement.CheckGSTPurchCrMemoValidationReference(PurchaseHeader1,"Reference Invoice Nos.");
            END;
          END ELSE
            ERROR(ReferenceInvoiceNoErr);
          PurchaseHeader1."RCM Exempt" := PurchaseHeader1.CheckRCMExemptDate;
        END ELSE
          UpdateReferenceInvoiceforVendorLedgerEntries("Source No.","Document Type"::Invoice);
          */

    end;

    [LineStart(63259)]
    procedure UpdateReferenceInvoiceNoforCustomer(DocumentType : Option;DocumentNo : Code[20]);
    var
        SalesHeader : Record "Sales Header";
        ServiceHeader : Record "Service Header";
        CustLedgerEntry : Record "Cust. Ledger Entry";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        CustomerLedgerEntries : Page "Customer Ledger Entries";
        Found : Boolean;
    begin
        /*SalesHeader.SETRANGE("Document Type",DocumentType);
        SalesHeader.SETRANGE("No.",DocumentNo);
        IF SalesHeader.FINDFIRST THEN BEGIN
          IF GSTManagement.IsGSTApplicable(SalesHeader.Structure) THEN BEGIN
            CustLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Customer No.");
            CustLedgerEntry.SETRANGE("Customer No.",SalesHeader."Bill-to Customer No.");
            CustLedgerEntry.SETRANGE("Document Type",SalesHeader."Document Type"::Invoice);
            IF CustLedgerEntry.FINDFIRST THEN BEGIN
              CustomerLedgerEntries.SETTABLEVIEW(CustLedgerEntry);
              CustomerLedgerEntries.SETRECORD(CustLedgerEntry);
              CustomerLedgerEntries.LOOKUPMODE(TRUE);
              IF CustomerLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
                CustomerLedgerEntries.GETRECORD(CustLedgerEntry);
                IF NOT (CustLedgerEntry."Document Type" = CustLedgerEntry."Document Type"::Invoice) THEN
                  ERROR(DocumentTypeErr);
                DetailedGSTLedgerEntry.SETRANGE("Document No.",CustLedgerEntry."Document No.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF (SalesHeader."Invoice Type" IN [SalesHeader."Invoice Type"::"Debit Note",
                                                     SalesHeader."Invoice Type"::Supplementary]) OR
                     (SalesHeader."Document Type" IN [SalesHeader."Document Type"::"Credit Memo",
                                                      SalesHeader."Document Type"::"Return Order"])
                  THEN
                    "Reference Invoice Nos." := CustLedgerEntry."Document No."
                  ELSE
                    MESSAGE(ReferenceNoMsg);
                  IF SalesHeader."Bill-to Customer No." <> CustLedgerEntry."Customer No." THEN
                    ERROR(CustomerNoErr);
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END;
              GSTApplicationManagement.CheckGSTSalesCrMemoValidationReference(SalesHeader,"Reference Invoice Nos.");
            END;
          END ELSE
            ERROR(ReferenceInvoiceNoErr);
          Found := TRUE;
        END;
        ServiceHeader.SETRANGE("Document Type",DocumentType);
        ServiceHeader.SETRANGE("No.",DocumentNo);
        IF ServiceHeader.FINDFIRST THEN BEGIN
          IF GSTManagement.IsGSTApplicable(ServiceHeader.Structure) THEN BEGIN
            CustLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Customer No.");
            CustLedgerEntry.SETRANGE("Customer No.",ServiceHeader."Customer No.");
            CustLedgerEntry.SETRANGE("Document Type",ServiceHeader."Document Type"::Invoice);
            IF CustLedgerEntry.FINDFIRST THEN BEGIN
              CustomerLedgerEntries.SETTABLEVIEW(CustLedgerEntry);
              CustomerLedgerEntries.SETRECORD(CustLedgerEntry);
              CustomerLedgerEntries.LOOKUPMODE(TRUE);
              IF CustomerLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
                CustomerLedgerEntries.GETRECORD(CustLedgerEntry);
                IF NOT (CustLedgerEntry."Document Type" = CustLedgerEntry."Document Type"::Invoice) THEN
                  ERROR(DocumentTypeErr);
                DetailedGSTLedgerEntry.SETRANGE("Document No.",CustLedgerEntry."Document No.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF (ServiceHeader."Invoice Type" IN [ServiceHeader."Invoice Type"::"Debit Note",
                                                       ServiceHeader."Invoice Type"::Supplementary]) OR
                     (ServiceHeader."Document Type" IN [ServiceHeader."Document Type"::"Credit Memo"])
                  THEN
                    "Reference Invoice Nos." := CustLedgerEntry."Document No."
                  ELSE
                    MESSAGE(ReferenceNoMsg);
                  IF ServiceHeader."Bill-to Customer No." <> CustLedgerEntry."Customer No." THEN
                    ERROR(CustomerNoErr);
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END;
              GSTApplicationManagement.CheckGSTServiceCrMemoValidationReference(ServiceHeader,"Reference Invoice Nos.");
            END;
          END ELSE
            ERROR(ReferenceInvoiceNoErr);
          Found := TRUE;
        END;
        IF NOT Found THEN
          UpdateReferenceInvoiceforCustomerLedgerEntries("Source No.","Document Type"::Invoice);
          */

    end;

    [LineStart(63337)]
    procedure UpdateReferenceInvoiceforVendorLedgerEntries(SourceNo : Code[20];DocumentType : Option);
    var
        VendorLedgerEntry : Record "Vendor Ledger Entry";
        VendorLedgerEntry1 : Record "Vendor Ledger Entry";
        VendorLedgerEntry2 : Record "Vendor Ledger Entry";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        VendorLedgerEntries : Page "Vendor Ledger Entries";
    begin
        /*VendorLedgerEntry.SETRANGE("Vendor No.",SourceNo);
        VendorLedgerEntry.SETRANGE("Document Type",DocumentType);
        IF VendorLedgerEntry.FINDFIRST THEN BEGIN
          CLEAR(VendorLedgerEntries);
          VendorLedgerEntries.SETTABLEVIEW(VendorLedgerEntry);
          VendorLedgerEntries.SETRECORD(VendorLedgerEntry);
          VendorLedgerEntries.LOOKUPMODE(TRUE);
          IF VendorLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
            VendorLedgerEntries.GETRECORD(VendorLedgerEntry);
            IF NOT (VendorLedgerEntry."Document Type" = VendorLedgerEntry."Document Type"::Invoice) THEN
              ERROR(DocumentTypeErr);
            DetailedGSTLedgerEntry.SETRANGE("Document No.",VendorLedgerEntry."Document No.");
            DetailedGSTLedgerEntry.SETRANGE("Source No.",VendorLedgerEntry."Vendor No.");
            IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
              IF (DetailedGSTLedgerEntry."Document Type" = DetailedGSTLedgerEntry."Document Type"::Invoice) OR
                 (DetailedGSTLedgerEntry."Document Type" = DetailedGSTLedgerEntry."Document Type"::"Credit Memo")
              THEN
                "Reference Invoice Nos." := VendorLedgerEntry."Document No.";
              VendorLedgerEntry1.SETRANGE("Document No.","Document No.");
              IF VendorLedgerEntry1.FINDFIRST THEN
                VendorLedgerEntry2.COPY(VendorLedgerEntry1);
              GSTApplicationManagement.CheckGSTPurchCrMemoValidationsOffline(
                VendorLedgerEntry2,VendorLedgerEntry,0,"Reference Invoice Nos.");
              IF VendorLedgerEntry1."Vendor No." <> DetailedGSTLedgerEntry."Source No." THEN
                ERROR(VendorNoErr);
            END ELSE
              ERROR(ReferenceInvoiceErr)
          END;
        END;
        */

    end;

    [LineStart(63369)]
    procedure UpdateReferenceInvoiceforCustomerLedgerEntries(SourceNo : Code[20];DocumentType : Option);
    var
        CustLedgerEntry : Record "Cust. Ledger Entry";
        CustLedgerEntry1 : Record "Cust. Ledger Entry";
        CustLedgerEntry2 : Record "Cust. Ledger Entry";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        CustomerLedgerEntries : Page "Customer Ledger Entries";
    begin
        /*CustLedgerEntry.SETRANGE("Customer No.",SourceNo);
        CustLedgerEntry.SETRANGE("Document Type",DocumentType);
        IF CustLedgerEntry.FINDFIRST THEN BEGIN
          CLEAR(CustomerLedgerEntries);
          CustomerLedgerEntries.SETTABLEVIEW(CustLedgerEntry);
          CustomerLedgerEntries.SETRECORD(CustLedgerEntry);
          CustomerLedgerEntries.LOOKUPMODE(TRUE);
          IF CustomerLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
            CustomerLedgerEntries.GETRECORD(CustLedgerEntry);
            DetailedGSTLedgerEntry.SETRANGE("Document No.",CustLedgerEntry."Document No.");
            DetailedGSTLedgerEntry.SETRANGE("Source No.",CustLedgerEntry."Customer No.");
            IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
              IF (DetailedGSTLedgerEntry."Document Type" = DetailedGSTLedgerEntry."Document Type"::Invoice) OR
                 (DetailedGSTLedgerEntry."Document Type" = DetailedGSTLedgerEntry."Document Type"::"Credit Memo")
              THEN
                "Reference Invoice Nos." := CustLedgerEntry."Document No.";
              CustLedgerEntry1.SETRANGE("Document No.","Document No.");
              IF CustLedgerEntry1.FINDFIRST THEN
                CustLedgerEntry2.COPY(CustLedgerEntry1);
              GSTApplicationManagement.CheckGSTSalesCrMemoValidationsOffline(
                CustLedgerEntry2,CustLedgerEntry,0,"Reference Invoice Nos.");
              IF CustLedgerEntry1."Customer No." <> DetailedGSTLedgerEntry."Source No." THEN
                ERROR(CustomerNoErr);
            END ELSE
              ERROR(ReferenceNoNonGSTErr)
          END;
        END;
        */

    end;

    [LineStart(63399)]
    procedure UpdateReferenceInvoiceNoforPurchJournals(DocumentType : Option;DocumentNo : Code[20];JournalTemplateName : Code[10];JournalBatchName : Code[10]);
    var
        VendorLedgerEntry : Record "Vendor Ledger Entry";
        GenJournalLine : Record "Gen. Journal Line";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        VendorLedgerEntries : Page "Vendor Ledger Entries";
    begin
        /*GenJournalLine.SETRANGE("Journal Template Name",JournalTemplateName);
        GenJournalLine.SETRANGE("Journal Batch Name",JournalBatchName);
        GenJournalLine.SETRANGE("Document Type",DocumentType);
        GenJournalLine.SETRANGE("Document No.",DocumentNo);
        GenJournalLine.SETRANGE("Account Type",GenJournalLine."Account Type"::Vendor);
        IF GenJournalLine.FINDFIRST THEN BEGIN
          VendorLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Vendor No.");
          VendorLedgerEntry.SETRANGE("Vendor No.",GenJournalLine."Account No.");
          VendorLedgerEntry.SETRANGE("Document Type",VendorLedgerEntry."Document Type"::Invoice);
          IF VendorLedgerEntry.FINDFIRST THEN BEGIN
            VendorLedgerEntries.SETTABLEVIEW(VendorLedgerEntry);
            VendorLedgerEntries.SETRECORD(VendorLedgerEntry);
            VendorLedgerEntries.LOOKUPMODE(TRUE);
            IF VendorLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
              VendorLedgerEntries.GETRECORD(VendorLedgerEntry);
              IF NOT (VendorLedgerEntry."Document Type" = VendorLedgerEntry."Document Type"::Invoice) THEN
                ERROR(DocumentTypeErr);
              DetailedGSTLedgerEntry.SETRANGE("Document No.",VendorLedgerEntry."Document No.");
              DetailedGSTLedgerEntry.SETRANGE("Document Type",VendorLedgerEntry."Document Type");
              IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                IF (GenJournalLine."Purch. Invoice Type" IN [GenJournalLine."Purch. Invoice Type"::"Debit Note",
                                                             GenJournalLine."Purch. Invoice Type"::Supplementary]) OR
                   (GenJournalLine."Document Type" = GenJournalLine."Document Type"::"Credit Memo")
                THEN
                  "Reference Invoice Nos." := VendorLedgerEntry."Document No."
                ELSE
                  MESSAGE(ReferenceNoMsg);
                IF GenJournalLine."Account No." <> VendorLedgerEntry."Vendor No." THEN
                  ERROR(VendorNoErr);
              END ELSE
                ERROR(ReferenceInvoiceErr);
            END;
            GSTApplicationManagement.CheckGSTPurchCrMemoValidationsJournalReference(GenJournalLine,"Reference Invoice Nos.");
          END ELSE
            ERROR(ReferenceInvoiceNoErr);
        END ELSE
          UpdateReferenceInvoiceforVendorLedgerEntries("Source No.","Document Type"::Invoice);
          */

    end;

    [LineStart(63439)]
    procedure VerifyReferenceNoJournals();
    var
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        ReferenceInvoiceNo : Record "Reference Invoice No.";
        CustLedgerEntry : Record "Cust. Ledger Entry";
        VendorLedgerEntry : Record "Vendor Ledger Entry";
        FirstRecord : Boolean;
        RCMValue : Boolean;
    begin
        /*ReferenceInvoiceNo.SETRANGE("Document No.","Document No.");
        ReferenceInvoiceNo.SETRANGE("Document Type","Document Type");
        ReferenceInvoiceNo.SETRANGE("Source No.","Source No.");
        ReferenceInvoiceNo.SETRANGE("Journal Template Name","Journal Template Name");
        ReferenceInvoiceNo.SETRANGE("Journal Batch Name","Journal Batch Name");
        IF ReferenceInvoiceNo.FINDSET THEN BEGIN
          REPEAT
            IF "Source Type" = "Source Type"::Vendor THEN BEGIN
              VendorLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Vendor No.");
              VendorLedgerEntry.SETRANGE("Vendor No.","Source No.");
              VendorLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
              IF VendorLedgerEntry.FINDFIRST THEN BEGIN
                IF NOT FirstRecord THEN BEGIN
                  RCMValue := VendorLedgerEntry."RCM Exempt";
                  FirstRecord := TRUE;
                END ELSE
                  IF RCMValue <> VendorLedgerEntry."RCM Exempt" THEN
                    ERROR(RCMValueCheckErr);
                DetailedGSTLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",VendorLedgerEntry."Document Type");
                DetailedGSTLedgerEntry.SETRANGE("Source No.","Source No.");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF NOT ReferenceInvoiceNo.Verified THEN
                    ReferenceInvoiceNo.Verified := TRUE;
                  ReferenceInvoiceNo."Source Type" := ReferenceInvoiceNo."Source Type"::Vendor;
                  ReferenceInvoiceNo.MODIFY;
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END ELSE
                ERROR(ReferenceNoErr);
            END;
            IF "Source Type" = "Source Type"::Customer THEN BEGIN
              CustLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Customer No.");
              CustLedgerEntry.SETRANGE("Customer No.","Source No.");
              CustLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
              IF CustLedgerEntry.FINDFIRST THEN BEGIN
                DetailedGSTLedgerEntry.SETRANGE("Document No.",ReferenceInvoiceNo."Reference Invoice Nos.");
                DetailedGSTLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type");
                DetailedGSTLedgerEntry.SETRANGE("Source No.","Source No.");
                IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                  IF NOT ReferenceInvoiceNo.Verified THEN
                    ReferenceInvoiceNo.Verified := TRUE;
                  ReferenceInvoiceNo."Source Type" := ReferenceInvoiceNo."Source Type"::Customer;
                  ReferenceInvoiceNo.MODIFY;
                END ELSE
                  ERROR(ReferenceInvoiceErr);
              END ELSE
                ERROR(ReferenceNoErr);
            END;
          UNTIL ReferenceInvoiceNo.NEXT = 0
        END;
        */

    end;

    [LineStart(63493)]
    procedure UpdateReferenceInvoiceNoforSalesJournals(DocumentType : Option;DocumentNo : Code[20];JournalTemplateName : Code[10];JournalBatchName : Code[10]);
    var
        CustLedgerEntry : Record "Cust. Ledger Entry";
        GenJournalLine : Record "Gen. Journal Line";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        CustomerLedgerEntries : Page "Customer Ledger Entries";
    begin
        /*GenJournalLine.SETRANGE("Journal Template Name",JournalTemplateName);
        GenJournalLine.SETRANGE("Journal Batch Name",JournalBatchName);
        GenJournalLine.SETRANGE("Document Type",DocumentType);
        GenJournalLine.SETRANGE("Document No.",DocumentNo);
        GenJournalLine.SETRANGE("Account Type",GenJournalLine."Account Type"::Customer);
        IF GenJournalLine.FINDFIRST THEN BEGIN
          CustLedgerEntry.SETCURRENTKEY("Document No.","Document Type","Customer No.");
          CustLedgerEntry.SETRANGE("Customer No.",GenJournalLine."Account No.");
          CustLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type"::Invoice);
          IF CustLedgerEntry.FINDFIRST THEN BEGIN
            CustomerLedgerEntries.SETTABLEVIEW(CustLedgerEntry);
            CustomerLedgerEntries.SETRECORD(CustLedgerEntry);
            CustomerLedgerEntries.LOOKUPMODE(TRUE);
            IF CustomerLedgerEntries.RUNMODAL = ACTION::LookupOK THEN BEGIN
              CustomerLedgerEntries.GETRECORD(CustLedgerEntry);
              IF NOT (CustLedgerEntry."Document Type" = CustLedgerEntry."Document Type"::Invoice) THEN
                ERROR(DocumentTypeErr);
              DetailedGSTLedgerEntry.SETRANGE("Document No.",CustLedgerEntry."Document No.");
              DetailedGSTLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type");
              IF DetailedGSTLedgerEntry.FINDFIRST THEN BEGIN
                IF (GenJournalLine."Sales Invoice Type" IN [GenJournalLine."Sales Invoice Type"::"Debit Note",
                                                            GenJournalLine."Sales Invoice Type"::Supplementary]) OR
                   (GenJournalLine."Document Type" = GenJournalLine."Document Type"::"Credit Memo")
                THEN
                  "Reference Invoice Nos." := CustLedgerEntry."Document No."
                ELSE
                  MESSAGE(ReferenceNoMsg);
                IF GenJournalLine."Account No." <> CustLedgerEntry."Customer No." THEN
                  ERROR(CustomerNoErr);
              END ELSE
                ERROR(ReferenceInvoiceErr);
            END;
            GSTApplicationManagement.CheckGSTSalesCrMemoJournalValidationReference(GenJournalLine,"Reference Invoice Nos.");
          END ELSE
            ERROR(ReferenceInvoiceNoErr);
        END ELSE
          UpdateReferenceInvoiceforVendorLedgerEntries("Source No.","Document Type"::Invoice);
          */

    end;

    [LineStart(63533)]
    local procedure UpdateCustomerValidations();
    var
        SalesHeader : Record "Sales Header";
        ServiceHeader : Record "Service Header";
        CustLedgerEntry1 : Record "Cust. Ledger Entry";
        CustLedgerEntry2 : Record "Cust. Ledger Entry";
        CustLedgerEntry : Record "Cust. Ledger Entry";
        DetailedGSTLedgerEntry : Record "Detailed GST Ledger Entry";
        GenJournalLine : Record "Gen. Journal Line";
    begin
        /*IF "Source Type" = "Source Type"::Customer THEN BEGIN
          IF SalesHeader.GET("Document Type","Document No.") THEN BEGIN
            CustLedgerEntry1.SETRANGE("Document No.","Reference Invoice Nos.");
            IF CustLedgerEntry1.FINDFIRST THEN
              IF NOT (CustLedgerEntry1."Document Type" = CustLedgerEntry1."Document Type"::Invoice) THEN
                ERROR(DocumentTypeErr);
            DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
            DetailedGSTLedgerEntry.SETRANGE("Source No.",CustLedgerEntry1."Customer No.");
           IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
              ERROR(ReferenceInvoiceErr);
            GSTApplicationManagement.CheckGSTSalesCrMemoValidationReference(SalesHeader,"Reference Invoice Nos.");
          END ELSE BEGIN
            GenJournalLine.SETRANGE("Journal Template Name","Journal Template Name");
            GenJournalLine.SETRANGE("Journal Batch Name","Journal Batch Name");
            GenJournalLine.SETRANGE("Document No.","Document No.");
            IF GenJournalLine.FINDFIRST THEN BEGIN
              CustLedgerEntry1.SETRANGE("Document No.","Reference Invoice Nos.");
              IF CustLedgerEntry1.FINDFIRST THEN
                IF NOT (CustLedgerEntry1."Document Type" = CustLedgerEntry1."Document Type"::Invoice) THEN
                  ERROR(DocumentTypeErr);
              DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
              DetailedGSTLedgerEntry.SETRANGE("Source No.",CustLedgerEntry1."Customer No.");
             IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
               ERROR(ReferenceInvoiceErr);
              GSTApplicationManagement.CheckGSTSalesCrMemoJournalValidationReference(GenJournalLine,"Reference Invoice Nos.");
            END;
          END;
          CustLedgerEntry1.SETRANGE("Document No.","Document No.");
          IF CustLedgerEntry1.FINDFIRST THEN BEGIN
            CustLedgerEntry2.COPY(CustLedgerEntry1);
            CustLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
            IF CustLedgerEntry.FINDFIRST THEN BEGIN
              IF NOT (CustLedgerEntry."Document Type" = CustLedgerEntry."Document Type"::Invoice) THEN
                ERROR(DocumentTypeErr);
              IF CustLedgerEntry1."Customer No." <> "Source No." THEN
                ERROR(CustomerNoErr);
              DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
              DetailedGSTLedgerEntry.SETRANGE("Source No.",CustLedgerEntry."Customer No.");
              IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
               ERROR(ReferenceInvoiceErr);
              GSTApplicationManagement.CheckGSTSalesCrMemoValidationsOffline(
                CustLedgerEntry2,CustLedgerEntry,0,"Reference Invoice Nos.");
            END;
          END;
          IF ServiceHeader.GET("Document Type","Document No.") THEN BEGIN
            CustLedgerEntry1.SETRANGE("Document No.","Reference Invoice Nos.");
            IF CustLedgerEntry1.FINDFIRST THEN
              IF NOT (CustLedgerEntry1."Document Type" = CustLedgerEntry1."Document Type"::Invoice) THEN
                ERROR(DocumentTypeErr);
            DetailedGSTLedgerEntry.SETRANGE("Document No.","Reference Invoice Nos.");
            DetailedGSTLedgerEntry.SETRANGE("Source No.",CustLedgerEntry1."Customer No.");
           IF NOT DetailedGSTLedgerEntry.FINDFIRST THEN
              ERROR(ReferenceInvoiceErr);
            GSTApplicationManagement.CheckGSTServiceCrMemoValidationReference(ServiceHeader,"Reference Invoice Nos.");
          END;
        END;*/

    end;
}


codeunit 90600 Customise
{
    trigger OnRun()
    begin

    end;


    //cODEUNIT 11
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Check Line", 'OnBeforeErrorIfNegativeAmt', '', false, false)]

    procedure OnBeforeErrorIfNegativeAmt(GenJnlLine: Record "Gen. Journal Line"; var RaiseError: Boolean)
    begin
        MESSAGE(FORMAT(GenJnlLine.Amount));


    end;
    //>>Codeunit 12>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeRunWithCheck', '', false, false)]
    local procedure OnBeforeRunWithCheck(var GenJournalLine: Record "Gen. Journal Line"; var GenJournalLine2: Record "Gen. Journal Line");
    begin
        //B2B
        CheckCashAccBalance(GenJournalLine2);

        //B2B
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeRunWithoutCheck', '', false, false)]
    local procedure OnBeforeRunWithoutCheck(var GenJournalLine: Record "Gen. Journal Line"; var GenJournalLine2: Record "Gen. Journal Line");
    begin
        //B2B
        CheckCashAccBalance(GenJournalLine2);
        //B2B
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeInitAmounts', '', false, false)]
    local procedure OnBeforeInitAmounts(var GenJnlLine: Record "Gen. Journal Line"; var Currency: Record Currency; var IsHandled: Boolean)
    begin
        GenJnlLine.Amount := ROUND(GenJnlLine.Amount, Currency."Amount Rounding Precision");
        GenJnlLine."Amount (LCY)" := ROUND(GenJnlLine."Amount (LCY)", Currency."Amount Rounding Precision");

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterPostGLAcc', '', false, false)]

    local procedure OnAfterPostGLAcc(var GenJnlLine: Record "Gen. Journal Line"; var TempGLEntryBuf: Record "G/L Entry" temporary; var NextEntryNo: Integer; var NextTransactionNo: Integer; Balancing: Boolean)
    begin
        TempGLEntryBuf."Apply Entry No" := GenJnlLine."Apply Entry No";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterPostCust', '', false, false)]
    local procedure OnAfterPostCust(var GenJournalLine: Record "Gen. Journal Line"; Balancing: Boolean; var TempGLEntryBuf: Record "G/L Entry" temporary; var NextEntryNo: Integer; var NextTransactionNo: Integer)
    var
    // cust: Record "MSPT Customer Ledger Entry";
    begin
        //B2B
        //"CustAccNo." := "Account No.";


        //B2B

        //B2B-MSPT1.0 for inserting the values into the customer ledger entry table BEGIN
        // MSPTCustEntry.PostMSPTCustLedgerEntries(CustLedgEntry);
        //B2B-MSPT1.0 for inserting the values into the customer ledger entry table END
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforePostVend', '', false, false)]
    local procedure OnBeforePostVend(var GenJournalLine: Record "Gen. Journal Line")
    var
        OriginalGenJnlLine: Record 81;
    // MSPTVendorEntry : Codeunit 60008;
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnPostVendOnBeforePostDtldVendLedgEntries', '', false, false)]
    local procedure OnPostVendOnBeforePostDtldVendLedgEntries(var VendorLedgerEntry: Record "Vendor Ledger Entry"; var GenJournalLine: Record "Gen. Journal Line"; var TempDtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer"; var NextEntryNo: Integer)
    begin
        //B2B-MSPT1.0 for inserting the values into the MSPT Vendor Ledger Entries Begin
        // MSPTVendorEntry.PostMSPTVendorLedgerEntries( VendorLedgerEntry);
        //B2B-MSPT1.0 for inserting the values into the MSPT Vendor Ledger Entries End
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnPostBankAccOnBeforeBankAccLedgEntryInsert', '', false, false)]
    local procedure OnPostBankAccOnBeforeBankAccLedgEntryInsert(var BankAccountLedgerEntry: Record "Bank Account Ledger Entry"; var GenJournalLine: Record "Gen. Journal Line"; BankAccount: Record "Bank Account"; var TempGLEntryBuf: Record "G/L Entry" temporary; var NextTransactionNo: Integer)
    begin
        // Rev01>>
        BankAccountLedgerEntry."DD/FDR No." := GenJournalLine."DD/FDR No.";
        BankAccountLedgerEntry."Payment Through" := GenJournalLine."Payment Through";
        // Rev01<<
        BankAccountLedgerEntry."customer ord no" := GenJournalLine."Customer Ord no"; //srinivas
        BankAccountLedgerEntry."Payment Type" := GenJournalLine."Payment Type";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitGLEntry', '', false, false)]
    local procedure OnAfterInitGLEntry(var GLEntry: Record "G/L Entry"; GenJournalLine: Record "Gen. Journal Line"; Amount: Decimal; AddCurrAmount: Decimal; UseAddCurrAmount: Boolean; var CurrencyFactor: Decimal)
    begin
        //B2B>>
        //GLEntry.Amount := Amount;
        GLEntry.Amount := ROUND(Amount, 0.01);
        //B2B <<

        //B2B-knr
        //B2B
        //..TDSCertificate(GLEntry);
        //B2B

        //B2B-Knr
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInsertDtldCustLedgEntry', '', false, false)]
    local procedure OnAfterInsertDtldCustLedgEntry(var DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; GenJournalLine: Record "Gen. Journal Line"; DtldCVLedgEntryBuffer: Record "Detailed CV Ledg. Entry Buffer"; Offset: Integer)
    var
    //MSPTCustEntry : Codeunit 60007;
    begin
        //B2B-MSPT1.0 For inserting the values into the MSPT Detailed Customer Ledger Entries Begin
        //  MSPTCustEntry.PostMSPTDtldCustLedgEntries(DtldCustLedgEntry);
        //B2B-MSPT1.0 For inserting the values into the MSPT Detailed Customer Ledger Entries End
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnApplyCustLedgEntryOnBeforePrepareTempCustLedgEntry', '', false, false)]
    local procedure OnApplyCustLedgEntryOnBeforePrepareTempCustLedgEntry(var GenJournalLine: Record "Gen. Journal Line"; var NewCVLedgerEntryBuffer: Record "CV Ledger Entry Buffer"; var DetailedCVLedgEntryBuffer: Record "Detailed CV Ledg. Entry Buffer"; var NextEntryNo: Integer)
    var
        PT_Applying_CLE_GRec: Record 21;
        PT_Temp_Applying_CLE_GRec: Record 21 TEMPORARY;
        PT_ApplyTo_CLE_GRec: Record 21 TEMPORARY;
        PT_Temp_ApplyTo_CLE_GRec: Record 21 TEMPORARY;
        // SQLInt : Codeunit 60021;
        applyToAmt: Decimal;
        TempApplyngAmt: Decimal;

    begin
        // Added by pranavi on 09-09-2016 for payment terms process
        PT_Applying_CLE_GRec.RESET;
        PT_Applying_CLE_GRec.SETRANGE(PT_Applying_CLE_GRec."Entry No.", NewCVLedgerEntryBuffer."Entry No.");
        IF PT_Applying_CLE_GRec.FINDFIRST THEN BEGIN
            PT_Temp_Applying_CLE_GRec := PT_Applying_CLE_GRec;
            PT_Temp_Applying_CLE_GRec.INSERT;
        END;
        // end by pranavi



    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnApplyCustLedgEntryOnBeforeCopyFromCustLedgEntry', '', false, false)]
    local procedure OnApplyCustLedgEntryOnBeforeCopyFromCustLedgEntry(var GenJournalLine: Record "Gen. Journal Line"; var OldCVLedgerEntryBuffer: Record "CV Ledger Entry Buffer"; var TempOldCustLedgEntry: Record "Cust. Ledger Entry")
    var
        PT_Temp_ApplyTo_CLE_GRec: Record 21 TEMPORARY;
    begin
        // added by pranavi on 09-09-2016 for payment terms
        PT_Temp_ApplyTo_CLE_GRec := TempOldCustLedgEntry;
        PT_Temp_ApplyTo_CLE_GRec.INSERT;
        // end by pranavi
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterApplyCustLedgEntry', '', false, false)]
    local procedure OnAfterApplyCustLedgEntry(var GenJnlLine: Record "Gen. Journal Line"; var NewCVLedgEntryBuf: Record "CV Ledger Entry Buffer"; var OldCustLedgEntry: Record "Cust. Ledger Entry"; NewRemainingAmtBeforeAppln: Decimal)
    var
        T_Applying_CLE_GRec: Record 21;
        PT_Temp_Applying_CLE_GRec: Record 21 TEMPORARY;
        PT_ApplyTo_CLE_GRec: Record 21 TEMPORARY;
        PT_Temp_ApplyTo_CLE_GRec: Record 21 TEMPORARY;
        // SQLInt : Codeunit 60021;
        applyToAmt: Decimal;
        TempApplyngAmt: Decimal;
    begin
        // Added by pranavi on 09-09-2016 for payment terms process
        //IF USERID = 'EFFTRONICS\PRANAVI' THEN
        //BEGIN
        PT_Temp_Applying_CLE_GRec.RESET;
        IF PT_Temp_Applying_CLE_GRec.FINDFIRST THEN BEGIN
            applyToAmt := 0;
            IF PT_Temp_Applying_CLE_GRec."Document Type" = PT_Temp_Applying_CLE_GRec."Document Type"::Invoice THEN BEGIN
                PT_Temp_ApplyTo_CLE_GRec.RESET;
                IF PT_Temp_ApplyTo_CLE_GRec.FINDSET THEN
                    REPEAT
                        applyToAmt := applyToAmt + ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply");
                    UNTIL (PT_Temp_ApplyTo_CLE_GRec.NEXT = 0);
                IF (ABS(applyToAmt) > 0) THEN BEGIN
                    IF (ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply") <= ABS(applyToAmt)) AND (ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply") > 0) THEN
                        SQLInt.PvtOrderInvoicePaymentInCF_3(PT_Temp_Applying_CLE_GRec, ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply"))
                    ELSE
                        SQLInt.PvtOrderInvoicePaymentInCF_3(PT_Temp_Applying_CLE_GRec, ABS(applyToAmt));
                END;
            END ELSE BEGIN
                TempApplyngAmt := ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply");
                PT_Temp_ApplyTo_CLE_GRec.RESET;
                IF PT_Temp_ApplyTo_CLE_GRec.FINDSET THEN
                    REPEAT
                        IF (TempApplyngAmt >= ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply")) THEN BEGIN
                            SQLInt.PvtOrderInvoicePaymentInCF_3(PT_Temp_ApplyTo_CLE_GRec, ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply"));
                            TempApplyngAmt := TempApplyngAmt - ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply");
                        END
                        ELSE BEGIN
                            IF (TempApplyngAmt > 0) THEN BEGIN
                                SQLInt.PvtOrderInvoicePaymentInCF_3(PT_Temp_ApplyTo_CLE_GRec, TempApplyngAmt);
                                TempApplyngAmt := 0;
                            END;
                        END;
                    UNTIL ((PT_Temp_ApplyTo_CLE_GRec.NEXT = 0) AND (TempApplyngAmt <= 0));
            END;



        END ELSE BEGIN
            // end by pranavi
            // Added by pranavi on 09-09-2016 for payment terms process
            PT_Temp_Applying_CLE_GRec.RESET;
            IF PT_Temp_Applying_CLE_GRec.FINDFIRST THEN BEGIN
                applyToAmt := 0;
                IF PT_Temp_Applying_CLE_GRec."Document Type" = PT_Temp_Applying_CLE_GRec."Document Type"::Invoice THEN BEGIN
                    PT_Temp_ApplyTo_CLE_GRec.RESET;
                    IF PT_Temp_ApplyTo_CLE_GRec.FINDSET THEN
                        REPEAT
                            applyToAmt := applyToAmt + ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply");
                        UNTIL (PT_Temp_ApplyTo_CLE_GRec.NEXT = 0);
                    IF (ABS(applyToAmt) > 0) THEN BEGIN
                        IF (ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply") <= ABS(applyToAmt)) AND (ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply") > 0) THEN
                            SQLInt.PvtOrderInvoicePaymentInCF_2(PT_Temp_Applying_CLE_GRec, ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply"))
                        ELSE
                            SQLInt.PvtOrderInvoicePaymentInCF_2(PT_Temp_Applying_CLE_GRec, ABS(applyToAmt));
                    END;
                END ELSE BEGIN
                    TempApplyngAmt := ABS(PT_Temp_Applying_CLE_GRec."Amount to Apply");
                    PT_Temp_ApplyTo_CLE_GRec.RESET;
                    IF PT_Temp_ApplyTo_CLE_GRec.FINDSET THEN
                        REPEAT
                            IF (TempApplyngAmt >= ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply")) THEN BEGIN
                                SQLInt.PvtOrderInvoicePaymentInCF_2(PT_Temp_ApplyTo_CLE_GRec, ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply"));
                                TempApplyngAmt := TempApplyngAmt - ABS(PT_Temp_ApplyTo_CLE_GRec."Amount to Apply");
                            END
                            ELSE BEGIN
                                IF (TempApplyngAmt > 0) THEN BEGIN
                                    SQLInt.PvtOrderInvoicePaymentInCF_2(PT_Temp_ApplyTo_CLE_GRec, TempApplyngAmt);
                                    TempApplyngAmt := 0;
                                END;
                            END;
                        UNTIL ((PT_Temp_ApplyTo_CLE_GRec.NEXT = 0) AND (TempApplyngAmt <= 0));
                END;
            END;
        END;

        // end by pranavi
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnHandleAddCurrResidualGLEntryOnBeforeInsertGLEntry', '', false, false)]
    local procedure OnHandleAddCurrResidualGLEntryOnBeforeInsertGLEntry(GenJournalLine: Record "Gen. Journal Line"; var GLEntry: Record "G/L Entry"; var TempGLEntryBuf: Record "G/L Entry"; NextEntryNo: Integer; var IsHandled: Boolean)
    begin
        // Rev01>>
        GLEntry."DD/FDR No." := GenJournalLine."DD/FDR No.";
        GLEntry."Payment Through" := GenJournalLine."Payment Through";
        // Rev01<<
    end;

    //>>Codeunit 13>>
    /*  [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", 'OnBeforeRaiseExceedLengthError', '', false, false)]
       local procedure OnBeforeRaiseExceedLengthError(var GenJournalBatch: Record "Gen. Journal Batch"; var RaiseError: Boolean; var GenJnlLine: Record "Gen. Journal Line")
      begin

      end;*/

    //<<Codeunit13<<

    //  >>Codeunit17>>

    //>>Codeunit21>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Check Line", 'OnAfterGetItem', '', false, false)]

    local procedure OnAfterGetItem(Item: Record Item; var ItemJournalLine: Record "Item Journal Line"; var IsHandled: Boolean)
    begin
        //Rasool
        IF ItemJournalLine."Posting Date" = 0D THEN
            ItemJournalLine."Posting Date" := WORKDATE;
    end;
    //<<Codeunit21<<
    //>>Codeunit22>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeRunWithCheck', '', false, false)]
    local procedure OnBeforeRunWithCheckQC(var ItemJournalLine: Record "Item Journal Line"; CalledFromAdjustment: Boolean; CalledFromInvtPutawayPick: Boolean; CalledFromApplicationWorksheet: Boolean; PostponeReservationHandling: Boolean; var IsHandled: Boolean)
    var

        ItemLedEntry: Record 32;
    begin
        //QC
        IF ItemJournalLine."Quality Ledger Entry No." <> 0 THEN
            PostItemJnlLine := TRUE;
        //QC
        //MESSAGE('%1',PostItemJnlLine);
        //PostItemJnlLine := FALSE;//UPG
        //SetupSplitJnlLine(ItemJnlLine2,PostItemJnlLine);//NAV2016CU19
        //SetupSplitJnlLine(ItemJnlLine2);NAV2016CU19
        //B2B ssr start
        IF ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::Consumption THEN BEGIN
            ItemLedEntry.SETCURRENTKEY("Entry Type", "Item No.", "Location Code",
                                  Open, "Lot No.", "Serial No.", "ITL Doc No.", "ITL Doc Line No.", "ITL Doc Ref Line No.");
            //ItemLedEntry.RESET;
            ItemLedEntry.SETRANGE("Item No.", ItemJournalLine."Item No.");
            ItemLedEntry.SETRANGE("Lot No.", ItemJournalLine."Lot No.");
            ItemLedEntry.SETRANGE("Serial No.", ItemJournalLine."Serial No.");
            ItemLedEntry.SETRANGE(Open, TRUE);
            ItemLedEntry.SETRANGE("Location Code", ItemJournalLine."Location Code");
            ItemLedEntry.SETRANGE("ITL Doc No.", ItemJournalLine."Order No.");
            ItemLedEntry.SETRANGE("ITL Doc Line No.", ItemJournalLine."Order Line No.");
            ItemLedEntry.SETRANGE("ITL Doc Ref Line No.", ItemJournalLine."Prod. Order Comp. Line No.");
            IF ItemLedEntry.FINDFIRST THEN BEGIN
                ItemJournalLine."Applies-to Entry" := ItemLedEntry."Entry No.";
                ItemJournalLine.MODIFY;
            END;
        END;
        //B2B ssr end

        //B2B KPK start
        IF ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::"Negative Adjmt." THEN BEGIN
            ItemLedEntry.SETCURRENTKEY(ItemLedEntry."Item No.",
                                       ItemLedEntry.Open,
                                       ItemLedEntry."Variant Code",
                                       ItemLedEntry."Location Code",
                                       ItemLedEntry."Item Tracking",
                                       ItemLedEntry."Lot No.",
                                       ItemLedEntry."Serial No.");

            //ItemLedEntry.RESET;//commented by b2b sankar
            ItemLedEntry.SETRANGE("Item No.", ItemJournalLine."Item No.");
            ItemLedEntry.SETRANGE("Lot No.", ItemJournalLine."Lot No.");
            ItemLedEntry.SETRANGE("Serial No.", ItemJournalLine."Serial No.");
            ItemLedEntry.SETRANGE(Open, TRUE);
            ItemLedEntry.SETRANGE("Location Code", ItemJournalLine."Location Code");
            ItemLedEntry.SETRANGE("Global Dimension 2 Code", ItemJournalLine."Shortcut Dimension 2 Code");
            IF ItemLedEntry.FINDFIRST THEN BEGIN
                ItemJournalLine."Applies-to Entry" := ItemLedEntry."Entry No.";
                ItemJournalLine.MODIFY;
            END;
        END;
        //B2B KPK end
    end;
    //<<Codeunit22<<


    //<<Codeunit22<<

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforePostOutput', '', false, false)]
    local procedure OnBeforePostOutput(var ItemJnlLine: Record "Item Journal Line")
    var
        "--QC--"1102154004 : Integer;
        InspectJnlLine: Codeunit 33000253;
        InspectHeader: Record 33000269;
        ProdOrderRtngLine2: Record 5409;
        CapLedgEntry2: Record 5832;
    begin
        //QC
        IF NOT ItemJnlLine."After Inspection" THEN
            ItemJnlLine.CreateInspectionDataSheets;
        //RQC1.0
        InspectHeader.RESET;
        InspectHeader.SETRANGE(InspectHeader."No.", ItemJnlLine."Inspectin Receipt No.");
        InspectHeader.SETRANGE(InspectHeader.Status, InspectHeader.Status::"1");
        IF InspectHeader.FINDFIRST THEN BEGIN
            InspectHeader."Rework Posted" := TRUE;
            InspectHeader."Rework User" := ItemJnlLine."No.";
            InspectHeader.MODIFY;
        END;
        //RQC1.0

        //QC
        //B2B2.0 SGS
        ProdOrderRtngLine2.SETRANGE(Status, ProdOrderRtngLine2.Status::Released);
        ProdOrderRtngLine2.SETRANGE("Prod. Order No.", ItemJnlLine."Order No.");
        ProdOrderRtngLine2.SETRANGE("Routing Reference No.", ItemJnlLine."Routing Reference No.");
        ProdOrderRtngLine2.SETRANGE("Routing No.", ItemJnlLine."Routing No.");
        ProdOrderRtngLine2.SETRANGE("Operation No.", ItemJnlLine."Operation No.");
        IF ProdOrderRtngLine2.FINDFIRST THEN;
        IF ProdOrderRtngLine2."Previous Operation No." <> '' THEN BEGIN
            CapLedgEntry2.RESET;
            CapLedgEntry2.SETCURRENTKEY("Order No.", "Order Line No.",
                                         "Routing No.", "Routing Reference No.", "Operation No.");
            CapLedgEntry2.SETRANGE("Order No.", ItemJnlLine."Order No.");
            CapLedgEntry2.SETRANGE("Order Line No.", ItemJnlLine."Routing Reference No.");
            CapLedgEntry2.SETRANGE("Routing No.", ItemJnlLine."Routing No.");
            CapLedgEntry2.SETRANGE("Routing Reference No.", ItemJnlLine."Routing Reference No.");
            CapLedgEntry2.SETRANGE("Operation No.", ProdOrderRtngLine2."Previous Operation No.");
            IF CapLedgEntry2.FINDFIRST THEN BEGIN
                IF CapLedgEntry2."Output Quantity" < ItemJnlLine."Output Quantity" THEN
                    ERROR('You can not post more than %1 Quantity for this operation %2'
                     , CapLedgEntry2."Output Quantity", CapLedgEntry2."Operation No.");
            END;// ELSE
                //  ERROR('Post the previous operation %1 for this Production Order %2',ProdOrderRtngLine2."Previous Operation No.",
                //        ProdOrderRtngLine2."Prod. Order No.");
                // commented by santhosh for old data posting purpose
        END;
        //B2B2.0 SGS
    end;



    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnPostOutputOnAfterCreateWhseJnlLine', '', false, false)]
    local procedure OnPostOutputOnAfterCreateWhseJnlLine(var ItemJournalLine: Record "Item Journal Line")
    var
        InspectJnlLine: Codeunit 33000253;
    begin
        //QC
        InspectJnlLine.CheckPostProdOrderOutput(ItemJournalLine);
        //QC
    end;



    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnPostItemOnBeforeCheckInventoryPostingGroup', '', false, false)]
    local procedure OnPostItemOnBeforeCheckInventoryPostingGroup(var ItemJnlLine: Record "Item Journal Line"; var CalledFromAdjustment: Boolean; var Item: Record Item; var ItemTrackingCode: Record "Item Tracking Code")
    VAR
        PostedMatIssHdr: Record 50003;
    begin
        BEGIN
            // Conditon Added by Pranavi on 11-Jan-2016 for allowing blocked item for site stock updation purpose
            IF NOT ((ItemJnlLine."Journal Batch Name" = 'POS-CS-SIG') AND (ItemJnlLine."Entry Type" = ItemJnlLine."Entry Type"::"Positive Adjmt.")) THEN
                IF PostedMatIssHdr.GET(ItemJnlLine."Document No.") THEN BEGIN
                    IF NOT (((PostedMatIssHdr."Transfer-from Code" = 'SITE') AND (PostedMatIssHdr."Transfer-to Code" = 'CS')) OR
                           ((PostedMatIssHdr."Transfer-from Code" = 'CS') AND (PostedMatIssHdr."Transfer-to Code" = 'SITE'))) THEN
                        Item.TESTFIELD(Blocked, FALSE);
                END
                ELSE
                    Item.TESTFIELD(Blocked, FALSE);
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeProdOrderCompModify', '', false, false)]
    local procedure OnBeforeProdOrderCompModify(var ProdOrderComponent: Record "Prod. Order Component"; ItemJournalLine: Record "Item Journal Line")
    var
        ProdOrderInspectComponents: Record 33000279;
    begin
        //QC
        IF ItemJournalLine."After Inspection" THEN begin
            //  UpdateReworkComponents(ItemJournalLine.Quantity);
            IF ProdOrderInspectComponents.GET(ProdOrderInspectComponents.Status::Released, ItemJournalLine."Order No.",
   ItemJournalLine."Order Line No.", ItemJournalLine."Inspectin Receipt No.", ItemJournalLine."Prod. Order Comp. Line No.") THEN BEGIN
                ProdOrderInspectComponents."Quantity Consumed" := ProdOrderInspectComponents."Quantity Consumed" + ItemJournalLine.Quantity;
                ProdOrderInspectComponents."Remaining Quantity" := ProdOrderInspectComponents."Expected Quantity" -
                  ProdOrderInspectComponents."Quantity Consumed";
                ProdOrderInspectComponents.MODIFY;
            end;

            //QC
        end;
    end;


    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertCapLedgEntry', '', false, false)]
    local procedure OnBeforeInsertCapLedgEntry(var CapLedgEntry: Record "Capacity Ledger Entry"; ItemJournalLine: Record "Item Journal Line")
    begin
        //B2B
        CapLedgEntry."Operation Description" := ItemJournalLine."Operation Description";
        CapLedgEntry."Planed Setup Time" := ItemJournalLine."Planed Setup Time";
        CapLedgEntry."Reason Code" := ItemJournalLine."Reason Code";
        CapLedgEntry."Planed Run Time" := ItemJournalLine."Planed Run Time";
        CapLedgEntry."Planed Wait Time" := ItemJournalLine."Planed Wait Time";
        CapLedgEntry."Planed Move Time" := ItemJournalLine."Planed Move Time";
        CapLedgEntry."Internal Rework" := ItemJournalLine."Internal Rework";
        CapLedgEntry."Reworked User Id" := ItemJournalLine."Reworked User Id";
        CapLedgEntry."QC Rework" := ItemJournalLine."QC Rework";
        CapLedgEntry.Remarks := ItemJournalLine.Remarks;
        //B2B
    end;

    //<<Codeunit22cls<<

    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterApplyItemLedgEntryOnBeforeCalcAppliedQty', '', false, false)]
    local procedure OnAfterApplyItemLedgEntryOnBeforeCalcAppliedQty(OldItemLedgerEntry: Record "Item Ledger Entry"; ItemLedgerEntry: Record "Item Ledger Entry")
    begin
        //QC
        ExcludeQualityItems(ItemLedgerEntry, ItemLedgerEntry.Positive);
        //QC
    end;

    PROCEDURE ExcludeQualityItems(VAR ItemLedgEntry2: Record 32; Inbound: Boolean);
    VAR
        AcceptedQty: Decimal;
    BEGIN

        IF ItemLedgEntry2.FINDSET THEN
            REPEAT
                IF NOT QualityItemLedgEntry.GET(ItemLedgEntry2."Entry No.") THEN BEGIN
                    ItemLedgEntry2.MARK(TRUE);
                    AcceptedQty := AcceptedQty + ItemLedgEntry2."Remaining Quantity";
                END;
            UNTIL ItemLedgEntry2.NEXT = 0;
        ItemLedgEntry2.MARKEDONLY(TRUE);
        IF (NOT Inbound) AND (Item."QC Enabled") THEN
            IF NOT ItemLedgEntry2.FINDFIRST THEN BEGIN
                ERROR(Text33000251, ItemLedgEntry2."Item No.");
            END
            ELSE
                IF AcceptedQty < ItemJnlLine.Quantity THEN
                    ERROR(Text33000251, ItemLedgEntry2."Item No.");
    END;
    //<<Codeunit22cls<<


    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeTestFirstApplyItemLedgEntry', '', false, false)]
    local procedure OnBeforeTestFirstApplyItemLedgEntry(var OldItemLedgerEntry: Record "Item Ledger Entry"; ItemLedgerEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line")
    begin
        //QC
        IF QualityItemLedgEntry.GET(OldItemLedgerEntry."Entry No.") THEN BEGIN
            IF ItemJournalLine."Quality Ledger Entry No." = 0 THEN BEGIN
                IF (ItemLedgerEntry."Entry Type" = ItemLedgerEntry."Entry Type"::Purchase) AND (NOT ItemLedgerEntry.Positive) THEN BEGIN
                    IF QualityItemLedgEntry."Inspection Status" = QualityItemLedgEntry."Inspection Status"::"Under Inspection" THEN
                        QualityItemLedgEntry.FIELDERROR(QualityItemLedgEntry."Inspection Status")
                    ELSE BEGIN
                        QualityItemLedgEntry."Remaining Quantity" := QualityItemLedgEntry."Remaining Quantity" + ItemLedgerEntry.Quantity;
                        IF QualityItemLedgEntry."Remaining Quantity" = 0 THEN
                            QualityItemLedgEntry.DELETE
                        ELSE
                            QualityItemLedgEntry.MODIFY;
                    END;
                END ELSE
                    QualityItemLedgEntry.FIELDERROR(QualityItemLedgEntry."Inspection Status");
            END;
        END;
        //QC
    end;
    //<<Codeunit22clos<<




    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnInsertTransferEntryOnTransferValues', '', false, false)]
    local procedure OnInsertTransferEntryOnTransferValues(var NewItemLedgerEntry: Record "Item Ledger Entry"; OldItemLedgerEntry: Record "Item Ledger Entry"; ItemLedgerEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line"; var TempItemEntryRelation: Record "Item Entry Relation")
    begin
        //B2B QC Check start
        NewItemLedgerEntry."QC Check" := ItemJournalLine."QC Check";
        //B2B QC Check end

    end;
    //<<Codeunit22clos<<







    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', false, false)]
    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer)
    var
        Item: Record 27;
    begin
        IF (ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::Purchase) AND (ItemJournalLine."Document Type" = ItemJournalLine."Document Type"::"Purchase Credit Memo") THEN
            NewItemLedgEntry."Applies-to Entry" := ItemJournalLine."Applies-to Entry"//modified by sundar
        ELSE
            NewItemLedgEntry."Applies-to Entry" := ItemJournalLine."Applies-to Entry";

        //B2B-QC1.2
        NewItemLedgEntry."Purch.Rcpt Line" := ItemJournalLine."Purch.Rcpt Line";
        //B2B-QC1.2

        //B2BQC Check Start
        IF Item.GET(ItemJournalLine."Item No.") THEN BEGIN
            IF Item."QC Enabled" THEN
                IF NewItemLedgEntry."Entry Type" = NewItemLedgEntry."Entry Type"::Purchase THEN
                    NewItemLedgEntry."QC Check" := TRUE;
        END;
        //B2B
        NewItemLedgEntry."ITL Doc No." := ItemJournalLine."ITL Doc No.";
        NewItemLedgEntry."ITL Doc Line No." := ItemJournalLine."ITL Doc Line No.";
        NewItemLedgEntry."ITL Doc Ref Line No." := ItemJournalLine."ITL Doc Ref Line No.";
        //B2B

    end;
    //<<Codeunit22clos<<






    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeCheckSerialNo', '', false, false)]
    local procedure OnBeforeCheckSerialNo(ItemJournalLine: Record "Item Journal Line"; var IsHandled: Boolean)
    begin
        IF ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::Transfer THEN BEGIN
            Itm.RESET;
            Itm.SETFILTER(Itm."No.", ItemJournalLine."Item No.");
            IF Itm.FINDFIRST THEN BEGIN
                IF Itm."Item Tracking Code" <> 'SERIAL' THEN BEGIN
                    IF ItemTrackingMgt.FindInInventoryNew(ItemJournalLine."Item No.", ItemJournalLine."Variant Code", ItemJournalLine."New Serial No.", ItemJournalLine."Location Code", ItemJournalLine."Lot No.") THEN
                        ERROR(Text014, ItemJournalLine."New Serial No.");    //added argument by b2b
                END
                ELSE
                    IF ItemTrackingMgt.FindInInventory(ItemJournalLine."Item No.", ItemJournalLine."Variant Code", ItemJournalLine."New Serial No.", ItemJournalLine."Location Code") THEN
                        ERROR(Text014, ItemJournalLine."New Serial No.");    //added argument by b2b
            END;
        END ELSE BEGIN   //anil
            Itm.RESET;
            Itm.SETFILTER(Itm."No.", ItemJournalLine."Item No.");
            IF Itm.FINDFIRST THEN BEGIN
                IF Itm."Item Tracking Code" <> 'SERIAL' THEN BEGIN
                    IF ItemTrackingMgt.FindInInventoryNew(ItemJournalLine."Item No.", ItemJournalLine."Variant Code", ItemJournalLine."New Serial No.", ItemJournalLine."Location Code", ItemJournalLine."Lot No.") THEN
                        ERROR(Text014, ItemJournalLine."New Serial No.");    //added argument by b2b
                END
                ELSE
                    IF ItemTrackingMgt.FindInInventory(ItemJournalLine."Item No.", ItemJournalLine."Variant Code", ItemJournalLine."Serial No.", ItemJournalLine."New Location Code") THEN //b2B
                        ERROR(Text014, ItemJournalLine."Serial No.");

            END;
        end;
        IsHandled := true;
    end;
    //<<Codeunit22clos<<







    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeSetupSplitJnlLineProcedure', '', false, false)]
    local procedure OnBeforeSetupSplitJnlLineProcedure(var ItemJnlLine2: Record "Item Journal Line"; TrackingSpecExists: Boolean; CalledFromAdjustment: Boolean)
    var
        PostedMatIssHdr: Record 50003;
        Item: Record 27;
    begin
        IF Item.GET(ItemJnlLine2."Item No.") THEN BEGIN
            IF NOT CalledFromAdjustment THEN BEGIN
                // Conditon Added by Pranavi on 11-Jan-2016 for allowing blocked item for site stock updation purpose
                IF NOT ((ItemJnlLine2."Journal Batch Name" = 'POS-CS-SIG') AND (ItemJnlLine2."Entry Type" = ItemJnlLine2."Entry Type"::"Positive Adjmt.")) THEN
                    IF PostedMatIssHdr.GET(ItemJnlLine2."Document No.") THEN BEGIN
                        IF NOT (((PostedMatIssHdr."Transfer-from Code" = 'SITE') AND (PostedMatIssHdr."Transfer-to Code" = 'CS')) OR
                            ((PostedMatIssHdr."Transfer-from Code" = 'CS') AND (PostedMatIssHdr."Transfer-to Code" = 'SITE'))) THEN
                            Item.TESTFIELD(Blocked, FALSE);
                    END
                    ELSE
                        Item.TESTFIELD(Blocked, FALSE);
            END;
        END ELSE
            Item.INIT;
    end;
    //<<Codeunit22clos<<



    //<<Codeunit23opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Batch", 'OnCodeOnBeforePostLines', '', false, false)]
    local procedure OnCodeOnBeforePostLines1(var ItemJournalLine: Record "Item Journal Line"; var NoOfRecords: Integer)
    var
        ProductionOrderNo: Text;
        ItemNo: Text;
    begin
        ProductionOrderNo := ItemJournalLine."Order No.";
        ItemNo := ItemJournalLine."Item No.";

        //MESSAGE(ProductionOrderNo + '--' + ItemNo);
    end;

    //<<Codeunit23clos<<





    //<<Codeunit40opn>>
    /*[EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnBeforeCompanyOpen', '', false, false)]
    local procedure OnBeforeCompanyOpen()
      var
        WSHShell: Automation "{F935DC20-1CF0-11D0-ADB9-00C04FD58A0B} 1.0:{72C24DD5-D70A-438B-8A42-98424B88AFB8}:'Windows Script Host Object Model'.WshShell";
         WshEnvironment : Automation "{F935DC20-1CF0-11D0-ADB9-00C04FD58A0B} 1.0:{F48229AF-E28C-42B5-BB92-E114E62BDD54}:'Windows Script Host Object Model'.WshEnvironment";
         EnvironmentPath: Text;
         ActiveSession : Record 2000000110;
         Asteric : Label 'ENU=''';
       begin
                  //>>Pranavi
         //IF NOT (USERID IN['EFFTRONICS\VIJAYA','ERPSERVER\ADMINISTRATOR']) THEN
         //BEGIN*
         IF NOT (USERID IN['ERPSERVER\ADMINISTRATOR','EFFTRONICS\TPRIYANKA','EFFTRONICS\ANILKUMAR','EFFTRONICS\20TE106','EFFTRONICS\DURGAMAHESWARI','EFFTRONICS\20TE128','EFFTRONICS\GRAVI','EFFTRONICS\20TE099']) THEN
         BEGIN
           IF (CURRENTCLIENTTYPE = CLIENTTYPE::Windows) THEN
           BEGIN
             IF /ISCLEAR(WSHShell) THEN
               //CREATE(WSHShell,FALSE,TRUE);
             EnvironmentPath:='Process';
            WshEnvironment := WSHShell.Environment(EnvironmentPath);
             EnvironmentPath := Asteric+'@'+UPPERCASE(WshEnvironment.Item('ComputerName'))+'*'+Asteric;
             IF STRLEN(EnvironmentPath) > 3 THEN
             BEGIN
               ActiveSession.RESET;
               ActiveSession.SETRANGE("User ID",USERID);
               ActiveSession.SETRANGE("Client Type",ActiveSession."Client Type"::"Windows Client");
               ActiveSession.SETFILTER("Client Computer Name",EnvironmentPath);
               ActiveSession.SETFILTER("Session ID",'<>%1',SESSIONID);
               IF ActiveSession.COUNT > 0 THEN
                 ERROR('You are Already Logged-In!');
             END;
           END ELSE IF CURRENTCLIENTTYPE = CLIENTTYPE::Web THEN BEGIN
             ActiveSession.RESET;
             ActiveSession.SETRANGE("User ID",USERID);
             ActiveSession.SETRANGE("Client Type",ActiveSession."Client Type"::"Web Client");
             ActiveSession.SETFILTER("Session ID",'<>%1',SESSIONID);
             IF ActiveSession.COUNT > 0 THEN
               ERROR('You are Already Logged-In!');
           END;

          //ERROR(USERID+'Temperarily ERP access is denied by ERP Team.\Please contact ERP Team!');
         END;
         //<<Pranavi
       end;*/
    //<<Codeunit40clos<<




    //<<Codeunit22opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; PreviewMode: Boolean; var HideProgressWindow: Boolean)
    var
        MSPT: Integer;
        MSPTCustEntry: Codeunit 60007;
        PerAmount: Decimal;
        check: Integer;
        Count1: Integer;
        Count2: Integer;
        Opp: Record 5092;
        OpportunityEntry: Record 5093;
        ScheduleComp: Record 60095;
        ItemJnlLineGrec: Record 83;
        ItemJnlPostLine1: Codeunit 22;
        LineNoc: Integer;
        GenJnlLineLRec: Record 81;
        LineNoGnlJnl: Integer;
        GenJnlPostLine1: Codeunit 12;
        Amount: Decimal;
        SalesLine1: Record 37;
        ScheduleComp1: Record 60095;
        Qty: Decimal;
        ReservationEntry: Record 337;
        Item1: Record 27;
        ValidateEInvoiceRequest: Codeunit 15000053;
    begin
        //>>E-INV
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::"Credit Memo" THEN
            ValidateEInvoiceRequest.CheckValidEntriesApplied(SalesHeader);
        //<<E-INV


        //B2B-MSPT1.0 For testing the MSPT Date Field
        IF SalesHeader."MSPT Code" <> '' THEN BEGIN
            IF SalesHeader."MSPT Date" = 0D THEN
                SalesHeader.TESTFIELD("MSPT Date");
        END;
        //B2B-MSPT1.0
    end;
    //<<Codeunit22clos<<




    //<<Codeunit81opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeConfirmSalesPost', '', false, false)]
    local procedure OnConfirmPostOnBeforeSetSelection(var SalesHeader: Record "Sales Header")
    var
        Selection: Integer;
    begin
        if SalesHeader."Document Type" = SalesHeader."Document Type"::amc then begin

            Selection := STRMENU(Text000, 3);
            IF Selection = 0 THEN
                EXIT;
            Ship := Selection IN [1, 3];
            Invoice := Selection IN [2, 3];
        END;
    end;
    //<<Codeunit81clos<<



    //<<Codeunit81opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnRunPreviewOnAfterSetPostingFlags', '', false, false)]
    local procedure OnRunPreviewOnAfterSetPostingFlags1(var SalesHeader: Record "Sales Header")
    begin
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Amc THEN BEGIN
            SQLConnection.CommitTrans;
            RecordSet.Close;
            SQLConnection.Close;
            ConnectionOpen := 0;
        END;
        //End by Pranavi
        //B2B
        ArchiveManagement.ArchiveSalesDocument(SalesHeader);
        //B2B
    END;
    //<<Codeunit81clos<<


    //<<Codeunit83opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Quote to Order (Yes/No)", 'OnAfterSalesQuoteToOrderRun', '', false, false)]
    local procedure OnAfterSalesQuoteToOrderRun1(var SalesHeader2: Record "Sales Header"; var SalesHeader: Record "Sales Header")
    var
        MSPTOrderDetails: Record 60083;
        MSPTOrderDetails1: Record 60083;
    begin
        charline := 10;
        Mail_Body := '';

        Mail_Subject := 'ERP- Quote Converted to Order';
        Mail_Body := 'QUOTE DETAILS :';
        Mail_Body += FORMAT(charline);
        Mail_Body += FORMAT(charline);
        Mail_Body += 'Quote No            :' + SalesHeader."No.";
        Mail_Body += FORMAT(charline);
        Mail_Body += 'Customer Name       :' + SalesHeader."Sell-to Customer Name";
        Mail_Body += FORMAT(charline);
        Mail_Body += FORMAT(charline);
        Mail_Body += 'Quote Value         :' + FORMAT(ROUND(QV, 1));
        Mail_Body += FORMAT(charline);
        IF SalesHeader."Salesperson Code" = '' THEN
            ERROR('PICK THE SALES PERSON CODE');
        "Mail-Id".SETRANGE("Mail-Id"."User Security ID", SalesHeader."Salesperson Code");//B2B
        IF "Mail-Id".FINDFIRST THEN
            Mail_Body += 'Sales Executive     :' + "Mail-Id"."User Name";
        Mail_Body += FORMAT(charline);
        Mail_Body += FORMAT(charline);

        Mail_Body += '*** Auto Mail Generated from ERP ***';

        "Mail-Id".SETRANGE("Mail-Id"."User Security ID", USERID);//B2B
        IF "Mail-Id".FINDFIRST THEN
            "from Mail" := "Mail-Id".MailID;

        "to mail" += 'dir@efftronics.com,padmaja@efftronics.com,cvmohan@efftronics.com,anilkumar@efftronics.com,phani@efftronics.com';
        "to mail" += 'ravi@efftronics.com,samba@efftronics.com,baji@efftronics.com,prasannat@efftronics.com,anuradhag@efftronics.com,';
        "to mail" += 'chandi@efftronics.com,anulatha@efftronics.com,milind@efftronics.com,srasc@efftronics.com,renukach@efftronics.com';


        IF ("from Mail" <> '') AND ("to mail" <> '') THEN
            mail.NewCDOMessage("from Mail", "to mail", Mail_Subject, Mail_Body, Attachment1);




        //B2B-MSPT1.0
        MSPTOrderDetails.SETRANGE(Type, MSPTOrderDetails.Type::Sale);
        MSPTOrderDetails.SETRANGE("Document Type", MSPTOrderDetails."Document Type"::Quote);
        MSPTOrderDetails.SETRANGE(MSPTOrderDetails."Document No.", SalesHeader."No.");
        IF MSPTOrderDetails.FINDSET THEN BEGIN
            REPEAT
                MSPTOrderDetails1.Type := MSPTOrderDetails.Type::Sale;
                MSPTOrderDetails1."Party Type" := MSPTOrderDetails."Party Type"::Customer;
                MSPTOrderDetails1."Document Type" := MSPTOrderDetails."Document Type"::Order;
                MSPTOrderDetails1."Party No." := MSPTOrderDetails."Party No.";
                MSPTOrderDetails1."MSPT Header Code" := MSPTOrderDetails."MSPT Header Code";
                MSPTOrderDetails1."MSPT Line No." := MSPTOrderDetails."MSPT Line No.";
                MSPTOrderDetails1."MSPT Code" := MSPTOrderDetails."MSPT Code";
                MSPTOrderDetails1.Percentage := MSPTOrderDetails.Percentage;
                MSPTOrderDetails1.Description := MSPTOrderDetails.Description;
                MSPTOrderDetails1."Calculation Period" := MSPTOrderDetails."Calculation Period";
                MSPTOrderDetails1.Remarks := MSPTOrderDetails.Remarks;
                MSPTOrderDetails1."Due Date" := MSPTOrderDetails."Due Date";
                MSPTOrderDetails1."Document No." := SalesHeader2."No.";
                MSPTOrderDetails1.INSERT;
            UNTIL MSPTOrderDetails.NEXT = 0;
        END;
        MSPTOrderDetails.SETRANGE(Type, MSPTOrderDetails.Type::Sale);
        MSPTOrderDetails.SETRANGE("Document Type", MSPTOrderDetails."Document Type"::Quote);
        MSPTOrderDetails.SETRANGE(MSPTOrderDetails."Document No.", "No.");
        IF MSPTOrderDetails.FINDFIRST THEN BEGIN
            MSPTOrderDetails.DELETEALL;
        END;
        //B2B-MSPT1.0
    end;
    //<<Codeunit83clos<<



    //<<Codeunit84opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Blnkt Sales Ord. to Ord. (Y/N)", 'OnAfterCreateSalesOrder', '', false, false)]
    local procedure OnAfterCreateSalesOrder1(var SalesHeader: Record "Sales Header"; var SkipMessage: Boolean)
    var
        "Mail-Id": Record 2000000120;
        "from Mail": Text[100];
        "to mail": Text[1000];
        Mail_Subject: Text[250];
        Mail_Body: Text[250];
        mail: Codeunit 397;
        charline: Char;
        SH: Record 36;
        Attachment: Text[1000];
        //objEmailConf : Automation "{CD000000-8B95-11D1-82DB-00C04FB1625D} 1.0:{CD000002-8B95-11D1-82DB-00C04FB1625D}:'Microsoft CDO for Windows 2000 Library'.Configuration";
        //objEmail : Automation "{CD000000-8B95-11D1-82DB-00C04FB1625D} 1.0:{CD000001-8B95-11D1-82DB-00C04FB1625D}:'Microsoft CDO for Windows 2000 Library'.Message";
        // flds : Automation "{00000205-0000-0010-8000-00AA006D2EA4} 2.5:{00000564-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.5 Library'.Fields";
        //fld : Automation "{00000205-0000-0010-8000-00AA006D2EA4} 2.5:{00000569-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.5 Library'.Field";
        SMTPSETUP: Record 50018;
        "--Rev01--": Integer;
        UserSetup: Record 91;
        BlanketSalesLines: Record 37;
        PartialConverted: Boolean;
        TH: Record 60062;

    begin
        charline := 10;
        Mail_Body := '';
        Mail_Subject := 'ERP- Blanket Order Converted to Order';
        Mail_Body := 'Blanket Order No.        : ' + SalesHeader."No.";
        Mail_Body += FORMAT(charline);
        Mail_Body += 'Customer Name            : ' + SalesHeader."Sell-to Customer Name";
        Mail_Body += FORMAT(charline);
        IF "Salesperson Code" = '' THEN
            ERROR('PICK THE SALES PERSON CODE');
        //Rev01
        UserSetup.RESET;
        UserSetup.SETRANGE(UserSetup."Current UserId", SalesHeader."Salesperson Code");
        IF UserSetup.FINDFIRST THEN BEGIN
            "Mail-Id".RESET;
            "Mail-Id".SETRANGE("Mail-Id"."User Name", UserSetup."User ID")
        END ELSE
            ERROR('No user Setup is defined for %1', SalesHeader."Salesperson Code");

        IF "Mail-Id".FINDFIRST THEN
            Mail_Body += 'Sales Executive          : ' + "Mail-Id"."User Name";
        Mail_Body += FORMAT(charline);
        Mail_Body += FORMAT(charline);

        "Mail-Id".SETRANGE("Mail-Id"."User Name", USERID);//B2B
        IF "Mail-Id".FINDFIRST THEN
            "from Mail" := "Mail-Id".MailID;
        //Rev01 --

        SH.SETRANGE(SH."No.", SalesHeader."No.");
        IF SH.FINDFIRST THEN
            REPORT.RUN(50096, FALSE, FALSE, SH);
        //REPORT.SAVEASHTML(50096,'\\erpserver\ErpAttachments\Order.html',FALSE,SH);
        //Attachment:='\\erpserver\ErpAttachments\Order.html';
        "to mail" := 'dir@efftronics.com,sal@efftronics.com,erp@efftronics.com,prasanthi@efftronics.com,padmaja@efftronics.com,';
        "to mail" += 'cvmohan@efftronics.com,purchase@efftronics.com,bharat@efftronics.com,bsrilatha@efftronics.com,';
        "to mail" += 'jhansi@efftronics.com,phani@efftronics.com,sambireddy@efftronics.com';
        "from Mail" := 'erp@efftronics.com';
        "to mail" := 'sundar@efftronics.com';
        //    IF ( "from Mail"<>'') AND ("to mail"<>'') THEN
        //   mail.NewCDOMessage("from Mail","to mail",Mail_Subject,Mail_Body,Attachment);
        //Added by Pranavi on 08-Dec-2015 for not updating sale order created field if order is partially converted
        PartialConverted := FALSE;
        BlanketSalesLines.RESET;
        BlanketSalesLines.SETRANGE(BlanketSalesLines."Document No.", SalesHeader."No.");
        IF BlanketSalesLines.FINDSET THEN
            REPEAT
                IF BlanketSalesLines.Quantity <> BlanketSalesLines."Quantity Shipped" THEN
                    PartialConverted := TRUE;
            UNTIL (BlanketSalesLines.NEXT = 0) OR (PartialConverted = TRUE);
        "Sale Order Created" := NOT (PartialConverted);
        //End by Pranavi on 08-Dec-2015

        // Start--added by pranavi on 28-Oct-2016 for tender status updation
        IF "Tender No." <> '' THEN BEGIN
            TH.RESET;
            TH.SETRANGE(TH."Tender No.", Th."Tender No.");
            IF TH.FINDFIRST THEN BEGIN
                TH."Sales Order Created" := TRUE;
                TH."Tender Status" := TH."Tender Status"::Received;
                TH.MODIFY;
            END;
        END;
        // ENd--added by pranavi on 28-Oct-2016 for tender status updation

        //"Sale Order Created":=TRUE; //Commented by Pranavi on 08-Dec-2015 for not updating sale order created field if order is partially converted

    end;

    //<<Codeunit84clos<<


    //<<Codeunit86opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Quote to Order", 'OnBeforeDeleteSalesQuote', '', false, false)]
    local procedure OnBeforeDeleteSalesQuote(var QuoteSalesHeader: Record "Sales Header"; var OrderSalesHeader: Record "Sales Header"; var IsHandled: Boolean; var SalesQuoteLine: Record "Sales Line")
    var

    begin
        //B2B
        //SalesDesignQuotetoOrder(Rec); commented by B2B sankar
        //B2B
        //NSS 100907 copying attachments
        Attach.RESET;
        Attach.SETRANGE("Table ID", DATABASE::"Sales Header");
        Attach.SETRANGE("Document No.", OrderSalesHeader."No.");
        IF Attach.FINDSET THEN
            REPEAT
                PostAttach.INIT;
                Attach.CALCFIELDS(Attach.FileAttachment);
                PostAttach.TRANSFERFIELDS(Attach);
                PostAttach."Table ID" := DATABASE::"Sales Header";
                PostAttach."Document No." := OrderSalesHeader."No.";
                PostAttach."Document Type" := PostAttach."Document Type"::Order;
                PostAttach.INSERT;
            UNTIL Attach.NEXT = 0;
        //NSS 100907
    end;
    //<<Codeunit86clos<<




    //<<Codeunit86opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Quote to Order", 'OnAfterInsertSalesOrderLine', '', false, false)]
    local procedure OnAfterInsertSalesOrderLine(var SalesOrderLine: Record "Sales Line"; SalesOrderHeader: Record "Sales Header"; SalesQuoteLine: Record "Sales Line"; SalesQuoteHeader: Record "Sales Header")
    begin
        //SH1.0
        Schedule.RESET;
        Schedule.SETRANGE("Document Type", Schedule."Document Type"::Quote);
        Schedule.SETRANGE("Document No.", SalesQuoteLine."Document No.");
        Schedule.SETRANGE("Document Line No.", SalesQuoteLine."Line No.");
        IF Schedule.FINDSET THEN
            REPEAT
                Schedule2.INIT;
                Schedule2.TRANSFERFIELDS(Schedule);
                Schedule2."Document Type" := Schedule2."Document Type"::Order;
                Schedule2."Document No." := SalesQuoteLine."Document No.";
                Schedule2."Document Line No." := SalesQuoteLine."Line No.";
                Schedule2.INSERT;
                Schedule.DELETE;
            UNTIL Schedule.NEXT = 0;
        //SH1.0
    end;
    //<<Codeunit86clos<<

    //<<Codeunit86opn>>
    PROCEDURE SalesDesignQuotetoOrder(VAR Saleshdr: Record 36);
    VAR
        SalesLineDesign: Record 37;
        DesignWorkSheetQuaote: Record 60006;
        DesignWorkSheetLineQuote: Record 60007;
        DesignWorksheetHeader: Record 60006;
        DesignWorksheetLine: Record 60007;
    BEGIN
        SalesLineDesign.SETRANGE("Document Type", Saleshdr."Document Type");
        SalesLineDesign.SETRANGE("Document No.", Saleshdr."No.");
        IF SalesLineDesign.FINDSET THEN
            REPEAT
                DesignWorkSheetQuaote.SETRANGE("Document Type", DesignWorkSheetQuaote."Document Type"::Quote);
                DesignWorkSheetQuaote.SETRANGE("Document No.", SalesLineDesign."Document No.");
                DesignWorkSheetQuaote.SETRANGE("Document Line No.", SalesLineDesign."Line No.");
                IF DesignWorkSheetQuaote.FINDFIRST THEN BEGIN
                    DesignWorksheetHeader.INIT;
                    DesignWorksheetHeader."Document Type" := DesignWorksheetHeader."Document Type"::Order;
                    DesignWorksheetHeader."Document No." := DesignWorkSheetQuaote."Document No.";
                    DesignWorksheetHeader."Document Line No." := DesignWorkSheetQuaote."Document Line No.";
                    DesignWorksheetHeader."Item No." := DesignWorkSheetQuaote."Item No.";
                    DesignWorksheetHeader.Description := DesignWorkSheetQuaote.Description;
                    DesignWorksheetHeader.Quantity := DesignWorkSheetQuaote.Quantity;
                    DesignWorksheetHeader."Unit of Measure" := DesignWorkSheetQuaote."Unit of Measure";
                    DesignWorksheetHeader."Soldering Time for SMD" := DesignWorkSheetQuaote."Soldering Time for SMD";
                    DesignWorksheetHeader."Soldering time for DIP" := DesignWorkSheetQuaote."Soldering time for DIP";
                    DesignWorksheetHeader."Total time in Hours" := DesignWorkSheetQuaote."Total time in Hours";
                    DesignWorksheetHeader."Soldering Cost Perhour" := DesignWorkSheetQuaote."Soldering Cost Perhour";
                    DesignWorksheetHeader."Development Cost" := DesignWorkSheetQuaote."Development Cost";
                    DesignWorksheetHeader."Development Time in hours" := DesignWorkSheetQuaote."Development Time in hours";
                    DesignWorksheetHeader."Development Cost per hour" := DesignWorkSheetQuaote."Development Cost per hour";
                    DesignWorksheetHeader."Additional Cost" := DesignWorkSheetQuaote."Additional Cost";
                    DesignWorksheetHeader."Production Bom No." := DesignWorkSheetQuaote."Production Bom No.";
                    DesignWorksheetHeader."Production Bom Version No." := DesignWorkSheetQuaote."Production Bom Version No.";
                    DesignWorksheetHeader."Total Cost" := DesignWorkSheetQuaote."Total Cost";
                    DesignWorkSheetQuaote.CALCFIELDS(DesignWorkSheetQuaote."Components Cost", DesignWorkSheetQuaote."Manufacturing Cost",
                          DesignWorkSheetQuaote."Resource Cost", DesignWorkSheetQuaote."Installation Cost");
                    DesignWorksheetHeader."Components Cost" := DesignWorkSheetQuaote."Components Cost";
                    DesignWorksheetHeader."Manufacturing Cost" := DesignWorkSheetQuaote."Manufacturing Cost";
                    DesignWorksheetHeader."Resource Cost" := DesignWorkSheetQuaote."Resource Cost";
                    DesignWorksheetHeader."Installation Cost" := DesignWorkSheetQuaote."Installation Cost";
                    DesignWorksheetHeader."Total Cost (From Line)" := DesignWorkSheetQuaote."Total Cost (From Line)";
                    IF DesignWorksheetHeader."Document No." <> '' THEN
                        DesignWorksheetHeader.INSERT;
                    DesignWorkSheetLineQuote.SETRANGE("Document Type", DesignWorkSheetLineQuote."Document Type"::Quote);
                    DesignWorkSheetLineQuote.SETRANGE("Document No.", DesignWorkSheetQuaote."Document No.");
                    DesignWorkSheetLineQuote.SETRANGE("Document Line No.", DesignWorkSheetQuaote."Document Line No.");
                    IF DesignWorkSheetLineQuote.FINDSET THEN
                        REPEAT
                            DesignWorksheetLine."Document No." := DesignWorksheetHeader."Document No.";
                            DesignWorksheetLine."Document Type" := DesignWorksheetLine."Document Type"::Order;
                            DesignWorksheetLine."Document Line No." := DesignWorksheetHeader."Document Line No.";
                            DesignWorksheetLine."Line No." := DesignWorkSheetLineQuote."Line No.";
                            DesignWorksheetLine."Line No." := DesignWorksheetLine."Line No." + 10000;
                            DesignWorksheetLine.Type := DesignWorkSheetLineQuote.Type;
                            DesignWorksheetLine."No." := DesignWorkSheetLineQuote."No.";
                            DesignWorksheetLine.Description := DesignWorkSheetLineQuote.Description;
                            DesignWorksheetLine."Description 2" := DesignWorkSheetLineQuote."Description 2";
                            DesignWorksheetLine."No.of SMD Points" := DesignWorkSheetLineQuote."No.of SMD Points";
                            DesignWorksheetLine."No.of DIP Points" := DesignWorkSheetLineQuote."No.of DIP Points";
                            DesignWorksheetLine."Unit of Measure" := DesignWorkSheetLineQuote."Unit of Measure";
                            DesignWorksheetLine.Quantity := DesignWorkSheetLineQuote.Quantity;
                            DesignWorksheetLine."Unit Cost" := DesignWorkSheetLineQuote."Unit Cost";
                            DesignWorksheetLine.Amount := DesignWorkSheetLineQuote.Amount;
                            DesignWorksheetLine."Total time in Hours" := DesignWorkSheetLineQuote."Total time in Hours";
                            DesignWorksheetLine."Manufacturing Cost" := DesignWorkSheetLineQuote."Manufacturing Cost";
                            DesignWorksheetLine.INSERT;
                        UNTIL DesignWorkSheetLineQuote.NEXT = 0;
                END;
            UNTIL SalesLineDesign.NEXT = 0;
    END;
    //<<Codeunit86clos<<

    //<<Codeunit87opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Blanket Sales Order to Order", 'OnRunOnBeforeValidateBlanketOrderSalesLineQtytoShip', '', false, false)]
    local procedure OnRunOnBeforeValidateBlanketOrderSalesLineQtytoShip(var BlanketOrderSalesLine: Record "Sales Line"; SalesOrderLine: Record "Sales Line"; SalesOrderHeader: Record "Sales Header"; BlanketOrderSalesHeader: Record "Sales Header"; var IsHandled: Boolean)
    begin
        //SH1.0
        Schedule.RESET;
        Schedule.SETRANGE("Document Type", Schedule."Document Type"::"Blanket Order");
        Schedule.SETRANGE("Document No.", BlanketOrderSalesLine."Document No.");
        Schedule.SETRANGE("Document Line No.", BlanketOrderSalesLine."Line No.");
        IF Schedule.FINDSET THEN
            REPEAT
                Schedule2.INIT;
                Schedule2.TRANSFERFIELDS(Schedule);
                ResetScheduleItemQuantityFields(Schedule2); // COMMENTED DUE TO QTY NOT TRANSFERING WHILE CONVERTING THE ORDER
                Schedule2.Quantity := Schedule."Qty. to Ship";
                Schedule2.VALIDATE(Quantity);
                Schedule2."Document Type" := Schedule2."Document Type"::Order;
                Schedule2."Document No." := SalesOrderLine."Document No.";
                Schedule2."Document Line No." := SalesOrderLine."Line No.";
                Schedule2.INSERT;
            UNTIL Schedule.NEXT = 0;
        //SH1.0
        // NULLFIYING THE SCHEDULE QUANTITY
        Schedule.RESET;
        Schedule.SETRANGE("Document Type", Schedule."Document Type"::"Blanket Order");
        Schedule.SETRANGE("Document No.", BlanketOrderSalesLine."Document No.");
        Schedule.SETRANGE("Document Line No.", BlanketOrderSalesLine."Line No.");
        IF Schedule.FINDSET THEN
            REPEAT
                Schedule."To be Shipped Qty" := 0;
                Schedule."Material Required Date" := 0D;
                // Pranavi
                Schedule."Qty. Shipped" += Schedule."Qty. to Ship";
                Schedule."Qty.Shipped (Base)" := Schedule."Qty. Shipped";
                Schedule."Outstanding Qty." := Schedule.Quantity - Schedule."Qty. Shipped";
                Schedule."Outstanding Qty.(Base)" := Schedule."Outstanding Qty.";
                Schedule."Qty. to Ship" := 0;
                Schedule."Qty. to ship (Base)" := 0;
                // Pranavi End
                Schedule.MODIFY;
            UNTIL Schedule.NEXT = 0;
        //CODE ADDED BY SANTHOSH KUMAR

    end;


    //<<Codeunit87clos<<

    //<<Codeunit86opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Blanket Sales Order to Order", 'OnBeforeReserveItemsManuallyLoop', '', false, false)]
    local procedure OnBeforeReserveItemsManuallyLoop(var SalesHeader: Record "Sales Header"; var SalesOrderHeader: Record "Sales Header"; var TempSalesLine: Record "Sales Line" temporary; var SuppressCommit: Boolean)
    begin
        //IF NOT LinesCreated THEN
        //  ERROR(Text002);
        //NSS 100907
        Attach.RESET;
        Attach.SETRANGE("Table ID", DATABASE::"Sales Header");
        Attach.SETRANGE("Document No.", SalesHeader."No.");
        IF Attach.FINDSET THEN
            REPEAT
                PostAttach.INIT;
                Attach.CALCFIELDS(Attach.FileAttachment);
                PostAttach.TRANSFERFIELDS(Attach);
                PostAttach."Table ID" := DATABASE::"Sales Header";
                PostAttach."Document No." := SalesOrderHeader."No.";
                PostAttach."Document Type" := PostAttach."Document Type"::Order;
                PostAttach.INSERT;
            UNTIL Attach.NEXT = 0;
        //NSS 100907

    end;
    //<<Codeunit86clos<<


    //<<Codeunit86opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Blanket Sales Order to Order", 'OnBeforeInsertSalesOrderHeader', '', false, false)]
    local procedure OnBeforeInsertSalesOrderHeader(var SalesOrderHeader: Record "Sales Header"; var BlanketOrderSalesHeader: Record "Sales Header")
    var
        Schedule: Record 60095;
        Schedule2: Record 60095;
        Attach: Record 60098;
        PostAttach: Record 60098;
        BlanketOrderNo: Code[20];
        Noseries: Codeunit 396;
        SalesHeader: Record 36;

    begin
        IF (COPYSTR(BlanketOrderNo, 15, 1) = 'L') OR (BlanketOrderNo IN ['EFF/EXP/13-14/0011', 'EFF/EXP/13-14/0012']) THEN BEGIN
            SalesOrderHeader."No." := Noseries.GetNextNo('SAL LED', WORKDATE, TRUE);
        END;

        // Added by Rakesh for Converting Effe HYD Blanket orders
        IF (COPYSTR(BlanketOrderNo, 15, 1) = 'T') THEN BEGIN
            SalesOrderHeader."No." := Noseries.GetNextNo('SALORD TEL', WORKDATE, TRUE);
        END;
        //end by Rakesh
    end;
    //<<Codeunit87clos<<



    //<<Codeunit86opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Blanket Sales Order to Order", 'OnBeforeSalesOrderHeaderModify', '', false, false)]
    local procedure OnBeforeSalesOrderHeaderModify(var SalesOrderHeader: Record "Sales Header"; BlanketOrderSalesHeader: Record "Sales Header")
    begin
        SalesOrderHeader."Blanket Order No" := SalesOrderHeader."No.";
        SalesOrderHeader."Order Verified" := FALSE;   //Added by Pranavi on 12-Jan-2016 reset the order verified in created sale order
        SalesOrderHeader."Verification Status" := SalesOrderHeader."Verification Status"::" ";  //Added by Pranavi on 08-Dec-2016 reset the verification status in created sale order
        SalesOrderHeader."Order Released Date" := 0D;
        SalesOrderHeader."First Released Date Time" := 0DT;
        // anil added "Blanket order no" field
    end;

    //<<Codeunit87clos<<



    //<<Codeunit86opn>>
    PROCEDURE ResetScheduleItemQuantityFields(VAR TempSchLine: Record 60095);
    BEGIN
        TempSchLine.Quantity := 0;
        TempSchLine."Quantity(Base)" := 0;
        TempSchLine."Qty. to Ship" := 0;
        TempSchLine."Qty. to ship (Base)" := 0;
        TempSchLine."Qty. Shipped" := 0;
        TempSchLine."Qty.Shipped (Base)" := 0;
        TempSchLine."Outstanding Qty." := 0;
        TempSchLine."Outstanding Qty.(Base)" := 0;
        TempSchLine."To be Shipped Qty" := 0;
    END;
    //<<Codeunit87clos<<


    //<<Codeunit90pn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostPurchaseDoc', '', false, false)]
    local procedure OnBeforePostPurchaseDoc(var PurchaseHeader: Record "Purchase Header"; PreviewMode: Boolean; CommitIsSupressed: Boolean; var HideProgressWindow: Boolean; var ItemJnlPostLine: Codeunit "Item Jnl.-Post Line")
    var
        TestValue: Decimal;
        "G|l": Record 98;
        Text062: Label 'ENU=Cashflow connection does not exist. Do you want to Continue %1?';

    begin
        //Added by sundar for resolving records missing in Cashflow
        "G|l".GET;
        IF NOT "G|l"."Active ERP-CF Connection" THEN BEGIN
            IF UPPERCASE(USERID) IN ['EFFTRONICS\ANILKUMAR', 'EFFTRONICS\SUNDAR'] THEN BEGIN
                IF NOT CONFIRM(Text062, FALSE, PurchaseHeader."No.") THEN
                    EXIT;
            END
            ELSE
                ERROR('Cash Flow connection is not active Contact ERP Team');
        END;
        //Added by sundar for resolving records missing in Cashflow

    end;


    //<<Codeunit90clos<<




    //<<Codeunit90opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostVendorEntry', '', false, false)]
    local procedure OnBeforePostVendorEntry(var GenJnlLine: Record "Gen. Journal Line"; var PurchHeader: Record "Purchase Header"; var TotalPurchLine: Record "Purchase Line"; var TotalPurchLineLCY: Record "Purchase Line"; PreviewMode: Boolean; CommitIsSupressed: Boolean; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line")
    begin
        GenJnlLine."Vendor Invoice Date" := GenJnlLineVendInvDate;

    end;
    //<<Codeunit90clos<<




    //<<Codeunit86opn>>
    PROCEDURE QualityCheckInspect();
    VAR
        PurchRcptLine3: Record 121;
        TotalQty: Decimal;
    BEGIN
        IF PurchLine."Quality Before Receipt" THEN BEGIN
            PurchLine.CALCFIELDS("Quantity Accepted");
            IF PurchLine."Quantity Accepted" < PurchLine."Qty. to Receive" + PurchLine."Quantity Received" THEN
                ERROR(Text33000250, PurchLine."Document No.", PurchLine."Line No.");
            EXIT;
        END ELSE
            IF (PurchRcptLine.Type = PurchRcptLine.Type::Item)
     AND PurchRcptLine."QC Enabled" AND (PurchRcptLine.Quantity <> 0) THEN BEGIN
                IF PurchLine."Qty. Sending To Quality(R)" = 0 THEN BEGIN
                    InspectDataSheets."CreatePur.LineInspectDataSheet"(PurchRcptHeader, PurchRcptLine);
                    BOI_AlertMail;
                END
                ELSE BEGIN
                    PurchRcptLine3 := PurchRcptLine;
                    PurchRcptLine3.Quantity := PurchLine."Qty. Sending To Quality(R)";
                    InspectDataSheets."CreatePur.LineInspectDataSheet"(PurchRcptHeader, PurchRcptLine3);
                    IF PurchRcptLine.Quantity <> PurchLine."Qty. Sending To Quality(R)" THEN BEGIN
                        PurchRcptLine3.Quantity := PurchRcptLine.Quantity - PurchLine."Qty. Sending To Quality(R)";
                        InspectDataSheets."CreatePur.LineInspectDataSheet"(PurchRcptHeader, PurchRcptLine3);
                    END
                END
            END;
    END;

    PROCEDURE "--B2B--"();
    BEGIN
    END;

    PROCEDURE checkvendorexciseinvoice(PurchHeader: Record 38): Boolean;
    VAR
        PurchaseLine: Record 39;
    BEGIN
        PurchaseLine.SETRANGE(PurchaseLine."Document Type", PurchHeader."Document Type");
        PurchaseLine.SETRANGE(PurchaseLine."Document No.", PurchHeader."No.");
        PurchaseLine.SETRANGE(Type, PurchaseLine.Type::Item);
        IF PurchaseLine.FINDSET THEN BEGIN
            MESSAGE('%1', PurchaseLine.COUNT);
            REPEAT
                IF (PurchaseLine."Qty. to Receive" <> 0) THEN
                    //IF (PurchaseLine."Excise %" <> 0) AND (PurchaseLine."Qty. to Receive" <> 0) THEN
                    //IF (PurchaseLine."BED %" <> 0) AND (PurchaseLine."Qty. to Receive" <> 0) THEN
                    IF (PurchHeader."Vendor Excise Invoice No." = '') THEN
                        EXIT(FALSE);
                CheckVendorExciseInvoiceNo(PurchHeader, PurchaseLine)
            UNTIL PurchaseLine.NEXT = 0;
        END;
        EXIT(TRUE);
    END;

    PROCEDURE CheckVendorExciseInvoiceNo(PurchHeader: Record 38; PurchaseLine: Record 39);
    VAR
        RG23apartII: Record 13720;
        RG23CpartII: Record 13722;
    BEGIN
        IF (PurchaseLine."Excise Accounting Type" = PurchaseLine."Excise Accounting Type"::"With CENVAT")
           AND (PurchaseLine.Type = PurchaseLine.Type::Item) AND (PurchaseLine."Capital Item" = FALSE) THEN BEGIN
            //RG23apartII.RESET;
            IF RG23apartII.FINDLAST THEN
                IF RG23apartII."Vendor Excise Invoice No." = PurchHeader."Vendor Excise Invoice No." THEN BEGIN
                    RG23apartII.SETRANGE(RG23apartII."Vendor Excise Invoice No.", PurchHeader."Vendor Excise Invoice No.");
                    IF RG23apartII.FINDLAST THEN
                        ERROR('Please Enter different Vendor Excise Invoice No. %1 already exist', PurchHeader."Vendor Excise Invoice No.");
                END;

        END;

        IF (PurchaseLine."Excise Accounting Type" = PurchaseLine."Excise Accounting Type"::"With CENVAT")
           AND (PurchaseLine.Type = PurchaseLine.Type::Item) AND (PurchaseLine."Capital Item" = TRUE) THEN BEGIN
            RG23CpartII.RESET;
            IF RG23CpartII.FINDLAST THEN
                IF RG23CpartII."Vendor Excise Invoice No." <> PurchHeader."Vendor Excise Invoice No." THEN BEGIN
                    RG23CpartII.SETRANGE(RG23CpartII."Vendor Excise Invoice No.", PurchHeader."Vendor Excise Invoice No.");
                    IF RG23CpartII.FINDLAST THEN
                        ERROR('Please Enter different Vendor Excise Invoice No. %1 already exist', PurchHeader."Vendor Excise Invoice No.");
                END;
        END;
    END;

    PROCEDURE CheckforTDS(VAR PurchaseHeader: Record 38);
    VAR
        NODHeader: Record 13786;
        Text01: label 'ENU=Vendor is defined in NOD Header. Check for TDS! Do you want to Proceed?';
        Text02: label 'ENU=The Update has been interrupted to respect the warning!';
    BEGIN
        NODHeader.SETRANGE(NODHeader.Type, NODHeader.Type::Vendor);
        NODHeader.SETRANGE(NODHeader."No.", PurchaseHeader."Buy-from Vendor No.");
        IF NODHeader.FINDFIRST THEN BEGIN
            IF NOT CONFIRM(Text01, FALSE) THEN
                ERROR(Text02);
        END;
    END;

    PROCEDURE CheckVEI(PurchHeader: Record 38);
    VAR
        PurchaseLine: Record 39;
        RG23apartII: Record 13720;
        RG23CpartII: Record 13722;
    BEGIN
    END;

    PROCEDURE CommaRemoval(Base: Text[30]) Converted: Text[30];
    VAR
        i: Integer;
    BEGIN
        FOR i := 1 TO STRLEN(Base) DO BEGIN
            IF COPYSTR(Base, i, 1) <> ',' THEN
                Converted += COPYSTR(Base, i, 1);
        END;
        EXIT(Converted);
    END;
    //<<Codeunit87clos<<



    //<<Codeunit90opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchRcptHeaderInsert', '', false, false)]
    local procedure OnBeforePurchRcptHeaderInsert(var PurchRcptHeader: Record "Purch. Rcpt. Header"; var PurchaseHeader: Record "Purchase Header"; CommitIsSupressed: Boolean; WarehouseReceiptHeader: Record "Warehouse Receipt Header"; WhseReceive: Boolean; WarehouseShipmentHeader: Record "Warehouse Shipment Header"; WhseShip: Boolean)
    begin
        PurchRcptHeader."Created Date Time" := CURRENTDATETIME;//EFFUPG
    end;

    //<<Codeunit90clos<<




    //<<Codeunit90opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchInvHeaderInsert', '', false, false)]
    local procedure OnBeforePurchInvHeaderInsert(var PurchInvHeader: Record "Purch. Inv. Header"; var PurchHeader: Record "Purchase Header"; CommitIsSupressed: Boolean)
    begin
        MESSAGE(FORMAT(PurchHeader."Posting No."));
        PurchInvHeader."Type of Supplier" := PurchHeader."Type of Supplier";
        PurchInvHeader."Vendor Excise Invoice No." := PurchHeader."Vendor Excise Invoice No.";          //sreenivas
        PurchInvHeader."Additional Duty Value" := PurchHeader."Additional Duty Value";

    end;
    //<<Codeunit90clos<<




    //<<Codeunit86opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforeCheckExternalDocumentNumber', '', false, false)]
    local procedure OnBeforeCheckExternalDocumentNumber(VendorLedgerEntry: Record "Vendor Ledger Entry"; PurchaseHeader: Record "Purchase Header"; var Handled: Boolean; DocType: Option; ExtDocNo: Text[35])
    begin
        IF DATE2DMY(WORKDATE, 2) > 3 THEN
            FIN_YEAR := DATE2DMY(WORKDATE, 3)
        ELSE
            FIN_YEAR := DATE2DMY(WORKDATE, 3) - 1;


    end;
    //<<Codeunit90clos<<

    //<<Codeunit90opn>>
    /*  [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnCheckExternalDocumentNumberOnAfterSetFilters', '', false, false)]
      local procedure OnCheckExternalDocumentNumberOnAfterSetFilters(var VendLedgEntry: Record "Vendor Ledger Entry"; PurchaseHeader: Record "Purchase Header")
      begin
          VendLedgEntry.SETRANGE(VendLedgEntry."Posting Date", DMY2DATE(1, 4, FIN_YEAR), DMY2DATE(31, 3, FIN_YEAR + 1));//EFFUPG
      end;
      //<<Codeunit87clos<<

      //<<Codeunit86opn>>
      PROCEDURE BOI_AlertMail();
      VAR
          IH: Record 60024;
          "Mail-Id": Record 2000000120;
          MIH: Record 50001;
          MIL: Record 50002;
          Count: Integer;
      BEGIN
          // Created by Rakesh on 29-Nov-14 for Mail code for Alerting BOI inward
          Item.RESET;
          Item.SETFILTER(Item."No.", PurchLine."No.");
          IF Item.FINDFIRST THEN BEGIN
              IF (PurchHeader."Sale Order No" <> '') THEN BEGIN
            //changes by Ahamed on 01-DEC-14
           { mail_to := 'sales@efftronics.com,padmaja@efftronics.com,vsngeetha@efftronics.com,qainward@efftronics.com,purchase@efftronics.com,';
                  mail_to := mail_to + 'pmurali@efftronics.com,prasanthi@efftronics.com,erp@efftronics.com,pmsubhani@efftronics.com,cuspm@efftronics.com,bharat@efftronics.com,dineel@efftronics.com';
                  mail_from := 'erp@efftronics.com';
                  subject := 'Reg: Bought out Item - ' + PurchLine.Description + ' inwarded';
                  body := '';

                  SMTP_mail.CreateMessage('ERP', mail_from, mail_to, subject, body, TRUE);
                  SMTP_mail.AppendBody('<html><head><style> divone{background-color: white; width: 700px; padding: 20px; border-style:solid ; border-color:#666699;  margin: 20px;} </style></head>');
                  SMTP_mail.AppendBody('<body><div style="border-color:#666699;  margin: 20px; border-width:15px;   border-style:solid; padding: 20px; width: 600px;"><label><font size="6">Bought Out Item Inwarded</font></label>');
                  SMTP_mail.AppendBody('<hr style=solid; color= #3333CC>');
                  SMTP_mail.AppendBody('<h>Dear Sir/Madam,</h><br>');
                  SMTP_mail.AppendBody('<P> BOUT Item Status Details </P>');
                  //IF (PurchHeader."No." = PurchLine."Document No.")
                  //BEGIN

                  SMTP_mail.AppendBody('<table border="1" style="border-collapse:collapse; width:100%; font-size:10pt;"><tr><td width="40%"><b> Item Description </b> </td><td>' + PurchLine.Description + '</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b> Item Number </b> </td><td>' + ItemJnlLine."Item No." + '</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b>Purchase Order No </b>    </td><td>' + PurchHeader."No." + '</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b>Sale Order No    </b> </td><td>' + PurchHeader."Sale Order No" + '</td></tr>');
                  salesheader.RESET;
                  salesheader.SETFILTER(salesheader."No.", PurchHeader."Sale Order No");
                  IF salesheader.FINDFIRST THEN BEGIN
                      SMTP_mail.AppendBody('<tr><td><b>Customer Name   </b> </td><td>' + salesheader."Sell-to Customer Name" + '</td></tr>');
                  END;
                  // added by vishnu Priya for the Schedule line number Items addition on 05-Sept-2018
                  /*Schedule.RESET;
                  Schedule.SETFILTER("Document No.",PurchHeader."Sale Order No");
                  Schedule.SETFILTER("No.",PurchLine."No.");
                  IF Schedule.FINDSET THEN
                    BEGIN
                      SMTP_mail.AppendBody('<tr><td><b> Sale Order Line Number </b></td><td>'+FORMAT(Schedule."Document Line No.")+'</td></tr>');
                      SMTP_mail.AppendBody('<tr><td><b> Schedule Line Number </b></td><td>'+FORMAT(Schedule."Line No.")+'</td></tr>');
                      END;
                  // end by vishnu priya
                  SMTP_mail.AppendBody('<tr><td><b> Received quantity </b></td><td>' + FORMAT(PurchLine."Qty. to Receive") + '</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b> To be recieved quantity  </b> </td><td>' + FORMAT(PurchLine.Quantity - (PurchLine."Quantity Received" + PurchLine."Qty. to Receive")) + '</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b> Total Ordered Quantity</b></td><td>' + FORMAT(PurchLine.Quantity) + '</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b> Total Received Quantity</b></td><td>' + FORMAT(PurchLine."Quantity Received" + PurchLine."Qty. to Receive") + '</td></tr></table>');
                  SMTP_mail.AppendBody('<br>');
                  SMTP_mail.AppendBody('<p align ="left"> Regards,<br>ERP Team </p>');
                  SMTP_mail.AppendBody('<br><p align = "center">::::Note: Auto Generated mail from ERP:::: </b></P></div></body></html>');
                  SMTP_mail.Send;}
            //end by ahmed
          END;
          IF (PurchLine."Location Code" = 'R&D STR') OR (PurchLine."Location Code" = 'CS STR') THEN
          BEGIN
             IH.RESET;
             IH.SETRANGE(IH."No.",PurchLine."Indent No.");
             IF IH.FINDFIRST THEN
             BEGIN
                "Mail-Id".RESET;
                "Mail-Id".SETRANGE("Mail-Id"."User Name",IH."Person Code");
                 IF "Mail-Id".FINDFIRST THEN  BEGIN
                    mail_to := "Mail-Id".MailID ;
                 END;
                //  mail_to := 'vijaya@efftronics.com';
                 mail_from :='erp@efftronics.com';
                 subject :='ERP- YOUR INDENTED ITEM ('+PurchLine.Description+') inwarded';
                 body:='';

                 SMTP_mail.CreateMessage('ERP',mail_from,mail_to,subject,body,TRUE);
                 SMTP_mail.AppendBody('<html><head><style> divone{background-color: white; width: 700px; padding: 20px; border-style:solid ; border-color:#666699;  margin: 20px;} </style></head>');
                 SMTP_mail.AppendBody('<body><div style="border-color:#666699;  margin: 20px; border-width:15px;   border-style:solid; padding: 20px; width: 600px;"><label><font size="6">Item Inwarded to Stores</font></label>');
                 SMTP_mail.AppendBody('<hr style=solid; color= #3333CC>');
                 SMTP_mail.AppendBody('<h>Dear Sir/Madam,</h><br>');
                  SMTP_mail.AppendBody('<P> Item Status Details </P>');
                 SMTP_mail.AppendBody('<table border="1" style="border-collapse:collapse; width:100%; font-size:10pt;"><tr><td width="40%"><b> Item Description </b> </td><td>'+PurchLine.Description+'</td></tr>');
                 SMTP_mail.AppendBody('<tr><td><b> Inward DATE & TIME </b> </td><td>'+FORMAT((TODAY),0,4)+FORMAT(TIME)+'</td></tr>');
                  SMTP_mail.AppendBody('<tr><td><b> Indent Number </b> </td><td>' +PurchLine."Indent No."+'</td></tr>');
                 SMTP_mail.AppendBody('<tr><td><b>Purchase Order No </b></td><td>'+PurchHeader."No."+'</td></tr>');
                 SMTP_mail.AppendBody('<tr><td><b>Vendor Name </b>    </td><td>'+ PurchHeader."Buy-from Vendor Name" +'</td></tr>');
                 SMTP_mail.AppendBody('<tr><td><b> Received quantity </b></td><td>'+FORMAT(PurchLine."Qty. to Receive")+'</td></tr>');
                 "Mail-Id".RESET;
                 "Mail-Id".SETRANGE("Mail-Id"."User Name",USERID);
                 IF "Mail-Id".FINDFIRST THEN  BEGIN
                     SMTP_mail.AppendBody('<tr><td><b> Inward By </b></td><td>'+"Mail-Id"."User Name"+'</td></tr>');
                 END;
                 SMTP_mail.AppendBody('</table>');
                 SMTP_mail.AppendBody('<br>');
                 SMTP_mail.AppendBody('<p align ="left"> Regards,<br>ERP Team </p>');
                 SMTP_mail.AppendBody('<br><p align = "center">::::Note: Auto Generated mail from ERP:::: </b></P></div></body></html>');
                 SMTP_mail.AddBCC('vijaya@efftronics.com');
                 SMTP_mail.Send;
            END;
          END;


        END;
        // end by Rakesh
      END;

      EVENT RecordSet::WillChangeField@9(cFields : Integer;Fields : Variant;adStatus : Integer;pRecordset : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::FieldChangeComplete@10(cFields : Integer;Fields : Variant;pError : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::WillChangeRecord@11(adReason : Integer;cRecords : Integer;adStatus : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::RecordChangeComplete@12(adReason : Integer;cRecords : Integer;pError : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::WillChangeRecordset@13(adReason : Integer;adStatus : Integer;pRecordset : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::RecordsetChangeComplete(adReason : Integer;pError : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::WillMove@15(adReason : Integer;adStatus : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::MoveComplete@16(adReason : Integer;pError : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::EndOfRecordset@17(VAR fMoreData : Boolean;adStatus : Integer;pRecordset : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::FetchProgress@18(Progress : Integer;MaxProgress : Integer;adStatus : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT RecordSet::FetchComplete@19(pError@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pRecordset@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset");
      BEGIN
      END;

      EVENT SQLConnection::InfoMessage@0(pError@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::BeginTransComplete@1(TransactionLevel@1102152003 : Integer;pError@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::CommitTransComplete@3(pError@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::RollbackTransComplete@2(pError@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::WillExecute@4(VAR Source@1102152007 : Text;CursorType@1102152006 : Integer;LockType@1102152005 : Integer;VAR Options@1102152004 : Integer;adStatus@1102152003 : Integer;pCommand@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{B08400BD-F9D1-4D02-B856-71D5DBA123E9}:'Microsoft ActiveX Data Objects 2.8 Library'._Command";pRecordset@1102152001 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset";pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::ExecuteComplete@5(RecordsAffected : Integer;pError : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152003 : Integer;pCommand@1102152002 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{B08400BD-F9D1-4D02-B856-71D5DBA123E9}:'Microsoft ActiveX Data Objects 2.8 Library'._Command";pRecordset@1102152001 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000556-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Recordset";pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::WillConnect@6(VAR ConnectionString : Text;VAR UserID : Text;VAR Password : Text;VAR Options : Integer;adStatus : Integer;pConnection : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::ConnectComplete@7(pError : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000500-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Error";adStatus@1102152001 : Integer;pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      EVENT SQLConnection::Disconnect@8(adStatus : Integer;pConnection@1102152000 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000550-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'._Connection");
      BEGIN
      END;

      BEGIN
      {
        CommaRemoval(FORMAT(ROUND(PurchInvLine."VAT Amount",0.01)))+''','''+//commented for merging purpose
              IF DATE2DMY(WORKDATE,2)>3 THEN
                FIN_YEAR:=DATE2DMY(WORKDATE,3)
              ELSE
                FIN_YEAR:=DATE2DMY(WORKDATE,3)-1
               VendLedgEntry.SETRANGE(VendLedgEntry."Posting Date",DMY2DATE(04,01,FIN_YEAR),DMY2DATE(03,31,FIN_YEAR+1));
        //B2B
        //Deleted Var(SQLConnection, RecordSet Automation Variables, Commented code related to SQLConnection, RecordSet
        //B2B
        UPGREV2.0    Commented code uncommented line number 1172.
      }
      END;
      end;*/
    //<<Codeunit90clos<<




    //<<Codeunit91opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post (Yes/No)", 'OnBeforeSelectPostOrderOption', '', false, false)]
    local procedure OnBeforeSelectPostOrderOption(var PurchaseHeader: Record "Purchase Header"; DefaultOption: Integer; var Result: Boolean; var IsHandled: Boolean)
    var
        Selection: Integer;
        ArchiveManagement: Codeunit 5063;
        ReceiveInvoiceQst: Label '&Receive,&Invoice,Receive &and Invoice';
    begin
        with PurchaseHeader do begin
            Selection := StrMenu(ReceiveInvoiceQst, 3);
            if Selection = 0 then
                Result := false;
            Receive := Selection in [1, 3];
            Invoice := Selection in [2, 3];
        end;

        Result := true;
        IsHandled := true;
    end;


    //<<Codeunit91clos<<

    //<<Codeunit92opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post + Print", 'OnBeforeGetReport', '', false, false)]
    local procedure OnBeforeGetReport(var PurchaseHeader: Record "Purchase Header"; var IsHandled: Boolean)
    begin
        IsHandled := true;
        IF PurchaseHeader."Posting No. Series" <> 'JV' THEN
            IsHandled := false;


    end;

    //<<Codeunit92clos<<


    //<<Codeunit93opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Quote to Order (Yes/No)", 'OnAfterCreatePurchOrder', '', false, false)]
    local procedure OnAfterCreatePurchOrder(var PurchaseHeader: Record "Purchase Header"; var IsHandled: Boolean)
    var
        MSPTOrderDetails: Record 60083;
        MSPTOrderDetails1: Record 60083;
        PPSetup: Record 312;
        ArchiveManagement: Codeunit 5063;
    begin
        //B2B-MSPT1.0
        MSPTOrderDetails.SETRANGE(Type, MSPTOrderDetails.Type::Purchase);
        MSPTOrderDetails.SETRANGE("Document Type", MSPTOrderDetails."Document Type"::Quote);
        MSPTOrderDetails.SETRANGE(MSPTOrderDetails."Document No.", PurchaseHeader."No.");
        IF MSPTOrderDetails.FINDSET THEN BEGIN
            REPEAT
                MSPTOrderDetails1.Type := MSPTOrderDetails.Type::Purchase;
                MSPTOrderDetails1."Party Type" := MSPTOrderDetails."Party Type"::Vendor;
                MSPTOrderDetails1."Document Type" := MSPTOrderDetails."Document Type"::Order;
                MSPTOrderDetails1."Party No." := MSPTOrderDetails."Party No.";
                MSPTOrderDetails1."MSPT Header Code" := MSPTOrderDetails."MSPT Header Code";
                MSPTOrderDetails1."MSPT Line No." := MSPTOrderDetails."MSPT Line No.";
                MSPTOrderDetails1."MSPT Code" := MSPTOrderDetails."MSPT Code";
                MSPTOrderDetails1.Percentage := MSPTOrderDetails.Percentage;
                MSPTOrderDetails1.Description := MSPTOrderDetails.Description;
                MSPTOrderDetails1."Calculation Period" := MSPTOrderDetails."Calculation Period";
                MSPTOrderDetails1.Remarks := MSPTOrderDetails.Remarks;
                MSPTOrderDetails1."Due Date" := MSPTOrderDetails."Due Date";
                MSPTOrderDetails1."Document No." := PurchaseHeader."No.";
                MSPTOrderDetails1.INSERT;
            UNTIL MSPTOrderDetails.NEXT = 0;
        END;
        MSPTOrderDetails.SETRANGE(Type, MSPTOrderDetails.Type::Purchase);
        MSPTOrderDetails.SETRANGE("Document Type", MSPTOrderDetails."Document Type"::Quote);
        MSPTOrderDetails.SETRANGE(MSPTOrderDetails."Document No.", PurchaseHeader."No.");
        IF MSPTOrderDetails.FINDFIRST THEN BEGIN
            MSPTOrderDetails.DELETEALL;
        END;
        //B2B-MSPT1.0
    end;
    //<<Codeunit93clos<<


    //<<Codeunit212opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Res. Jnl.-Post Line", 'OnBeforeResLedgEntryInsert', '', false, false)]
    local procedure OnBeforeResLedgEntryInsert(var ResLedgerEntry: Record "Res. Ledger Entry"; ResJournalLine: Record "Res. Journal Line")
    begin
        ResLedgerEntry."Planned Hr's" := ResJournalLine."Planned Hr's";
        ResLedgerEntry.Place := ResJournalLine.Place;
        ResLedgerEntry."AMC Order NO" := ResJournalLine."AMC Order NO";
    end;
    //<<Codeunit212clos<<

    //<<Codeunit228opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Test Report-Print", 'OnPrintGenJnlLineOnAfterGenJnlLineCopy', '', false, false)]
    local procedure OnPrintGenJnlLineOnAfterGenJnlLineCopy(var GenJnlLine: Record "Gen. Journal Line")
    begin
        GenJnlLine.SETRANGE("Payment Type", GenJnlLine."Payment Type");
        GenJnlLine.SETRANGE("Document No.", GenJnlLine."Document No."); //Rev01
    end;
    //<<Codeunit228clos<<



    //<<Codeunit414opn<<
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReopenSalesDoc', '', false, false)]
    local procedure OnBeforeReopenSalesDoc(var SalesHeader: Record "Sales Header"; PreviewMode: Boolean; var IsHandled: Boolean)
    begin
        WITH SalesHeader DO BEGIN
            IF Status = Status::Open THEN
                EXIT;
            //IF SalesHeader."Document Type" <>4 THEN
            ArchiveManagement.ArchiveSalesDocument(SalesHeader);
            Status := Status::Open;
            SalesLine.SetSalesHeader(SalesHeader);
            SalesLine.SETRANGE("Document Type", "Document Type");
            SalesLine.SETRANGE("Document No.", "No.");
            SalesLine.SETFILTER(Type, '>0');
            SalesLine.SETFILTER(Quantity, '<>0');
            IF RECORDLEVELLOCKING THEN
                SalesLine.LOCKTABLE;
            IF SalesLine.FINDSET THEN
                REPEAT
                    SalesLine.Amount := 0;
                    SalesLine."Amount Including VAT" := 0;
                    SalesLine."VAT Base Amount" := 0;
                    SalesLine.InitOutstandingAmount;
                    SalesLine.MODIFY;
                UNTIL SalesLine.NEXT = 0;
            SalesLine.RESET;

            IF "Document Type" <> "Document Type"::Order THEN
                ReopenATOs(SalesHeader);

            MODIFY(TRUE);
            IF "Document Type" IN ["Document Type"::Order, "Document Type"::"Return Order"] THEN
                WhseSalesRelease.Reopen(SalesHeader);
        END;
        IsHandled := true;
    end;
    //<<Codeunit414clos<<

    //<<Codeunit415opn<<
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Purchase Document", 'OnCodeOnAfterCheckPurchaseReleaseRestrictions', '', false, false)]
    local procedure OnCodeOnAfterCheckPurchaseReleaseRestrictions(var PurchaseHeader: Record "Purchase Header"; var IsHandled: Boolean)
    begin
        PurchaseLine.SETRANGE("Document Type", "Document Type");
        PurchaseLine.SETRANGE("Document No.", "No.");
        PurchaseLine.SETFILTER(Type, '%1', PurchaseLine.Type::Item);
        IF PurchaseLine.FINDFIRST THEN
            IF PurchaseLine."QC Enabled" = FALSE THEN
                ERROR(Text008, PurchaseLine."No.");
    end;
    //<<Codeunit415clos>>





    //<<Codeunit415opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Purchase Document", 'OnCodeOnBeforeModifyHeader', '', false, false)]
    local procedure OnCodeOnBeforeModifyHeader(var PurchaseHeader: Record "Purchase Header"; var PurchaseLine: Record "Purchase Line"; PreviewMode: Boolean; var LinesWereModified: Boolean)
    begin
        //B2B
        "Release Date Time" := CURRENTDATETIME;
        //B2B
        "Released By" := USERID;

        // Added by Pranavi on 11-Feb-2017
        IF "First Release DateTime" = 0DT THEN
            "First Release DateTime" := CURRENTDATETIME;
        IF "First Release By" = '' THEN
            "First Release By" := USERID;
        // End by Pranavi on 11-Feb-2017
    end;

    //<<Codeunit415clos<<




    //<<Codeunit1252opn>>
    PROCEDURE MatchManuallyREverse@1102152000(VAR SelectedBankAccReconciliationLine@1004 : Record 274; VAR SelectedBankAccountLedgerEntry@1003 : Record 271);
    VAR
        BankAccReconciliationLine@1006 : Record 274;
      BankAccountLedgerEntry@1002 : Record 271;
      BankAccEntrySetReconNo@1000 : Codeunit 375;
    BEGIN

        IF SelectedBankAccReconciliationLine.FINDFIRST THEN BEGIN
            BankAccReconciliationLine.GET(
              SelectedBankAccReconciliationLine."Statement Type",
              SelectedBankAccReconciliationLine."Bank Account No.",
              SelectedBankAccReconciliationLine."Statement No.",
              SelectedBankAccReconciliationLine."Statement Line No.");
            IF BankAccReconciliationLine.Type <> BankAccReconciliationLine.Type::"Bank Account Ledger Entry" THEN
                EXIT;

            IF SelectedBankAccountLedgerEntry.FINDSET THEN BEGIN
                REPEAT
                    BankAccountLedgerEntry.GET(SelectedBankAccountLedgerEntry."Entry No.");
                    //BankAccEntrySetReconNo.RemoveApplication(BankAccountLedgerEntry);
                    BankAccEntrySetReconNo.ApplyEntriesReverse(BankAccReconciliationLine, BankAccountLedgerEntry, Relation::"One-to-Many");
                UNTIL SelectedBankAccountLedgerEntry.NEXT = 0;
            END;
        END;
    END;

    PROCEDURE RemoveMatchReverse@1102152001(VAR SelectedBankAccReconciliationLine@1001 : Record 274; VAR SelectedBankAccountLedgerEntry@1000 : Record 271);
    VAR
        BankAccReconciliationLine@1004 : Record 274;
      BankAccountLedgerEntry@1003 : Record 271;
      BankAccEntrySetReconNo@1002 : Codeunit 375;
    BEGIN
        /*{
        IF SelectedBankAccReconciliationLine.FINDSET THEN
              REPEAT
                  BankAccReconciliationLine.GET(
                    SelectedBankAccReconciliationLine."Statement Type",
                    SelectedBankAccReconciliationLine."Bank Account No.",
                    SelectedBankAccReconciliationLine."Statement No.",
                    SelectedBankAccReconciliationLine."Statement Line No.");
                  BankAccountLedgerEntry.SETRANGE("Bank Account No.", BankAccReconciliationLine."Bank Account No.");
                  BankAccountLedgerEntry.SETRANGE("Statement No.", BankAccReconciliationLine."Statement No.");
                  BankAccountLedgerEntry.SETRANGE("Statement Line No.", BankAccReconciliationLine."Statement Line No.");
                  BankAccountLedgerEntry.SETRANGE(Open, TRUE);
                  BankAccountLedgerEntry.SETRANGE("Statement Status", BankAccountLedgerEntry."Statement Status"::"Bank Acc. Entry Applied");
                  IF BankAccountLedgerEntry.FINDSET THEN
                      REPEAT
                          BankAccEntrySetReconNo.RemoveApplicationReverse(BankAccountLedgerEntry);
                      UNTIL BankAccountLedgerEntry.NEXT = 0;
              UNTIL SelectedBankAccReconciliationLine.NEXT = 0;
        }*/
        IF SelectedBankAccountLedgerEntry.FINDSET THEN
            REPEAT
                BankAccountLedgerEntry.GET(SelectedBankAccountLedgerEntry."Entry No.");
                BankAccEntrySetReconNo.RemoveApplicationReverse(BankAccountLedgerEntry);
            UNTIL SelectedBankAccountLedgerEntry.NEXT = 0;
    END;

    PROCEDURE RemoveMatchReverseSingle(VAR SelectedBankAccReconciliationLine: Record 274; VAR SelectedBankAccountLedgerEntry: Record 271);
    VAR
        BankAccReconciliationLine: Record 274;
        BankAccountLedgerEntry: Record 271;
        BankAccEntrySetReconNo: Codeunit 375;
    BEGIN
        IF SelectedBankAccReconciliationLine.FINDFIRST THEN
            //REPEAT
            BankAccReconciliationLine.GET(
            SelectedBankAccReconciliationLine."Statement Type",
            SelectedBankAccReconciliationLine."Bank Account No.",
            SelectedBankAccReconciliationLine."Statement No.",
            SelectedBankAccReconciliationLine."Statement Line No.");
        BankAccountLedgerEntry.SETRANGE("Bank Account No.", BankAccReconciliationLine."Bank Account No.");
        BankAccountLedgerEntry.SETRANGE("Statement No.", BankAccReconciliationLine."Statement No.");
        BankAccountLedgerEntry.SETRANGE("Entry No.", SelectedBankAccReconciliationLine."Bank Acc LE");
        //BankAccountLedgerEntry.SETRANGE("Statement Line No.",BankAccReconciliationLine."Statement Line No.");
        BankAccountLedgerEntry.SETRANGE(Open, TRUE);
        BankAccountLedgerEntry.SETRANGE("Statement Status", BankAccountLedgerEntry."Statement Status"::"Bank Acc. Entry Applied");
        IF BankAccountLedgerEntry.FINDFIRST THEN
            BankAccEntrySetReconNo.RemoveApplicationReverseSingle(BankAccountLedgerEntry, BankAccReconciliationLine);
        // UNTIL SelectedBankAccReconciliationLine.NEXT = 0;


    END;

    //<<Codeunit1252clos<<





    //<<Codeunit5063opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnGetNextOccurrenceNo', '', false, false)]
    local procedure OnGetNextOccurrenceNo(TableId: Integer; DocType: Option; DocNo: Code[20]; var OccurenceNo: Integer)
    begin
        //B2B
        DATABASE::"Service Header";
        BEGIN
            ServiceHeaderArchive.LOCKTABLE;
            ServiceHeaderArchive.SETRANGE("Document Type", DocType);
            ServiceHeaderArchive.SETRANGE("No.", DocNo);
            IF ServiceHeaderArchive.FINDLAST THEN
                EXIT(ServiceHeaderArchive."Doc. No. Occurrence" + 1)
            ELSE
                EXIT(1);
        END;
        //B2B
    end;
    //<<Codeunit5063clos<<


    //<<Codeunit5063opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnGetNextVersionNo', '', false, false)]
    local procedure OnGetNextVersionNo(TableId: Integer; DocType: Option; DocNo: Code[20]; DocNoOccurrence: Integer; var VersionNo: Integer)
    begin
        //B2B
        DATABASE::"Service Header";
        BEGIN
            ServiceHeaderArchive.LOCKTABLE;
            ServiceHeaderArchive.SETRANGE("Document Type", DocType);
            ServiceHeaderArchive.SETRANGE("No.", DocNo);
            ServiceHeaderArchive.SETRANGE("Doc. No. Occurrence", DocNoOccurrence);
            IF ServiceHeaderArchive.FINDLAST THEN
                EXIT(ServiceHeaderArchive."Version No." + 1)
            ELSE
                EXIT(1);
        END;
        //B2B
    end;
    //<<Codeunit5063clos<<

    //<<Codeunit5063opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnBeforeSalesHeaderArchiveInsert', '', false, false)]
    local procedure OnBeforeSalesHeaderArchiveInsert(var SalesHeaderArchive: Record "Sales Header Archive"; SalesHeader: Record "Sales Header")
    begin
        //added by pranavi on 31-03-2015
        tempvar := '';
        BG.RESET;
        BG.SETCURRENTKEY("BG No.");
        BG.SETFILTER(BG."Doc No.", SalesHeader."No.");
        IF BG.FINDFIRST THEN BEGIN
            SalesHeaderArchive."BG Amount" := BG."BG Value";
            SalesHeaderArchive."BG Date of Issue" := BG."Date of Issue";
            SalesHeaderArchive."BG Expiry Date" := BG."Expiry Date";
            //MESSAGE(FORMAT(SHA."BG Amount"));
            TH.RESET;
            TH.SETCURRENTKEY("Tender No.");
            TH.SETFILTER(TH."Tender No.", BG."Tender No.");
            IF TH.FINDFIRST THEN BEGIN
                SalesHeaderArchive."EMD Amount" := TH."EMD Amount";
                //MESSAGE(FORMAT(SHA."EMD Amount"));
            END;
        END;
        IF FORMAT(SalesHeader."Warranty Period") <> '' THEN BEGIN
            tempvar := '+' + FORMAT(SalesHeader."Warranty Period");
            SalesHeaderArchive."Warranty Exp Date" := CALCDATE(tempvar, WORKDATE);
        END;
        //end by pranavi
    end;
    //<<Codeunit5063clos<<

    //<<Codeunit5063opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnAfterSalesHeaderArchiveInsert', '', false, false)]
    local procedure OnAfterSalesHeaderArchiveInsert(var SalesHeaderArchive: Record "Sales Header Archive"; SalesHeader: Record "Sales Header")
    begin
        // B2B
        StoreSalesESPLAttachments(SalesHeader, DATABASE::"Sales Header");
        // B2B
        //B2BJM >>

        CustomerContactData.RESET;
        CustomerContactData.SETRANGE("Sales Quote No.", SalesHeader."No.");
        IF CustomerContactData.FINDSET THEN
            REPEAT
                CustomerContactDataArchive.INIT;
                CustomerContactDataArchive.TRANSFERFIELDS(CustomerContactData);
                CustomerContactDataArchive."Version No." := SalesHeaderArchive."Version No.";
                CustomerContactDataArchive.INSERT;
            UNTIL CustomerContactData.NEXT = 0;

        //B2bJM <<

    end;
    //<<Codeunit5063clos<<


    //<<Codeunit5063opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnAfterPurchHeaderArchiveInsert', '', false, false)]
    local procedure OnAfterPurchHeaderArchiveInsert(var PurchaseHeaderArchive: Record "Purchase Header Archive"; PurchaseHeader: Record "Purchase Header")
    begin
        // B2B
        StorePurchaseESPLAttachments(PurchHeader, DATABASE::"Purchase Header");
        // B2B
    end;

    //<<Codeunit5063clos<<

    //<<Codeunit231opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnGetNextOccurrenceNo', '', false, false)]
    local procedure OnGetNextOccurrenceNo(TableId: Integer; DocType: Option; DocNo: Code[20]; var OccurenceNo: Integer)
    begin
        //B2B
        DATABASE::"Service Header";
        BEGIN
            ServiceHeaderArchive.LOCKTABLE;
            ServiceHeaderArchive.SETRANGE("Document Type", DocType);
            ServiceHeaderArchive.SETRANGE("No.", DocNo);
            IF ServiceHeaderArchive.FINDLAST THEN
                EXIT(ServiceHeaderArchive."Doc. No. Occurrence" + 1)
            ELSE
                EXIT(1);
        END;
        //B2B
    end;
    //<<Codeunit1252clos<<


    //<<Codeunit5063opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnGetNextVersionNo', '', false, false)]
    local procedure OnGetNextVersionNo(TableId: Integer; DocType: Option; DocNo: Code[20]; DocNoOccurrence: Integer; var VersionNo: Integer)
    var
        ServiceHeaderArchive: Record 60015;
    begin

        //B2B
        DATABASE::"Service Header";
        BEGIN
            ServiceHeaderArchive.LOCKTABLE;
            ServiceHeaderArchive.SETRANGE("Document Type", DocType);
            ServiceHeaderArchive.SETRANGE("No.", DocNo);
            ServiceHeaderArchive.SETRANGE("Doc. No. Occurrence", DocNoOccurrence);
            IF ServiceHeaderArchive.FINDLAST THEN
                EXIT(ServiceHeaderArchive."Version No." + 1)
            ELSE
                EXIT(1);
        END;
    end;
    //<<Codeunit5063clos<<


    //<<Codeunit5406opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Output Jnl.-Expl. Route", 'OnBeforeOutputItemJnlLineInsert', '', false, false)]
    local procedure OnBeforeOutputItemJnlLineInsert(var ItemJournalLine: Record "Item Journal Line"; LastOperation: Boolean)
    begin
        //B2B
        ItemJnlLine."Operation Description" := ProdOrderRtngLine."Operation Description";
        ItemJnlLine."Planed Setup Time" := ProdOrderRtngLine."Setup Time";
        ItemJnlLine."Planed Run Time" := ProdOrderRtngLine."Run Time";
        ItemJnlLine."Planed Wait Time" := ProdOrderRtngLine."Wait Time";
        ItemJnlLine."Planed Move Time" := ProdOrderRtngLine."Move Time";
        //B2B
    end;
    //<<Codeunit5406clos<<


    //<<Codeunit5407opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Prod. Order Status Management", 'OnBeforeShowStatusMessage', '', false, false)]
    local procedure OnBeforeShowStatusMessage(ProdOrder: Record "Production Order"; ToProdOrder: Record "Production Order"; var IsHandled: Boolean)
    begin

        // OMS Integration
        IF (NewStatus = NewStatus::Released) AND (Rec.Status = Rec.Status::Planned) THEN BEGIN
            OMSIntegration.RPOUpdationinOMS(Rec);
        END;
        // OMS Integration

        //PRM Integration
        IF (NewStatus = NewStatus::Released) THEN BEGIN
            PRMIntegration.ProdOrdRefresh("No.");
        END;

        //PRM Integration
    end;
    //<<Codeunit5407clos<<

    //<<Codeunit5407opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Prod. Order Status Management", 'OnTransProdOrderOnBeforeToProdOrderInsert', '', false, false)]
    local procedure OnTransProdOrderOnBeforeToProdOrderInsert(var ToProdOrder: Record "Production Order"; FromProdOrder: Record "Production Order"; NewPostingDate: Date)
    var
        PRMIntegration: Codeunit 60021;

    begin
        //B2B
        IF FromProdOrder.Status = FromProdOrder.Status::"Firm Planned" THEN BEGIN
            ToProdOrder."No." := FromProdOrder."No.";
            ToProdOrder.Status := ToProdOrder.Status::Released;
        END;
        //B2B
    end;
    //<<Codeunit5407clos<<

    //<<Codeunit5510opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Production Journal Mgt", 'OnInsertConsumptionJnlLineOnBeforeCheck', '', false, false)]
    local procedure OnInsertConsumptionJnlLineOnBeforeCheck(ProdOrderComponent: Record "Prod. Order Component"; ProdOrderLine: Record "Prod. Order Line"; Item: Record Item; var IsHandled: Boolean)
    var
        UOMMgt: Codeunit 5402;
        UnitOfMeasConv: Decimal;
    begin
        UnitOfMeasConv := UOMMgt.GetQtyPerUnitOfMeasure(Item, "Unit of Measure Code");

    end;
    //<<Codeunit5510clos<<


    //<<Codeunit5510opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Production Journal Mgt", 'OnInsertConsumptionJnlLineOnAfterItemJnlLineInit', '', false, false)]
    local procedure OnInsertConsumptionJnlLineOnAfterItemJnlLineInit(var ItemJournalLine: Record "Item Journal Line"; ItemJournalTemplate: Record "Item Journal Template"; ItemJournalBatch: Record "Item Journal Batch")
    begin
        //start 00.ajay
        ItemJnlLine."Document No." := ProdOrderLine."Prod. Order No.";
        //stop 00.ajay
    end;
    //<<Codeunit5510clos<<

    //<<Codeuni5510opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Production Journal Mgt", 'OnInsertOutputItemJnlLineOnAfterItemJnlLineInit', '', false, false)]
    local procedure OnInsertOutputItemJnlLineOnAfterItemJnlLineInit(var ItemJnlLine: Record "Item Journal Line"; ProdOrderLine: Record "Prod. Order Line"; ItemJournalTemplate: Record "Item Journal Template"; ItemJournalBatch: Record "Item Journal Batch")
    begin
        //start 00.ajay
        ItemJnlLine."Document No." := ProdOrderLine."Prod. Order No.";
        //stop 00.ajay
    end;
    //<<Codeunit5510clos<<


    //<<Codeunit5704opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnBeforeTransferOrderPostShipment', '', false, false)]
    local procedure OnBeforeTransferOrderPostShipment(var TransferHeader: Record "Transfer Header"; var CommitIsSuppressed: Boolean)
    begin
        //B2B
        QualityCheckInspect(TransHeader);
        //B2B
    end;

    //<<Codeunit5704clos<<


    //<<Codeunit5704opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnBeforeInsertTransShptHeader', '', false, false)]
    local procedure OnBeforeInsertTransShptHeader(var TransShptHeader: Record "Transfer Shipment Header"; TransHeader: Record "Transfer Header"; CommitIsSuppressed: Boolean)
    begin
        //B2B
        TransShptLine."Transfer Order Line No." := TransLine."Line No.";
        TransShptLine."Spec ID" := TransLine."Spec ID";
        TransLine.CALCFIELDS(TransLine."Quantity Accepted");
        TransShptLine."Quantity Accepted" := TransLine."Quantity Accepted";
        TransLine.CALCFIELDS(TransLine."Quantity Rejected");
        TransShptLine."Quantity Rejected" := TransLine."Quantity Rejected";
        TransShptLine."QC Enabled" := TransLine."QC Enabled";
        TransShptLine."Qty. Sending To Quality" := TransLine."Qty. Sending To Quality";
        TransShptLine."Qty. Sent To Quality" := TransLine."Qty. Sent To Quality";
        TransShptLine."Qty. Sending To Quality(R)" := TransLine."Qty. Sending To Quality(R)";
        TransShptLine."Spec Version" := TransLine."Spec Version";
        TransShptLine."Type of Material" := TransLine."Type of Material";
        TransShptLine."Prod. Order Comp. Line No." := TransLine."Prod. Order Comp. Line No.";
        //B2B
    end;


    //<<Codeunit5704clos<<


    //<<Codeunit5704opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnBeforeInsertTransShptLine', '', false, false)]
    local procedure OnBeforeInsertTransShptLine(var TransShptLine: Record "Transfer Shipment Line"; TransLine: Record "Transfer Line"; CommitIsSuppressed: Boolean; var IsHandled: Boolean; TransShptHeader: Record "Transfer Shipment Header")
    begin
        ProdorderComponents.SETRANGE("Prod. Order No.", TransShptLine."Prod. Order No.");
        ProdorderComponents.SETRANGE("Prod. Order Line No.", TransShptLine."Prod. Order Line No.");
        ProdorderComponents.SETRANGE("Line No.", TransShptLine."Prod. Order Comp. Line No.");
        IF ProdorderComponents.FINDFIRST THEN BEGIN
            ProdorderComponents.CALCFIELDS("Qty in To", ProdorderComponents."Qty Shipped in To");
            IF ProdorderComponents.Quantity = (ProdorderComponents."Qty in To" + ProdorderComponents."Qty Shipped in To") THEN BEGIN
                ProdorderComponents.Copy1 := TRUE;
                ProdorderComponents.MODIFY;
            END;
        END;
    end;
    //<<Codeunit5704clos<<

    //<<Codeunit5704opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnAfterCreateItemJnlLine', '', false, false)]
    local procedure OnAfterCreateItemJnlLine(var ItemJournalLine: Record "Item Journal Line"; TransferLine: Record "Transfer Line"; TransferShipmentHeader: Record "Transfer Shipment Header"; TransferShipmentLine: Record "Transfer Shipment Line")
    begin
        with ItemJnlLine do begin
            //B2B-Rasool
            "ITL Doc No." := TransShptLine2."Prod. Order No.";
            "ITL Doc Line No." := TransShptLine2."Prod. Order Line No.";
            "ITL Doc Ref Line No." := TransShptLine2."Prod. Order Comp. Line No.";
            //B2B  
        end;
    end;
    //<<Codeunit5704clos<<

    //<<Codeunit5704opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnBeforeCheckWarehouse', '', false, false)]
    local procedure OnBeforeCheckWarehouse(TransLine: Record "Transfer Line"; var IsHandled: Boolean)
    begin
        //TransLine.COPY(TransLine); commented
        TransLine.SETRANGE("Document No.", TransLine."Document No.");
        TransLine.SETRANGE("Line No.", TransLine."Line No.");
    end;

    //<<Codeunit15704clos<<

    //<<Codeunit5704opn>>
    PROCEDURE "--QC1--"();
    BEGIN
    END;

    PROCEDURE QualityCheckInspect(TransferHeader: Record 5740);
    VAR
        TransferLine: Record 5741;
        Text33000250: Label 'ENU=You cannot Ship more than quality accepted quantity in Transfer Order %1 and Line No. %2.';
        Location: Record 14;
    BEGIN
        Location.GET(TransferHeader."Transfer-to Code");
        IF Location."QC Enabled Location" THEN BEGIN
            TransferLine.SETRANGE("Document No.", TransferHeader."No.");
            TransferLine.SETFILTER("QC Enabled", 'YES');
            IF TransferLine.FINDFIRST THEN
                TransferLine.CALCFIELDS("Quantity Accepted", TransferLine."Quantity Rejected");
            IF (TransferLine."Quantity Accepted" +
                  TransferLine."Quantity Rejected") < TransferLine."Qty. to Ship" + TransferLine."Quantity Shipped" THEN
                ERROR(Text33000250, TransferLine."Document No.", TransferLine."Line No.");
            EXIT;
        end;
    end;
    //<<Codeunit5704clos<<




    //<<Codeunit5705opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Receipt", 'OnBeforeTransRcptHeaderInsert', '', false, false)]
    local procedure OnBeforeTransRcptHeaderInsert(var TransferReceiptHeader: Record "Transfer Receipt Header"; TransferHeader: Record "Transfer Header")
    begin
        //B2B
        TransRcptHeader."Prod. Order No." := "Prod. Order No.";
        TransRcptHeader."Prod. Order Line No." := "Prod. Order Line No.";
        TransRcptHeader."Service Item No." := "Service Item No.";
        TransRcptHeader."Customer No." := "Customer No.";
        TransRcptHeader."Prod. BOM No." := "Prod. BOM No.";
        TransRcptHeader."Resource Name" := "Resource Name";
        TransRcptHeader."User ID" := "User ID";
        TransRcptHeader."Required Date" := "Required Date";
        TransRcptHeader."Operation No." := "Operation No.";
        TransRcptHeader."Due Date" := "Due Date";
        TransRcptHeader."Sales Order No." := "Sales Order No.";
        TransRcptHeader."Service Order No." := "Service Order No.";
        //B2B 
    end;

    //<<Codeunit5705clos<<




    //<<Codeunit231opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Receipt", 'OnBeforeInsertTransRcptLine', '', false, false)]
    local procedure OnBeforeInsertTransRcptLine(var TransRcptLine: Record "Transfer Receipt Line"; TransLine: Record "Transfer Line"; CommitIsSuppressed: Boolean; var IsHandled: Boolean; TransferReceiptHeader: Record "Transfer Receipt Header")
    begin
        TransRcptLine."Spec ID" := TransLine."Spec ID";
        TransLine.CALCFIELDS(TransLine."Quantity Accepted", TransLine."Quantity Rejected");//UPGREV2.0
        TransRcptLine."Quantity Accepted" := TransLine."Quantity Accepted";
        //TransLine.CALCFIELDS(TransLine."Quantity Rejected");//UPGREV2.0
        TransRcptLine."Quantity Rejected" := TransLine."Quantity Rejected";
        TransRcptLine."QC Enabled" := TransLine."QC Enabled";
        TransRcptLine."Qty. Sending To Quality" := TransLine."Qty. Sending To Quality";
        TransRcptLine."Qty. Sent To Quality" := TransLine."Qty. Sent To Quality";
        TransRcptLine."Qty. Sending To Quality(R)" := TransLine."Qty. Sending To Quality(R)";
        TransRcptLine."Spec Version" := TransLine."Spec Version";
        //B2B-ESPL
    end;
    //<<Codeunit1252clos<<



    //<<Codeunit5705opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::transferorde, 'OnBeforePostItemJournalLine', '', false, false)]
    local procedure OnBeforePostItemJournalLine(var ItemJournalLine: Record "Item Journal Line"; TransferLine: Record "Transfer Line"; TransferReceiptHeader: Record "Transfer Receipt Header"; TransferReceiptLine: Record "Transfer Receipt Line"; CommitIsSuppressed: Boolean; TransLine: Record "Transfer Line"; PostedWhseRcptHeader: Record "Posted Whse. Receipt Header")
    begin
        //B2B-Rasool
        ItemJnlLine."ITL Doc No." := TransRcptLine2."Prod. Order No.";
        ItemJnlLine."ITL Doc Line No." := TransRcptLine2."Prod. Order Line No.";
        ItemJnlLine."ITL Doc Ref Line No." := TransRcptLine2."Prod. Order Comp. Line No.";
        //B2B
    end;
    //<<Codeunit5705clos<<



    //<<Codeunit58213opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Undo Purchase Receipt Line", 'OnBeforeCode', '', false, false)]
    local procedure OnBeforeCode(var PurchRcptLine: Record "Purch. Rcpt. Line")
    begin
        IF ISCLEAR(SQLConnection) THEN
            CREATE(SQLConnection, FALSE, TRUE);


        IF ISCLEAR(RecordSet) THEN
            CREATE(RecordSet, FALSE, TRUE);
        //B2B
        "G|l".GET;
        IF "G|l"."Active ERP-CF Connection" THEN BEGIN
            WebRecStatus := Quotes + Text50001 + Quotes;
            OldWebStatus := Quotes + Text50002 + Quotes;


            SQLConnection.ConnectionString := "G|l"."Sql Connection String";
            SQLConnection.Open;

            SQLConnection.BeginTrans;
            //B2B
        END;
    end;

    //<<Codeunit5813clos<<


    //<<Codeunit5813opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Undo Purchase Receipt Line", 'OnBeforePurchRcptLineModify', '', false, false)]
    local procedure OnBeforePurchRcptLineModify(var PurchRcptLine: Record "Purch. Rcpt. Line"; var TempWarehouseJournalLine: Record "Warehouse Journal Line" temporary)
    begin
        IF "G|l"."Active ERP-CF Connection" THEN BEGIN
            SQLQuery := 'Delete From Receipt_Line where RECEIPT_NO=''' + PurchRcptLine."Document No." + ''' and  RECEIPT_LINE_NO =' +
                         '''' + FORMAT(PurchRcptLine."Line No.") + '''';

            RecordSet := SQLConnection.Execute(SQLQuery);//B2B
        END;
    end;

    //<<Codeunit5813clos<<



    //<<Codeunit231opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Undo Purchase Receipt Line", 'OnAfterCode', '', false, false)]
    local procedure OnAfterCode(var PurchRcptLine: Record "Purch. Rcpt. Line")
    begin
        IF "G|l"."Active ERP-CF Connection" THEN BEGIN
            SQLConnection.CommitTrans;
            SQLConnection.Close;//B2B
        END;
    end;
    //<<Codeunit1252clos<<



    //<<Codeunit5817opn>>
       BEGIN
    END;

    PROCEDURE "UpdatePurchLineG/L"(PurchLine: Record 39; UndoQty: Decimal; UndoQtyBase@1005 : Decimal);
    VAR
        xPurchLine: Record 39;
        ReservePurchLine: Codeunit 99000834;
    BEGIN
        WITH PurchLine DO BEGIN
            xPurchLine := PurchLine;
            CASE "Document Type" OF
                "Document Type"::"Return Order":
                    BEGIN
                        "Return Qty. Shipped" := "Return Qty. Shipped" - UndoQty;
                        "Return Qty. Shipped (Base)" := "Return Qty. Shipped (Base)" - UndoQtyBase;
                        InitOutstanding;
                        InitQtyToShip;
                    END;
                "Document Type"::Order:
                    BEGIN
                        "Quantity Received" := "Quantity Received" - UndoQty;
                        "Qty. Received (Base)" := "Qty. Received (Base)" - UndoQtyBase;
                        InitOutstanding;
                        InitQtyToReceive;
                    END;
                ELSE
                    FIELDERROR("Document Type");
            END;
            MODIFY;
            //  RevertPostedItemTracking(TempUndoneItemLedgEntry,"Expected Receipt Date");
            xPurchLine."Quantity (Base)" := 0;
            ReservePurchLine.VerifyQuantity(PurchLine, xPurchLine);
        END;
    END;

    //<<Codeunit58172clos<<


    //<<Codeunit5836opn>>
    PROCEDURE "--B2B--"();
    BEGIN
    END;

    PROCEDURE CalcActTimeAndQtyBase2(ProdOrderLine: Record 5406; OperationNo: Code[10]; VAR ActRunTime: Decimal; VAR ActSetupTime: Decimal; VAR ActOutputQty: Decimal; VAR ActScrapQty: Decimal);
    VAR
        CapLedgEntry: Record 5832;
    BEGIN
        WITH CapLedgEntry DO BEGIN
            SETCURRENTKEY(
              "Order No.", "Order Line No.", "Routing No.", "Routing Reference No.",
              "Operation No.", "Last Output Line");
            SETRANGE("Order No.", ProdOrderLine."Prod. Order No.");
            SETRANGE("Order Line No.", ProdOrderLine."Line No.");
            SETRANGE("Routing No.", ProdOrderLine."Routing No.");
            SETRANGE("Routing Reference No.", ProdOrderLine."Routing Reference No.");
            SETRANGE("Operation No.", OperationNo);
            IF FINDSET THEN
                REPEAT
                    ActSetupTime += "Setup Time";
                    ActRunTime += "Run Time";
                    // Base Units
                    ActOutputQty += "Output Quantity";
                    ActScrapQty += "Scrap Quantity";
                UNTIL NEXT = 0;
        END;
    END;

    //<<Codeunit5836clos<<


    //<<Codeunit5920opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ServItemManagement, 'OnCreateServItemOnSalesLineShpt', '', false, false)]
    local procedure OnCreateServItemOnSalesLineShpt(var ServiceItem: Record "Service Item"; SalesHeader: Record "Sales Header"; SalesLine: Record "Sales Line")
    begin
        //B2B
        ServItem.Description := SalesLine.Description;
        ServItem."Description 2" := STRSUBSTNO('%1 %2', SalesHeader."Document Type", SalesHeader."No.");

        //B2B ssr 25/09/05 Start
        ServItem."SO No." := SalesHeader."No.";
        ServItem."SO Line No." := SalesLine."Line No.";
        ServItem.Status := ServItem.Status::"Not Installed";
        //B2B ssr End
    end;
    //<<Codeunit5920clos<<


    //<<Codeunit59320opn>>
    PROCEDURE "--SH1.0--"@1000000002();
    BEGIN
    END;

    PROCEDURE CreateSerItemForScheduleItems@1000000004(SalesHeader@1000 : Record 36; SalesLine@1003 : Record 37; SalesShipmentLine@1008 : Record 111; Schedule@1000000002 : Record 60095);
    VAR
        ItemTrackingCode@1005 : Record 6502;
      BOMComp@1001 : Record 90;
      BOMComp2@1002 : Record 90;
      TrackingLinesExist@1006 : Boolean;
        x@1007 : Integer;
        BOMComponent@1102152000 : Record 90;
      "---SH1.0--"@1000000000 : Integer;
        Schedule2@1000000001 : Record 60095;
      ItemLedgerEntry@1000000003 : Record 32;
      SerItemLoc@1000000004 : Record 5940;
    BEGIN
        Schedule2 := Schedule;
        ServMgtSetup.GET;
        //MESSAGE(FORMAT(Schedule2));
        Item.GET(Schedule2."No.");
        IF NOT ItemTrackingCode.GET(Item."Item Tracking Code") THEN
            ItemTrackingCode.INIT;
        IF (ServItemGr.GET(Item."Service Item Group")) AND (ServItemGr."Create Service Item") THEN BEGIN

            FOR x := 1 TO Schedule2.Quantity DO BEGIN
                CLEAR(ServItem);
                ServItem.INIT;
                ServMgtSetup.TESTFIELD("Service Item Nos.");
                NoSeriesMgt.InitSeries(
                  ServMgtSetup."Service Item Nos.", ServItem."No. Series", 0D, ServItem."No.", ServItem."No. Series");
                ServItem."Sales/Serv. Shpt. Document No." := SalesShipmentLine."Document No.";
                ServItem."Sales/Serv. Shpt. Line No." := SalesShipmentLine."Line No.";
                //B2B
                ServItem.Description := Schedule2.Description;
                ServItem."Description 2" := STRSUBSTNO('%1 %2', SalesHeader."Document Type", SalesHeader."No.");
                ServItem.INSERT; //B2B
                                 //B2B ssr 25/09/05 Start
                ServItem."SO No." := SalesHeader."No.";
                ServItem."SO Line No." := SalesLine."Line No.";
                ServItem.Status := ServItem.Status::"Not Installed";
                //B2B ssr End
                ServItem.VALIDATE("Customer No.", SalesHeader."Sell-to Customer No.");
                ServItem.VALIDATE("Ship-to Code", SalesHeader."Ship-to Code");

                ServItem.VALIDATE("Item No.", Item."No.");
                //B2B- For tracking the Batch no
                ItemLedgerEntry.RESET;
                ItemLedgerEntry.SETCURRENTKEY(ItemLedgerEntry."Sales Order No", ItemLedgerEntry."Sales Order Line No",
                                                ItemLedgerEntry."Schedule Line No");
                ItemLedgerEntry.SETRANGE("Entry Type", ItemLedgerEntry."Entry Type"::Consumption);
                ItemLedgerEntry.SETRANGE("Sales Order No", Schedule2."Document No.");
                ItemLedgerEntry.SETRANGE("Sales Order Line No", Schedule2."Document Line No.");
                ItemLedgerEntry.SETRANGE("Schedule Line No", Schedule2."Line No.");
                IF ItemLedgerEntry.FINDSET THEN;
                REPEAT
                    SerItemLoc.RESET;
                    SerItemLoc.SETRANGE("Item No.", Schedule2."No.");
                    SerItemLoc.SETRANGE("Serial No.", ItemLedgerEntry."Serial No.");
                    SerItemLoc.SETRANGE("Batch No.", ItemLedgerEntry."Lot No.");
                    IF NOT SerItemLoc.FINDFIRST THEN BEGIN
                        ServItem."Serial No." := ItemLedgerEntry."Serial No.";
                        ServItem."Batch No." := ItemLedgerEntry."Lot No.";
                    END ELSE
                        SerItemLoc.NEXT;
                UNTIL ItemLedgerEntry.NEXT = 0;

                /* {      IF (Schedule2.Type=Schedule2.Type::Item) AND (Item.GET(Schedule2."No.")) THEN
                      IF Item."Item Tracking Code"='LOT' THEN
                         Schedule2.TESTFIELD(Schedule2."Lot No.")
                      ELSE IF Item."Item Tracking Code"='SERIAL' THEN
                         Schedule2.TESTFIELD(Schedule2."Serial No.")
                      ELSE IF Item."Item Tracking Code"='lotSERIAL' THEN BEGIN
                         Schedule2.TESTFIELD(Schedule2."Serial No.");
                         Schedule2.TESTFIELD(Schedule2."Lot No.")
                      END;

                    IF Schedule2."Serial No"=''  THEN
                      Schedule2."Serial No":=ServItem."Serial No."
                    ELSE
                      Schedule2."Serial No"+=','+ServItem."Serial No.";

                    IF Schedule2."Batch No"=''  THEN
                      Schedule2."Batch No":=ServItem."Batch No."
                    ELSE
                      Schedule2."Batch No"+=','+ServItem."Batch No.";
                     }*/
                Schedule2.MODIFY;
                //B2B

                ServItem."Variant Code" := SalesLine."Variant Code";
                ServItem.VALIDATE("Sales Unit Cost", Schedule2."Unit Cost");
                IF SalesHeader."Currency Code" <> '' THEN
                    ServItem.VALIDATE(
                      "Sales Unit Price",
                      AmountToLCY(
                        SalesLine."Unit Price",
                        SalesHeader."Currency Factor",
                        SalesHeader."Currency Code",
                        SalesHeader."Posting Date"))
                ELSE
                    ServItem.VALIDATE("Sales Unit Price", Schedule2."Estimated Unit Price");
                ServItem."Vendor No." := Item."Vendor No.";
                ServItem."Vendor Item No." := Item."Vendor Item No.";
                ServItem."Unit of Measure Code" := Item."Base Unit of Measure";
                ServItem."Sales Date" := SalesHeader."Posting Date";
                ServItem."Installation Date" := SalesHeader."Posting Date";
                ServItem."Warranty % (Parts)" := ServMgtSetup."Warranty Disc. % (Parts)";
                ServItem."Warranty % (Labor)" := ServMgtSetup."Warranty Disc. % (Labor)";
                ServItem."Warranty Starting Date (Parts)" := SalesHeader."Posting Date";
                IF FORMAT(ItemTrackingCode."Warranty Date Formula") <> '' THEN
                    ServItem."Warranty Ending Date (Parts)" :=
                      CALCDATE(ItemTrackingCode."Warranty Date Formula", SalesHeader."Posting Date")
                ELSE
                    ServItem."Warranty Ending Date (Parts)" :=
                      CALCDATE(
                        ServMgtSetup."Default Warranty Duration",
                        SalesHeader."Posting Date");
                ServItem."Warranty Starting Date (Labor)" := SalesHeader."Posting Date";
                ServItem."Warranty Ending Date (Labor)" :=
                  CALCDATE(
                    ServMgtSetup."Default Warranty Duration",
                    SalesHeader."Posting Date");
                ServItem.MODIFY; //b2b
                IF SalesLine."BOM Item No." <> '' THEN BEGIN
                    CLEAR(BOMComp);
                    BOMComp.SETRANGE("Parent Item No.", SalesLine."BOM Item No.");
                    BOMComp.SETRANGE(Type, BOMComp.Type::Item);
                    BOMComp.SETRANGE("No.", SalesLine."No.");
                    BOMComp.SETRANGE("Installed in Line No.", 0);
                    IF BOMComp.FINDSET THEN
                        REPEAT
                            CLEAR(BOMComp2);
                            BOMComp2.SETRANGE("Parent Item No.", SalesLine."BOM Item No.");
                            BOMComp2.SETRANGE("Installed in Line No.", BOMComp."Line No.");
                            NextLineNo := 0;
                            IF BOMComp2.FINDSET THEN
                                REPEAT
                                    FOR Index := 1 TO ROUND(BOMComp2."Quantity per", 1) DO BEGIN
                                        ServItem2.INIT;
                                        ServMgtSetup.TESTFIELD("Service Item Nos.");
                                        ServItem2.TRANSFERFIELDS(ServItem);
                                        ServItem2."No." := NoSeriesMgt.GetNextNo(ServMgtSetup."Service Item Nos.", 0D, TRUE);
                                        ServItem2.INSERT;
                                        NextLineNo := NextLineNo + 10000;
                                        ServItemComponent.INIT;
                                        ServItemComponent.Active := TRUE;
                                        ServItemComponent."Parent Service Item No." := ServItem."No.";
                                        ServItemComponent."Line No." := NextLineNo;
                                        ServItemComponent.Type := ServItemComponent.Type::Item;
                                        ServItemComponent."No." := BOMComp2."No.";
                                        ServItemComponent."Date Installed" := SalesHeader."Posting Date";
                                        ServItemComponent.Description := BOMComp2.Description;
                                        ServItemComponent."Serial No." := '';
                                        ServItemComponent."Variant Code" := BOMComp2."Variant Code";
                                        ServItemComponent.INSERT;
                                    END;
                                UNTIL BOMComp2.NEXT = 0;
                        UNTIL BOMComp.NEXT = 0;
                END;
                CLEAR(ServLogMgt);
                ServLogMgt.ServItemAutoCreated(ServItem);
            END;
        END;
    END;


    //<<Codeunit5920clos<<


    //<<Codeunit6500opn>>
    PROCEDURE FindInInventoryNew@1102152000(ItemNo@1000 : Code[20];VariantCode@1001 : Code[20];SerialNo@1002 : Code[20];LocationCode@1102154000 : Code[20];LotNo@1102152000 : Code[20]) : Boolean;
    VAR
      ItemLedgerEntry@1004 : Record 32;
    BEGIN
      ItemLedgerEntry.RESET;
      ItemLedgerEntry.SETCURRENTKEY("Item No.",Open,"Variant Code",Positive);
      ItemLedgerEntry.SETRANGE("Item No.",ItemNo);
      ItemLedgerEntry.SETRANGE(Open,TRUE);
      ItemLedgerEntry.SETRANGE("Variant Code",VariantCode);
      //B2B-Rasool
      ItemLedgerEntry.SETRANGE("Location Code",LocationCode);
      ItemLedgerEntry.SETRANGE(Positive,TRUE);
      IF SerialNo <> '' THEN
        ItemLedgerEntry.SETRANGE("Serial No.",SerialNo);
      IF LotNo <> '' THEN
        ItemLedgerEntry.SETRANGE("Serial No.",LotNo);
      EXIT(ItemLedgerEntry.FINDFIRST);
    END;
    //<<Codeunit6500clos<<


    //<<Codeunit6620opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::Copy Document Mgt, 'OnCopyPurchDocUpdateHeaderOnBeforeUpdateVendLedgerEntry', '', false, false)]
     local procedure OnCopyPurchDocUpdateHeaderOnBeforeUpdateVendLedgerEntry(var ToPurchaseHeader: Record "Purchase Header"; FromDocType: Option; FromDocNo: Code[20])
    begin
               IF FromDocType = PurchDocType::"Posted Invoice" THEN    // Condition Added by Pranavi on 23-May-2016
          BEGIN
            "Applies-to Doc. Type" := "Applies-to Doc. Type"::Invoice;
            "Applies-to Doc. No." := FromDocNo;
          END
    end;
    //<<Codeunit6620clos<<


    //<<Codeunit231opn>>
    //<<Codeunit1252clos<<


    //<<Codeunit231opn>>
    //<<Codeunit1252clos<<


    //<<Codeunit231opn>>
    //<<Codeunit1252clos<<










    //<<Codeunit231opn>>
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post", 'OnBeforeGenJnlPostBatchRun', '', false, false)]
    local procedure OnBeforeGenJnlPostBatchRun(var GenJnlLine: Record "Gen. Journal Line"; var IsHandled: Boolean)
    var
        NODHeader: Record 13786;
        Text01: Label 'ENU=Vendor is defined in NOD Header. Check for TDS.!';
        VendorLRec: Record 23;
        Text20: Label 'ENU=TDS Required to be deducted. Deducted or Not?';
    begin

        maxdate := TODAY;
        mindate := 040108D;
        /*  {
          AVE.SETRANGE(AVE."Dimension 2 Value Code",user."User Security ID");//B2B
          }//Rev01*/
        AVE.SETRANGE(AVE."Dimension 2 Value Code", user."User Name");//Rev01
        AVE.SETRANGE(AVE."Posting Date", mindate, maxdate);
        IF AVE.FINDFIRST THEN BEGIN
            //REPORT.RUN(50173,FALSE,FALSE,AVE);
            REPORT.SAVEASPDF(33000898, '\\erpserver\ErpAttachments\TA Details.Pdf', AVE);
            Attachment2 := '\\erpserver\ErpAttachments\TA Details.Pdf'
        END;
        //END;
        IF ("from Mail" <> '') AND ("to mail" <> '') THEN
            mail.NewCDOMessage("from Mail", "to mail", Mail_Subject, Mail_Body, Attachment1);
        IF ("from Mail1" <> '') AND ("to mail1" <> '') THEN
            mail.NewCDOMessage("from Mail1", "to mail1", Mail_Subject1, Mail_Body1, Attachment2);
        IF ("from Mail1" <> '') AND ("to mail2" <> '') THEN
            mail.NewCDOMessage("from Mail1", "to mail2", Mail_Subject1, Mail_Body1, Attachment1);

    END


       //For Receipt
       else


        
         BEGIN

          GJL.SETRANGE(GJL."Posting Date",WORKDATE);
          GJL.SETRANGE(GJL."Journal Batch Name",GenJnlLine."Journal Batch Name");
          GJL.SETFILTER(GJL."Account Type",'Bank Account');
          IF GJL.FINDFIRST THEN
          BEGIN
          BA.SETRANGE(BA."No.",GJL."Account No.");
          IF BA.FINDFIRST THEN
          bankacc:=BA.Name;
          END
         ELSE
         ERROR('Specify Workdate same as Posting Date & Bank Account for this Receipt');
          GJL.RESET;
          GJL.SETRANGE(GJL."Journal Batch Name",GenJnlLine."Journal Batch Name");
          GJL.SETFILTER(GJL."Account Type",'Customer');
          IF GJL.FINDSET THEN
          REPEAT
          Mail_Body:='';
      //   IF GJL."Sale Order No"='' THEN
      //   ERROR('Please enter Sale Order No.');
          prevno:=GJL."Sale Order No";
          IF (prevno<>salno)THEN BEGIN
             INVVAL:=0;
             RECVAL:=0;
             salno:=FORMAT(GJL."Sale Order No");
              END;
           recamt+=ABS(GJL.Amount);
           invno+=', '+GJL."Invoice no";
            UNTIL GJL.NEXT=0;
             //END;

      Mail_Body+='RECEIPT DETAILS  :';
      Mail_Body+=FORMAT(charline);
      Mail_Body+=FORMAT(charline);

              cust.SETRANGE(cust."No.",GJL."Account No.");
               IF cust.FINDFIRST THEN
                Mail_Subject:='ERP- Receipt From the Customer '+cust.Name;

      IF (GJL."Payment Type"=GJL."Payment Type"::Advance) THEN
      BEGIN
      Mail_Body+='ADVANCE FROM CUSTOMER';
      Mail_Body+=FORMAT(charline);
      Mail_Body+=FORMAT(charline);
      END;

      Mail_Body+='Customer Name                       : '+ FORMAT(cust.Name);
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Customer Type                       : '+ FORMAT(cust."Customer Posting Group");
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Received Amount                     : '+ FORMAT(ROUND(recamt,1));
      Mail_Body+=FORMAT(charline);
      Mail_Body+=FORMAT(charline);

      IF (GJL."Payment Type"=GJL."Payment Type"::Advance) THEN
      BEGIN
      sh.SETRANGE(sh."No.",GJL."Sale Order No");
      IF sh.FINDFIRST THEN
      orderval:=sh."Sale Order Total Amount";
      Mail_Body+='Sale Order No.                      : '+ FORMAT(salno);
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Sale Order Value                    : '+ FORMAT(ROUND(orderval,1));
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Bank Account                        : '+ FORMAT(bankacc);
      Mail_Body+=FORMAT(charline);

             CLE.RESET;
             CLE.SETRANGE(CLE."Customer No.",GJL."Account No.");
             CLE.SETRANGE(CLE."Sale Order no",GJL."Sale Order No");
             IF CLE.FINDSET THEN
             REPEAT
             CLE.CALCFIELDS(CLE.Amount);
             RECVAL+=ABS(CLE.Amount);
             UNTIL CLE.NEXT=0;
      Mail_Body+='Total Received Value for this Order : '+ FORMAT(ROUND(RECVAL+recamt,1));
           Mail_Body+=FORMAT(charline);
           Mail_Body+=FORMAT(charline);
           Mail_Body+=FORMAT(charline);

      END
      ELSE
      BEGIN

               SIH.RESET;
               SIH.SETRANGE(SIH."Sell-to Customer No.",GJL."Account No.");
               SIH.SETRANGE(SIH."Order No.",GJL."Sale Order No");
               IF  SIH.FINDSET THEN
               REPEAT
               SIH.CALCFIELDS(SIH."Total Invoiced Amount");
               INVVAL+=SIH."Total Invoiced Amount";
               orderval:=SIH."Sale Order Total Amount";
               cusorderno:=SIH."Customer OrderNo.";
               UNTIL SIH.NEXT=0;


      Mail_Body+='Sale Order No.                      : '+ FORMAT(salno);
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Sale Order Value                    : '+ FORMAT(orderval);
      Mail_Body+=FORMAT(charline);
      Mail_Body+=FORMAT(charline);

      Mail_Body+='Total Invoiced Value                : '+ FORMAT(ROUND(INVVAL,1));
      Mail_Body+=FORMAT(charline);
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Customer Order No.                  : '+ FORMAT(cusorderno);
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Bank Account                        : '+ FORMAT(bankacc);
      Mail_Body+=FORMAT(charline);
      Mail_Body+='Invoice No.                         : '+ FORMAT(COPYSTR(invno,2,STRLEN(invno)-1));
      Mail_Body+=FORMAT(charline);
      Mail_Body+=FORMAT(charline);


             CLE.RESET;
             CLE.SETRANGE(CLE."Customer No.",GJL."Account No.");
             CLE.SETRANGE(CLE."Sale Order no",GJL."Sale Order No");
             IF CLE.FINDSET THEN
             REPEAT
             CLE.CALCFIELDS(CLE.Amount);
             RECVAL+=ABS(CLE.Amount);
             UNTIL CLE.NEXT=0;
      Mail_Body+='Total Received Value for this Order : '+ FORMAT(ROUND(RECVAL+recamt,1));
           Mail_Body+=FORMAT(charline);
           per:=((ROUND(RECVAL+recamt,1))/ROUND(INVVAL,1))*100;
           IF (per>101) THEN
           ERROR('Total received percent is greater than 100 for this sale Order');
      Mail_Body+='Total Received Percent              : '+ FORMAT(ROUND(per,0.1,'>'))+' %';
           Mail_Body+=FORMAT(charline);
           Mail_Body+=FORMAT(charline);
      END;

      //cust.RESET
      cust.SETRANGE(cust."No.",GJL."Account No.");
      IF cust.FINDFIRST THEN
      cust.CALCFIELDS(cust."Balance (LCY)");
      Mail_Body+='Previous Customer Balance           : '+ FORMAT(ROUND(cust."Balance (LCY)",1));
           Mail_Body+=FORMAT(charline);
      Mail_Body+='Total Customer Balance              : '+ FORMAT(ROUND(cust."Balance (LCY)"-recamt,1));
           Mail_Body+=FORMAT(charline);

        //   END;
      // END;

           "Mail-Id".SETRANGE("Mail-Id"."User Security ID",USERID);//B2B
           IF "Mail-Id".FINDFIRST THEN
           "from Mail":="Mail-Id".MailID;
           // "to mail":='erp@efftronics.com';
        "to mail":='dir@efftronics.com,cvmohan@efftronics.com,anilkumar@efftronics.com,sitarajyam@efftronics.com,';
       "to mail"+='renukach@efftronics.com,rajani@efftronics.com';
      "to mail"+='ravi@efftronics.com,samba@efftronics.com,baji@efftronics.com,prasannat@efftronics.com,';
      "to mail"+='anuradhag@efftronics.com,chandi@efftronics.com,anulatha@efftronics.com,milind@efftronics.com,srasc@efftronics.com';

      //  "to mail"+='sal@efftronics.com';
           GenJnlPostBatch.RUN(GenJnlLine);

      CLE.RESET;
      CLE.SETRANGE(CLE."Customer No.",GJL."Account No.");
      IF CLE.FINDFIRST THEN
      REPORT.RUN(50180,FALSE,FALSE,CLE);
      REPORT.SAVEASPDF(50180,'\\erpserver\ErpAttachments\Cust.Pdf',CLE);
      Attachment:='\\erpserver\ErpAttachments\Cust.Pdf';

        IF ( "from Mail"<>'') AND ("to mail"<>'') THEN
        mail.NewCDOMessage("from Mail","to mail",Mail_Subject,Mail_Body,Attachment);
      END;

        charline:=10;
         IF (GenJnlLine."Journal Batch Name"='BRV(CUST)')THEN
          BEGIN
             IF ((GenJnlLine."Account Type"=GenJnlLine."Account Type"::"Bank Account")AND
                (GenJnlLine."Bal. Account Type"=GenJnlLine."Bal. Account Type"::Customer))
              THEN  BEGIN
              cust.SETRANGE(cust."No.",GenJnlLine."Bal. Account No.");
              IF cust.FINDFIRST THEN
               Mail_Subject:='ERP- '+'Receipt From the Customer '+cust.Name;
            IF GenJnlLine."Cheque No."='' THEN
            ERROR('You Need To Enter Cheque no.');
           IF (GenJnlLine."Payment Type"<>GenJnlLine."Payment Type"::Contra) AND
              (GenJnlLine."Payment Type"<>GenJnlLine."Payment Type"::Advance)THEN
             BEGIN
              IF(GenJnlLine."Sale invoice order no"='') THEN
               ERROR('You must Select Sal invoice Order No.')
              ELSE
               Mail_Body+='Sale Order No.          : '+ GenJnlLine."Sale Order No";
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Customer Order No.      : '+ GenJnlLine."Customer Ord no";
               Mail_Body+=FORMAT(charline);
               glentry.SETRANGE(glentry."Debit Amount",1,1000000000);
               glentry.SETRANGE(glentry."Document No.",GenJnlLine."Sale invoice order no");
               IF glentry.FINDFIRST THEN BEGIN
               Mail_Body+='Invoice No.             : '+FORMAT(glentry."External Document No.");
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Invoiced Amount         : '+FORMAT(glentry."Debit Amount");
               END;
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Received Amount         : '+ FORMAT(GenJnlLine."Debit Amount");
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Receipt Date            : '+FORMAT((TODAY),0,4);
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Invoiced Date           : '+FORMAT((glentry."Posting Date"),0,4);
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Amount Received in Days : '+FORMAT(TODAY-(glentry."Posting Date"));
               Mail_Body+=FORMAT(charline);
               user.SETRANGE(user."User Security ID",cust."Salesperson Code");//B2B
               IF user.FINDFIRST THEN
               Mail_Body+='Sales Executive         : '+user."User Name";//B2B
               Mail_Body+=FORMAT(charline);
               Mail_Body+=FORMAT(charline);
               Mail_Body+='***** Auto Mail Generated From ERP *****';
             END;
           IF (GenJnlLine."Payment Type"=GenJnlLine."Payment Type"::Contra) THEN
            BEGIN
            Mail_Body:='Security Deposit :' + FORMAT(GenJnlLine."Debit Amount");
           END;
          IF (GenJnlLine."Payment Type"=GenJnlLine."Payment Type"::Advance)  THEN
           BEGIN
            IF (GenJnlLine."Sale Order No"='') THEN
            ERROR('You must select the Sale Order No.in Advance field');
            Mail_Body:='Advance Amount :'+ FORMAT(GenJnlLine."Debit Amount");
            Mail_Body+=FORMAT(charline);
            Mail_Body+='Sale Order No. :'+ GenJnlLine."Sale Order No";
             Mail_Body+=FORMAT(charline);
             Mail_Body+='***** Auto Mail Generated From ERP*****';
           END;
           "Mail-Id".SETRANGE("Mail-Id"."User Security ID",USERID);//B2B
           IF "Mail-Id".FINDFIRST THEN
           "from Mail":="Mail-Id".MailID;
         "to mail"+='dir@efftronics.com,baji@efftronics.com,ravi@efftronics.com,';
          "to mail"+='anilkumar@efftronics.com,cvmohan@efftronics.com,rajani@efftronics.com';

            GenJnlPostBatch.RUN(GenJnlLine)
            END

         ELSE IF((GenJnlLine."Account Type"=GenJnlLine."Account Type"::Customer)AND
         (GenJnlLine."Bal. Account Type"=GenJnlLine."Bal. Account Type"::"Bank Account"))
          THEN BEGIN
              cust.SETRANGE(cust."No.",GenJnlLine."Account No.");
              IF cust.FINDFIRST THEN
               Mail_Subject:='<ERP> '+'Receipt From the Customer '+cust.Name;

           IF (GenJnlLine."Payment Type"<>GenJnlLine."Payment Type"::Contra) AND
              (GenJnlLine."Payment Type"<>GenJnlLine."Payment Type"::Advance)THEN
             BEGIN
              IF(GenJnlLine."Sale invoice order no"='') THEN
               ERROR('You must Select Sal invoice Order No.')
               ELSE
               Mail_Body+='Sale Order No.          : '+ GenJnlLine."Sale Order No";
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Customer Order No.      : '+ GenJnlLine."Customer Ord no";
               Mail_Body+=FORMAT(charline);
               glentry.SETRANGE(glentry."Debit Amount",1,1000000000);
               glentry.SETRANGE(glentry."Document No.",GenJnlLine."Sale invoice order no");
               IF glentry.FINDFIRST THEN  BEGIN
               Mail_Body+='Sale Order No.          : '+ GenJnlLine."Customer Ord no";
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Invoice No.             : '+FORMAT(glentry."External Document No.");
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Invoiced Amount         : '+FORMAT(glentry."Debit Amount");
               Mail_Body+=FORMAT(charline);
                END;
               Mail_Body+='Received Amount         : '+ FORMAT(GenJnlLine."Credit Amount");
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Receipt Date            : '+FORMAT((TODAY),0,4);
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Invoiced Date           : '+FORMAT(glentry."Posting Date");
               Mail_Body+=FORMAT(charline);
               Mail_Body+='Amount Received in Days : '+FORMAT(TODAY-(glentry."Posting Date"));
               Mail_Body+=FORMAT(charline);
               user.SETRANGE(user."User Security ID",cust."Salesperson Code");//B2B
               IF user.FINDFIRST THEN
               Mail_Body+='Sales Executive         : '+user."User Name";//B2B
               Mail_Body+=FORMAT(charline);
               Mail_Body+=FORMAT(charline);
               Mail_Body+='***** Auto Mail Generated From ERP *****';
               END;
           IF (GenJnlLine."Payment Type"=GenJnlLine."Payment Type"::Contra) THEN
            BEGIN
             Mail_Body:='Security Deposit :' + FORMAT(GenJnlLine."Debit Amount");
           END;
          IF (GenJnlLine."Payment Type"=GenJnlLine."Payment Type"::Advance)  THEN
           BEGIN
            IF (GenJnlLine."Sale Order No"='') THEN
            ERROR('You must select the Sale Order No.in Advance field');
            Mail_Body:='Advance Amount :'+ FORMAT(GenJnlLine."Credit Amount");
            Mail_Body+=FORMAT(charline);
            Mail_Body+='Sale Order No. :'+ GenJnlLine."Sale Order No";
            Mail_Body+=FORMAT(charline);
             Mail_Body+='***** Auto Mail Generated From ERP*****';
            END;
           "Mail-Id".SETRANGE("Mail-Id"."User Security ID",USERID);//B2B
           IF "Mail-Id".FINDFIRST THEN
           "from Mail":="Mail-Id".MailID;
           "to mail"+='dir@efftronics.com,anuradhag@efftronics.com,baji@efftronics.com,ravi@efftronics.com,';
           "to mail"+='anilkumar@efftronics.com,cvmohan@efftronics.com,rajani@efftronics.com';

             GenJnlPostBatch.RUN(GenJnlLine);
              END
          ELSE
           ERROR('PLEASE CHOOSE ANOTHER BRV');
           END;
        IF ( "from Mail"<>'') AND ("to mail"<>'') THEN
       mail.NewCDOMessage("from Mail","to mail",Mail_Subject,Mail_Body,'');

      IF (GenJnlLine."Journal Batch Name"='BRV(EMP)') THEN BEGIN
            IF (GenJnlLine."Account No."='37200')OR (GenJnlLine."Bal. Account No."='37200')OR
               (GenJnlLine."Account No."='24200')OR(GenJnlLine."Bal. Account No."='24200') THEN
               GenJnlPostBatch.RUN(GenJnlLine)
           ELSE
           ERROR('PLEASE CHOOSE ANOTHER BRV');
        END;

      IF (GenJnlLine."Journal Batch Name"='BRV(OTH)')THEN BEGIN
            IF (GenJnlLine."Account No."='37200')OR (GenJnlLine."Bal. Account No."='37200')OR
               (GenJnlLine."Account No."='24200')OR(GenJnlLine."Bal. Account No."='24200')OR
               (GenJnlLine."Account Type"=GenJnlLine."Account Type"::Customer)OR
               (GenJnlLine."Bal. Account Type"=GenJnlLine."Bal. Account Type"::Customer) THEN
            ERROR('PLEASE CHOOSE ANOTHER BRV')

  
    end;

    //<<Codeunit231clos<<



    //<<Codeunit270opn>>
      PROCEDURE TemplateSelection1(RecurringJnl : Boolean);
    VAR
      ResJnlTemplate : Record 206;
      ResJnlLine : Record 207;
      JnlSelected : Boolean;
    BEGIN
      JnlSelected := TRUE;

      ResJnlTemplate.RESET;
      ResJnlTemplate.SETRANGE(Recurring,RecurringJnl);

      CASE ResJnlTemplate.COUNT OF
        0:
          BEGIN
            ResJnlTemplate.INIT;
            ResJnlTemplate.Recurring := RecurringJnl;
            IF NOT RecurringJnl THEN BEGIN
              ResJnlTemplate.Name := Text000;
              ResJnlTemplate.Description := Text001;
            END ELSE BEGIN
              ResJnlTemplate.Name := Text002;
              ResJnlTemplate.Description := Text003;
            END;
            ResJnlTemplate.VALIDATE("Page ID");
            ResJnlTemplate.INSERT;
            COMMIT;
          END;
        1:
          ResJnlTemplate.FINDFIRST;
        ELSE
          JnlSelected := PAGE.RUNMODAL(0,ResJnlTemplate) = ACTION::LookupOK;
      END;
      IF JnlSelected THEN BEGIN
        ResJnlLine.FILTERGROUP := 2;
        ResJnlLine.SETRANGE("Journal Template Name",ResJnlTemplate.Name);
        ResJnlLine.FILTERGROUP := 0;
        PAGE.RUN(60210,ResJnlLine);
      END;
    END;

    PROCEDURE temp(RecurringJnl : Boolean);
    VAR
      ResJnlTemplate : Record 206;
      ResJnlLine : Record 207;
      JnlSelected : Boolean;
    BEGIN
      JnlSelected := TRUE;

      ResJnlTemplate.RESET;
      ResJnlTemplate.SETRANGE(Recurring,RecurringJnl);

      CASE ResJnlTemplate.COUNT OF
        0:
          BEGIN
            ResJnlTemplate.INIT;
            ResJnlTemplate.Recurring := RecurringJnl;
            IF NOT RecurringJnl THEN BEGIN
              ResJnlTemplate.Name := Text000;
              ResJnlTemplate.Description := Text001;
            END ELSE BEGIN
              ResJnlTemplate.Name := Text002;
              ResJnlTemplate.Description := Text003;
            END;
            ResJnlTemplate.VALIDATE("Page ID");
            ResJnlTemplate.INSERT;
            COMMIT;
          END;
        1:
          ResJnlTemplate.FINDFIRST;
        ELSE
          JnlSelected := PAGE.RUNMODAL(0,ResJnlTemplate) = ACTION::LookupOK;
      END;
      IF JnlSelected THEN BEGIN
        ResJnlLine.FILTERGROUP := 2;
        ResJnlLine.SETRANGE("Journal Template Name",ResJnlTemplate.Name);
        ResJnlLine.FILTERGROUP := 0;
        PAGE.RUN(ResJnlTemplate."Page ID",ResJnlLine);
      END;
    END;


    //<<Codeunit270clos<<



    //<<Codeunit86opn>>
     PROCEDURE PurchHeaderBuyFromtemp(VAR AddrArray : ARRAY [8] OF Text[50];VAR PurchHeader : Record 38);
    BEGIN
      WITH PurchHeader DO
        FormatAddr(
          AddrArray,"Buy-from Vendor Name","Buy-from Vendor Name 2",'',"Buy-from Address","Buy-from Address 2",
          "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code");
    END;

    PROCEDURE ChangeCurrency(Amt : Decimal) AmountText : Text[30];
    VAR
      I : Integer;
      s : Text[30];
      j : Integer;
    BEGIN
      AmountText:=FORMAT(Amt,0,'<Precision,0:0><Standard Format,2>');
      FOR I:=1 TO 10 DO
      BEGIN
      IF STRLEN(AmountText)>(3*I) THEN
      BEGIN
      s:=INSSTR(AmountText,',',STRLEN(AmountText)-(3*I-1));
      AmountText :=s;
      END
      ELSE
      I:=10;

      END;
    END;

    PROCEDURE Location(VAR AddrArray : ARRAY [8] OF Text[50];VAR LocationLRec : Record 14);
    BEGIN
      WITH LocationLRec DO
        FormatAddr(
          AddrArray,Name,"Name 2",'',Address,"Address 2",
          City,"Post Code",County,'');
    END;
    //<<Codeunit87clos<<

    

    //<<Codeunit86opn>>
   
    LOCAL PROCEDURE CloseBankAccLedgEntryReverse(BankAccReconLine : Record 274;VAR AppliedAmount : Decimal);
    BEGIN
      BankAccLedgEntry.RESET;
      BankAccLedgEntry.SETCURRENTKEY("Bank Account No.",Open);
      BankAccLedgEntry.SETRANGE("Bank Account No.",BankAccReconLine."Bank Account No.");
      BankAccLedgEntry.SETRANGE("Entry No.",BankAccReconLine."Bank Acc LE");//REverse
      BankAccLedgEntry.SETRANGE(Open,TRUE);
      BankAccLedgEntry.SETRANGE(
        "Statement Status",BankAccLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
      BankAccLedgEntry.SETRANGE("Statement No.",BankAccReconLine."Statement No.");
      //BankAccLedgEntry.SETRANGE("Statement Line No.",BankAccReconLine."Statement Line No.");
      IF BankAccLedgEntry.FIND('-') THEN
        REPEAT
          AppliedAmount += BankAccReconLine."Statement Amount";//BankAccLedgEntry."Remaining Amount";
          BankAccLedgEntry."Remaining Amount" -= BankAccReconLine."Statement Amount";
          IF BankAccLedgEntry."Remaining Amount" =  0 THEN BEGIN
            BankAccLedgEntry.Open := FALSE;
            BankAccLedgEntry."Statement Status" := BankAccLedgEntry."Statement Status"::Closed;
          END;
          //BankAccLedgEntry."Statement No." := '';//Reverse//BRS1.1
          BankAccLedgEntry.MODIFY;

          CheckLedgEntry.RESET;
          CheckLedgEntry.SETCURRENTKEY("Bank Account Ledger Entry No.");
          CheckLedgEntry.SETRANGE(
            "Bank Account Ledger Entry No.",BankAccLedgEntry."Entry No.");
          CheckLedgEntry.SETRANGE(Open,TRUE);
          IF CheckLedgEntry.FIND('-') THEN
            REPEAT
              CheckLedgEntry.TESTFIELD(Open,TRUE);
              CheckLedgEntry.TESTFIELD(
                "Statement Status",
                CheckLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
              CheckLedgEntry.TESTFIELD("Statement No.",'');
              CheckLedgEntry.TESTFIELD("Statement Line No.",0);
              CheckLedgEntry.Open := FALSE;
              CheckLedgEntry."Statement Status" := CheckLedgEntry."Statement Status"::Closed;
              CheckLedgEntry.MODIFY;
            UNTIL CheckLedgEntry.NEXT = 0;
        UNTIL BankAccLedgEntry.NEXT = 0;
    END;

   
    //<<Codeunit370clos<<

    //<<Codeunit375opn>>
  

    PROCEDURE SetReconNoReverse(VAR BankAccLedgEntry : Record 271;VAR BankAccReconLine : Record 274);
    BEGIN
      BankAccLedgEntry.TESTFIELD(Open,TRUE);
      //BankAccLedgEntry.TESTFIELD("Statement Status",BankAccLedgEntry."Statement Status"::Open);
      //BankAccLedgEntry.TESTFIELD("Statement No.",'');
      //BankAccLedgEntry.TESTFIELD("Statement Line No.",0);
      BankAccLedgEntry.TESTFIELD("Bank Account No.",BankAccReconLine."Bank Account No.");
      BankAccLedgEntry."Statement Status" :=
        BankAccLedgEntry."Statement Status"::"Bank Acc. Entry Applied";
      BankAccLedgEntry."Statement No." := BankAccReconLine."Statement No.";
      //BankAccLedgEntry."Statement Line No." := BankAccReconLine."Statement Line No.";
      BankAccLedgEntry.MODIFY;

      CheckLedgEntry.RESET;
      CheckLedgEntry.SETCURRENTKEY("Bank Account Ledger Entry No.");
      CheckLedgEntry.SETRANGE("Bank Account Ledger Entry No.",BankAccLedgEntry."Entry No.");
      CheckLedgEntry.SETRANGE(Open,TRUE);
      IF CheckLedgEntry.FIND('-') THEN
        REPEAT
          CheckLedgEntry.TESTFIELD("Statement Status",CheckLedgEntry."Statement Status"::Open);
          CheckLedgEntry.TESTFIELD("Statement No.",'');
          CheckLedgEntry.TESTFIELD("Statement Line No.",0);
          CheckLedgEntry."Statement Status" :=
            CheckLedgEntry."Statement Status"::"Bank Acc. Entry Applied";
          CheckLedgEntry."Statement No." := '';
          CheckLedgEntry."Statement Line No." := 0;
          CheckLedgEntry.MODIFY;
        UNTIL CheckLedgEntry.NEXT = 0;
    END;

    PROCEDURE ApplyEntriesReverse(VAR BankAccReconLine : Record 274;VAR BankAccLedgEntry : Record 271;Relation : 'One-to-One,One-to-Many') : Boolean;
    VAR
      BankAccReconLine2 : Record 274;
      AmtExceedsErr : TextConst 'ENU=You cann''t apply more than %1, current value is %2.';
    BEGIN
      BankAccLedgEntry.LOCKTABLE;
      CheckLedgEntry.LOCKTABLE;
      BankAccReconLine.LOCKTABLE;
      BankAccReconLine.FIND;

     /* {
      IF BankAccLedgEntry.IsApplied THEN
        EXIT(FALSE);

      IF (Relation = Relation::"One-to-One") AND (BankAccReconLine."Applied Entries" > 0) THEN
        EXIT(FALSE);
      }*/
      BankAccReconLine.TESTFIELD(BankAccReconLine."Bank Acc LE",0);
      BankAccReconLine.TESTFIELD(Type,BankAccReconLine.Type::"Bank Account Ledger Entry");
      //>>B2BN1.0 11Jan2019
      BankAccReconLine2.RESET;
      BankAccReconLine2.SETCURRENTKEY("Bank Acc LE");
      BankAccReconLine2.SETRANGE("Bank Acc LE",BankAccLedgEntry."Entry No.");
      BankAccReconLine2.SETRANGE("Statement No.",BankAccReconLine."Statement No.");
      BankAccReconLine2.CALCSUMS("Applied Amount");
      IF ABS((BankAccReconLine2."Applied Amount" + BankAccReconLine."Statement Amount")) > ABS(BankAccLedgEntry."Remaining Amount") THEN
        ERROR(AmtExceedsErr,
          (ABS(BankAccLedgEntry."Remaining Amount") - ABS(BankAccReconLine2."Applied Amount")),
          (ABS(BankAccReconLine2."Applied Amount") + ABS(BankAccReconLine."Statement Amount")));
      //<<B2BN1.0 11Jan2019
      BankAccReconLine."Ready for Application" := TRUE;
      SetReconNoReverse(BankAccLedgEntry,BankAccReconLine);
      BankAccReconLine."Applied Amount" := BankAccReconLine."Statement Amount";
      //BankAccLedgEntry."Remaining Amount";
      BankAccReconLine."Applied Entries" := BankAccReconLine."Applied Entries" + 1;
      BankAccReconLine."Bank Acc LE" := BankAccLedgEntry."Entry No.";
      BankAccReconLine.VALIDATE("Statement Amount");
      BankAccReconLine.MODIFY;
      EXIT(TRUE);
    END;

    PROCEDURE RemoveApplicationReverse(VAR BankAccLedgEntry : Record 271);
    VAR
      BankAccReconLine : Record 274;
    BEGIN
      BankAccLedgEntry.LOCKTABLE;
      CheckLedgEntry.LOCKTABLE;
      BankAccReconLine.LOCKTABLE;
      /*{
      IF NOT BankAccReconLine.GET(
           BankAccReconLine."Statement Type"::"Bank Reconciliation",
           BankAccLedgEntry."Bank Account No.",
           BankAccLedgEntry."Statement No.",BankAccLedgEntry."Statement Line No.")
      THEN
        EXIT;
      }*/
      BankAccReconLine.RESET;
      BankAccReconLine.SETRANGE("Bank Acc LE",BankAccLedgEntry."Entry No.");
      BankAccReconLine.SETRANGE("Statement No.",BankAccLedgEntry."Statement No.");
      IF BankAccReconLine.FINDSET THEN BEGIN
        REPEAT
          BankAccReconLine."Applied Amount" -= BankAccReconLine."Statement Amount";//reverse
          BankAccReconLine."Applied Entries" := 0;//BankAccReconLine."Applied Entries" - 1;
          BankAccReconLine."Bank Acc LE" := 0;
          BankAccReconLine.VALIDATE("Statement Amount");
          BankAccReconLine.MODIFY;
        UNTIL BankAccReconLine.NEXT = 0;
        RemoveReconNoReverse(BankAccLedgEntry,BankAccReconLine,TRUE);
      END;
      //BankAccReconLine.TESTFIELD("Statement Type",BankAccReconLine."Statement Type"::"Bank Reconciliation");
      //BankAccReconLine.TESTFIELD(Type,BankAccReconLine.Type::"Bank Account Ledger Entry");
      //RemoveReconNoReverse(BankAccLedgEntry,BankAccReconLine,TRUE);
    END;
     

    PROCEDURE RemoveReconNoReverse(VAR BankAccLedgEntry : Record 271;VAR BankAccReconLine : Record 274;Test : Boolean);
    BEGIN
      BankAccLedgEntry.TESTFIELD(Open,TRUE);
      IF Test THEN BEGIN
        BankAccLedgEntry.TESTFIELD(
          "Statement Status",BankAccLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
        BankAccLedgEntry.TESTFIELD("Statement No.",BankAccReconLine."Statement No.");
        //BankAccLedgEntry.TESTFIELD("Statement Line No.",BankAccReconLine."Statement Line No.");
      END;
      BankAccLedgEntry.TESTFIELD("Bank Account No.",BankAccReconLine."Bank Account No.");
      BankAccLedgEntry."Statement Status" := BankAccLedgEntry."Statement Status"::Open;
      BankAccLedgEntry."Statement No." := '';
      BankAccLedgEntry."Statement Line No." := 0;
      BankAccLedgEntry.MODIFY;

      CheckLedgEntry.RESET;
      CheckLedgEntry.SETCURRENTKEY("Bank Account Ledger Entry No.");
      CheckLedgEntry.SETRANGE("Bank Account Ledger Entry No.",BankAccLedgEntry."Entry No.");
      CheckLedgEntry.SETRANGE(Open,TRUE);
      IF CheckLedgEntry.FIND('-') THEN
        REPEAT
          IF Test THEN BEGIN
            CheckLedgEntry.TESTFIELD(
              "Statement Status",CheckLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
            CheckLedgEntry.TESTFIELD("Statement No.",'');
            CheckLedgEntry.TESTFIELD("Statement Line No.",0);
          END;
          CheckLedgEntry."Statement Status" := CheckLedgEntry."Statement Status"::Open;
          CheckLedgEntry."Statement No." := '';
          CheckLedgEntry."Statement Line No." := 0;
          CheckLedgEntry.MODIFY;
        UNTIL CheckLedgEntry.NEXT = 0;
    END;

    PROCEDURE RemoveApplicationReverseSingle(VAR BankAccLedgEntry : Record 271;BankAccReconLine2 : Record 274);
    VAR
      BankAccReconLine3 : Record 274;
    BEGIN
      BankAccLedgEntry.LOCKTABLE;
      CheckLedgEntry.LOCKTABLE;


      BankAccReconLine2.TESTFIELD("Statement Type",BankAccReconLine2."Statement Type"::"Bank Reconciliation");
      BankAccReconLine2.TESTFIELD(Type,BankAccReconLine2.Type::"Bank Account Ledger Entry");

      // verify bank account Ledger entry applied more than one entry or not >>
      BankAccReconLine3.RESET;

      BankAccReconLine3.SETRANGE("Bank Account No.",BankAccReconLine2."Bank Account No.");
      BankAccReconLine3.SETRANGE("Statement No.",BankAccReconLine2."Statement No.");
      BankAccReconLine3.SETFILTER("Statement Line No.",'<>%1',BankAccReconLine2."Statement Line No.");
      BankAccReconLine3.SETRANGE("Bank Acc LE",BankAccLedgEntry."Entry No.");
      IF NOT BankAccReconLine3.FINDFIRST THEN
        RemoveReconNoReverseSingle(BankAccLedgEntry,BankAccReconLine2,TRUE);
      // verify bank account Ledger entry applied more than one entry or not <<

      BankAccReconLine2."Applied Amount" := 0 ;//BankAccLedgEntry."Remaining Amount";
      BankAccReconLine2."Applied Entries" := 0;//BankAccReconLine."Applied Entries" - 1;
      BankAccReconLine2."Bank Acc LE" := 0;
      BankAccReconLine2.VALIDATE("Statement Amount");
      BankAccReconLine2.MODIFY;
    END;

    PROCEDURE RemoveReconNoReverseSingle(VAR BankAccLedgEntry : Record 271;VAR BankAccReconLine : Record 274;Test : Boolean);
    BEGIN
      BankAccLedgEntry.TESTFIELD(Open,TRUE);
      IF Test THEN BEGIN
        BankAccLedgEntry.TESTFIELD(
          "Statement Status",BankAccLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
        BankAccLedgEntry.TESTFIELD("Statement No.",BankAccReconLine."Statement No.");
        //BankAccLedgEntry.TESTFIELD("Statement Line No.",BankAccReconLine."Statement Line No.");
      END;
      BankAccLedgEntry.TESTFIELD("Bank Account No.",BankAccReconLine."Bank Account No.");
      BankAccLedgEntry."Statement Status" := BankAccLedgEntry."Statement Status"::Open;
      BankAccLedgEntry."Statement No." := '';
      BankAccLedgEntry."Statement Line No." := 0;
      BankAccLedgEntry.MODIFY;

      CheckLedgEntry.RESET;
      CheckLedgEntry.SETCURRENTKEY("Bank Account Ledger Entry No.");
      CheckLedgEntry.SETRANGE("Bank Account Ledger Entry No.",BankAccLedgEntry."Entry No.");
      CheckLedgEntry.SETRANGE(Open,TRUE);
      IF CheckLedgEntry.FIND('-') THEN
        REPEAT
          IF Test THEN BEGIN
            CheckLedgEntry.TESTFIELD(
              "Statement Status",CheckLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
            CheckLedgEntry.TESTFIELD("Statement No.",'');
            CheckLedgEntry.TESTFIELD("Statement Line No.",0);
          END;
          CheckLedgEntry."Statement Status" := CheckLedgEntry."Statement Status"::Open;
          CheckLedgEntry."Statement No." := '';
          CheckLedgEntry."Statement Line No." := 0;
          CheckLedgEntry.MODIFY;
        UNTIL CheckLedgEntry.NEXT = 0;
    END;

       //<<Codeunit375clos<<



    //<<Codeunit375clos<<

    //<<Codeunit379opn>>

    //<<Codeunit379opn>>
   

    PROCEDURE TenderCheckIfAnyExtText(VAR TenderLine : Record 60063;Unconditionally : Boolean) : Boolean;
    VAR
      TenderHeader : Record 60062;
      ExtTextHeader : Record 279;
    BEGIN
      MakeUpdateRequired := FALSE;
      IF TenderLine."Line No." <> 0 THEN
        MakeUpdateRequired := DeleteTenderLines(TenderLine);

      AutoText := FALSE;

      IF Unconditionally THEN
        AutoText := TRUE
      ELSE
        CASE TenderLine.Type OF
          TenderLine.Type::" ":
            AutoText := TRUE;
          TenderLine.Type::"G/L Account":
            BEGIN
              IF GLAcc.GET(TenderLine."No.") THEN
                AutoText := GLAcc."Automatic Ext. Texts";
            END;
          TenderLine.Type::Item:
            BEGIN
              IF Item.GET(TenderLine."No.") THEN
                AutoText := Item."Automatic Ext. Texts";
            END;
          TenderLine.Type::Resource:
            BEGIN
              IF Res.GET(TenderLine."No.") THEN
                AutoText := Res."Automatic Ext. Texts";
            END;
        END;

      IF AutoText THEN BEGIN
        ExtTextHeader.RESET;
        TenderLine.TESTFIELD("Document No.");
        TenderHeader.GET(TenderLine."Document No.");
        //ExtTextHeader.SETRANGE("Table Name",27);
        ExtTextHeader.SETRANGE("No.",TenderLine."No.");
        ExtTextHeader.SETRANGE(Tender,TRUE);
        //EXIT(ReadLines(ExtTextHeader,TenderHeader."Deposit Payment Date",TenderHeader."Language Code"));
      
    END;
   
    PROCEDURE InsertTenderExtText(VAR TenderLine : Record 60063);
    VAR
      ToTenderLine : Record 60063;
    BEGIN
      ToTenderLine.RESET;
      ToTenderLine.SETRANGE("Document No.",TenderLine."Document No.");
      ToTenderLine := TenderLine;
      IF ToTenderLine.FIND('>') THEN BEGIN
        LineSpacing :=
          (ToTenderLine."Line No." - TenderLine."Line No.") DIV
          (1 + TmpExtTextLine.COUNT);
        IF LineSpacing = 0 THEN
          ERROR(Text000);
      END ELSE
        LineSpacing := 10000;

      NextLineNo := TenderLine."Line No." + LineSpacing;

      TmpExtTextLine.RESET;
      IF TmpExtTextLine.FINDSET THEN BEGIN
        REPEAT
          ToTenderLine.INIT;
          ToTenderLine."Document No." := TenderLine."Document No.";
          ToTenderLine."Line No." := NextLineNo;
          NextLineNo := NextLineNo + LineSpacing;
          ToTenderLine.Description := TmpExtTextLine.Text;
          //ToTenderLine."Attached to Line No." := TenderLine."Line No.";
          ToTenderLine.INSERT;
        UNTIL TmpExtTextLine.NEXT = 0;
        MakeUpdateRequired := TRUE;
      END;
      TmpExtTextLine.DELETEALL;
    END;

    PROCEDURE DeleteTenderLines(VAR TenderLine : Record 60063) : Boolean;
    VAR
      TenderLine2 : Record 60063;
    BEGIN
      TenderLine2.SETRANGE("Document No.",TenderLine."Document No.");
      //TenderLine2.SETRANGE("Attached to Line No.",TenderLine."Line No.");
      TenderLine2 := TenderLine;
      IF TenderLine2.FIND('>') THEN begin
        REPEAT
          TenderLine2.DELETE(TRUE);
        UNTIL TenderLine2.NEXT = 0;
        EXIT(TRUE);
      end;
      
    END;
     
    //<<Codeunit379clos<<
   

  

    //<<Codeunit408opn>>
     LOCAL PROCEDURE GetFilterFromDimValuesTable(VAR TempDimensionValue : TEMPORARY Record 349;VAR DimValueFilter : Text);
    VAR
      DimensionValue : Record 349;
      RangeStartCode : Code[20];
      PreviousCode : Code[20];
      RangeStarted : Boolean;
      Finished : Boolean;
    BEGIN
      WITH TempDimensionValue DO BEGIN
        IF NOT ISTEMPORARY THEN
          EXIT;
        SETFILTER("Dimension Value Type",'%1|%2',"Dimension Value Type"::Standard,"Dimension Value Type"::Heading);
        IF FINDSET THEN BEGIN
          Finished := FALSE;
          DimensionValue.SETRANGE("Dimension Code","Dimension Code");
          DimensionValue.FINDSET;
          DimValueFilter := '';
          REPEAT
            IF Code = DimensionValue.Code THEN BEGIN
              IF NOT RangeStarted THEN BEGIN
                RangeStarted := TRUE;
                RangeStartCode := Code;
              END;
              PreviousCode := Code;
              DimensionValue.NEXT;
              IF NEXT = 0 THEN
                Finished := TRUE;
            END ELSE BEGIN
              IF RangeStarted THEN BEGIN
                AddRangeToFilter(DimValueFilter,RangeStartCode,PreviousCode);
                RangeStarted := FALSE;
              END;
              REPEAT
                DimensionValue.NEXT;
              UNTIL DimensionValue.Code = Code;
            END;
          UNTIL Finished;
          IF RangeStarted THEN
            AddRangeToFilter(DimValueFilter,RangeStartCode,PreviousCode);
        END
      END
    END;

    LOCAL PROCEDURE AddRangeToFilter(VAR DimValueFilter : Text;RangeStartCode : Code[20];RangeEndCode : Code[20]);
    BEGIN
      IF DimValueFilter <> '' THEN BEGIN
        IF STRLEN(DimValueFilter) + 1 > MAXSTRLEN(DimValueFilter) THEN
          ERROR(OverflowDimFilterErr);
        DimValueFilter := DimValueFilter + '|';
      END;
      IF RangeStartCode = RangeEndCode THEN BEGIN
        IF STRLEN(DimValueFilter) + STRLEN(RangeStartCode) > MAXSTRLEN(DimValueFilter) THEN
          ERROR(OverflowDimFilterErr);
        DimValueFilter := DimValueFilter + RangeStartCode;
      END ELSE BEGIN
        IF STRLEN(DimValueFilter) + STRLEN(RangeStartCode) + 2 + STRLEN(RangeEndCode) > MAXSTRLEN(DimValueFilter) THEN
          ERROR(OverflowDimFilterErr);
        DimValueFilter := DimValueFilter + RangeStartCode + '..' + RangeEndCode;
      END;
    END;
    //<<Codeunit408clos<<

      

    //<<Codeunit414opn>>
  
    //<<Codeunit87clos<<

    //<<Codeunit 12<<
    LOCAL PROCEDURE GetDescriptionFieldNo(RecRef: RecordRef): Integer;
    VAR
        GLEntry: Record 17;
        CustLedgerEntry: Record 21;
        VendorLedgerEntry: Record 25;
        BankAccountLedgerEntry: Record 271;
    BEGIN
        CASE RecRef.NUMBER OF
            DATABASE::"G/L Entry":
                EXIT(GLEntry.FIELDNO(Description));
            DATABASE::"Cust. Ledger Entry":
                EXIT(CustLedgerEntry.FIELDNO(Description));
            DATABASE::"Vendor Ledger Entry":
                EXIT(VendorLedgerEntry.FIELDNO(Description));
            DATABASE::"Bank Account Ledger Entry":
                EXIT(BankAccountLedgerEntry.FIELDNO(Description));
        END;

        EXIT(0);
    END;





    PROCEDURE "--B2B--"();
    BEGIN
    END;
    //Codeunit12
    PROCEDURE CheckCashAccBalance(GenJnlLine2: Record 81);
    VAR
        GLAcc: Record 15;
        Text000: Label 'ENU=Cash Account %1 balance should not be negative. Do you want to post the transactions?';
        GenJnlLine3: Record 81;
        Balance1: Decimal;
        Text001: Label 'ENU=Entry Posting Stopped';
        Text002: Label 'ENU=Balancing Account %1 balance should not be negative. Do you want to post the transactions?';
    BEGIN
        WITH GenJnlLine2 DO BEGIN
            IF "Journal Batch Name" = '' THEN
                EXIT;
            IF "Account Type" = "Account Type"::"G/L Account" THEN
                IF GLAcc.GET("Account No.") AND (GLAcc."Cash Account") THEN BEGIN
                    GenJnlLine3.RESET;
                    GenJnlLine3.SETRANGE("Journal Template Name", "Journal Template Name");
                    GenJnlLine3.SETRANGE("Journal Batch Name", "Journal Batch Name");
                    GenJnlLine3.SETRANGE("Account Type", "Account Type"::"G/L Account");
                    GenJnlLine3.SETRANGE("Account No.", "Account No.");
                    IF GenJnlLine3.FINDSET THEN BEGIN
                        REPEAT
                            Balance1 := Balance1 + GenJnlLine3."Amount (LCY)";
                            GLAcc.CALCFIELDS(Balance);
                            IF (GLAcc.Balance + Balance1 < 0) AND (Balance1 < 0) THEN
                                IF NOT CONFIRM(Text000, FALSE, "Account No.") THEN
                                    ERROR(Text001, "Account No.");
                        UNTIL GenJnlLine3.NEXT = 0;
                    end;
                    //COMMENTED TO CHECK LINE BY LINE
                    GLAcc.CALCFIELDS(Balance);
                    IF (GLAcc.Balance + Balance1 < 0) AND (Balance1 < 0) THEN
                        IF NOT CONFIRM(Text000, FALSE, "Account No.") THEN
                            ERROR(Text001, "Account No.");
                END;

            IF "Bal. Account Type" = "Bal. Account Type"::"G/L Account" THEN
                IF GLAcc.GET("Bal. Account No.") AND (GLAcc."Cash Account") THEN BEGIN
                    GenJnlLine3.SETRANGE("Journal Template Name", "Journal Template Name");
                    GenJnlLine3.SETRANGE("Journal Batch Name", "Journal Batch Name");
                    GenJnlLine3.SETRANGE("Bal. Account Type", "Bal. Account Type"::"G/L Account");
                    GenJnlLine3.SETRANGE("Bal. Account No.", "Bal. Account No.");
                    IF GenJnlLine3.FINDSET THEN
                        REPEAT
                            Balance1 := Balance1 - GenJnlLine3."Amount (LCY)";
                            GLAcc.CALCFIELDS(Balance);
                            IF (GLAcc.Balance + Balance1 < 0) AND (Balance1 < 0) THEN
                                IF NOT CONFIRM(Text002, FALSE, "Bal. Account No.") THEN
                                    ERROR(Text001, "Account No.");
                        UNTIL GenJnlLine3.NEXT = 0;
                    //COMMENTED TO CHECK LINE BY LINE
                    GLAcc.CALCFIELDS(Balance);
                    IF (GLAcc.Balance + Balance1 < 0) AND (Balance1 < 0) THEN
                        IF NOT CONFIRM(Text002, FALSE, "Bal. Account No.") THEN
                            ERROR(Text001, "Account No.");

                END;
        END;
    END;
    //END;


    var
        //codeunit12
        /* "--B2B----"@1102154001 : Integer;
             CustAccNo : Code[20];
             SIH@: Record 112;
             */
        BG: Record 60061;
        SQLInt: Codeunit 60021;
        //>>Codeunit 13>>
        textcnt: Decimal;
        Genjournal: Record 81;
        VendrCount: Decimal;
        GenJournl: Record 81;
        //<<Codeunit12<<

        QualityItemLedgEntry1: Record 33000262;
        PurchLine: Record 121;
        //  Text33000251: Label 'ENU=Outbound quantity is more than accepted quantity for Item %1';
        Text33000251: Label 'ENU="Negative inventory is not allowed for  item %1  is QC Enabled "';
        Text014: label 'ENU=Serial No. %1 is already on inventory.;ENN=Serial No. %1 is already on inventory.';
        Itm: Record 27;
        PostItemJnlLine: Boolean;
        QualityItemLedgEntry: Record 33000262;
        ItemTrackingMgt: Codeunit 6500;

        //codeunit 81
        Text000: label 'ENU=&Ship,&Invoice,Ship &and Invoice;ENN=&Ship,&Invoice,Ship &and Invoice';
        ArchiveManagement: Codeunit 5063;
        "g/l setup": Record 98;
        Attachment: Text[1000];
        SH: Record 36;
        SalesLines: Record 37;
        //SQLConnection@1102152011 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000514-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Connection";
        //RecordSet@1102152010 : Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000535-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Recordset";
        SQLQuery: Text;
        RowCount: Integer;
        ConnectionOpen: Integer;
        AMCOrderID: Integer;
        SalesLines1: Record 37;

        //codeunit83
        SRSetup0: Record 311;
        //ArchiveManagement : Codeunit 5063;
        "Mail-Id": Record 2000000120;
        "from Mail": Text[100];
        "to mail": Text[1000];
        Mail_Subject: Text[1000];
        Mail_Body: Text[1000];
        mail: Codeunit 397;
        charline: Char;
        // "g/l setup" : Record 98;
        Attachment1: Text[1000];
        //SH : Record 36;
        QV: Decimal;
        //codeunit 86
        Schedule: Record 60095;
        Schedule2: Record 60095;
        Attach: Record 60098;
        PostAttach: Record 60098;

        //codeunit90
        "--QC--": Integer;
        QualitySetup: Record 33000257;
        InspectDataSheets: Codeunit 33000251;
        Text33000250: label 'ENU=You cannot receive more than quality accepted quantity in Purchase Order %1 and Line No. %2.';
        "---B2B---": Integer;
        VI: Boolean;
        "--MSPT--": Integer;
        MSPTOrderDetails: Record 60083;
        PostedMSPTOrderDetails: Record 60086;
        GenJnlLineVendInvDate: Date;
        Structure_Amount: Decimal;
        user: Record 2000000120;
        body: Text[1000];
        mail_from: Text[250];
        mail_to: Text[500];
        mail: Codeunit 397;
        subject: Text[250];
        new_line: Char;
        "indent header": Record 60024;
        "indent line": Record 60025;
        SQLSelectQry: Text[1000];
        SQLQuery: Text[1000];
        LRecordSet: Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000535-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Recordset";
        LineSQLQuery: Text[250];
        HeadID: Text[30];
        UpdateWebHead: Text[250];
        WebRecStatus: Text[30];
        OldWebStatus: Text[30];
        Purchase_Line: Record 39;
        "G|l": Record 98;
        "--- SQL END----": Integer;
        Order_No: Code[30];
        Packing_Value: Decimal;
        Frieght_Value: Decimal;
        Insurance_Value: Decimal;
        Additional_Duty: Decimal;
        Service_Amount: Decimal;
        OrderLineNo: Integer;
        Quotes: label 'ENU=''';
        Text50001: label 'ENU=NEW';
        Text50002: label 'ENU=OLD';
        VAT_AMOUNT: Decimal;
        CST_AMOUNT: Decimal;
        Dept: Code[10];
        FIN_YEAR: Integer;
        "--Rev01": Integer;
        salesheader: Record 36;
        itemgroup: Record 27;
        SMTP_mail: Codeunit 400;
        PurchRcptLine: Record 121;
        Vend: Record 23;
        GST_Amount: Decimal;
        ItemNo: Text[50];
        OtherDeductions: Decimal;
        RCMDeductions: Decimal;
        Rej_amt: Text;
        rej_qty: Text;
        rej_amt_int: Decimal;
        rej_qty_int: Decimal;
        SQLConnection: Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000514-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Connection";
        RecordSet: Automation "{2A75196C-D9EB-4129-B803-931327F72D5C} 2.8:{00000535-0000-0010-8000-00AA006D2EA4}:'Microsoft ActiveX Data Objects 2.8 Library'.Recordset";
        TCS_Amount: Decimal;
        Posted_Structure_details: Record 13794;
        Structure_Lines: Record 13793;
        RDSO_Value: Decimal;
        StrOrderLineDetails: Record 13795;
        Applied: Boolean;
           OverflowDimFilterErr : label 'ENU=Conversion of dimension filter results in a filter that becomes too long.;ENN=Conversion of dimension filter results in a filter that becomes too long.';


        

}
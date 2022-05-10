table 16511 "Jnl. Bank Charges"
{
    // version NAVIN9.00.00.51333,TFS223871

    CaptionML = ENU='Jnl. Bank Charges',
                ENN='Jnl. Bank Charges';

    fields
    {
        field(1;"Journal Template Name";Code[10])
        {
            CaptionML = ENU='Journal Template Name',
                        ENN='Journal Template Name';
            Editable = false;
            TableRelation = "Gen. Journal Template";
        }
        field(2;"Journal Batch Name";Code[10])
        {
            CaptionML = ENU='Journal Batch Name',
                        ENN='Journal Batch Name';
            Editable = false;
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name"=FIELD("Journal Template Name"));
        }
        field(3;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
            Editable = false;
        }
        field(4;"Bank Charge";Code[10])
        {
            CaptionML = ENU='Bank Charge',
                        ENN='Bank Charge';
            TableRelation = "Bank Charge";

            trigger OnValidate();
            begin
                /*Clearfields;
                GetGenJnlLine;
                IF GenJnlLine."Bal. Account No." <> '' THEN
                  GenJnlLine.TESTFIELD("Bal. Account Type",GenJnlLine."Bal. Account Type"::"Bank Account");
                IF GenJnlLine."Bal. Account No." = '' THEN
                  GenJnlLine.TESTFIELD("Account Type",GenJnlLine."Account Type"::"Bank Account");
                BankCharge.GET("Bank Charge");
                IF BankCharge."Foreign Exchange" THEN
                  GenJnlLine.TESTFIELD("Bank Charge",FALSE);
                VALIDATE("GST Group Code",BankCharge."GST Group Code");
                VALIDATE("GST Credit",BankCharge."GST Credit");
                PopulateGSTInformation(FALSE);
                */

            end;
        }
        field(5;Amount;Decimal)
        {
            CaptionML = ENU='Amount',
                        ENN='Amount';
            DecimalPlaces = 0:2;

            trigger OnValidate();
            begin
                /*TESTFIELD("Foreign Exchange",FALSE);
                GetGenJnlLine;
                CheckBankChargeAmountSign(GenJnlLine,Rec);
                GenJnlLine.TESTFIELD("Bank Charge",FALSE);
                IF (GenJnlLine."Currency Code" <> '') AND NOT LCY THEN
                  "Amount (LCY)" := ROUND(CurrExchRate.ExchangeAmtFCYToLCY(GenJnlLine."Posting Date",
                        GenJnlLine."Currency Code",Amount,GenJnlLine."Currency Factor"))
                ELSE
                  "Amount (LCY)" := Amount;
                IF "GST Document Type" <> "GST Document Type"::" " THEN
                  IF Amount > 0 THEN
                    TESTFIELD("GST Document Type","GST Document Type"::Invoice)
                  ELSE
                    IF Amount < 0 THEN
                      TESTFIELD("GST Document Type","GST Document Type"::"Credit Memo");
                
                IF "GST Group Code" <> '' THEN
                  TESTFIELD("GST Document Type");
                  */

            end;
        }
        field(6;"Amount (LCY)";Decimal)
        {
            CaptionML = ENU='Amount (LCY)',
                        ENN='Amount (LCY)';
            DecimalPlaces = 0:2;
            Editable = false;
        }
        field(7;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            TableRelation = "GST Group" WHERE ("GST Group Type"=FILTER(Service),
                                               "Reverse Charge"=FILTER(false));

            trigger OnValidate();
            var
                GSTGroup : Record "GST Group";
                GeneralLedgerSetup : Record "General Ledger Setup";
            begin
                /*IF "GST Group Code" <> '' THEN BEGIN
                  PopulateGSTInformation(TRUE);
                  GSTGroup.GET("GST Group Code");
                  "GST Group Type" := GSTGroup."GST Group Type";
                  GetGenJnlLine;
                  BankCharge.GET("Bank Charge");
                  IF GenJnlLine."Bank Charge" THEN
                    BankCharge.TESTFIELD(Account,GenJnlLine."Account No.")
                  ELSE
                    BankCharge.TESTFIELD(Account);
                  GeneralLedgerSetup.GET;
                  "GST Inv. Rounding Precision" := GeneralLedgerSetup."GST Inv. Rounding Precision";
                  "GST Inv. Rounding Type" := GeneralLedgerSetup."GST Inv. Rounding Type";
                END ELSE BEGIN
                  "GST Inv. Rounding Precision" := 0;
                  "GST Inv. Rounding Type" := GeneralLedgerSetup."GST Inv. Rounding Type"::Nearest;
                  TESTFIELD("GST Document Type","GST Document Type"::" ");
                END;
                "GST Base Amount" := 0;
                "GST %" := 0;
                "Total GST Amount" := 0;
                "HSN/SAC Code" := '';
                IF "GST Group Code" = '' THEN
                  GSTManagement.DeleteDetailedGSTBufferBankCharges(Rec);
                  */

            end;
        }
        field(8;"GST Group Type";Option)
        {
            CaptionML = ENU='GST Group Type',
                        ENN='GST Group Type';
            Editable = false;
            OptionCaptionML = ENU='Goods,Service',
                              ENN='Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(9;"Foreign Exchange";Boolean)
        {
            CaptionML = ENU='Foreign Exchange',
                        ENN='Foreign Exchange';
            Editable = false;
        }
        field(10;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
            Editable = false;
        }
        field(11;"GST %";Decimal)
        {
            CaptionML = ENU='GST %',
                        ENN='GST %';
            Editable = false;
        }
        field(12;"Total GST Amount";Decimal)
        {
            CaptionML = ENU='Total GST Amount',
                        ENN='Total GST Amount';
            Editable = false;
        }
        field(13;"HSN/SAC Code";Code[8])
        {
            CaptionML = ENU='HSN/SAC Code',
                        ENN='HSN/SAC Code';
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(14;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';
        }
        field(15;"GST Credit";Option)
        {
            CaptionML = ENU='GST Credit',
                        ENN='GST Credit';
            OptionCaptionML = ENU='Availment,Non-Availment',
                              ENN='Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16;"GST Jurisdiction Type";Option)
        {
            CaptionML = ENU='GST Jurisdiction Type',
                        ENN='GST Jurisdiction Type';
            OptionCaptionML = ENU='Intrastate,Interstate',
                              ENN='Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(17;"GST Bill to/Buy From State";Code[10])
        {
            CaptionML = ENU='GST Bill to/Buy From State',
                        ENN='GST Bill to/Buy From State';
            Editable = false;
            TableRelation = State;
        }
        field(18;"Location State Code";Code[10])
        {
            CaptionML = ENU='Location State Code',
                        ENN='Location State Code';
            Editable = false;
            TableRelation = State;
        }
        field(19;"Location  Reg. No.";Code[15])
        {
            CaptionML = ENU='Location  Reg. No.',
                        ENN='Location  Reg. No.';
            Editable = false;
        }
        field(20;"GST Registration Status";Option)
        {
            CaptionML = ENU='GST Registration Status',
                        ENN='GST Registration Status';
            Editable = false;
            OptionCaptionML = ENU=' ,Registered',
                              ENN=' ,Registered';
            OptionMembers = " ",Registered;
        }
        field(21;"GST Inv. Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Inv. Rounding Precision',
                        ENN='GST Inv. Rounding Precision';
            MinValue = 0;
        }
        field(22;"GST Inv. Rounding Type";Option)
        {
            CaptionML = ENU='GST Inv. Rounding Type',
                        ENN='GST Inv. Rounding Type';
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(23;"Nature of Supply";Option)
        {
            CaptionML = ENU='Nature of Supply',
                        ENN='Nature of Supply';
            Editable = false;
            OptionCaptionML = ENU='B2B,B2C',
                              ENN='B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(24;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
        }
        field(25;LCY;Boolean)
        {
            CaptionML = ENU='LCY',
                        ENN='LCY';

            trigger OnValidate();
            begin
                Validate(Amount,Amount);
            end;
        }
        field(28;"GST Document Type";Option)
        {
            CaptionML = ENU='GST Document Type',
                        ENN='GST Document Type';
            OptionCaptionML = ENU=' ,Invoice,Credit Memo',
                              ENN=' ,Invoice,Credit Memo';
            OptionMembers = " ",Invoice,"Credit Memo";

            trigger OnValidate();
            begin
                /*GetGenJnlLine;
                GenJnlLine.TESTFIELD("Bank Charge",FALSE);
                CheckBankChargeAmountSign(GenJnlLine,Rec);
                IF "GST Document Type" <> "GST Document Type"::" " THEN
                  IF Amount > 0 THEN
                    TESTFIELD("GST Document Type","GST Document Type"::Invoice)
                  ELSE
                    IF Amount < 0 THEN
                      TESTFIELD("GST Document Type","GST Document Type"::"Credit Memo");
                IF "GST Document Type" IN ["GST Document Type"::Invoice,"GST Document Type"::"Credit Memo"] THEN
                  TESTFIELD("GST Group Code");
                  */

            end;
        }
    }

    keys
    {
        key(Key1;"Journal Template Name","Journal Batch Name","Line No.","Bank Charge")
        {
            SumIndexFields = Amount,"Amount (LCY)";
        }
    }

    fieldgroups
    {
    }

    var
        CurrExchRate : Record "Currency Exchange Rate";
        GenJnlLine : Record "Gen. Journal Line";
        BankCharge : Record "Bank Charge";
        BankAccount : Record "Bank Account";
        GSTBankChargeBoolErr : Label 'You Can not have multiple Bank Charges , when Bank Charge Boolean in General Journal Line is True.';
        SameReturnReasonCode : Label 'GST Reporting Reason Code must be same for all Return Reason code in the Bank Jourline Line';
        GSTBankChargeFxBoolErr : Label 'You Can not have multiple Bank Charges with Foreign Exchange True.';

    [LineStart(63985)]
    procedure GetGenJnlLine();
    begin
        if ("Journal Template Name" = '') or ("Journal Batch Name" = '') then
          exit;
        GenJnlLine.Get("Journal Template Name","Journal Batch Name","Line No.");
    end;

    [LineStart(63990)]
    local procedure PopulateGSTInformation(Calculation : Boolean);
    var
        Location : Record Location;
        GSTGroup : Record "GST Group";
        GeneralLedgerSetup : Record "General Ledger Setup";
    begin
        /*GenJnlLine.GET("Journal Template Name","Journal Batch Name","Line No.");
        IF GenJnlLine."Bal. Account No." <> '' THEN
          BankAccount.GET(GenJnlLine."Bal. Account No.")
        ELSE
          BankAccount.GET(GenJnlLine."Account No.");
        BankAccount.TESTFIELD("GST Registration No.");
        BankAccount.TESTFIELD("State Code");
        GenJnlLine.TESTFIELD("Location Code");
        GenJnlLine.TESTFIELD("Location State Code");
        IF GSTGroup.GET("GST Group Code") THEN;
        "GST Group Type" := GSTGroup."GST Group Type";
        IF NOT Calculation THEN BEGIN
          "Foreign Exchange" := BankCharge."Foreign Exchange";
          "HSN/SAC Code" := BankCharge."HSN/SAC Code";
          Exempted := BankCharge.Exempted;
        END;
        "GST Bill to/Buy From State" := BankAccount."State Code";
        "GST Registration Status" := BankAccount."GST Registration Status";
        GeneralLedgerSetup.GET;
        "GST Inv. Rounding Precision" := GeneralLedgerSetup."GST Rounding Precision";
        "GST Inv. Rounding Type" := GeneralLedgerSetup."GST Rounding Type";
        */

    end;

    [LineStart(64014)]
    procedure CalculateGSTAmounts(JnlBankCharges : Record "Jnl. Bank Charges");
    var
        GSTSetup : Record "GST Setup";
        Customer : Record Customer;
        Location : Record Location;
        Vendor : Record Vendor;
        GSTPlaceOfSupplyState : Code[10];
        GSTPerStateCode : Code[10];
        GSTJurisdiction : Option Intrastate,Interstate;
        Type : Option Vendor,Customer;
        TotalGST : Decimal;
        TotalBaseAmount : Decimal;
        TransactionType : Option Purchase,Sale;
        Sign : Integer;
    begin
        /*WITH JnlBankCharges DO BEGIN
          //SalesReceivablesSetup.GET;
          "GST Base Amount" := 0;
          "GST %" := 0;
          "Total GST Amount" := 0;
          IF ("Journal Template Name" = '') OR ("Journal Batch Name" = '') THEN
            EXIT;
          GSTManagement.DeleteDetailedGSTBufferBankCharges(JnlBankCharges);
          GenJnlLine.GET("Journal Template Name","Journal Batch Name","Line No.");
          //MESSAGE(FORMAT(GenJnlLine."Posting Date"));
          IF NOT (GenJnlLine."Document Type" IN [GenJnlLine."Document Type"::Payment,
            GenJnlLine."Document Type"::Refund]) THEN
              EXIT;
          GSTManagement.CheckGSTAccountingPeriod(GenJnlLine."Posting Date");
          IF "GST Group Code" <> '' THEN BEGIN
            TESTFIELD("GST Group Type");
            TESTFIELD("HSN/SAC Code");
            PopulateGSTInformation(TRUE);;
            Location.GET(GenJnlLine."Location Code");
            Location.TESTFIELD("State Code");
            Location.TESTFIELD("GST Registration No.");
            "Location State Code" := Location."State Code";
            "Location  Reg. No." := Location."GST Registration No.";
            TESTFIELD("Location  Reg. No.");
            TESTFIELD("Location State Code");
            TESTFIELD("GST Bill to/Buy From State");
            TESTFIELD("GST Inv. Rounding Precision");
            //TESTFIELD("GST Rounding Type");
            TESTFIELD("External Document No.");
            Sign := CheckBankChargeAmountSign(GenJnlLine,JnlBankCharges);
            "Nature of Supply" := "Nature of Supply"::B2B;
            GSTPerStateCode :=
              GSTManagement.GetGSTConfiguration(Type::Vendor,"Location State Code","GST Bill to/Buy From State",GSTJurisdiction);
            IF GSTPerStateCode = '' THEN EXIT;
            "GST Jurisdiction Type" := GSTJurisdiction;
            IF GenJnlLine."Bank Charge" THEN BEGIN
              "GST Base Amount" := GenJnlLine."Amount (LCY)";
              TESTFIELD(Amount,0);
              TESTFIELD("Amount (LCY)",0);
            END ELSE IF "Foreign Exchange"  THEN BEGIN
              GenJnlLine.TESTFIELD("Bank Charge",FALSE);
              GenJnlLine.TESTFIELD("Currency Code");
              "GST Base Amount" := ABS(GSTManagement.CalculateDeemedValue("Bank Charge",GenJnlLine."Amount (LCY)")) * Sign;
            END ELSE
              "GST Base Amount" := ABS("Amount (LCY)") * Sign;
            TotalGST :=
              GSTManagement.CalculateGSTAmountsBankCharge(JnlBankCharges,GenJnlLine,
                GSTJurisdiction,GSTPerStateCode,"GST Group Code",GenJnlLine."Posting Date","GST Base Amount");
            "GST Base Amount" := ABS(GSTManagement.RoundGSTPrecision("GST Base Amount")) * Sign;
            "Total GST Amount" := ABS(GSTManagement.RoundGSTPrecision(TotalGST)) * Sign;
            IF "GST Base Amount" <> 0 THEN
              "GST %" := "Total GST Amount"  * 100 / "GST Base Amount";
          END;
          MODIFY;
        END;
        GSTManagement.DeleteBankChargeGSTCalculationBuffer(JnlBankCharges);
        */

    end;

    [LineStart(64073)]
    procedure CalculateGST(JnlBankCharges : Record "Jnl. Bank Charges");
    var
        JnlBankChargesDummy : Record "Jnl. Bank Charges";
        GenJournalLine : Record "Gen. Journal Line";
    begin
        /*JnlBankChargesDummy.SETRANGE("Journal Template Name",JnlBankCharges."Journal Template Name");
        JnlBankChargesDummy.SETRANGE("Journal Batch Name",JnlBankCharges."Journal Batch Name");
        JnlBankChargesDummy.SETRANGE("Line No.",JnlBankCharges."Line No.");
        JnlBankChargesDummy.SETRANGE("Foreign Exchange",TRUE);
        IF JnlBankChargesDummy.COUNT > 1 THEN
          ERROR(GSTBankChargeFxBoolErr);
        JnlBankChargesDummy.SETRANGE("Foreign Exchange");
        GenJnlLine.GET("Journal Template Name","Journal Batch Name","Line No.");
        IF GenJnlLine."Bank Charge" AND (JnlBankChargesDummy.COUNT > 1)  THEN
          ERROR(GSTBankChargeBoolErr);
        IF JnlBankChargesDummy.FINDSET THEN REPEAT
          CheckBankChargeAmountSign(GenJnlLine,JnlBankChargesDummy);
          CalculateGSTAmounts(JnlBankChargesDummy);
        UNTIL JnlBankChargesDummy.NEXT = 0;
        */

    end;

    [LineStart(64090)]
    procedure CheckBankChargeAmountSign(GenJournalLine : Record "Gen. Journal Line";JnlBankCharges : Record "Jnl. Bank Charges") : Integer;
    var
        Sign : Integer;
    begin
        Sign := 1;
        with GenJournalLine do begin
          if (("Bal. Account Type" = "Bal. Account Type"::"Bank Account") and
            (Amount > 0)) or (("Account Type" = "Account Type"::"Bank Account") and
            (Amount < 0)) then
              Sign := 1
          else if (("Bal. Account Type" = "Bal. Account Type"::"Bank Account") and
            (Amount < 0)) or (("Account Type" = "Account Type"::"Bank Account") and
            (Amount > 0)) then
              Sign := -1;
        end;
        if JnlBankCharges.Amount <> 0 then
          JnlBankCharges.TestField(Amount,Abs(JnlBankCharges.Amount) * Sign);
        exit(Sign);
    end;

    [LineStart(64106)]
    local procedure Clearfields();
    begin
        Clear(Amount);
        Clear("Amount (LCY)");
        Clear("GST Group Code");
        Clear("GST Group Type");
        Clear("Foreign Exchange");
        Clear("GST Base Amount");
        Clear("GST %");
        Clear("Total GST Amount");
        Clear("HSN/SAC Code");
        Clear(Exempted);
        Clear("GST Credit");
        Clear("GST Jurisdiction Type");
        Clear("GST Bill to/Buy From State");
        Clear("Location State Code");
        Clear("Location  Reg. No.");
        Clear("GST Registration Status");
        Clear("GST Inv. Rounding Precision");
        Clear("GST Inv. Rounding Type");
        Clear("Nature of Supply");
        Clear("External Document No.");
        Clear(LCY);
    end;

    [LineStart(64129)]
    procedure GSTInvoiceRoundingDirection() : Text[1];
    begin
        case "GST Inv. Rounding Type" of
          "GST Inv. Rounding Type"::Nearest:
            exit('=');
          "GST Inv. Rounding Type"::Up:
            exit('>');
          "GST Inv. Rounding Type"::Down:
            exit('<');
        end;
    end;
}


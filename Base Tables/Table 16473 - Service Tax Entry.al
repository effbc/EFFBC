table 16473 "Service Tax Entry"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='Service Tax Entry',
                ENN='Service Tax Entry';
    DrillDownPageID = 16473;
    LookupPageID = 16473;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            AutoIncrement = true;
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            Editable = false;
        }
        field(2;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = false;
            OptionCaptionML = ENU='Sale,Purchase,Charge',
                              ENN='Sale,Purchase,Charge';
            OptionMembers = Sale,Purchase,Charge;
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = true;
        }
        field(4;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
            Editable = true;
        }
        field(5;"Service Tax Group Code";Code[20])
        {
            CaptionML = ENU='Service Tax Group Code',
                        ENN='Service Tax Group Code';
            Editable = true;
            TableRelation = "Service Tax Groups";
        }
        field(6;"Service Tax Registration No.";Code[20])
        {
            CaptionML = ENU='Service Tax Registration No.',
                        ENN='Service Tax Registration No.';
            Editable = true;
            TableRelation = "Service Tax Registration Nos.";
        }
        field(10;"Party Code";Code[20])
        {
            CaptionML = ENU='Party Code',
                        ENN='Party Code';
            Editable = true;
        }
        field(15;"Service Tax Base Amount";Decimal)
        {
            CaptionML = ENU='Service Tax Base Amount',
                        ENN='Service Tax Base Amount';
            Editable = true;
        }
        field(16;"Service Tax Amount";Decimal)
        {
            CaptionML = ENU='Service Tax Amount',
                        ENN='Service Tax Amount';
            Editable = false;
        }
        field(17;"Amount Including Service Tax";Decimal)
        {
            CaptionML = ENU='Amount Including Service Tax',
                        ENN='Amount Including Service Tax';
            Editable = true;
        }
        field(18;"Service Tax %";Decimal)
        {
            CaptionML = ENU='Service Tax %',
                        ENN='Service Tax %';
            Editable = true;
        }
        field(19;"Service Tax Abatement";Decimal)
        {
            CaptionML = ENU='Service Tax Abatement',
                        ENN='Service Tax Abatement';
            Editable = false;
        }
        field(20;"G/L Account No.";Code[20])
        {
            CaptionML = ENU='G/L Account No.',
                        ENN='G/L Account No.';
            Editable = true;
            TableRelation = "G/L Account";
        }
        field(25;"Date Filter";Date)
        {
            CaptionML = ENU='Date Filter',
                        ENN='Date Filter';
            FieldClass = FlowFilter;
        }
        field(26;"Amount Received/Paid";Decimal)
        {
            CalcFormula = Sum("Service Tax Entry Details".Amount WHERE ("Service Tax Entry No."=FIELD("Entry No."),
                                                                        "Posting Date"=FIELD("Date Filter")));
            CaptionML = ENU='Amount Received/Paid',
                        ENN='Amount Received/Paid';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
            Editable = true;
        }
        field(40;"Goes to Excise Entry";Boolean)
        {
            CaptionML = ENU='Goes to Excise Entry',
                        ENN='Goes to Excise Entry';
            Editable = true;
        }
        field(41;"From Excise";Boolean)
        {
            CaptionML = ENU='From Excise',
                        ENN='From Excise';
            Editable = true;
        }
        field(45;"Service Tax eCess %";Decimal)
        {
            CaptionML = ENU='Service Tax eCess %',
                        ENN='Service Tax eCess %';
            Editable = true;
        }
        field(46;"eCess Amount";Decimal)
        {
            CaptionML = ENU='eCess Amount',
                        ENN='eCess Amount';
            Editable = true;
        }
        field(50;"Location E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Location E.C.C. No.',
                        ENN='Location E.C.C. No.';
            Editable = true;
            TableRelation = "E.C.C. Nos.";
        }
        field(51;"RG Record Type";Option)
        {
            CaptionML = ENU='RG Record Type',
                        ENN='RG Record Type';
            Editable = false;
            OptionCaptionML = ENU=' ,RG23A,RG23C',
                              ENN=' ,RG23A,RG23C';
            OptionMembers = " ",RG23A,RG23C;
        }
        field(55;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
            Editable = false;
        }
        field(56;"Reverse Charge";Boolean)
        {
            CaptionML = ENU='Reverse Charge',
                        ENN='Reverse Charge';
            Editable = false;
        }
        field(57;Positive;Boolean)
        {
            CaptionML = ENU='Positive',
                        ENN='Positive';
            Editable = false;
        }
        field(58;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(59;"Service Type (Rev. Chrg.)";Option)
        {
            CaptionML = ENU='Service Type (Rev. Chrg.)',
                        ENN='Service Type (Rev. Chrg.)';
            OptionCaptionML = ENU=' ,Inward,Outward Stock Transfer,Outward Input Service,Outward',
                              ENN=' ,Inward,Outward Stock Transfer,Outward Input Service,Outward';
            OptionMembers = " ",Inward,"Outward Stock Transfer","Outward Input Service",Outward;
        }
        field(60;"Service Tax SHE Cess %";Decimal)
        {
            CaptionML = ENU='Service Tax SHE Cess %',
                        ENN='Service Tax SHE Cess %';
            Editable = true;
        }
        field(61;"SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
            Editable = true;
        }
        field(62;"Serv. Tax on Advance Payment";Boolean)
        {
            CaptionML = ENU='Serv. Tax on Advance Payment',
                        ENN='Serv. Tax on Advance Payment';
            Editable = false;
        }
        field(63;"Remaining Serv. Tax Amt";Decimal)
        {
            CaptionML = ENU='Remaining Serv. Tax Amt',
                        ENN='Remaining Serv. Tax Amt';
            Editable = false;
        }
        field(64;"Remaining Serv. Tax eCess Amt";Decimal)
        {
            CaptionML = ENU='Remaining Serv. Tax eCess Amt',
                        ENN='Remaining Serv. Tax eCess Amt';
            Editable = false;
        }
        field(65;"Remaining Serv. Tax Base Amt";Decimal)
        {
            CaptionML = ENU='Remaining Serv. Tax Base Amt',
                        ENN='Remaining Serv. Tax Base Amt';
            Editable = false;
        }
        field(66;Adjusted;Boolean)
        {
            CaptionML = ENU='Adjusted',
                        ENN='Adjusted';
            Editable = false;
        }
        field(67;"Adjusted Agst Entry No.";Integer)
        {
            CaptionML = ENU='Adjusted Agst Entry No.',
                        ENN='Adjusted Agst Entry No.';
            Editable = false;
            TableRelation = "Service Tax Entry"."Entry No.";
        }
        field(68;"Remaining Serv Tax SHECess Amt";Decimal)
        {
            CaptionML = ENU='Remaining Serv Tax SHECess Amt',
                        ENN='Remaining Serv Tax SHECess Amt';
            Editable = false;
        }
        field(69;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location;
        }
        field(70;"Input Service Distribution";Boolean)
        {
            CaptionML = ENU='Input Service Distribution',
                        ENN='Input Service Distribution';
        }
        field(71;"Input Service Credit Entry No.";Integer)
        {
            CaptionML = ENU='Input Service Credit Entry No.',
                        ENN='Input Service Credit Entry No.';
        }
        field(72;"Nature of Services";Option)
        {
            CaptionML = ENU='Nature of Services',
                        ENN='Nature of Services';
            OptionCaptionML = ENU=' ,Exempted,Export',
                              ENN=' ,Exempted,Export';
            OptionMembers = " ",Exempted,Export;
        }
        field(73;"ST Pure Agent";Boolean)
        {
            CaptionML = ENU='ST Pure Agent',
                        ENN='ST Pure Agent';
        }
        field(74;"Service Tax Rounding Precision";Decimal)
        {
            CaptionML = ENU='Service Tax Rounding Precision',
                        ENN='Service Tax Rounding Precision';
            Editable = true;
        }
        field(75;"Service Tax Rounding Type";Option)
        {
            CaptionML = ENU='Service Tax Rounding Type',
                        ENN='Service Tax Rounding Type';
            Editable = false;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(113;"Corrected Appln. Entry No.";Integer)
        {
            CaptionML = ENU='Corrected Appln. Entry No.',
                        ENN='Corrected Appln. Entry No.';
            Editable = false;
        }
        field(114;"Entry Type";Option)
        {
            CaptionML = ENU='Entry Type',
                        ENN='Entry Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain',
                              ENN=' ,Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain';
            OptionMembers = " ","Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain";
        }
        field(16500;"Original S.T. Base Amount";Decimal)
        {
            CaptionML = ENU='Original S.T. Base Amount',
                        ENN='Original S.T. Base Amount';
        }
        field(16501;"Original S.T. Amount";Decimal)
        {
            CaptionML = ENU='Original S.T. Amount',
                        ENN='Original S.T. Amount';
        }
        field(16502;"Original S.T. eCess Amount";Decimal)
        {
            CaptionML = ENU='Original S.T. eCess Amount',
                        ENN='Original S.T. eCess Amount';
        }
        field(16503;"Original S.T. SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='Original S.T. SHE Cess Amount',
                        ENN='Original S.T. SHE Cess Amount';
        }
        field(16504;PoT;Boolean)
        {
            CaptionML = ENU='PoT',
                        ENN='PoT';
            Editable = false;
        }
        field(16505;"PoT G/L Account";Code[20])
        {
            CaptionML = ENU='PoT G/L Account',
                        ENN='PoT G/L Account';
            TableRelation = "G/L Account";
        }
        field(16539;"Service Tax SBC %";Decimal)
        {
            CaptionML = ENU='Service Tax SBC %',
                        ENN='Service Tax SBC %';
            Editable = false;
        }
        field(16540;"Service Tax SBC Amount";Decimal)
        {
            CaptionML = ENU='Service Tax SBC Amount(LCY)',
                        ENN='Service Tax SBC Amount(LCY)';
            Editable = false;
        }
        field(16541;"SBC G/L Account";Code[20])
        {
            CaptionML = ENU='SBC G/L Account',
                        ENN='SBC G/L Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(16542;"Original S.T. SBC Amount";Decimal)
        {
            CaptionML = ENU='Original S.T. SBC Amount',
                        ENN='Original S.T. SBC Amount';
        }
        field(16543;"Remaining Serv. Tax SBC Amt";Decimal)
        {
            CaptionML = ENU='Remaining Serv. Tax SBC Amt',
                        ENN='Remaining Serv. Tax SBC Amt';
            Editable = false;
        }
        field(16544;"KK Cess%";Decimal)
        {
            CaptionML = ENU='KK Cess%',
                        ENN='KK Cess%';
            Editable = false;
        }
        field(16545;"KK Cess Amount";Decimal)
        {
            CaptionML = ENU='KK Cess Amount',
                        ENN='KK Cess Amount';
            Editable = false;
        }
        field(16546;"KK Cess G/L Account";Code[20])
        {
            CaptionML = ENU='KK Cess G/L Account',
                        ENN='KK Cess G/L Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(16547;"Original KK Cess Amount";Decimal)
        {
            CaptionML = ENU='Original KK Cess Amount',
                        ENN='Original KK Cess Amount';
            Editable = false;
        }
        field(16548;"Remaining KK Cess Amount";Decimal)
        {
            CaptionML = ENU='Remaining KK Cess Amount',
                        ENN='Remaining KK Cess Amount';
            Editable = false;
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Document No.","Posting Date","Transaction No.")
        {
        }
        key(Key3;"Service Tax Registration No.","Service Tax Group Code","Posting Date",Type,"Input Service Distribution")
        {
            SumIndexFields = "Amount Including Service Tax","Service Tax Base Amount","Service Tax Amount","Service Tax SBC Amount";
        }
        key(Key4;"Transaction No.")
        {
        }
        key(Key5;Adjusted,"Adjusted Agst Entry No.")
        {
        }
        key(Key6;"Document No.","Posting Date","Transaction No.","Service Tax Group Code","Service Tax Registration No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Entry No.","Document No.","Posting Date",Type,"Service Tax Group Code","Party Code","Service Tax Amount","eCess Amount","SHE Cess Amount")
        {
        }
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveServiceTaxEntry(Rec);
    end;

    [LineStart(63719)]
    procedure CalcRemainingAmount() RemainingAmount : Decimal;
    begin
        if PoT then begin
          if "Serv. Tax on Advance Payment" then
            RemainingAmount := GetTotalTaxAmount
          else
            RemainingAmount := "Amount Including Service Tax";
        end else begin
          CalcFields("Amount Received/Paid");
          RemainingAmount := "Amount Including Service Tax" - "Amount Received/Paid";
          if "Reverse Charge" then
            RemainingAmount -= (FullTaxAmount + FullTaxSBCAmount + KKCessAmount);
        end;
    end;

    [LineStart(63732)]
    local procedure GetTotalTaxAmount() : Decimal;
    var
        ServiceTaxEntryDetails : Record "Service Tax Entry Details";
    begin
        ServiceTaxEntryDetails.SetCurrentKey("Service Tax Entry No.");
        ServiceTaxEntryDetails.SetRange("Service Tax Entry No.","Entry No.");
        ServiceTaxEntryDetails.CalcSums("Service Tax Amount","Base Amount","Service Tax eCess Amount","Service Tax SHE Cess Amount",
          "Service Tax SBC Amount","KK Cess Amount");
        exit(ServiceTaxEntryDetails."Base Amount" + ServiceTaxEntryDetails.FullTaxAmount +
          ServiceTaxEntryDetails.FullTaxSBCAmount + ServiceTaxEntryDetails.KKCessAmount);
    end;

    [LineStart(63740)]
    procedure FullTaxAmount() : Decimal;
    begin
        exit("Service Tax Amount" + "eCess Amount" + "SHE Cess Amount");
    end;

    [LineStart(63743)]
    procedure Initialize(GenJnlLine : Record "Gen. Journal Line");
    var
        ServiceTaxSetup : Record "Service Tax Setup";
        LocationECC : Record Location;
        CompanyInfo : Record "Company Information";
    begin
        /*ServiceTaxSetup.FindOnDate(GenJnlLine."Service Tax Group Code",GenJnlLine."Posting Date");
        
        INIT;
        "Entry No." := 0;
        Type := GenJnlLine."Service Tax Type";
        "Document No." := GenJnlLine."Document No.";
        "Document Type" := GenJnlLine."Document Type";
        "Posting Date" := GenJnlLine."Posting Date";
        "Service Tax Group Code" := GenJnlLine."Service Tax Group Code";
        "Service Tax Registration No." := GenJnlLine."Service Tax Registration No.";
        "Party Code" := GenJnlLine."Account No.";
        "Service Tax Base Amount" := GenJnlLine."Service Tax Base Amount (LCY)";
        "Service Tax Amount" := GenJnlLine."Service Tax Amount";
        "eCess Amount" := GenJnlLine."Service Tax eCess Amount";
        "SHE Cess Amount" := GenJnlLine."Service Tax SHE Cess Amount";
        "Amount Including Service Tax" :=
          GenJnlLine."Service Tax Base Amount (LCY)" + GenJnlLine.FullServiceTaxAmount +
          GenJnlLine.FullServiceTaxSBCAmount + GenJnlLine.KKCessAmount;
        "Service Tax %" := ServiceTaxSetup."Service Tax %";
        "Service Tax eCess %" := ServiceTaxSetup."eCess %";
        "Service Tax SHE Cess %" := ServiceTaxSetup."SHE Cess %";
        "Service Tax SBC %" := GenJnlLine."Service Tax SBC %";
        "Service Tax SBC Amount" := GenJnlLine."Service Tax SBC Amount";
        "KK Cess%" := GenJnlLine."KK Cess%";
        "KK Cess Amount" := GenJnlLine."KK Cess Amount";
        PoT := GenJnlLine.PoT;
        "Location E.C.C. No." := GenJnlLine."E.C.C. No.";
        "Line No." := GenJnlLine."Line No.";
        Positive := GenJnlLine."Service Tax Amount" > 0;
        "Serv. Tax on Advance Payment" := GenJnlLine."Serv. Tax on Advance Payment";
        IF "Serv. Tax on Advance Payment" AND
           (GenJnlLine."Document Type" <> GenJnlLine."Document Type"::Refund)
        THEN BEGIN
          "Remaining Serv. Tax Amt" := "Service Tax Amount";
          "Remaining Serv. Tax eCess Amt" := "eCess Amount";
          "Remaining Serv. Tax Base Amt" := "Service Tax Base Amount";
          "Remaining Serv Tax SHECess Amt" := "SHE Cess Amount";
          "Remaining Serv. Tax SBC Amt" := "Service Tax SBC Amount";
          "Remaining KK Cess Amount" := "KK Cess Amount";
        END;
        "Location Code" := GenJnlLine."Location Code";
        "ST Pure Agent" := GenJnlLine."ST Pure Agent";
        "Nature of Services" := GenJnlLine."Nature of Services";
        "Service Tax Rounding Precision" := GenJnlLine."Service Tax Rounding Precision";
        "Service Tax Rounding Type" := GenJnlLine."Service Tax Rounding Type";
        IF GenJnlLine."Location Code" <> '' THEN BEGIN
          LocationECC.GET(GenJnlLine."Location Code");
          "Location E.C.C. No." := LocationECC."E.C.C. No.";
        END ELSE BEGIN
          CompanyInfo.GET;
          "Location E.C.C. No." := CompanyInfo."E.C.C. No.";
        END;
        "Original S.T. Base Amount" := "Service Tax Base Amount";
        "Original S.T. Amount" := "Service Tax Amount";
        "Original S.T. eCess Amount" := "eCess Amount";
        "Original S.T. SHE Cess Amount" := "SHE Cess Amount";
        "Original S.T. SBC Amount" := "Service Tax SBC Amount";
        "Original KK Cess Amount" := "KK Cess Amount"
        */

    end;

    [LineStart(63804)]
    procedure IsRealizedGainOrLoss() : Boolean;
    begin
        exit("Entry Type" in ["Entry Type"::"Realized Loss","Entry Type"::"Realized Gain"]);
    end;

    [LineStart(63807)]
    procedure ReverseAmounts();
    begin
        "Service Tax Base Amount" := -"Service Tax Base Amount";
        "Service Tax Amount" := -"Service Tax Amount";
        "eCess Amount" := -"eCess Amount";
        "SHE Cess Amount" := -"SHE Cess Amount";
        "Service Tax SBC Amount" := -"Service Tax SBC Amount";
        "KK Cess Amount" := -"KK Cess Amount";
        "Amount Including Service Tax" := -"Amount Including Service Tax";
        "Service Tax Abatement" := -"Service Tax Abatement";
        "Original S.T. Base Amount" := -"Original S.T. Base Amount";
        "Original S.T. Amount" := -"Original S.T. Amount";
        "Original S.T. eCess Amount" := -"Original S.T. eCess Amount";
        "Original S.T. SHE Cess Amount" := -"Original S.T. SHE Cess Amount";
        "Original S.T. SBC Amount" := -"Original S.T. SBC Amount";
        "Original KK Cess Amount" := -"Original KK Cess Amount";
    end;

    [LineStart(63823)]
    procedure RoundAmount(OriginalAmount : Decimal) : Decimal;
    var
        GLSetup : Record "General Ledger Setup";
        ServiceTaxRoundingDirection : Text[1];
        ServiceTaxRoundingPrecision : Decimal;
    begin
        /*CASE "Service Tax Rounding Type" OF
          "Service Tax Rounding Type"::Nearest:
            ServiceTaxRoundingDirection := '=';
          "Service Tax Rounding Type"::Up:
            ServiceTaxRoundingDirection := '>';
          "Service Tax Rounding Type"::Down:
            ServiceTaxRoundingDirection := '<';
        END;
        IF "Service Tax Rounding Precision" <> 0 THEN
          ServiceTaxRoundingPrecision := "Service Tax Rounding Precision"
        ELSE BEGIN
          GLSetup.GET;
          ServiceTaxRoundingPrecision := GLSetup."Service Tax Rounding Precision";
        END;
        IF ServiceTaxRoundingPrecision = 0 THEN
          EXIT(OriginalAmount);
        EXIT(ROUND(OriginalAmount,ServiceTaxRoundingPrecision,ServiceTaxRoundingDirection));
        */

    end;

    [LineStart(63843)]
    procedure FullServiceTaxAmount() : Decimal;
    begin
        exit("Service Tax Amount" + "eCess Amount" + "SHE Cess Amount");
    end;

    [LineStart(63846)]
    procedure RoundServiceTaxAmount(ServiceTaxAmount : Decimal) : Decimal;
    var
        ServiceTaxRoundingDirection : Text[1];
        ServiceTaxRoundingPrecision : Decimal;
    begin
        case "Service Tax Rounding Type" of
          "Service Tax Rounding Type"::Nearest:
            ServiceTaxRoundingDirection := '=';
          "Service Tax Rounding Type"::Up:
            ServiceTaxRoundingDirection := '>';
          "Service Tax Rounding Type"::Down:
            ServiceTaxRoundingDirection := '<';
        end;
        if "Service Tax Rounding Precision" <> 0 then
          ServiceTaxRoundingPrecision := "Service Tax Rounding Precision"
        else
          ServiceTaxRoundingPrecision := 0.01;
        exit(
          Round(
            ServiceTaxAmount,ServiceTaxRoundingPrecision,ServiceTaxRoundingDirection));
    end;

    [LineStart(63863)]
    procedure FullTaxSBCAmount() : Decimal;
    begin
        exit("Service Tax SBC Amount");
    end;

    [LineStart(63866)]
    procedure FullServiceTaxSBCAmount() : Decimal;
    begin
        exit("Service Tax SBC Amount");
    end;

    [LineStart(63869)]
    procedure KKCessAmount() : Decimal;
    begin
        exit("KK Cess Amount");
    end;
}


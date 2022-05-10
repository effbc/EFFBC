table 13712 "Excise Entry"
{
    // version NAVIN9.00.00.50221

    CaptionML = ENU='Excise Entry',
                ENN='Excise Entry';
    DrillDownPageID = 13715;
    LookupPageID = 13715;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            Editable = false;
        }
        field(2;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
            Editable = true;
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = false;
        }
        field(4;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(5;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Purchase,Sale,Settlement,Charges',
                              ENN=' ,Purchase,Sale,Settlement,Charges';
            OptionMembers = " ",Purchase,Sale,Settlement,Charges;
        }
        field(6;"BED %";Decimal)
        {
            CaptionML = ENU='BED %',
                        ENN='BED %';
            Editable = false;
        }
        field(7;"BED Calculation Type";Option)
        {
            CaptionML = ENU='BED Calculation Type',
                        ENN='BED Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(8;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            Editable = true;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(9;"Excise Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            Editable = true;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(10;Amount;Decimal)
        {
            CaptionML = ENU='Amount',
                        ENN='Amount';
            Editable = true;
        }
        field(11;Base;Decimal)
        {
            CaptionML = ENU='Base',
                        ENN='Base';
            Editable = true;
        }
        field(12;"Amount Including Excise";Decimal)
        {
            CaptionML = ENU='Amount Including Excise',
                        ENN='Amount Including Excise';
            Editable = true;
        }
        field(13;"Sell-to/Buy-from No.";Code[20])
        {
            CaptionML = ENU='Sell-to/Buy-from No.',
                        ENN='Sell-to/Buy-from No.';
            Editable = true;
            TableRelation = IF (Type=CONST(Purchase)) Vendor
                            ELSE IF (Type=CONST(Sale)) Customer;
        }
        field(14;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
            Editable = true;
        }
        field(15;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                UserMgt : Codeunit "User Management";
            begin
                UserMgt.LookupUserID("User ID");
            end;
        }
        field(16;"Source Code";Code[10])
        {
            CaptionML = ENU='Source Code',
                        ENN='Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(17;"Reason Code";Code[10])
        {
            CaptionML = ENU='Reason Code',
                        ENN='Reason Code';
            Editable = false;
            TableRelation = "Reason Code";
        }
        field(18;"BED Amount";Decimal)
        {
            CaptionML = ENU='BED Amount',
                        ENN='BED Amount';
            Editable = true;
        }
        field(19;"AED(GSI) Amount";Decimal)
        {
            CaptionML = ENU='AED(GSI) Amount',
                        ENN='AED(GSI) Amount';
            Editable = false;
        }
        field(20;"SED Amount";Decimal)
        {
            CaptionML = ENU='SED Amount',
                        ENN='SED Amount';
            Editable = false;
        }
        field(21;"SAED Amount";Decimal)
        {
            CaptionML = ENU='SAED Amount',
                        ENN='SAED Amount';
            Editable = false;
        }
        field(22;"CESS Amount";Decimal)
        {
            CaptionML = ENU='CESS Amount',
                        ENN='CESS Amount';
            Editable = true;
        }
        field(23;"NCCD Amount";Decimal)
        {
            CaptionML = ENU='NCCD Amount',
                        ENN='NCCD Amount';
            Editable = true;
        }
        field(24;"eCess Amount";Decimal)
        {
            CaptionML = ENU='eCess Amount',
                        ENN='eCess Amount';
            Editable = true;
        }
        field(25;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(26;Paid;Boolean)
        {
            CaptionML = ENU='Paid',
                        ENN='Paid';
            Editable = false;
        }
        field(27;"Modvat Claimed Doc No.";Code[20])
        {
            CaptionML = ENU='Modvat Claimed Doc No.',
                        ENN='Modvat Claimed Doc No.';
            Editable = false;
        }
        field(50;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
            Editable = true;
        }
        field(52;Deferred;Boolean)
        {
            CaptionML = ENU='Deferred',
                        ENN='Deferred';
            Editable = false;
        }
        field(53;"Remaining BED Amount";Decimal)
        {
            CaptionML = ENU='Remaining BED Amount',
                        ENN='Remaining BED Amount';
            Editable = false;
        }
        field(54;"Remaining AED(GSI) Amount";Decimal)
        {
            CaptionML = ENU='Remaining AED(GSI) Amount',
                        ENN='Remaining AED(GSI) Amount';
            Editable = false;
        }
        field(55;"Remaining SED Amount";Decimal)
        {
            CaptionML = ENU='Remaining SED Amount',
                        ENN='Remaining SED Amount';
            Editable = false;
        }
        field(56;"Remaining SAED Amount";Decimal)
        {
            CaptionML = ENU='Remaining SAED Amount',
                        ENN='Remaining SAED Amount';
            Editable = false;
        }
        field(57;"Remaining NCCD Amount";Decimal)
        {
            CaptionML = ENU='Remaining NCCD Amount',
                        ENN='Remaining NCCD Amount';
            Editable = false;
        }
        field(58;"Remaining eCess Amount";Decimal)
        {
            CaptionML = ENU='Remaining eCess Amount',
                        ENN='Remaining eCess Amount';
            Editable = false;
        }
        field(59;"Remaining Quantity";Decimal)
        {
            CaptionML = ENU='Remaining Quantity',
                        ENN='Remaining Quantity';
            Editable = false;
        }
        field(60;"Item No.";Code[20])
        {
            CaptionML = ENU='Item No.',
                        ENN='Item No.';
            Editable = false;
        }
        field(61;"Product Type";Option)
        {
            CaptionML = ENU='Product Type',
                        ENN='Product Type';
            Editable = false;
            OptionCaptionML = ENU=',Item,FA',
                              ENN=',Item,FA';
            OptionMembers = ,Item,FA;
        }
        field(62;"E.C.C. No.";Code[20])
        {
            CaptionML = ENU='E.C.C. No.',
                        ENN='E.C.C. No.';
            Editable = false;
            TableRelation = "E.C.C. Nos.";
        }
        field(63;"ADET Amount";Decimal)
        {
            CaptionML = ENU='ADET Amount',
                        ENN='ADET Amount';
            Editable = false;
        }
        field(64;"Remaining ADET Amount";Decimal)
        {
            CaptionML = ENU='Remaining ADET Amount',
                        ENN='Remaining ADET Amount';
            Editable = false;
        }
        field(65;"AED(TTA) Amount";Decimal)
        {
            CaptionML = ENU='AED(TTA) Amount',
                        ENN='AED(TTA) Amount';
            Editable = false;
        }
        field(66;"Remaining AED(TTA) Amount";Decimal)
        {
            CaptionML = ENU='Remaining AED(TTA) Amount',
                        ENN='Remaining AED(TTA) Amount';
            Editable = false;
        }
        field(67;"ADE Amount";Decimal)
        {
            CaptionML = ENU='ADE Amount',
                        ENN='ADE Amount';
            Editable = false;
        }
        field(68;"Remaining ADE Amount";Decimal)
        {
            CaptionML = ENU='Remaining ADE Amount',
                        ENN='Remaining ADE Amount';
            Editable = false;
        }
        field(69;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
            Editable = false;
        }
        field(70;"SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
            Editable = true;
        }
        field(71;"Remaining SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='Remaining SHE Cess Amount',
                        ENN='Remaining SHE Cess Amount';
            Editable = false;
        }
        field(72;"Direct Debit To PLA/RG Amount";Decimal)
        {
            CaptionML = ENU='Direct Debit To PLA/RG Amount',
                        ENN='Direct Debit To PLA/RG Amount';
        }
        field(73;"ADC VAT Amount";Decimal)
        {
            CaptionML = ENU='ADC VAT Amount',
                        ENN='ADC VAT Amount';
            Editable = false;
        }
        field(74;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';
            Editable = false;
        }
        field(75;"AED(GSI) Calculation Type";Option)
        {
            CaptionML = ENU='AED(GSI) Calculation Type',
                        ENN='AED(GSI) Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(76;"AED(GSI) %";Decimal)
        {
            CaptionML = ENU='AED(GSI) %',
                        ENN='AED(GSI) %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(77;"SED Calculation Type";Option)
        {
            CaptionML = ENU='SED Calculation Type',
                        ENN='SED Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(78;"SED %";Decimal)
        {
            CaptionML = ENU='SED %',
                        ENN='SED %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(79;"SAED Calculation Type";Option)
        {
            CaptionML = ENU='SAED Calculation Type',
                        ENN='SAED Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(80;"SAED %";Decimal)
        {
            CaptionML = ENU='SAED %',
                        ENN='SAED %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(81;"CESS Calculation Type";Option)
        {
            CaptionML = ENU='CESS Calculation Type',
                        ENN='CESS Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(82;"CESS %";Decimal)
        {
            CaptionML = ENU='CESS %',
                        ENN='CESS %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(83;"NCCD Calculation Type";Option)
        {
            CaptionML = ENU='NCCD Calculation Type',
                        ENN='NCCD Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(84;"NCCD %";Decimal)
        {
            CaptionML = ENU='NCCD %',
                        ENN='NCCD %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(85;"eCess Calculation Type";Option)
        {
            CaptionML = ENU='eCess Calculation Type',
                        ENN='eCess Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(86;"eCess %";Decimal)
        {
            CaptionML = ENU='eCess %',
                        ENN='eCess %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(87;"AED(TTA) Calculation Type";Option)
        {
            CaptionML = ENU='AED(TTA) Calculation Type',
                        ENN='AED(TTA) Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(88;"AED(TTA) %";Decimal)
        {
            CaptionML = ENU='AED(TTA) %',
                        ENN='AED(TTA) %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(89;"ADET Calculation Type";Option)
        {
            CaptionML = ENU='ADET Calculation Type',
                        ENN='ADET Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(90;"ADET %";Decimal)
        {
            CaptionML = ENU='ADET %',
                        ENN='ADET %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(91;"ADE Calculation Type";Option)
        {
            CaptionML = ENU='ADE Calculation Type',
                        ENN='ADE Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(92;"ADE %";Decimal)
        {
            CaptionML = ENU='ADE %',
                        ENN='ADE %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(93;"SHE Cess Calculation Type";Option)
        {
            CaptionML = ENU='SHE Cess Calculation Type',
                        ENN='SHE Cess Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(94;"SHE Cess %";Decimal)
        {
            CaptionML = ENU='SHE Cess %',
                        ENN='SHE Cess %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(95;"ADC VAT Calculation Type";Option)
        {
            CaptionML = ENU='ADC VAT Calculation Type',
                        ENN='ADC VAT Calculation Type';
            Editable = false;
            OptionCaptionML = ENU='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP',
                              ENN='Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(96;"ADC VAT %";Decimal)
        {
            CaptionML = ENU='ADC VAT %',
                        ENN='ADC VAT %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(97;SSI;Boolean)
        {
            CaptionML = ENU='SSI',
                        ENN='SSI';
            Editable = false;
        }
        field(98;"Sale Return Type";Option)
        {
            CaptionML = ENU='Sale Return Type',
                        ENN='Sale Return Type';
            OptionCaptionML = ENU=' ,Sales  Cancellation',
                              ENN=' ,Sales  Cancellation';
            OptionMembers = " ","Sales  Cancellation";
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Document No.","Posting Date",Deferred,"Remaining Quantity","Item No.","E.C.C. No.")
        {
        }
        key(Key3;Type)
        {
        }
        key(Key4;Deferred,"Product Type","Item No.")
        {
        }
        key(Key5;Type,"Document Type","Document No.","Posting Date","Item No.")
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveExciseEntry(Rec);
    end;

    [LineStart(61837)]
    procedure CopyFromPostingSetup(ExcisePostingSetup : Record "Excise Posting Setup");
    begin
        "AED(GSI) Calculation Type" := ExcisePostingSetup."AED(GSI) Calculation Type";
        "AED(GSI) %" := ExcisePostingSetup."AED(GSI) %";
        "SED Calculation Type" := ExcisePostingSetup."SED Calculation Type";
        "SED %" := ExcisePostingSetup."SED %";
        "SAED Calculation Type" := ExcisePostingSetup."SAED Calculation Type";
        "SAED %" := ExcisePostingSetup."SAED %";
        "CESS Calculation Type" := ExcisePostingSetup."CESS Calculation Type";
        "CESS %" := ExcisePostingSetup."CESS %";
        "NCCD Calculation Type" := ExcisePostingSetup."NCCD Calculation Type";
        "NCCD %" := ExcisePostingSetup."NCCD %";
        "eCess Calculation Type" := ExcisePostingSetup."eCess Calculation Type";
        "eCess %" := ExcisePostingSetup."eCess %";
        "AED(TTA) Calculation Type" := ExcisePostingSetup."AED(TTA) Calculation Type";
        "AED(TTA) %" := ExcisePostingSetup."AED(TTA) %";
        "ADET Calculation Type" := ExcisePostingSetup."ADET Calculation Type";
        "ADET %" := ExcisePostingSetup."ADET %";
        "ADE Calculation Type" := ExcisePostingSetup."ADE Calculation Type";
        "ADE %" := ExcisePostingSetup."ADE %";
        "SHE Cess Calculation Type" := ExcisePostingSetup."SHE Cess Calculation Type";
        "SHE Cess %" := ExcisePostingSetup."SHE Cess %";
        "ADC VAT Calculation Type" := ExcisePostingSetup."ADC VAT Calculation Type";
        "ADC VAT %" := ExcisePostingSetup."ADC VAT %";
        SSI := ExcisePostingSetup.SSI;
    end;

    [LineStart(61862)]
    procedure CopyFromGenJnlLine(GenJnlLine : Record "Gen. Journal Line");
    begin
        /*"Excise Bus. Posting Group" := GenJnlLine."Excise Bus. Posting Group";
        "Excise Prod. Posting Group" := GenJnlLine."Excise Prod. Posting Group";
        "Posting Date" := GenJnlLine."Posting Date";
        "Document No." := GenJnlLine."Document No.";
        "BED Calculation Type" := GenJnlLine."BED Calculation Type";
        "External Document No." := GenJnlLine."External Document No.";
        "Sell-to/Buy-from No." := GenJnlLine."Bill-to/Pay-to No.";
        "Document Type" := GenJnlLine."Document Type";
        Type := GenJnlLine."Gen. Posting Type";
        "User ID" := USERID;
        "Source Code" := GenJnlLine."Source Code";
        "Reason Code" := GenJnlLine."Reason Code";
        "Sale Return Type" := GenJnlLine."Sale Return Type";
        CVD := GenJnlLine.CVD;
        "E.C.C. No." := GenJnlLine."E.C.C. No.";
        "Item No." := GenJnlLine."Item No.";
        "Source Code" := GenJnlLine."Source Code";
        */

    end;
}


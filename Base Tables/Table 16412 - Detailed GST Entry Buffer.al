table 16412 "Detailed GST Entry Buffer"
{
    // version NAVIN9.00.00.51883,TFS225680,TFS223871

    CaptionML = ENU='Detailed GST Entry Buffer',
                ENN='Detailed GST Entry Buffer';
    DrillDownPageID = 16412;
    LookupPageID = 16412;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            DataClassification = SystemMetadata;
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            DataClassification = SystemMetadata;
        }
        field(4;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
            DataClassification = SystemMetadata;
        }
        field(5;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)',
                              ENN=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(6;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
            DataClassification = SystemMetadata;
        }
        field(7;"Product Type";Option)
        {
            CaptionML = ENU='Product Type',
                        ENN='Product Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU=' ,Item,Capital Goods',
                              ENN=' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(8;"Transaction Type";Option)
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Purchase,Sales,Transfer,Service,Service Transfer,Production',
                              ENN='Purchase,Sales,Transfer,Service,Service Transfer,Production';
            OptionMembers = Purchase,Sales,Transfer,Service,"Service Transfer",Production;
        }
        field(9;"Source Type";Option)
        {
            CaptionML = ENU='Source Type',
                        ENN='Source Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU=' ,Customer,Vendor,Bank Account,Party',
                              ENN=' ,Customer,Vendor,Bank Account,Party';
            OptionMembers = " ",Customer,Vendor,"Bank Account",Party;
        }
        field(10;"Source No.";Code[20])
        {
            CaptionML = ENU='Source No.',
                        ENN='Source No.';
            DataClassification = SystemMetadata;
            TableRelation = IF ("Source Type"=CONST(Customer)) Customer
                            ELSE IF ("Source Type"=CONST(Vendor)) Vendor;
        }
        field(11;"GST Component Code";Code[10])
        {
            CaptionML = ENU='GST Component Code',
                        ENN='GST Component Code';
            DataClassification = SystemMetadata;
            TableRelation = "GST Component";
        }
        field(12;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
            DataClassification = SystemMetadata;
        }
        field(13;"GST %";Decimal)
        {
            CaptionML = ENU='GST %',
                        ENN='GST %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2:3;
        }
        field(14;"GST Amount";Decimal)
        {
            CaptionML = ENU='GST Amount',
                        ENN='GST Amount';
            DataClassification = SystemMetadata;
        }
        field(15;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
            DataClassification = SystemMetadata;
        }
        field(16;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            DataClassification = SystemMetadata;
            TableRelation = "GST Group";
        }
        field(17;"HSN/SAC Code";Code[8])
        {
            CaptionML = ENU='HSN/SAC Code',
                        ENN='HSN/SAC Code';
            DataClassification = SystemMetadata;
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(18;"GST Input/Output Credit Amount";Decimal)
        {
            CaptionML = ENU='GST Input/Output Credit Amount',
                        ENN='GST Input/Output Credit Amount';
            DataClassification = SystemMetadata;
        }
        field(19;"Amount Loaded on Item";Decimal)
        {
            CaptionML = ENU='Amount Loaded on Item',
                        ENN='Amount Loaded on Item';
            DataClassification = SystemMetadata;
        }
        field(20;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            DataClassification = SystemMetadata;
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(21;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
            DataClassification = SystemMetadata;
        }
        field(22;"Item Charge Assgn. Line No.";Integer)
        {
            CaptionML = ENU='Item Charge Assgn. Line No.',
                        ENN='Item Charge Assgn. Line No.';
            DataClassification = SystemMetadata;
        }
        field(24;"GST on Advance Payment";Boolean)
        {
            CaptionML = ENU='GST on Advance Payment',
                        ENN='GST on Advance Payment';
            DataClassification = SystemMetadata;
        }
        field(25;"Reverse Charge";Boolean)
        {
            CaptionML = ENU='Reverse Charge',
                        ENN='Reverse Charge';
            DataClassification = SystemMetadata;
        }
        field(26;"Item Charge Assgn. Doc. Type";Option)
        {
            CaptionML = ENU='Item Charge Assgn. Doc. Type',
                        ENN='Item Charge Assgn. Doc. Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Receipt,Transfer Receipt,Return Shipment,Sales Shipment,Return Receipt',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Receipt,Transfer Receipt,Return Shipment,Sales Shipment,Return Receipt';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",Receipt,"Transfer Receipt","Return Shipment","Sales Shipment","Return Receipt";
        }
        field(27;"Item Charge Assgn Doc. No.";Code[20])
        {
            CaptionML = ENU='Item Charge Assgn Doc. No.',
                        ENN='Item Charge Assgn Doc. No.';
            DataClassification = SystemMetadata;
        }
        field(28;"Journal Template Name";Code[10])
        {
            CaptionML = ENU='Journal Template Name',
                        ENN='Journal Template Name';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Journal Template";
        }
        field(29;"Journal Batch Name";Code[10])
        {
            CaptionML = ENU='Journal Batch Name',
                        ENN='Journal Batch Name';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name"=FIELD("Journal Template Name"));
        }
        field(30;"Bill Of Export No.";Code[20])
        {
            CaptionML = ENU='Bill Of Export No.',
                        ENN='Bill Of Export No.';
            DataClassification = SystemMetadata;
        }
        field(31;"Bill Of Export Date";Date)
        {
            CaptionML = ENU='Bill Of Export Date',
                        ENN='Bill Of Export Date';
            DataClassification = SystemMetadata;
        }
        field(32;"e-Comm. Merchant Id";Code[30])
        {
            CaptionML = ENU='e-Comm. Merchant Id',
                        ENN='e-Comm. Merchant Id';
            DataClassification = SystemMetadata;
            TableRelation = "e-Commerce Merchant Id"."Merchant Id";
        }
        field(33;"e-Comm. Operator GST Reg. No.";Code[15])
        {
            CaptionML = ENU='e-Comm. Operator GST Reg. No.',
                        ENN='e-Comm. Operator GST Reg. No.';
            DataClassification = SystemMetadata;
        }
        field(34;"Invoice Type";Option)
        {
            CaptionML = ENU='Invoice Type',
                        ENN='Invoice Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU=' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN=' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(35;"Original Invoice No.";Code[20])
        {
            CaptionML = ENU='Original Invoice No.',
                        ENN='Original Invoice No.';
            DataClassification = SystemMetadata;
        }
        field(36;"Original Invoice Date";Date)
        {
            CaptionML = ENU='Original Invoice Date',
                        ENN='Original Invoice Date';
            DataClassification = SystemMetadata;
        }
        field(37;"Adv. Pmt. Adjustment";Boolean)
        {
            CaptionML = ENU='Adv. Pmt. Adjustment',
                        ENN='Adv. Pmt. Adjustment';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(38;"Original Adv. Pmt Doc. No.";Code[20])
        {
            CaptionML = ENU='Original Adv. Pmt Doc. No.',
                        ENN='Original Adv. Pmt Doc. No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(39;"Original Adv. Pmt Doc. Date";Date)
        {
            CaptionML = ENU='Original Adv. Pmt Doc. Date',
                        ENN='Original Adv. Pmt Doc. Date';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(40;Cess;Boolean)
        {
            CaptionML = ENU='Cess',
                        ENN='Cess';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(41;"GST Group Type";Option)
        {
            CaptionML = ENU='GST Group Type',
                        ENN='GST Group Type';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaptionML = ENU='Goods,Service',
                              ENN='Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(42;"Buyer/Seller State Code";Code[10])
        {
            CaptionML = ENU='Buyer/Seller State Code',
                        ENN='Buyer/Seller State Code';
            DataClassification = SystemMetadata;
            TableRelation = State;
        }
        field(43;"Shipping Address State Code";Code[10])
        {
            CaptionML = ENU='Shipping Address State Code',
                        ENN='Shipping Address State Code';
            DataClassification = SystemMetadata;
            TableRelation = State;
        }
        field(44;"Location State Code";Code[10])
        {
            CaptionML = ENU='Location State Code',
                        ENN='Location State Code';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = State;
        }
        field(45;"Location  Reg. No.";Code[15])
        {
            CaptionML = ENU='Location  Reg. No.',
                        ENN='Location  Reg. No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(46;"Buyer/Seller Reg. No.";Code[15])
        {
            CaptionML = ENU='Buyer/Seller Reg. No.',
                        ENN='Buyer/Seller Reg. No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(47;"GST Place of Supply";Option)
        {
            CaptionML = ENU='GST Place of Supply',
                        ENN='GST Place of Supply';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaptionML = ENU=' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN=' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";
        }
        field(48;"Charge To Cust/Vend";Decimal)
        {
            CaptionML = ENU='Charge To Cust/Vend',
                        ENN='Charge To Cust/Vend';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(49;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        ENN='Currency Code';
            DataClassification = SystemMetadata;
        }
        field(50;"Currency Factor";Decimal)
        {
            CaptionML = ENU='Currency Factor',
                        ENN='Currency Factor';
            DataClassification = SystemMetadata;
            DecimalPlaces = 1:6;
        }
        field(51;"GST Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Rounding Precision',
                        ENN='GST Rounding Precision';
            DataClassification = SystemMetadata;
        }
        field(52;"GST Rounding Type";Option)
        {
            CaptionML = ENU='GST Rounding Type',
                        ENN='GST Rounding Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(53;"GST Base Amount (LCY)";Decimal)
        {
            CaptionML = ENU='GST Base Amount (LCY)',
                        ENN='GST Base Amount (LCY)';
            DataClassification = SystemMetadata;
        }
        field(54;"GST Amount (LCY)";Decimal)
        {
            CaptionML = ENU='GST Amount (LCY)',
                        ENN='GST Amount (LCY)';
            DataClassification = SystemMetadata;
        }
        field(55;"TDS/TCS Amount";Decimal)
        {
            CaptionML = ENU='TDS/TCS Amount',
                        ENN='TDS/TCS Amount';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(56;"Input Service Distribution";Boolean)
        {
            CaptionML = ENU='Input Service Distribution',
                        ENN='Input Service Distribution';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(57;Inward;Boolean)
        {
            CaptionML = ENU='Inward',
                        ENN='Inward';
            DataClassification = SystemMetadata;
        }
        field(58;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(59;"Delivery Challan Amount";Decimal)
        {
            CaptionML = ENU='Delivery Challan Amount',
                        ENN='Delivery Challan Amount';
            DataClassification = SystemMetadata;
        }
        field(60;"Custom Duty Amount";Decimal)
        {
            CaptionML = ENU='Custom Duty Amount',
                        ENN='Custom Duty Amount';
            DataClassification = SystemMetadata;
        }
        field(61;"GST Assessable Value";Decimal)
        {
            CaptionML = ENU='GST Assessable Value',
                        ENN='GST Assessable Value';
            DataClassification = SystemMetadata;
        }
        field(62;"Custom Duty Amount (LCY)";Decimal)
        {
            CaptionML = ENU='Custom Duty Amount (LCY)',
                        ENN='Custom Duty Amount (LCY)';
            DataClassification = SystemMetadata;
        }
        field(63;"GST Assessable Value (LCY)";Decimal)
        {
            CaptionML = ENU='GST Assessable Value (LCY)',
                        ENN='GST Assessable Value (LCY)';
            DataClassification = SystemMetadata;
        }
        field(66;"Component Calc. Type";Option)
        {
            CaptionML = ENU='Component Calc. Type',
                        ENN='Component Calc. Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='General,Threshold,Cess %,Cess % + Amount / Unit Factor,Cess % Or Amount / Unit Factor Whichever Higher,Amount / Unit Factor,Amount / Unit',
                              ENN='General,Threshold,Cess %,Cess % + Amount / Unit Factor,Cess % Or Amount / Unit Factor Whichever Higher,Amount / Unit Factor,Amount / Unit';
            OptionMembers = General,Threshold,"Cess %","Cess % + Amount / Unit Factor","Cess % Or Amount / Unit Factor Whichever Higher","Amount / Unit Factor","Amount / Unit";
        }
        field(67;"Cess Amount Per Unit Factor";Decimal)
        {
            CaptionML = ENU='Cess Amount Per Unit Factor',
                        ENN='Cess Amount Per Unit Factor';
            DataClassification = SystemMetadata;
        }
        field(68;"Cess UOM";Code[10])
        {
            CaptionML = ENU='Cess UOM',
                        ENN='Cess UOM';
            DataClassification = SystemMetadata;
            TableRelation = "Unit of Measure";
        }
        field(69;"Cess Factor Quantity";Decimal)
        {
            CaptionML = ENU='Cess Factor Quantity',
                        ENN='Cess Factor Quantity';
            DataClassification = SystemMetadata;
        }
        field(70;"Cess Amt Per Unit Factor (LCY)";Decimal)
        {
            CaptionML = ENU='Cess Amt Per Unit Factor (LCY)',
                        ENN='Cess Amt Per Unit Factor (LCY)';
            DataClassification = SystemMetadata;
        }
        field(71;UOM;Code[10])
        {
            CaptionML = ENU='UOM',
                        ENN='UOM';
            DataClassification = SystemMetadata;
            TableRelation = "Unit of Measure";
        }
        field(72;"Jnl. Bank Charge";Code[10])
        {
            CaptionML = ENU='Bank Charge',
                        ENN='Bank Charge';
            DataClassification = SystemMetadata;
            TableRelation = "Bank Charge";
        }
        field(73;"Bank Charge Entry";Boolean)
        {
            CaptionML = ENU='Bank Charge Entry',
                        ENN='Bank Charge Entry';
            DataClassification = SystemMetadata;
        }
        field(74;"Non-Availment";Boolean)
        {
            CaptionML = ENU='Non-Availment',
                        ENN='Non-Availment';
            DataClassification = SystemMetadata;
        }
        field(75;"GST Inv. Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Inv. Rounding Precision',
                        ENN='GST Inv. Rounding Precision';
            DataClassification = SystemMetadata;
        }
        field(76;"GST Inv. Rounding Type";Option)
        {
            CaptionML = ENU='GST Inv. Rounding Type',
                        ENN='GST Inv. Rounding Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(77;"GST Order Address State";Code[10])
        {
            CaptionML = ENU='GST Order Address State',
                        ENN='GST Order Address State';
            DataClassification = SystemMetadata;
        }
        field(78;"Buy-From GST Registration No";Code[15])
        {
            CaptionML = ENU='Buy-From GST Registration No',
                        ENN='Buy-From GST Registration No';
            DataClassification = SystemMetadata;
        }
        field(79;"Order Address Code";Code[10])
        {
            CaptionML = ENU='Order Address Code',
                        ENN='Order Address Code';
            DataClassification = SystemMetadata;
        }
        field(80;"Bill to-Location(POS)";Code[10])
        {
            CaptionML = ENU='Bill to-Location(POS)',
                        ENN='Bill to-Location(POS)';
            DataClassification = SystemMetadata;
        }
        field(85;"Recurring Journal";Boolean)
        {
            CaptionML = ENU='Recurring Journal',
                        ENN='Recurring Journal';
            DataClassification = SystemMetadata;
        }
        field(86;"Allocations Line No.";Integer)
        {
            CaptionML = ENU='Allocations Line No.',
                        ENN='Allocations Line No.';
            DataClassification = SystemMetadata;
        }
        field(87;"ARN No.";Code[15])
        {
            CaptionML = ENU='ARN No.',
                        ENN='ARN No.';
        }
        field(88;"FA Journal Entry";Boolean)
        {
            CaptionML = ENU='FA Journal Entry',
                        ENN='FA Journal Entry';
        }
        field(89;"Without Bill Of Entry";Boolean)
        {
            CaptionML = ENU='Without Bill Of Entry',
                        ENN='Without Bill Of Entry';
        }
        field(90;"Finance Charge Memo";Boolean)
        {
            CaptionML = ENU='Finance Charge Memo',
                        ENN='Finance Charge Memo';
        }
        field(91;"GST TDS";Boolean)
        {
            CaptionML = ENU='GST TDS',
                        ENN='GST TDS';
        }
        field(92;"GST TCS";Boolean)
        {
            CaptionML = ENU='GST TCS',
                        ENN='GST TCS';
        }
        field(93;"POS Out Of India";Boolean)
        {
            CaptionML = ENU='POS Out Of India',
                        ENN='POS Out Of India';
            DataClassification = ToBeClassified;
        }
        field(94;"Ship-to Reg. No";Code[15])
        {
            CaptionML = ENU='Ship-to Reg. No',
                        ENN='Ship-to Reg. No';
            DataClassification = ToBeClassified;
        }
        field(95;"Ship-to Customer Type";Option)
        {
            CaptionML = ENU='Ship-to Customer Type',
                        ENN='Ship-to Customer Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU=' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN=' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Transaction Type","Document Type","Document No.","Line No.")
        {
        }
        key(Key3;"Transaction Type","Journal Template Name","Journal Batch Name","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


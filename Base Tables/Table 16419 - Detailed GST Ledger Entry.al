table 16419 "Detailed GST Ledger Entry"
{
    // version NAVIN9.00.00.51883,TFS225680,TFS223871

    CaptionML = ENU='Detailed GST Ledger Entry',
                ENN='Detailed GST Ledger Entry';
    DrillDownPageID = 16419;
    LookupPageID = 16419;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Entry Type";Option)
        {
            CaptionML = ENU='Entry Type',
                        ENN='Entry Type';
            OptionCaptionML = ENU='Initial Entry,Application,Adjustment Entry',
                              ENN='Initial Entry,Application,Adjustment Entry';
            OptionMembers = "Initial Entry",Application,"Adjustment Entry";
        }
        field(3;"Transaction Type";Option)
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
            OptionCaptionML = ENU='Purchase,Sales,Transfer,Settlement',
                              ENN='Purchase,Sales,Transfer,Settlement';
            OptionMembers = Purchase,Sales,Transfer,Settlement;
        }
        field(4;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,,,,Refund',
                              ENN=' ,Payment,Invoice,Credit Memo,,,,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo",,,,Refund;
        }
        field(5;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(6;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(8;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)',
                              ENN=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(9;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
            TableRelation = IF (Type=CONST("G/L Account")) "G/L Account"
                            ELSE IF (Type=CONST(Item)) Item
                            ELSE IF (Type=CONST(Resource)) Resource
                            ELSE IF (Type=CONST("Fixed Asset")) "Fixed Asset"
                            ELSE IF (Type=CONST("Charge (Item)")) "Item Charge";
        }
        field(10;"Product Type";Option)
        {
            CaptionML = ENU='Product Type',
                        ENN='Product Type';
            OptionCaptionML = ENU=' ,Item,Capital Goods',
                              ENN=' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(11;"Source Type";Option)
        {
            CaptionML = ENU='Source Type',
                        ENN='Source Type';
            OptionCaptionML = ENU=' ,Customer,Vendor,Bank Account,Party',
                              ENN=' ,Customer,Vendor,Bank Account,Party';
            OptionMembers = " ",Customer,Vendor,"Bank Account",Party;
        }
        field(12;"Source No.";Code[20])
        {
            CaptionML = ENU='Source No.',
                        ENN='Source No.';
            TableRelation = IF ("Source Type"=CONST(Customer)) Customer
                            ELSE IF ("Source Type"=CONST(Vendor)) Vendor;
        }
        field(13;"HSN/SAC Code";Code[8])
        {
            CaptionML = ENU='HSN/SAC Code',
                        ENN='HSN/SAC Code';
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(14;"GST Component Code";Code[10])
        {
            CaptionML = ENU='GST Component Code',
                        ENN='GST Component Code';
            TableRelation = "GST Component";
        }
        field(15;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            TableRelation = "GST Group";
        }
        field(16;"GST Jurisdiction Type";Option)
        {
            CaptionML = ENU='GST Jurisdiction Type',
                        ENN='GST Jurisdiction Type';
            OptionCaptionML = ENU='Intrastate,Interstate',
                              ENN='Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(17;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
        }
        field(18;"GST %";Decimal)
        {
            CaptionML = ENU='GST %',
                        ENN='GST %';
            DecimalPlaces = 2:3;
        }
        field(19;"GST Amount";Decimal)
        {
            CaptionML = ENU='GST Amount',
                        ENN='GST Amount';
        }
        field(20;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
        }
        field(22;"Amount Loaded on Item";Decimal)
        {
            CaptionML = ENU='Amount Loaded on Item',
                        ENN='Amount Loaded on Item';
        }
        field(25;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
        }
        field(29;"GST Without Payment of Duty";Boolean)
        {
            CaptionML = ENU='GST Without Payment of Duty',
                        ENN='GST Without Payment of Duty';
        }
        field(30;"G/L Account No.";Code[20])
        {
            CaptionML = ENU='G/L Account No.',
                        ENN='G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(32;"Reversed by Entry No.";Integer)
        {
            CaptionML = ENU='Reversed by Entry No.',
                        ENN='Reversed by Entry No.';
        }
        field(33;Reversed;Boolean)
        {
            CaptionML = ENU='Reversed',
                        ENN='Reversed';
        }
        field(35;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(38;Positive;Boolean)
        {
            CaptionML = ENU='Positive',
                        ENN='Positive';
        }
        field(42;"Document Line No.";Integer)
        {
            CaptionML = ENU='Document Line No.',
                        ENN='Document Line No.';
        }
        field(43;"Item Charge Entry";Boolean)
        {
            CaptionML = ENU='Item Charge Entry',
                        ENN='Item Charge Entry';
        }
        field(44;"Reverse Charge";Boolean)
        {
            CaptionML = ENU='Reverse Charge',
                        ENN='Reverse Charge';
        }
        field(45;"GST on Advance Payment";Boolean)
        {
            CaptionML = ENU='GST on Advance Payment',
                        ENN='GST on Advance Payment';
        }
        field(46;"Nature of Supply";Option)
        {
            CaptionML = ENU='Nature of Supply',
                        ENN='Nature of Supply';
            OptionCaptionML = ENU='B2B,B2C',
                              ENN='B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(48;"Payment Document No.";Code[20])
        {
            CaptionML = ENU='Payment Document No.',
                        ENN='Payment Document No.';
        }
        field(52;"GST Exempted Goods";Boolean)
        {
            CaptionML = ENU='GST Exempted Goods',
                        ENN='GST Exempted Goods';
        }
        field(53;"Location State Code";Code[10])
        {
            CaptionML = ENU='Location State Code',
                        ENN='Location State Code';
        }
        field(54;"Buyer/Seller State Code";Code[10])
        {
            CaptionML = ENU='Buyer/Seller State Code',
                        ENN='Buyer/Seller State Code';
            TableRelation = State;
        }
        field(55;"Shipping Address State Code";Code[10])
        {
            CaptionML = ENU='Shipping Address State Code',
                        ENN='Shipping Address State Code';
            TableRelation = State;
        }
        field(56;"Location  Reg. No.";Code[15])
        {
            CaptionML = ENU='Location  Reg. No.',
                        ENN='Location  Reg. No.';
        }
        field(57;"Buyer/Seller Reg. No.";Code[15])
        {
            CaptionML = ENU='Buyer/Seller Reg. No.',
                        ENN='Buyer/Seller Reg. No.';
        }
        field(58;"GST Group Type";Option)
        {
            CaptionML = ENU='GST Group Type',
                        ENN='GST Group Type';
            OptionCaptionML = ENU='Goods,Service',
                              ENN='Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(59;"GST Credit";Option)
        {
            CaptionML = ENU='GST Credit',
                        ENN='GST Credit';
            OptionCaptionML = ENU=' ,Availment,Non-Availment',
                              ENN=' ,Availment,Non-Availment';
            OptionMembers = " ",Availment,"Non-Availment";
        }
        field(61;"Reversal Entry";Boolean)
        {
            CaptionML = ENU='Reversal Entry',
                        ENN='Reversal Entry';
        }
        field(62;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
        }
        field(63;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        ENN='Currency Code';
        }
        field(64;"Currency Factor";Decimal)
        {
            CaptionML = ENU='Currency Factor',
                        ENN='Currency Factor';
            DecimalPlaces = 1:6;
        }
        field(65;"Application Doc. Type";Option)
        {
            CaptionML = ENU='Application Doc. Type',
                        ENN='Application Doc. Type';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Transfer,Finance Charge Memo,Reminder,Refund',
                              ENN=' ,Payment,Invoice,Credit Memo,Transfer,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo",Transfer,"Finance Charge Memo",Reminder,Refund;
        }
        field(66;"Application Doc. No";Code[20])
        {
            CaptionML = ENU='Application Doc. No',
                        ENN='Application Doc. No';
        }
        field(67;"Original Doc. Type";Option)
        {
            CaptionML = ENU='Original Doc. Type',
                        ENN='Original Doc. Type';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Transfer,Finance Charge Memo,Reminder,Refund,Transfer Shipment,Transfer Receipt',
                              ENN=' ,Payment,Invoice,Credit Memo,Transfer,Finance Charge Memo,Reminder,Refund,Transfer Shipment,Transfer Receipt';
            OptionMembers = " ",Payment,Invoice,"Credit Memo",Transfer,"Finance Charge Memo",Reminder,Refund,"Transfer Shipment","Transfer Receipt";
        }
        field(68;"Original Doc. No.";Code[20])
        {
            CaptionML = ENU='Original Doc. No.',
                        ENN='Original Doc. No.';
        }
        field(69;"Applied From Entry No.";Integer)
        {
            CaptionML = ENU='Applied From Entry No.',
                        ENN='Applied From Entry No.';
        }
        field(70;"Reversed Entry No.";Integer)
        {
            CaptionML = ENU='Reversed Entry No.',
                        ENN='Reversed Entry No.';
        }
        field(71;"Remaining Closed";Boolean)
        {
            CaptionML = ENU='Remaining Closed',
                        ENN='Remaining Closed';
        }
        field(72;"GST Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Rounding Precision',
                        ENN='GST Rounding Precision';
        }
        field(73;"GST Rounding Type";Option)
        {
            CaptionML = ENU='GST Rounding Type',
                        ENN='GST Rounding Type';
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(74;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(75;"GST Customer Type";Option)
        {
            CaptionML = ENU='GST Customer Type',
                        ENN='GST Customer Type';
            Editable = true;
            OptionCaptionML = ENU=' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN=' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(76;"GST Vendor Type";Option)
        {
            CaptionML = ENU='GST Vendor Type',
                        ENN='GST Vendor Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Registered,Composite,Unregistered,Import,Exempted,SEZ',
                              ENN=' ,Registered,Composite,Unregistered,Import,Exempted,SEZ';
            OptionMembers = " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;
        }
        field(77;"CLE/VLE Entry No.";Integer)
        {
            CaptionML = ENU='CLE/VLE Entry No.',
                        ENN='CLE/VLE Entry No.';
        }
        field(78;"Bill Of Export No.";Code[20])
        {
            CaptionML = ENU='Bill Of Export No.',
                        ENN='Bill Of Export No.';
        }
        field(79;"Bill Of Export Date";Date)
        {
            CaptionML = ENU='Bill Of Export Date',
                        ENN='Bill Of Export Date';
        }
        field(80;"e-Comm. Merchant Id";Code[30])
        {
            CaptionML = ENU='e-Comm. Merchant Id',
                        ENN='e-Comm. Merchant Id';
        }
        field(81;"e-Comm. Operator GST Reg. No.";Code[15])
        {
            CaptionML = ENU='e-Comm. Operator GST Reg. No.',
                        ENN='e-Comm. Operator GST Reg. No.';
        }
        field(82;"Sales Invoice Type";Option)
        {
            CaptionML = ENU='Sales Invoice Type',
                        ENN='Sales Invoice Type';
            OptionCaptionML = ENU=' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN=' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(83;"Original Invoice No.";Code[20])
        {
            CaptionML = ENU='Original Invoice No.',
                        ENN='Original Invoice No.';
        }
        field(84;"Original Invoice Date";Date)
        {
            CaptionML = ENU='Original Invoice Date',
                        ENN='Original Invoice Date';
        }
        field(85;"Reconciliation Month";Integer)
        {
            CaptionML = ENU='Reconciliation Month',
                        ENN='Reconciliation Month';
        }
        field(86;"Reconciliation Year";Integer)
        {
            CaptionML = ENU='Reconciliation Year',
                        ENN='Reconciliation Year';
        }
        field(87;Reconciled;Boolean)
        {
            CaptionML = ENU='Reconciled',
                        ENN='Reconciled';
        }
        field(88;"Credit Availed";Boolean)
        {
            CaptionML = ENU='Credit Availed',
                        ENN='Credit Availed';
        }
        field(89;Paid;Boolean)
        {
            CaptionML = ENU='Paid',
                        ENN='Paid';
        }
        field(90;"Amount to Customer/Vendor";Decimal)
        {
            CaptionML = ENU='Amount to Customer/Vendor',
                        ENN='Amount to Customer/Vendor';
        }
        field(91;"Credit Adjustment Type";Option)
        {
            CaptionML = ENU='Credit Adjustment Type',
                        ENN='Credit Adjustment Type';
            OptionCaptionML = ENU=' ,Credit Reversal,Credit Re-Availment,Permanent Reversal,Credit Availment,Reversal of Availment',
                              ENN=' ,Credit Reversal,Credit Re-Availment,Permanent Reversal,Credit Availment,Reversal of Availment';
            OptionMembers = " ","Credit Reversal","Credit Re-Availment","Permanent Reversal","Credit Availment","Reversal of Availment";
        }
        field(92;"Adv. Pmt. Adjustment";Boolean)
        {
            CaptionML = ENU='Adv. Pmt. Adjustment',
                        ENN='Adv. Pmt. Adjustment';
            Editable = false;
        }
        field(93;"Original Adv. Pmt Doc. No.";Code[20])
        {
            CaptionML = ENU='Original Adv. Pmt Doc. No.',
                        ENN='Original Adv. Pmt Doc. No.';
            Editable = false;
        }
        field(94;"Original Adv. Pmt Doc. Date";Date)
        {
            CaptionML = ENU='Original Adv. Pmt Doc. Date',
                        ENN='Original Adv. Pmt Doc. Date';
            Editable = false;
        }
        field(96;"Payment Document Date";Date)
        {
            CaptionML = ENU='Payment Document Date',
                        ENN='Payment Document Date';
        }
        field(97;Cess;Boolean)
        {
            CaptionML = ENU='Cess',
                        ENN='Cess';
        }
        field(98;UnApplied;Boolean)
        {
            CaptionML = ENU='UnApplied',
                        ENN='UnApplied';
        }
        field(99;"Item Ledger Entry No.";Integer)
        {
            CaptionML = ENU='Item Ledger Entry No.',
                        ENN='Item Ledger Entry No.';
            Editable = false;
            TableRelation = "Item Ledger Entry" WHERE ("Entry No."=FIELD("Item Ledger Entry No."));
        }
        field(100;"Credit Reversal";Option)
        {
            CaptionML = ENU='Credit Reversal',
                        ENN='Credit Reversal';
            OptionCaptionML = ENU=' ,Sub-con',
                              ENN=' ,Sub-con';
            OptionMembers = " ","Sub-con";
        }
        field(101;"GST Place of Supply";Option)
        {
            CaptionML = ENU='GST Place of Supply',
                        ENN='GST Place of Supply';
            Editable = false;
            OptionCaptionML = ENU=' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN=' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";
        }
        field(102;"Item Charge Assgn. Line No.";Integer)
        {
            CaptionML = ENU='Item Charge Assgn. Line No.',
                        ENN='Item Charge Assgn. Line No.';
        }
        field(103;"Payment Type";Option)
        {
            CaptionML = ENU='Payment Type',
                        ENN='Payment Type';
            OptionCaptionML = ENU=' ,Advance,Normal',
                              ENN=' ,Advance,Normal';
            OptionMembers = " ",Advance,Normal;
        }
        field(104;Distributed;Boolean)
        {
            CaptionML = ENU='Distributed',
                        ENN='Distributed';
        }
        field(105;"Distributed Reversed";Boolean)
        {
            CaptionML = ENU='Distributed Reversed',
                        ENN='Distributed Reversed';
        }
        field(106;"Input Service Distribution";Boolean)
        {
            CaptionML = ENU='Input Service Distribution',
                        ENN='Input Service Distribution';
            Editable = false;
        }
        field(107;Opening;Boolean)
        {
            CaptionML = ENU='Opening',
                        ENN='Opening';
        }
        field(108;"Remaining Amount Closed";Boolean)
        {
            CaptionML = ENU='Remaining Amount Closed',
                        ENN='Remaining Amount Closed';
            Editable = false;
        }
        field(109;"Remaining Base Amount";Decimal)
        {
            CaptionML = ENU='Remaining Base Amount',
                        ENN='Remaining Base Amount';
            Editable = false;
        }
        field(110;"Remaining GST Amount";Decimal)
        {
            CaptionML = ENU='Remaining GST Amount',
                        ENN='Remaining GST Amount';
            Editable = false;
        }
        field(112;"Gen. Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        ENN='Gen. Bus. Posting Group';
            Editable = false;
            TableRelation = "Gen. Business Posting Group";
        }
        field(113;"Gen. Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        ENN='Gen. Prod. Posting Group';
            Editable = false;
            TableRelation = "Gen. Product Posting Group";
        }
        field(114;"Reason Code";Code[10])
        {
            CaptionML = ENU='Reason Code',
                        ENN='Reason Code';
            Editable = false;
            TableRelation = "Reason Code";
        }
        field(115;"Dist. Document No.";Code[20])
        {
            CaptionML = ENU='Dist. Document No.',
                        ENN='Dist. Document No.';
        }
        field(116;"Associated Enterprises";Boolean)
        {
            CaptionML = ENU='Associated Enterprises',
                        ENN='Associated Enterprises';
            Editable = false;
        }
        field(117;"Delivery Challan Amount";Decimal)
        {
            CaptionML = ENU='Delivery Challan Amount',
                        ENN='Delivery Challan Amount';
        }
        field(118;"Liable to Pay";Boolean)
        {
            CaptionML = ENU='Liable to Pay',
                        ENN='Liable to Pay';
            Editable = false;
        }
        field(119;"Subcon Document No.";Code[20])
        {
            CaptionML = ENU='Subcon Document No.',
                        ENN='Subcon Document No.';
        }
        field(120;"Last Credit Adjusted Date";Date)
        {
            CaptionML = ENU='Last Credit Adjusted Date',
                        ENN='Last Credit Adjusted Date';
        }
        field(121;"Dist. Input GST Credit";Boolean)
        {
            CaptionML = ENU='Dist. Input GST Credit',
                        ENN='Dist. Input GST Credit';
        }
        field(122;"Component Calc. Type";Option)
        {
            CaptionML = ENU='Component Calc. Type',
                        ENN='Component Calc. Type';
            OptionCaptionML = ENU='General,Threshold,Cess %,Cess % + Amount / Unit Factor,Cess % Or Amount / Unit Factor Whichever Higher,Amount / Unit Factor',
                              ENN='General,Threshold,Cess %,Cess % + Amount / Unit Factor,Cess % Or Amount / Unit Factor Whichever Higher,Amount / Unit Factor';
            OptionMembers = General,Threshold,"Cess %","Cess % + Amount / Unit Factor","Cess % Or Amount / Unit Factor Whichever Higher","Amount / Unit Factor";
        }
        field(123;"Cess Amount Per Unit Factor";Decimal)
        {
            CaptionML = ENU='Cess Amount Per Unit Factor',
                        ENN='Cess Amount Per Unit Factor';
        }
        field(124;"Cess UOM";Code[10])
        {
            CaptionML = ENU='Cess UOM',
                        ENN='Cess UOM';
            TableRelation = "Unit of Measure";
        }
        field(125;"Cess Factor Quantity";Decimal)
        {
            CaptionML = ENU='Cess Factor Quantity',
                        ENN='Cess Factor Quantity';
        }
        field(126;"Dist. Reverse Document No.";Code[20])
        {
            CaptionML = ENU='Dist. Reverse Document No.',
                        ENN='Dist. Reverse Document No.';
        }
        field(127;UOM;Code[10])
        {
            CaptionML = ENU='UOM',
                        ENN='UOM';
            TableRelation = "Unit of Measure";
        }
        field(128;"Purchase Invoice Type";Option)
        {
            CaptionML = ENU='Purchase Invoice Type',
                        ENN='Purchase Invoice Type';
            OptionCaptionML = ENU=' ,Self Invoice,Debit Note,Supplementary,Non-GST',
                              ENN=' ,Self Invoice,Debit Note,Supplementary,Non-GST';
            OptionMembers = " ","Self Invoice","Debit Note",Supplementary,"Non-GST";
        }
        field(129;"Bank Charge Entry";Boolean)
        {
            CaptionML = ENU='Bank Charge Entry',
                        ENN='Bank Charge Entry';
        }
        field(130;"Foreign Exchange";Boolean)
        {
            CaptionML = ENU='Foreign Exchange',
                        ENN='Foreign Exchange';
        }
        field(131;"Bill of Entry No.";Text[20])
        {
            CaptionML = ENU='Bill of Entry No.',
                        ENN='Bill of Entry No.';
        }
        field(132;"Bill of Entry Date";Date)
        {
            CaptionML = ENU='Bill of Entry Date',
                        ENN='Bill of Entry Date';
        }
        field(133;"Eligibility for ITC";Option)
        {
            CaptionML = ENU='Eligibility for ITC',
                        ENN='Eligibility for ITC';
            OptionCaptionML = ENU=' ,Ineligible,Input Services,Capital goods,Inputs',
                              ENN=' ,Ineligible,Input Services,Capital goods,Inputs';
            OptionMembers = " ",Ineligible,"Input Services","Capital goods",Inputs;
        }
        field(134;"GST Assessable Value";Decimal)
        {
            CaptionML = ENU='GST Assessable Value',
                        ENN='GST Assessable Value';
        }
        field(135;"GST Reason Type";Option)
        {
            CaptionML = ENU='GST Reason Type',
                        ENN='GST Reason Type';
            OptionCaptionML = ENU=' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others',
                              ENN=' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others';
            OptionMembers = " ","Sales Return","Post Sale Discount","Deficiency in Service","Correction in Invoice","Change in POS","Finalization of Provisional Assessment",Others;
        }
        field(136;"GST Rate %";Decimal)
        {
            CaptionML = ENU='GST Rate %',
                        ENN='GST Rate %';
        }
        field(137;"Jnl. Bank Charge";Code[10])
        {
            CaptionML = ENU='Bank Charge',
                        ENN='Bank Charge';
            TableRelation = "Bank Charge";
        }
        field(138;"GST Inv. Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Inv. Rounding Precision',
                        ENN='GST Inv. Rounding Precision';
            Editable = false;
        }
        field(139;"GST Inv. Rounding Type";Option)
        {
            CaptionML = ENU='GST Inv. Rounding Type',
                        ENN='GST Inv. Rounding Type';
            Editable = false;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(140;"RCM Exempt";Boolean)
        {
            CaptionML = ENU='RCM Exempt',
                        ENN='RCM Exempt';
        }
        field(141;"RCM Exempt Transaction";Boolean)
        {
            CaptionML = ENU='RCM Exempt Transaction',
                        ENN='RCM Exempt Transaction';
        }
        field(142;"Order Address Code";Code[10])
        {
            CaptionML = ENU='Order Address Code',
                        ENN='Order Address Code';
        }
        field(143;"Cr. & Libty. Adjustment Type";Option)
        {
            CaptionML = ENU='Cr. & Libty. Adjustment Type',
                        ENN='Cr. & Libty. Adjustment Type';
            OptionCaptionML = ENU=' ,Generate,Reverse',
                              ENN=' ,Generate,Reverse';
            OptionMembers = " ",Generate,Reverse;
        }
        field(144;"AdjustmentBase Amount";Decimal)
        {
            CaptionML = ENU='AdjustmentBase Amount',
                        ENN='AdjustmentBase Amount';
        }
        field(145;"Adjustment Amount";Decimal)
        {
            CaptionML = ENU='Adjustment Amount',
                        ENN='Adjustment Amount';
        }
        field(146;"Bill to-Location(POS)";Code[10])
        {
            CaptionML = ENU='Bill to-Location(POS)',
                        ENN='Bill to-Location(POS)';
            Editable = false;
        }
        field(147;"Custom Duty Amount";Decimal)
        {
            CaptionML = ENU='Custom Duty Amount',
                        ENN='Custom Duty Amount';
        }
        field(148;"Journal Entry";Boolean)
        {
            CaptionML = ENU='Journal Entry',
                        ENN='Journal Entry';
            Editable = false;
        }
        field(149;"Recurring Journal";Boolean)
        {
            CaptionML = ENU='Recurring Journal',
                        ENN='Recurring Journal';
        }
        field(150;"Allocations Line No.";Integer)
        {
            CaptionML = ENU='Allocations Line No.',
                        ENN='Allocations Line No.';
        }
        field(156;"GST Journal Type";Option)
        {
            CaptionML = ENU='GST Journal Type',
                        ENN='GST Journal Type';
            OptionCaptionML = ENU=' ,GST Adjustment Journal',
                              ENN=' ,GST Adjustment Journal';
            OptionMembers = " ","GST Adjustment Journal";
        }
        field(157;"Adjustment Type";Option)
        {
            CaptionML = ENU='Adjustment Type',
                        ENN='Adjustment Type';
            OptionCaptionML = ENU=' ,Lost/Distroyed,Consumed',
                              ENN=' ,Lost/Distroyed,Consumed';
            OptionMembers = " ","Lost/Distroyed",Consumed;
        }
        field(158;"Remaining Quantity";Decimal)
        {
            CaptionML = ENU='Remaining Quantity',
                        ENN='Remaining Quantity';
        }
        field(159;"ARN No.";Code[15])
        {
            CaptionML = ENU='ARN No.',
                        ENN='ARN No.';
        }
        field(160;"Ship-to Code";Code[10])
        {
            CaptionML = ENU='Ship-to Code',
                        ENN='Ship-to Code';
            TableRelation = "Ship-to Address".Code;
        }
        field(161;"FA Journal Entry";Boolean)
        {
            CaptionML = ENU='FA Journal Entry',
                        ENN='FA Journal Entry';
        }
        field(162;"Without Bill Of Entry";Boolean)
        {
            CaptionML = ENU='Without Bill Of Entry',
                        ENN='Without Bill Of Entry';
        }
        field(163;"Finance Charge Memo";Boolean)
        {
            CaptionML = ENU='Finance Charge Memo',
                        ENN='Finance Charge Memo';
        }
        field(164;"Forex Fluctuation";Boolean)
        {
            CaptionML = ENU='Forex Fluctuation',
                        ENN='Forex Fluctuation';
        }
        field(165;"Depreciation Book Code";Code[10])
        {
            CaptionML = ENU='Depreciation Book Code',
                        ENN='Depreciation Book Code';
            TableRelation = "Depreciation Book";
        }
        field(166;"Fluctuation Amt. Credit";Boolean)
        {
            CaptionML = ENU='Fluctuation Amt. Credit',
                        ENN='Fluctuation Amt. Credit';
        }
        field(167;"CAJ %";Decimal)
        {
            CaptionML = ENU='CAJ %',
                        ENN='CAJ %';
            DataClassification = ToBeClassified;
        }
        field(168;"CAJ Amount";Decimal)
        {
            CaptionML = ENU='CAJ Amount',
                        ENN='CAJ Amount';
            DataClassification = ToBeClassified;
        }
        field(169;"CAJ % Permanent Reversal";Decimal)
        {
            CaptionML = ENU='CAJ % Permanent Reversal',
                        ENN='CAJ % Permanent Reversal';
            DataClassification = ToBeClassified;
        }
        field(170;"CAJ Amount Permanent Reversal";Decimal)
        {
            CaptionML = ENU='CAJ Amount Permanent Reversal',
                        ENN='CAJ Amount Permanent Reversal';
            DataClassification = ToBeClassified;
        }
        field(171;"Location ARN No.";Code[15])
        {
            CaptionML = ENU='Location ARN No.',
                        ENN='Location ARN No.';
        }
        field(180;"Rate Change Applicable";Boolean)
        {
            CaptionML = ENU='Rate Change Applicable',
                        ENN='Rate Change Applicable';
        }
        field(181;"Remaining CAJ Adj. Base Amt";Decimal)
        {
            CaptionML = ENU='Remaining CAJ Adj. Base Amt',
                        ENN='Remaining CAJ Adj. Base Amt';
        }
        field(182;"Remaining CAJ Adj. Amt";Decimal)
        {
            CaptionML = ENU='Remaining CAJ Adj. Amt',
                        ENN='Remaining CAJ Adj. Amt';
        }
        field(183;"CAJ Base Amount";Decimal)
        {
            CaptionML = ENU='CAJ Base Amount',
                        ENN='CAJ Base Amount';
        }
        field(184;"POS as Vendor State";Boolean)
        {
            CaptionML = ENU='POS as Vendor State',
                        ENN='POS as Vendor State';
        }
        field(185;"GST Base Amount FCY";Decimal)
        {
            CaptionML = ENU='GST Base Amount FCY',
                        ENN='GST Base Amount FCY';
        }
        field(186;"GST Amount FCY";Decimal)
        {
            CaptionML = ENU='GST Amount FCY',
                        ENN='GST Amount FCY';
        }
        field(187;"POS Out Of India";Boolean)
        {
            CaptionML = ENU='POS Out Of India',
                        ENN='POS Out Of India';
            DataClassification = ToBeClassified;
        }
        field(188;"From Location Code";Code[10])
        {
            CaptionML = ENU='From Location Code',
                        ENN='From Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(189;"To Location Code";Code[10])
        {
            CaptionML = ENU='To Location Code',
                        ENN='To Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(190;"Port Code";Code[10])
        {
            CaptionML = ENU='Port Code',
                        ENN='Port Code';
            DataClassification = ToBeClassified;
        }
        field(191;"Ship-to Reg. No";Code[15])
        {
            CaptionML = ENU='Ship-to Reg. No',
                        ENN='Ship-to Reg. No';
            DataClassification = ToBeClassified;
        }
        field(192;"Ship-to Customer Type";Option)
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
        key(Key2;"Transaction No.")
        {
        }
        key(Key3;"Transaction Type","Location  Reg. No.","Document Type",Reconciled,"GST Vendor Type",Reversed,"Posting Date",Paid,"Credit Adjustment Type")
        {
        }
        key(Key4;"Location  Reg. No.","Transaction Type","Entry Type","GST Vendor Type","GST Credit","Reconciliation Month","Reconciliation Year")
        {
        }
        key(Key5;"Document No.","Document Line No.","GST Component Code")
        {
        }
        key(Key6;"Transaction Type","Document Type","Document No.","Document Line No.")
        {
        }
        key(Key7;"Payment Document No.")
        {
        }
        key(Key8;"Transaction Type","Document No.","Entry Type","HSN/SAC Code",Cess,"Document Line No.")
        {
        }
        key(Key9;"Transaction Type","Document Type","Document No.","Transaction No.")
        {
        }
        key(Key10;"CLE/VLE Entry No.","GST Group Code")
        {
        }
        key(Key11;"Document No.","HSN/SAC Code")
        {
            SumIndexFields = "GST Base Amount","GST Amount";
        }
        key(Key12;"Transaction Type","Source No.","Original Doc. Type","Original Doc. No.","GST Group Code")
        {
        }
        key(Key13;"Transaction Type","Source No.","CLE/VLE Entry No.","Document Type","Document No.","GST Group Code")
        {
        }
        key(Key14;"Transaction Type","Document Type","Document No.","Document Line No.","GST Component Code")
        {
            SumIndexFields = "GST Amount";
        }
        key(Key15;"Transaction Type","Source Type","Source No.","Document Type","Document No.","GST Group Type")
        {
        }
        key(Key16;"Location  Reg. No.","Transaction Type",Paid,"Entry Type","Original Doc. Type","Posting Date","Reverse Charge","GST Credit","Payment Type","GST Component Code")
        {
        }
        key(Key17;"Document No.","GST Component Code")
        {
        }
        key(Key18;"Entry Type","Transaction Type","Document Type","Document No.","Document Line No.")
        {
        }
        key(Key19;"Transaction Type","Entry Type","Document No.","Document Line No.")
        {
        }
        key(Key20;"Dist. Document No.",Distributed)
        {
        }
        key(Key21;"Location  Reg. No.",Reconciled,"Reconciliation Month","Reconciliation Year")
        {
        }
        key(Key22;"Location  Reg. No.","Transaction Type","Entry Type","GST Vendor Type","GST Credit","Posting Date","Source No.","Document Type","Document No.")
        {
        }
        key(Key23;"Location  Reg. No.","Transaction Type","Entry Type","GST Vendor Type","GST Credit","Posting Date","Source No.","Document Type","Document No.","Document Line No.")
        {
        }
        key(Key24;"Transaction Type","GST Jurisdiction Type","Source No.","Document Type","Document No.","Posting Date")
        {
        }
        key(Key25;"Location  Reg. No.","GST Component Code",Paid,"Posting Date","Liable to Pay","Reverse Charge")
        {
        }
        key(Key26;"Location  Reg. No.","GST Component Code",Paid,"Posting Date","Credit Availed")
        {
        }
        key(Key27;"Location  Reg. No.","Posting Date","Entry Type","Transaction Type","Document Type")
        {
        }
        key(Key28;"Location  Reg. No.","Document Type","Document No.","HSN/SAC Code","GST %")
        {
            SumIndexFields = "GST Amount";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        //modified by durga on 09-08-2021
        User.Reset;
        User.SetFilter("User Name",UserId);
        if User.FindFirst then
          begin
            if not( User.Tams_Dept in ['ERP']) then//modified by durga on 09-08-2021
              Error('You don''t have Permissions');
          end
          else
            Error('User not found. Contact ERP');
    end;

    trigger OnInsert();
    begin
        //GenJnlPostPreview.SaveDetailedGSTLedgerEntry(Rec);
    end;

    trigger OnModify();
    begin
        //modified by durga 09-08-2021
        User.Reset;
        User.SetFilter("User Name",UserId);
        if User.FindFirst then
          begin
            if (not( User.Tams_Dept in ['ERP']) and not (User."User Name" in ['EFFTRONICS\VHARIPRASAD','EFFTRONICS\PARDHU','EFFTRONICS\PADMASRI'])) then//modified by durga on 09-08-2021
              Error('You don''t have Permissions');
          end
          else
            Error('User not found. Contact ERP');
    end;

    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
        User : Record User;

    [LineStart(62870)]
    procedure SuggestItemLedgerEntries();
    var
        GSTTrackingEntry : Record "GST Tracking Entry";
        FromEntryNo : Integer;
        FromToNo : Integer;
    begin
        /*GSTTrackingEntry.RESET;
        IF "Original Doc. Type" = "Original Doc. Type"::"Transfer Receipt" THEN BEGIN
          FromEntryNo := GSTManagement.GetFromEntryNo("Document No.","Document Line No.","Original Doc. Type");
          FromToNo := GSTManagement.GetFromToNo("Document No.","Document Line No.","Original Doc. Type");
        END ELSE BEGIN
          FromEntryNo := GSTManagement.GetFromEntryNo("Document No.","Document Line No.","Original Doc. Type");
          FromToNo := GSTManagement.GetFromToNo("Document No.","Document Line No.","Original Doc. Type");
        END;
        GSTTrackingEntry.SETRANGE("From Entry No.",FromEntryNo);
        GSTTrackingEntry.SETRANGE("From To No.",FromToNo);
        PAGE.RUNMODAL(PAGE::"GST Tracking Entry",GSTTrackingEntry);
        */

    end;
}


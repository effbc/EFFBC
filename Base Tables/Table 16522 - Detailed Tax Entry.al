table 16522 "Detailed Tax Entry"
{
    // version NAVIN9.00.00.50221

    CaptionML = ENU='Detailed Tax Entry',
                ENN='Detailed Tax Entry';
    DrillDownPageID = 16541;
    LookupPageID = 16541;
    Permissions = TableData "Detailed Tax Entry"=rimd;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            Editable = true;
        }
        field(2;"Entry Type";Option)
        {
            CaptionML = ENU='Entry Type',
                        ENN='Entry Type';
            Editable = false;
            OptionCaptionML = ENU='Initial Entry,Adjustment',
                              ENN='Initial Entry,Adjustment';
            OptionMembers = "Initial Entry",Adjustment;
        }
        field(3;"Transaction Type";Option)
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
            OptionCaptionML = ENU=' ,Purchase,Sale',
                              ENN=' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(4;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
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
        field(7;"Adjustment Type";Option)
        {
            CaptionML = ENU='Adjustment Type',
                        ENN='Adjustment Type';
            OptionCaptionML = ENU=' ,Change in Usage,Branch Transfer,Lost/Destroy,Consumed,Credit Memo',
                              ENN=' ,Change in Usage,Branch Transfer,Lost/Destroy,Consumed,Credit Memo';
            OptionMembers = " ","Change in Usage","Branch Transfer","Lost/Destroy",Consumed,"Credit Memo";
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
            TableRelation = IF (Type=CONST(" ")) "Standard Text"
                            ELSE IF (Type=CONST("G/L Account")) "G/L Account"
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
            OptionCaptionML = ENU=' ,Customer,Vendor',
                              ENN=' ,Customer,Vendor';
            OptionMembers = " ",Customer,Vendor;
        }
        field(12;"Source No.";Code[20])
        {
            CaptionML = ENU='Source No.',
                        ENN='Source No.';
            TableRelation = IF ("Source Type"=CONST(Customer)) Customer
                            ELSE IF ("Source Type"=CONST(Vendor)) Vendor;
        }
        field(13;"Tax Base Amount";Decimal)
        {
            CaptionML = ENU='Tax Base Amount',
                        ENN='Tax Base Amount';
            DecimalPlaces = 2:5;
        }
        field(14;"Tax %";Decimal)
        {
            CaptionML = ENU='Tax %',
                        ENN='Tax %';
        }
        field(15;"Non ITC Claimable Usage %";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Non ITC Claimable Usage %',
                        ENN='Non ITC Claimable Usage %';
            InitValue = 0;
        }
        field(16;"Tax Amount";Decimal)
        {
            CaptionML = ENU='Tax Amount',
                        ENN='Tax Amount';
            DecimalPlaces = 2:5;
        }
        field(17;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
        }
        field(19;"Input Credit/Output Tax Amount";Decimal)
        {
            CaptionML = ENU='Input Credit/Output Tax Amount',
                        ENN='Input Credit/Output Tax Amount';
            DecimalPlaces = 2:5;
        }
        field(20;"Amount Loaded on Item";Decimal)
        {
            CaptionML = ENU='Amount Loaded on Item',
                        ENN='Amount Loaded on Item';
            DecimalPlaces = 2:5;
        }
        field(21;"State Code";Code[10])
        {
            CaptionML = ENU='State Code',
                        ENN='State Code';
            TableRelation = State;
        }
        field(22;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location;
        }
        field(23;"Purch. Tax %";Decimal)
        {
            CaptionML = ENU='Purch. Tax %',
                        ENN='Purch. Tax %';
        }
        field(25;"Adjusted by Entry No.";Integer)
        {
            CaptionML = ENU='Adjusted by Entry No.',
                        ENN='Adjusted by Entry No.';
        }
        field(26;"Tax Area Code";Code[20])
        {
            CaptionML = ENU='Tax Area Code',
                        ENN='Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(27;"Tax Jurisdiction Code";Code[10])
        {
            CaptionML = ENU='Tax Jurisdiction Code',
                        ENN='Tax Jurisdiction Code';
            TableRelation = "Tax Jurisdiction";
        }
        field(29;"Tax Period";DateFormula)
        {
            CaptionML = ENU='Tax Period',
                        ENN='Tax Period';
        }
        field(30;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
        }
        field(31;Closed;Boolean)
        {
            CaptionML = ENU='Closed',
                        ENN='Closed';
        }
        field(32;"Remaining Tax Amount";Decimal)
        {
            CaptionML = ENU='Remaining Tax Amount',
                        ENN='Remaining Tax Amount';
            DecimalPlaces = 2:5;
        }
        field(33;"Export or Deemed Export";Boolean)
        {
            CaptionML = ENU='Export or Deemed Export',
                        ENN='Export or Deemed Export';
        }
        field(35;"G/L Account No.";Code[20])
        {
            CaptionML = ENU='G/L Account No.',
                        ENN='G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(36;"Remaining Quantity";Decimal)
        {
            CaptionML = ENU='Remaining Quantity',
                        ENN='Remaining Quantity';
        }
        field(37;Deferment;Boolean)
        {
            CaptionML = ENU='Deferment',
                        ENN='Deferment';
        }
        field(38;"Reversed by Entry No.";Integer)
        {
            CaptionML = ENU='Reversed by Entry No.',
                        ENN='Reversed by Entry No.';
        }
        field(39;Reversed;Boolean)
        {
            CaptionML = ENU='Reversed',
                        ENN='Reversed';
        }
        field(40;Adjusted;Boolean)
        {
            CaptionML = ENU='Adjusted',
                        ENN='Adjusted';
        }
        field(41;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
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
        field(42;"Purch./Sales Account No.";Code[20])
        {
            CaptionML = ENU='Purch./Sales Account No.',
                        ENN='Purch./Sales Account No.';
            TableRelation = "G/L Account";
        }
        field(43;"Tax Group Code";Code[10])
        {
            CaptionML = ENU='Tax Group Code',
                        ENN='Tax Group Code';
        }
        field(44;"Item Ledger Entry No.";Integer)
        {
            CaptionML = ENU='Item Ledger Entry No.',
                        ENN='Item Ledger Entry No.';
            TableRelation = "Item Ledger Entry";
        }
        field(45;"Primary Deferment Entry No.";Integer)
        {
            CaptionML = ENU='Primary Deferment Entry No.',
                        ENN='Primary Deferment Entry No.';
        }
        field(46;"Tax Type";Option)
        {
            CaptionML = ENU='Tax Type',
                        ENN='Tax Type';
            OptionCaptionML = ENU=' ,VAT,CST',
                              ENN=' ,VAT,CST';
            OptionMembers = " ",VAT,CST;
        }
        field(47;Positive;Boolean)
        {
            CaptionML = ENU='Positive',
                        ENN='Positive';
        }
        field(48;"Purch. Tax Amount";Decimal)
        {
            CaptionML = ENU='Purch. Tax Amount',
                        ENN='Purch. Tax Amount';
            DecimalPlaces = 2:5;
        }
        field(49;"Exempted Sale";Boolean)
        {
            CaptionML = ENU='Exempted Sale',
                        ENN='Exempted Sale';
        }
        field(51;Composition;Boolean)
        {
            CaptionML = ENU='Composition',
                        ENN='Composition';
        }
        field(52;"Form Code";Code[10])
        {
            CaptionML = ENU='Form Code',
                        ENN='Form Code';
            TableRelation = "Form Codes".Code;
        }
        field(53;"Types Of Composition";Option)
        {
            CaptionML = ENU='Types Of Composition',
                        ENN='Types Of Composition';
            OptionCaptionML = ENU=' ,Retailer,Works Contract,Bakery,Restaurant/Club,Second Hand Motor Vehicle',
                              ENN=' ,Retailer,Works Contract,Bakery,Restaurant/Club,Second Hand Motor Vehicle';
            OptionMembers = " ",Retailer,"Works Contract",Bakery,"Restaurant/Club","Second Hand Motor Vehicle";
        }
        field(54;"Works Contract";Boolean)
        {
            CaptionML = ENU='Works Contract',
                        ENN='Works Contract';
        }
        field(55;"Schedule Code";Code[10])
        {
            CaptionML = ENU='Schedule Code',
                        ENN='Schedule Code';
            TableRelation = Schedule;
        }
        field(56;"Purch. IO Tax Amount";Decimal)
        {
            CaptionML = ENU='Purch. IO Tax Amount',
                        ENN='Purch. IO Tax Amount';
        }
        field(57;"Purch. Amount on Item";Decimal)
        {
            CaptionML = ENU='Purch. Amount on Item',
                        ENN='Purch. Amount on Item';
        }
        field(58;"Purch. Tax Base Amount";Decimal)
        {
            CaptionML = ENU='Purch. Tax Base Amount',
                        ENN='Purch. Tax Base Amount';
        }
        field(59;Settlement;Boolean)
        {
            CaptionML = ENU='Settlement',
                        ENN='Settlement';
        }
        field(60;"Standard Deduction %";Decimal)
        {
            CaptionML = ENU='Standard Deduction %',
                        ENN='Standard Deduction %';
        }
        field(61;"Deferment No.";Integer)
        {
            CaptionML = ENU='Deferment No.',
                        ENN='Deferment No.';
        }
        field(62;"Input / Output Tax Applicable";Boolean)
        {
            CaptionML = ENU='Input / Output Tax Applicable',
                        ENN='Input / Output Tax Applicable';
        }
        field(63;"Tax Component";Code[10])
        {
            CaptionML = ENU='Tax Component',
                        ENN='Tax Component';
            TableRelation = "Tax Component";
        }
        field(64;"Standard Deduction Amount";Decimal)
        {
            CaptionML = ENU='Standard Deduction Amount',
                        ENN='Standard Deduction Amount';
            Editable = false;
        }
        field(65;"Document Line No.";Integer)
        {
            CaptionML = ENU='Document Line No.',
                        ENN='Document Line No.';
        }
        field(66;"Main Component Entry No.";Integer)
        {
            CaptionML = ENU='Main Component Entry No.',
                        ENN='Main Component Entry No.';
        }
        field(67;"Item Charge Entry";Boolean)
        {
            CaptionML = ENU='Item Charge Entry',
                        ENN='Item Charge Entry';
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Tax %")
        {
        }
        key(Key3;Settlement,"Tax Type","State Code","Entry Type",Deferment,"Posting Date",Positive,"Export or Deemed Export","Transaction Type")
        {
            SumIndexFields = "Input Credit/Output Tax Amount";
        }
        key(Key4;"Tax Type")
        {
        }
        key(Key5;"State Code","Entry Type","Posting Date","Tax %",Composition)
        {
        }
        key(Key6;"State Code","Entry Type","Posting Date","Tax %","Works Contract")
        {
        }
        key(Key7;"Adjustment Type")
        {
        }
        key(Key8;"Export or Deemed Export","Tax Type")
        {
        }
        key(Key9;"Transaction Type","Tax %",Positive,"Works Contract","Exempted Sale","Product Type","Form Code","Tax Type","Export or Deemed Export","State Code","Entry Type","Adjustment Type","Input Credit/Output Tax Amount","Posting Date","Document Type","Deferment No.")
        {
            SumIndexFields = "Input Credit/Output Tax Amount","Tax Base Amount";
        }
        key(Key10;"State Code","Input Credit/Output Tax Amount",Composition,"Works Contract","Product Type",Positive,"Transaction Type","Types Of Composition","Entry Type","Adjustment Type",Adjusted,"Schedule Code","Exempted Sale","Tax Type","Tax %","Posting Date")
        {
            SumIndexFields = "Input Credit/Output Tax Amount","Tax Base Amount";
        }
        key(Key11;"Adjusted by Entry No.")
        {
        }
        key(Key12;"Export or Deemed Export","State Code","Tax Type")
        {
        }
        key(Key13;"State Code","Tax Type")
        {
        }
        key(Key14;"Document No.","Document Line No.","Main Component Entry No.","Deferment No.","Tax Jurisdiction Code","Entry Type")
        {
            SumIndexFields = "Input Credit/Output Tax Amount","Amount Loaded on Item","Remaining Quantity","Tax Base Amount","Tax Amount";
        }
        key(Key15;"Tax Component","Tax %")
        {
        }
        key(Key16;"State Code","Tax Type","Posting Date","Document No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveDetailedTaxEntry(Rec);
    end;

    [LineStart(64142)]
    procedure SuggestItemLedgerEntries();
    var
        SalesTaxTrackingEntry : Record "Sales Tax Tracking Entry";
    begin
        SalesTaxTrackingEntry.Reset;
        SalesTaxTrackingEntry.SetRange("Main Component Entry No.","Main Component Entry No.");
        //PAGE.RUNMODAL(PAGE::"Sales Tax Tracking Entry",SalesTaxTrackingEntry);
    end;
}


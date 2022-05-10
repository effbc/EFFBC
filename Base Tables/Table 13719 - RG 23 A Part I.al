table 13719 "RG 23 A Part I"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='RG 23 A Part I',
                ENN='RG 23 A Part I';
    LookupPageID = 13725;
    Permissions = ;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(4;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(5;"Base Unit Of Measure";Code[10])
        {
            CaptionML = ENU='Base Unit Of Measure',
                        ENN='Base Unit Of Measure';
        }
        field(6;"Quantity Received";Decimal)
        {
            CaptionML = ENU='Quantity Received',
                        ENN='Quantity Received';
        }
        field(7;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
        }
        field(15;"Customer/Vendor E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Customer/Vendor E.C.C. No.',
                        ENN='Customer/Vendor E.C.C. No.';
            TableRelation = "E.C.C. Nos.";
        }
        field(16;Range;Code[20])
        {
            CaptionML = ENU='Range',
                        ENN='Range';
        }
        field(18;"Quantity Consumed";Decimal)
        {
            CaptionML = ENU='Quantity Consumed',
                        ENN='Quantity Consumed';
        }
        field(20;"Quantity Sold";Decimal)
        {
            CaptionML = ENU='Quantity Sold',
                        ENN='Quantity Sold';
        }
        field(23;"Closing Stock";Decimal)
        {
            CaptionML = ENU='Closing Stock',
                        ENN='Closing Stock';
        }
        field(33;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location;
        }
        field(34;"Location E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Location E.C.C. No.',
                        ENN='Location E.C.C. No.';
            TableRelation = "E.C.C. Nos.";
        }
        field(35;"Item No.";Code[20])
        {
            CaptionML = ENU='Item No.',
                        ENN='Item No.';
            TableRelation = Item;
        }
        field(36;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(37;"Order No.";Code[20])
        {
            CaptionML = ENU='Order No.',
                        ENN='Order No.';
        }
        field(38;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,Purchase,Sale,Transfer,Consumption',
                              ENN=' ,Purchase,Sale,Transfer,Consumption';
            OptionMembers = " ",Purchase,Sale,Transfer,Consumption;
        }
        field(39;"Sell-to/Buy-from No.";Code[20])
        {
            CaptionML = ENU='Sell-to/Buy-from No.',
                        ENN='Sell-to/Buy-from No.';
            TableRelation = IF (Type=CONST(Sale)) Customer
                            ELSE IF (Type=CONST(Purchase)) Vendor;
        }
        field(40;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(41;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
        }
        field(42;"Opening Stock";Decimal)
        {
            CaptionML = ENU='Opening Stock',
                        ENN='Opening Stock';
        }
        field(43;"Type of Unit";Option)
        {
            CaptionML = ENU='Type of Unit',
                        ENN='Type of Unit';
            OptionCaptionML = ENU=' ,Manufacturer,100% EOU',
                              ENN=' ,Manufacturer,100% EOU';
            OptionMembers = " ",Manufacturer,"100% EOU";
        }
        field(44;"RG Entry No.";Code[20])
        {
            CaptionML = ENU='RG Entry No.',
                        ENN='RG Entry No.';
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Document No.","Posting Date")
        {
        }
        key(Key3;"Location E.C.C. No.","Item No.")
        {
            SumIndexFields = Quantity;
        }
        key(Key4;"Item No.")
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
        //GenJnlPostPreview.SaveRG23APartIEntry(Rec);
    end;
}


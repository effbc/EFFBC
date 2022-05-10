table 60060 "Quotation Comparision"
{
    // version POAU

    // Project : B2B Pharma
    // Sign    : NSD -N.Sri Devi
    //           NSS -N.S.S.V.PRASAD
    // S.L.No.  Date      Sign  Description
    // ------------------------------------------
    // 1.0      22/08/06  NSD   New Fields '50007'
    // 
    // 1.0      13/12/06  NSS   New Field "Manufacturer Code"(50015) is added


    fields
    {
        field(1;"RFQ No.";Code[20])
        {
            Editable = false;
        }
        field(2;"Quote No.";Code[20])
        {
            Editable = false;
            TableRelation = "Purchase Header"."No." WHERE ("Document Type"=FILTER(Quote));
        }
        field(3;"Vendor No.";Code[20])
        {
            Editable = false;
            TableRelation = Vendor."No.";
        }
        field(4;"Vendor Name";Text[50])
        {
        }
        field(5;"Total Amount";Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(6;"Item No.";Code[20])
        {
            Editable = false;
            TableRelation = Item."No.";
        }
        field(7;Description;Text[50])
        {
            Editable = false;
        }
        field(8;Quantity;Decimal)
        {
            BlankZero = true;
        }
        field(9;Rate;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(10;Amount;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(11;"P & F";Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(12;"Excise Duty";Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(13;"Sales Tax";Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(14;Freight;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(15;Insurance;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(16;Discount;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(17;VAT;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(18;"Payment Term Code";Code[20])
        {
            Editable = false;
        }
        field(19;"Delivery Date";Date)
        {
        }
        field(20;"Line No.";Integer)
        {
        }
        field(21;"Carry Out Action";Boolean)
        {
        }
        field(22;Level;Integer)
        {
        }
        field(23;"Parent Quote No.";Code[20])
        {
        }
        field(24;"Indent No.";Code[20])
        {
        }
        field(25;"Indent Line No.";Integer)
        {
        }
        field(26;"Document Date";Date)
        {
        }
        field(27;"Due Date";Date)
        {
        }
        field(28;"Requested Receipt Date";Date)
        {
            Caption = 'Requested Receipt Date';
        }
        field(29;"Project Code";Code[20])
        {
        }
        field(30;"Parent Vendor";Code[20])
        {
        }
        field(31;"ICN No.";Code[20])
        {
        }
        field(13790;Structure;Code[10])
        {
            Caption = 'Structure';
            TableRelation = "Structure Header";

            trigger OnValidate();
            var
                StrDetails : Record "Structure Details";
                StrOrderDetails : Record "Structure Order Details";
                StrOrderLines : Record "Structure Order Line Details";
                PurchaseLines : Record "Purchase Line";
            begin
            end;
        }
        field(50001;Price;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(50002;"Line Amount";Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(50003;Delivery;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(50004;Quality;Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(50005;"Payment Terms";Decimal)
        {
        }
        field(50006;"Total Weightage";Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(50007;"Location Code";Code[20])
        {
            Description = 'PH1.0';
            Editable = false;
            TableRelation = Location.Code;
        }
        field(50008;"Amt. including Tax";Decimal)
        {
        }
        field(50009;Rating;Decimal)
        {
        }
        field(50015;"Manufacturer Code";Code[20])
        {
            TableRelation = Vendor;
        }
    }

    keys
    {
        key(Key1;"Line No.")
        {
        }
        key(Key2;"Parent Quote No.","Item No.")
        {
        }
        key(Key3;"Item No.")
        {
        }
        key(Key4;"RFQ No.","Vendor No.","Item No.")
        {
        }
        key(Key5;"RFQ No.","Item No.")
        {
        }
        key(Key6;"Parent Vendor")
        {
        }
    }

    fieldgroups
    {
    }
}


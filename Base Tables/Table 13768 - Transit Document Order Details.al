table 13768 "Transit Document Order Details"
{
    // version NAVIN7.00

    CaptionML = ENU='Transit Document Order Details',
                ENN='Transit Document Order Details';

    fields
    {
        field(1;State;Code[10])
        {
            CaptionML = ENU='State',
                        ENN='State';
            Editable = true;
            TableRelation = State;
        }
        field(2;"Form Code";Code[10])
        {
            CaptionML = ENU='Form Code',
                        ENN='Form Code';
            TableRelation = "State Forms"."Form Code" WHERE (State=FIELD(State),
                                                             "Transit Document"=CONST(true));
        }
        field(3;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Purchase,Sale',
                              ENN=' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(4;"Vendor / Customer Ref.";Code[20])
        {
            CaptionML = ENU='Vendor / Customer Ref.',
                        ENN='Vendor / Customer Ref.';
            Editable = false;
            TableRelation = IF (Type=CONST(Purchase)) Vendor
                            ELSE IF (Type=CONST(Sale)) Customer;
        }
        field(5;"PO / SO No.";Code[20])
        {
            CaptionML = ENU='PO / SO No.',
                        ENN='PO / SO No.';
            Editable = false;
            NotBlank = true;
        }
        field(6;"Series Prefix";Code[10])
        {
            CaptionML = ENU='Series Prefix',
                        ENN='Series Prefix';
            Editable = false;
        }
        field(7;"Form No.";Code[20])
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
            TableRelation = IF (Type=CONST(Purchase)) "Transit Document Details"."Form No." WHERE ("Form Code"=FIELD("Form Code"),
                                                                                                   Issued=CONST(false))
                                                                                                   ELSE IF (Type=CONST(Sale)) "Transit Document Details"."Form No." WHERE ("Form Code"=FIELD("Form Code"),
                                                                                                                                                                           Issued=CONST(false));

            trigger OnValidate();
            begin
                TransDoc.SetRange("Form Code","Form Code");
                TransDoc.SetRange("Form No.","Form No.");
                TransDoc.SetRange(State,State);
                if TransDoc.FindFirst then begin
                  TransDoc.Issued := true;
                  TransDoc.Modify;
                end;
                if xRec."Form No." <> "Form No." then begin
                  TransDoc.SetRange("Form Code","Form Code");
                  TransDoc.SetRange("Form No.",xRec."Form No.");
                  TransDoc.SetRange(State,State);
                  if TransDoc.FindFirst then begin
                    TransDoc.Issued := false;
                    TransDoc.Modify;
                  end;
                end;
                SH.SetRange(SH."Document Type",SH."Document Type"::Order);
                SH.SetRange(SH."Sell-to Customer No.","Vendor / Customer Ref.");
                SH.SetRange(SH."No.","PO / SO No.");
                if SH.Find('-') then
                begin
                SH.WayBillNo:="Form No.";
                SH.Modify;
                end;
            end;
        }
        field(13;"Line No.";Integer)
        {
            AutoIncrement = true;
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
    }

    keys
    {
        key(Key1;"Line No.",Type,"PO / SO No.","Vendor / Customer Ref.",State,"Form No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        TransDoc : Record "Transit Document Details";
        SH : Record "Sales Header";
}


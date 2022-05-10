table 16439 "Service Transfer Shpt. Header"
{
    // version NAVIN9.00.00.51014

    CaptionML = ENU='Service Transfer Shpt. Header',
                ENN='Service Transfer Shpt. Header';
    LookupPageID = 16394;

    fields
    {
        field(1;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
            Editable = false;
        }
        field(2;"Service Transfer Order No.";Code[20])
        {
            CaptionML = ENU='Service Transfer Order No.',
                        ENN='Service Transfer Order No.';
        }
        field(3;"Transfer-from Code";Code[10])
        {
            CaptionML = ENU='Transfer-from Code',
                        ENN='Transfer-from Code';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(4;"Transfer-from Name";Text[50])
        {
            CaptionML = ENU='Transfer-from Name',
                        ENN='Transfer-from Name';
            Editable = false;
        }
        field(5;"Transfer-from Name 2";Text[50])
        {
            CaptionML = ENU='Transfer-from Name 2',
                        ENN='Transfer-from Name 2';
            Editable = false;
        }
        field(6;"Transfer-from Address";Text[50])
        {
            CaptionML = ENU='Transfer-from Address',
                        ENN='Transfer-from Address';
            Editable = false;
        }
        field(7;"Transfer-from Address 2";Text[50])
        {
            CaptionML = ENU='Transfer-from Address 2',
                        ENN='Transfer-from Address 2';
            Editable = false;
        }
        field(8;"Transfer-from Post Code";Code[20])
        {
            CaptionML = ENU='Transfer-from Post Code',
                        ENN='Transfer-from Post Code';
            Editable = false;
        }
        field(9;"Transfer-from City";Text[30])
        {
            CaptionML = ENU='Transfer-from City',
                        ENN='Transfer-from City';
            Editable = false;
        }
        field(10;"Transfer-from State";Code[10])
        {
            CaptionML = ENU='Transfer-from State',
                        ENN='Transfer-from State';
            Editable = false;
            TableRelation = State;
        }
        field(11;"Transfer-to Code";Code[10])
        {
            CaptionML = ENU='Transfer-to Code',
                        ENN='Transfer-to Code';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(12;"Transfer-to Name";Text[50])
        {
            CaptionML = ENU='Transfer-to Name',
                        ENN='Transfer-to Name';
            Editable = false;
        }
        field(13;"Transfer-to Name 2";Text[50])
        {
            CaptionML = ENU='Transfer-to Name 2',
                        ENN='Transfer-to Name 2';
            Editable = false;
        }
        field(14;"Transfer-to Address";Text[50])
        {
            CaptionML = ENU='Transfer-to Address',
                        ENN='Transfer-to Address';
            Editable = false;
        }
        field(15;"Transfer-to Address 2";Text[50])
        {
            CaptionML = ENU='Transfer-to Address 2',
                        ENN='Transfer-to Address 2';
            Editable = false;
        }
        field(16;"Transfer-to Post Code";Code[20])
        {
            CaptionML = ENU='Transfer-to Post Code',
                        ENN='Transfer-to Post Code';
            Editable = false;
        }
        field(17;"Transfer-to City";Text[30])
        {
            CaptionML = ENU='Transfer-to City',
                        ENN='Transfer-to City';
            Editable = false;
        }
        field(18;"Transfer-to State";Code[10])
        {
            CaptionML = ENU='Transfer-to State',
                        ENN='Transfer-to State';
            Editable = false;
            TableRelation = State;
        }
        field(20;"Shipment Date";Date)
        {
            CaptionML = ENU='Shipment Date',
                        ENN='Shipment Date';
            Editable = false;
        }
        field(21;"Receipt Date";Date)
        {
            CaptionML = ENU='Receipt Date',
                        ENN='Receipt Date';
            Editable = false;
        }
        field(22;Status;Option)
        {
            CaptionML = ENU='Status',
                        ENN='Status';
            Editable = false;
            OptionCaptionML = ENU='Open,Shipped',
                              ENN='Open,Shipped';
            OptionMembers = Open,Shipped;
        }
        field(23;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU='Shortcut Dimension 1 Code',
                        ENN='Shortcut Dimension 1 Code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(24;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            CaptionML = ENU='Shortcut Dimension 2 Code',
                        ENN='Shortcut Dimension 2 Code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(25;"Ship Control Account";Code[20])
        {
            CaptionML = ENU='Ship Control Account',
                        ENN='Ship Control Account';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(26;"Receive Control Account";Code[20])
        {
            CaptionML = ENU='Receive Control Account',
                        ENN='Receive Control Account';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(27;"External Doc No.";Code[20])
        {
            CaptionML = ENU='External Doc No.',
                        ENN='External Doc No.';
            Editable = false;
        }
        field(28;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(29;"GST Inv. Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Inv. Rounding Precision',
                        ENN='GST Inv. Rounding Precision';
            Editable = false;
        }
        field(30;"GST Inv. Rounding Type";Option)
        {
            CaptionML = ENU='GST Inv. Rounding Type',
                        ENN='GST Inv. Rounding Type';
            Editable = false;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(9000;"Assigned User ID";Code[50])
        {
            CaptionML = ENU='Assigned User ID',
                        ENN='Assigned User ID';
            DataClassification = EndUserIdentifiableInformation;
            Editable = false;
            TableRelation = "User Setup";
        }
        field(60090;"Dimension Corrected";Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091;"OLD Dim Set ID";Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE ("Dimension Set ID"=FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }

    keys
    {
        key(Key1;"No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        DimensionManagement : Codeunit DimensionManagement;

    [LineStart(63151)]
    procedure ShowDimensions();
    begin
        DimensionManagement.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2',TableCaption,"No."));
    end;

    [LineStart(63154)]
    procedure Navigate();
    var
        NavigateForm : Page Navigate;
    begin
        NavigateForm.SetDoc("Shipment Date","No.");
        NavigateForm.Run;
    end;
}


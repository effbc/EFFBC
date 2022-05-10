table 16413 "Sub. Comp. Rcpt. Header"
{
    // version NAVIN9.00.00.50221

    CaptionML = ENU='Sub. Comp. Rcpt. Header',
                ENN='Sub. Comp. Rcpt. Header';
    DataCaptionFields = "No.","Buy-from Vendor Name";
    LookupPageID = 16461;

    fields
    {
        field(2;"Buy-from Vendor No.";Code[20])
        {
            CaptionML = ENU='Buy-from Vendor No.',
                        ENN='Buy-from Vendor No.';
            NotBlank = true;
            TableRelation = Vendor;
        }
        field(3;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
        }
        field(19;"Order Date";Date)
        {
            CaptionML = ENU='Order Date',
                        ENN='Order Date';
        }
        field(20;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(28;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(44;"Order No.";Code[20])
        {
            CaptionML = ENU='Order No.',
                        ENN='Order No.';
        }
        field(66;"Vendor Order No.";Code[20])
        {
            CaptionML = ENU='Vendor Order No.',
                        ENN='Vendor Order No.';
        }
        field(67;"Vendor Shipment No.";Code[20])
        {
            CaptionML = ENU='Vendor Shipment No.',
                        ENN='Vendor Shipment No.';
        }
        field(74;"Gen. Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        ENN='Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(79;"Buy-from Vendor Name";Text[50])
        {
            CaptionML = ENU='Buy-from Vendor Name',
                        ENN='Buy-from Vendor Name';
        }
        field(80;"Buy-from Vendor Name 2";Text[50])
        {
            CaptionML = ENU='Buy-from Vendor Name 2',
                        ENN='Buy-from Vendor Name 2';
        }
        field(81;"Buy-from Address";Text[50])
        {
            CaptionML = ENU='Buy-from Address',
                        ENN='Buy-from Address';
        }
        field(82;"Buy-from Address 2";Text[50])
        {
            CaptionML = ENU='Buy-from Address 2',
                        ENN='Buy-from Address 2';
        }
        field(83;"Buy-from City";Text[30])
        {
            CaptionML = ENU='Buy-from City',
                        ENN='Buy-from City';
            TableRelation = IF ("Buy-from Country/Region Code"=CONST('')) "Post Code".City
                            ELSE IF ("Buy-from Country/Region Code"=FILTER(<>'')) "Post Code".City WHERE ("Country/Region Code"=FIELD("Buy-from Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnValidate();
            begin
                PostCode.ValidateCity(
                  "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(84;"Buy-from Contact";Text[50])
        {
            CaptionML = ENU='Buy-from Contact',
                        ENN='Buy-from Contact';
        }
        field(88;"Buy-from Post Code";Code[20])
        {
            CaptionML = ENU='Buy-from Post Code',
                        ENN='Buy-from Post Code';
            TableRelation = IF ("Buy-from Country/Region Code"=CONST('')) "Post Code"
                            ELSE IF ("Buy-from Country/Region Code"=FILTER(<>'')) "Post Code" WHERE ("Country/Region Code"=FIELD("Buy-from Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode(
                  "Buy-from City","Buy-from Post Code","Buy-from County","Buy-from Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(89;"Buy-from County";Text[30])
        {
            CaptionML = ENU='Buy-from County',
                        ENN='Buy-from County';
        }
        field(90;"Buy-from Country/Region Code";Code[10])
        {
            CaptionML = ENU='Buy-from Country/Region Code',
                        ENN='Buy-from Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(95;"Order Address Code";Code[10])
        {
            CaptionML = ENU='Order Address Code',
                        ENN='Order Address Code';
            TableRelation = "Order Address".Code WHERE ("Vendor No."=FIELD("Buy-from Vendor No."));
        }
        field(99;"Document Date";Date)
        {
            CaptionML = ENU='Document Date',
                        ENN='Document Date';
        }
        field(101;"Area";Code[10])
        {
            CaptionML = ENU='Area',
                        ENN='Area';
            TableRelation = Area;
        }
        field(102;"Transaction Specification";Code[10])
        {
            CaptionML = ENU='Transaction Specification',
                        ENN='Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(104;"Payment Method Code";Code[10])
        {
            CaptionML = ENU='Payment Method Code',
                        ENN='Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(109;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(110;"Order No. Series";Code[10])
        {
            CaptionML = ENU='Order No. Series',
                        ENN='Order No. Series';
            TableRelation = "No. Series";
        }
        field(112;"User ID";Code[50])
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
        field(113;"Source Code";Code[10])
        {
            CaptionML = ENU='Source Code',
                        ENN='Source Code';
            TableRelation = "Source Code";
        }
        field(114;"Tax Registration No.";Text[20])
        {
            CaptionML = ENU='Tax Registration No.',
                        ENN='Tax Registration No.';
        }
        field(115;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            TableRelation = "Excise Bus. Posting Group";
        }
        field(116;"Excise Registration No.";Text[20])
        {
            CaptionML = ENU='Excise Registration No.',
                        ENN='Excise Registration No.';
        }
        field(117;"Prod. Order No.";Code[20])
        {
            CaptionML = ENU='Prod. Order No.',
                        ENN='Prod. Order No.';
        }
        field(118;"Prod. Order Line No.";Integer)
        {
            CaptionML = ENU='Prod. Order Line No.',
                        ENN='Prod. Order Line No.';
        }
        field(119;"Subcontracting Order Line No.";Integer)
        {
            CaptionML = ENU='Subcontracting Order Line No.',
                        ENN='Subcontracting Order Line No.';
        }
        field(120;"VAT Business Posting Group";Code[10])
        {
            CaptionML = ENU='VAT Business Posting Group',
                        ENN='VAT Business Posting Group';
            Editable = false;
            TableRelation = "VAT Business Posting Group";
        }
        field(121;"Vendor Shipment Date";Date)
        {
            CaptionML = ENU='Vendor Shipment Date',
                        ENN='Vendor Shipment Date';
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";

            trigger OnLookup();
            begin
                ShowDimensions;
            end;
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
        key(Key2;"Order No.")
        {
        }
        key(Key3;"Posting Date")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        /*"Purch&payableSetup".GET;
        IF "No." = '' THEN BEGIN
          "Purch&payableSetup".TESTFIELD("Posted SC Comp. Rcpt. Nos.");
          NoSeriesMgt.InitSeries("Purch&payableSetup"."Posted SC Comp. Rcpt. Nos.",xRec."No. Series","Posting Date","No.","No. Series");
        END;
        */

    end;

    var
        PostCode : Record "Post Code";
        DimMgt : Codeunit DimensionManagement;
        "Purch&payableSetup" : Record "Purchases & Payables Setup";
        NoSeriesMgt : Codeunit NoSeriesManagement;

    [LineStart(62806)]
    procedure Navigate();
    var
        NavigateForm : Page Navigate;
    begin
        NavigateForm.SetDoc("Posting Date","No.");
        NavigateForm.Run;
    end;

    [LineStart(62810)]
    procedure ShowDimensions();
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2',TableCaption,"No."));
    end;
}


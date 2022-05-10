table 60013 Products
{
    // version B2B1.0

    LookupPageID = 60024;

    fields
    {
        field(1;"Code";Code[20])
        {
            NotBlank = true;
            TableRelation = Item;
        }
        field(2;"Product Type";Option)
        {
            OptionMembers = "Data Logger","Display Board";
        }
        field(3;Description;Text[70])
        {
        }
        field(4;Technology;Text[70])
        {
        }
        field(5;"Key Features";Text[70])
        {
        }
        field(6;"Launched Year";Text[10])
        {
        }
        field(7;Segment;Code[20])
        {
            TableRelation = "Segment Header";
        }
        field(8;Price;Decimal)
        {
        }
        field(9;"Software Code";Code[20])
        {
            TableRelation = CFormlist.vendor;
        }
        field(10;"No. Series";Code[20])
        {
        }
        field(11;"Tools Used";Text[70])
        {
        }
        field(12;Benefits;Text[70])
        {
        }
    }

    keys
    {
        key(Key1;"Code")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(1587)]
    procedure AssistEdit(OldProduct : Record Products) : Boolean;
    var
        "RM Setup" : Record "Marketing Setup";
        Products : Record Products;
        NoSeriesMgt : Codeunit NoSeriesManagement;
    begin
        /*
        WITH Products DO BEGIN
          Products := Rec;
          "RM Setup".GET;
          "RM Setup".TESTFIELD("Product ID");
          IF NoSeriesMgt.SelectSeries("RM Setup"."Product ID",OldProduct."No. Series","No. Series") THEN BEGIN
            "RM Setup".GET;
            "RM Setup".TESTFIELD("RM Setup"."Product ID");
            NoSeriesMgt.SetSeries(Code);
            Rec := Products;
            EXIT(TRUE);
          END;
        END;
        */

    end;

    [LineStart(1603)]
    procedure OpenAttachments();
    var
        Attachment : Record Attachments;
    begin
        Attachment.Reset;
        Attachment.SetRange("Table ID",DATABASE::Products);
        Attachment.SetRange("Document No.",Code);
        Attachment.SetRange("Document Type","Product Type");

        PAGE.Run(PAGE::Page60117,Attachment);
    end;
}


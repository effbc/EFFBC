table 60067 "Tender Competitor's Details"
{
    // version B2B1.0


    fields
    {
        field(1;"Tender No.";Code[20])
        {
        }
        field(2;"Competitor's Code";Code[20])
        {
            TableRelation = "Competitor's Master".Code;

            trigger OnValidate();
            begin
                Compettitors.Get("Competitor's Code");
                "Competitor's Name" := Compettitors."Competitor's Name";
            end;
        }
        field(3;"Competitor's Name";Text[50])
        {
        }
        field(21;"Technical Details";Text[250])
        {
        }
        field(22;"Other Details";Text[250])
        {
        }
        field(23;Price;Decimal)
        {
        }
        field(24;"BID Status";Option)
        {
            OptionMembers = ,L1,L2,L3,L4,L5;

            trigger OnValidate();
            begin
                 TCD.Reset;
                 TCD.SetFilter(TCD."Tender No.","Tender No.");
                 TCD.SetFilter(TCD."BID Status",'%1',"BID Status");
                 if TCD.FindSet then
                 begin
                  // IF TCD.COUNT>1 THEN
                   Error('BID Status already exists');
                 end;

                 TH.Reset;
                 TH.SetFilter(TH."Tender No.","Tender No.");
                 TH.SetFilter(TH."Tender Position",'%1',"BID Status");
                 if TH.FindSet then
                 begin
                   Error('BID Status already exists');
                 end;
            end;
        }
        field(27;"Item No.";Code[20])
        {
            TableRelation = Item;
        }
        field(28;"Item Description";Text[30])
        {
            CalcFormula = Lookup(Item.Description WHERE ("No."=FIELD("Item No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(30;"Line No.";Integer)
        {
        }
        field(31;structure;Code[10])
        {
            TableRelation = "Structure Header".Code;
        }
        field(32;Percentage;Decimal)
        {
        }
        field(33;"Schedule A Percentage";Decimal)
        {
        }
        field(34;"Schedule B Percentage";Decimal)
        {
        }
        field(35;"Schedule C Percentage";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Tender No.","Competitor's Code","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Compettitors : Record "Competitor's Master";
        TCD : Record "Tender Competitor's Details";
        TH : Record "Tender Header";
}


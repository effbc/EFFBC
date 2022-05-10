table 60009 "Archived DesignWorksheet"
{
    // version B2B1.0


    fields
    {
        field(1;"Document No.";Code[20])
        {
            Editable = false;
            NotBlank = true;
        }
        field(2;"Document Type";Option)
        {
            Editable = false;
            OptionCaption = '" ,Tender,Quote,Order,Blanket Order"';
            OptionMembers = " ",Tender,Quote,"Order","Blanket Order";
        }
        field(3;"Document Line No.";Integer)
        {
            Editable = false;
        }
        field(4;"Item No.";Code[20])
        {
            Editable = false;
        }
        field(5;Description;Text[50])
        {
            Editable = false;
        }
        field(6;Quantity;Decimal)
        {
            Editable = false;
        }
        field(7;"Unit of Measure";Code[10])
        {
            Editable = false;
        }
        field(8;"Components Cost";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Line".Amount WHERE (Type=CONST(Item),
                                                                    "Document No."=FIELD("Document No."),
                                                                    "Document Type"=FIELD("Document Type"),
                                                                    "Document Line No."=FIELD("Document Line No.")));
            Description = 'Editable=No';
            FieldClass = FlowField;
        }
        field(9;"Manufacturing Cost";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Line"."Manufacturing Cost" WHERE ("Document No."=FIELD("Document No."),
                                                                                  "Document Type"=FIELD("Document Type"),
                                                                                  "Document Line No."=FIELD("Document Line No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(12;"Soldering Time for SMD";Decimal)
        {
            Editable = false;
        }
        field(13;"Soldering time for DIP";Decimal)
        {
            Editable = false;
        }
        field(14;"Total time in Hours";Decimal)
        {
            Editable = false;
        }
        field(15;"Soldering Cost Perhour";Decimal)
        {
            Editable = false;
        }
        field(16;"Resource Cost";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Line".Amount WHERE ("Document No."=FIELD("Document No."),
                                                                    "Document Type"=FIELD("Document Type"),
                                                                    "Document Line No."=FIELD("Document Line No."),
                                                                    Type=CONST("Production BOM")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(17;"Development Cost";Decimal)
        {
            Editable = false;
        }
        field(18;"Development Time in hours";Decimal)
        {
        }
        field(19;"Development cost per hour";Decimal)
        {
            Editable = false;
        }
        field(20;"Installation Cost";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Line".Amount WHERE (Type=CONST(Resource),
                                                                    "Document No."=FIELD("Document No."),
                                                                    "Document Type"=FIELD("Document Type")));
            Description = 'Editable=No';
            FieldClass = FlowField;
        }
        field(21;"Additional Cost";Decimal)
        {
        }
        field(22;"Total Cost (From Line)";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Line".Amount WHERE ("Document No."=FIELD("Document No."),
                                                                    "Document Type"=FIELD("Document Type"),
                                                                    "Document Line No."=FIELD("Document Line No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(23;"Production Bom No.";Code[20])
        {
            Editable = false;
        }
        field(24;"Production Bom Version No.";Code[20])
        {
            Editable = false;
        }
        field(100;"Total Cost";Decimal)
        {
            Editable = false;
        }
        field(201;"Version No.";Integer)
        {
        }
        field(202;"No. of Archived Versions";Integer)
        {
            Caption = 'No. of Archived Versions';
            Editable = true;
        }
        field(203;"Main Item Manu Cost";Decimal)
        {
            Editable = false;
        }
        field(204;"Total Manu Cost";Decimal)
        {
            Editable = false;
        }
        field(205;"Archived By.";Code[50])
        {
        }
        field(206;"Date of Archive";Date)
        {
        }
        field(207;"Time of Archive";Time)
        {
        }
    }

    keys
    {
        key(Key1;"Document No.","Version No.","Document Type","Document Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


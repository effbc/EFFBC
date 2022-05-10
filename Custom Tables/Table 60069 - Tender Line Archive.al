table 60069 "Tender Line Archive"
{
    // version B2B1.0,SH1.0


    fields
    {
        field(1;"Document No.";Code[20])
        {
        }
        field(2;"Line No.";Integer)
        {
        }
        field(3;Type;Option)
        {
            OptionMembers = " ",Item,Resource,"G/L Account";
        }
        field(4;"No.";Code[20])
        {
            Description = 'Look up';
            TableRelation = IF (Type=CONST("G/L Account")) "G/L Account"
                            ELSE IF (Type=CONST(Item)) Item
                            ELSE IF (Type=CONST(Resource)) Resource;

            trigger OnValidate();
            var
                ProductionBOMHeader : Record "Production BOM Header";
                VersionMgt : Codeunit VersionManagement;
            begin
            end;
        }
        field(5;Description;Text[200])
        {
        }
        field(6;UOM;Code[10])
        {
            Description = 'Look up';
        }
        field(7;Quantity;Decimal)
        {
        }
        field(8;"Unit Cost";Decimal)
        {
        }
        field(9;"Design Cost";Decimal)
        {
            Description = 'Flow fields';
        }
        field(10;"CRM Cost";Decimal)
        {
        }
        field(11;"Total Amount";Decimal)
        {
        }
        field(12;"Description 2";Text[50])
        {
        }
        field(21;"Estimated Unit Cost";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Header"."Total Cost" WHERE ("Document No."=FIELD("Document No."),
                                                                            "Document Type"=CONST(Tender),
                                                                            "Document Line No."=FIELD("Line No.")));
            Description = 'B2B';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22;"Estimated Total Unit Cost";Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(23;"Cust. Estimated Unit Cost";Decimal)
        {
        }
        field(24;"Cust.Estimated Total Unit Cost";Decimal)
        {
        }
        field(25;"Production Bom No.";Code[20])
        {
            TableRelation = "Production BOM Header"."No.";
        }
        field(26;"Production Bom Version No.";Code[20])
        {
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No."=FIELD("Production Bom No."));
        }
        field(201;"Version No.";Integer)
        {
        }
        field(202;"Tax Group Code";Code[10])
        {
            Caption = 'Tax Group Code';
            Editable = false;
            TableRelation = "Tax Group";
        }
        field(50001;"Unit Price";Decimal)
        {
        }
        field(60112;"Type of Item";Option)
        {
            OptionMembers = " ","Only Supply","Supply & Inst","Supply & Laying","Only Inst";
        }
        field(60113;"Schedule No";Integer)
        {
        }
        field(60114;"L1 Quote Value";Decimal)
        {
        }
        field(60115;"L2 Quote Value";Decimal)
        {
        }
        field(60116;"L3 Quote Value";Decimal)
        {
        }
        field(60117;"L4 Quote Value";Decimal)
        {
        }
        field(60118;"L5 Quote Value";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.","Version No.")
        {
        }
    }

    fieldgroups
    {
    }
}


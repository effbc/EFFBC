table 60010 "Archived DesignWorksheet Line"
{
    // version B2B1.0


    fields
    {
        field(1;"Document No.";Code[20])
        {
        }
        field(2;"Document Type";Option)
        {
            OptionCaption = '" ,Tender,Quote,Order,Blanket Order"';
            OptionMembers = " ",Tender,Quote,"Order","Blanket Order";
        }
        field(3;"Line No.";Integer)
        {
        }
        field(4;Type;Option)
        {
            OptionMembers = " ",Item,"Production BOM",JOB,Resource;
        }
        field(5;"No.";Code[20])
        {
            TableRelation = IF (Type=CONST(" ")) "Standard Text"
                            ELSE IF (Type=CONST(Item)) Item
                            ELSE IF (Type=CONST(JOB)) Job
                            ELSE IF (Type=CONST(Resource)) Resource
                            ELSE IF (Type=CONST("Production BOM")) "Production BOM Header";

            trigger OnValidate();
            var
                JobCost : Decimal;
            begin
            end;
        }
        field(6;Description;Text[50])
        {
        }
        field(7;"Description 2";Text[50])
        {
        }
        field(8;"No.of SMD Points";Decimal)
        {
        }
        field(9;"No.of DIP Points";Decimal)
        {
        }
        field(10;"Unit of Measure";Code[10])
        {
        }
        field(11;Quantity;Decimal)
        {
        }
        field(12;"Unit Cost";Decimal)
        {
        }
        field(13;Amount;Decimal)
        {
        }
        field(14;"Document Line No.";Integer)
        {
        }
        field(17;"Total time in Hours";Decimal)
        {
            Editable = false;
        }
        field(18;"Manufacturing Cost";Decimal)
        {
            DecimalPlaces = 2:2;
        }
        field(201;"Version No.";Integer)
        {
        }
        field(202;"No. of Archived Versions";Integer)
        {
            Caption = 'No. of Archived Versions';
            Editable = true;
        }
    }

    keys
    {
        key(Key1;"Document No.","Version No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


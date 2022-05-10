table 60100 "Measuring Parameters"
{
    // version Cal1.0


    fields
    {
        field(1;"Equipment No.";Code[20])
        {
        }
        field(2;"Line No.";Integer)
        {
        }
        field(3;"UOM Code";Code[20])
        {
            TableRelation = "Unit of Measure";

            trigger OnValidate();
            begin
                UOM.Get("UOM Code");
                Description := UOM.Description;
            end;
        }
        field(4;Description;Text[30])
        {
            Editable = false;
        }
        field(5;"Lower Limit";Decimal)
        {
        }
        field(6;"Upper Limit";Decimal)
        {
        }
        field(7;"Least Count";Decimal)
        {
        }
        field(8;"Usage Subjective";Boolean)
        {
        }
        field(9;"Actual Lower Limit";Decimal)
        {

            trigger OnValidate();
            begin
                TestField("Usage Subjective",true);
            end;
        }
        field(10;"Actual Upper Limit";Decimal)
        {

            trigger OnValidate();
            begin
                TestField("Usage Subjective",true);
            end;
        }
        field(11;"Standard Reference";Code[10])
        {
            TableRelation = Calibration."Equipment No" WHERE ("Usage Type"=FILTER(Master));
        }
        field(12;"Correction Value";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Equipment No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        UOM : Record "Unit of Measure";
}


table 60034 "Item Specification"
{
    // version B2B1.0

    //LookupPageID = 60053;

    fields
    {
        field(1;"Item No.";Code[20])
        {
            Editable = false;
        }
        field(2;"Specification Code";Code[20])
        {
            TableRelation = "Specification Parameters";

            trigger OnValidate();
            var
                SpecificationParameters : Record "Specification Parameters";
            begin
                SpecificationParameters.Get("Specification Code");
                Description := SpecificationParameters.Description;
            end;
        }
        field(3;Value;Code[20])
        {
        }
        field(4;"Product Group Code";Code[20])
        {
            Editable = false;
        }
        field(5;"Item Category Code";Code[20])
        {
            Editable = false;
        }
        field(6;"Item Sub Group Code";Code[20])
        {
            Editable = false;
        }
        field(7;"Item Sub Sub Group Code";Code[20])
        {
            Editable = false;
        }
        field(8;Description;Text[50])
        {
        }
        field(9;"Line No.";Integer)
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1;"Item No.","Product Group Code","Item Category Code","Item Sub Group Code","Item Sub Sub Group Code","Specification Code","Line No.")
        {
        }
        key(Key2;"Item No.","Product Group Code","Item Category Code","Item Sub Group Code","Item Sub Sub Group Code","Specification Code")
        {
            Enabled = false;
        }
    }

    fieldgroups
    {
    }

    trigger OnModify();
    begin
        /*
        ItemSpecification.LOCKTABLE;
        ItemSpecification.SETRANGE("Product Group Code","Product Group Code");
        ItemSpecification.SETRANGE("Item Category Code","Item Category Code");
        ItemSpecification.SETRANGE("Item Sub Group Code","Item Sub Group Code");
        ItemSpecification.SETRANGE("Item Sub Sub Group Code","Item Sub Sub Group Code");
        ItemSpecification.SETRANGE("Specification Code","Specification Code");
        REPEAT
          FOR
        UNTIL ItemSpecification.NEXT = 0;
        */

    end;

    var
        ItemSpecification : Record "Item Specification";
        Temp : Boolean;
        SpecItems : array [100100] of Code[20];
}


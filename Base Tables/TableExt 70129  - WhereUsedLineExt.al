tableextension 70129 WhereUsedLineExt extends "Where-Used Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Data type on "Description(Field 5)". Please convert manually.

        field(60001; Status; Option)
        {
            CalcFormula = Lookup("Production BOM Header".Status WHERE("No." = FIELD("Item No.")));
            FieldClass = FlowField;
            OptionMembers = New,Certified,"Under Development",Closed;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.

}


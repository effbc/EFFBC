tableextension 70137 AverageCostCalcOverviewExt extends "Average Cost Calc. Overview"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 23)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 24)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Attached to Valuation Date,Attached to Entry No.,Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Attached to Valuation Date", "Attached to Entry No.", Type)
        {
        }
        key(Key3; "Item Ledger Entry No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ValueEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValueEntry : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValueEntry : "Value Entry";
    //Variable type has not been exported.
}


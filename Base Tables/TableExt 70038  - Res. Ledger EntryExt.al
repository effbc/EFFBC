tableextension 70038 ResLedgerEntryExt extends "Res. Ledger Entry"
{
    // version NAVW19.00.00.50087

    fields
    {
        modify(Quantity)
        {
            CaptionML = ENU = 'Spent Hr''s', ENN = 'Spent Hr''s';
        }

        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 18)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 20)". Please convert manually.


        //Unsupported feature: Change InitValue on "Chargeable(Field 22)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(60000; Zones; Code[10])
        {
        }
        field(60001; Division; Code[10])
        {
        }
        field(60002; Station; Code[10])
        {
        }
        field(60003; "Product type"; Code[10])
        {
        }
        field(60004; "Sale order no"; Code[10])
        {
        }
        field(60005; Status; Code[10])
        {
        }
        field(60006; "Work Description"; Text[250])
        {
        }
        field(60007; "Planned Hr's"; Decimal)
        {
        }
        field(60008; "Serial no"; Code[10])
        {
        }
        field(60009; State; Code[10])
        {
        }
        field(60010; District; Code[10])
        {
        }
        field(60011; City; Code[10])
        {
        }
        field(60012; Place; Code[10])
        {
        }
        field(60013; "AMC Order NO"; Code[10])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Resource No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type,Chargeable,Unit of Measure Code,Resource No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type,Chargeable,Unit of Measure Code,Resource Group No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order Type,Order No.,Order Line No.,Entry Type"(Key)". Please convert manually.

        key(Entry1; "Entry No.")
        {
        }
        key(Resource2; "Resource No.", "Posting Date")
        {
        }
        key(Chargeable3; "Entry Type", Chargeable, "Unit of Measure Code", "Resource No.", "Posting Date")
        {
            SumIndexFields = Quantity, "Total Cost", "Total Price", "Quantity (Base)";
        }
        key(UOM4; "Entry Type", Chargeable, "Unit of Measure Code", "Resource Group No.", "Posting Date")
        {
            SumIndexFields = Quantity, "Total Cost", "Total Price", "Quantity (Base)";
        }
        key(DocPost5; "Document No.", "Posting Date")
        {
        }
        key(OrderType6; "Order Type", "Order No.", "Order Line No.", "Entry Type")
        {
            SumIndexFields = Quantity;
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 20).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}


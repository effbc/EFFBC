tableextension 70163 InventoryPeriodEntryExt extends "Inventory Period Entry"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change NotBlank on ""Entry No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Ending Date"(Field 2)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 3)". Please convert manually.


        //Unsupported feature: Change Description on ""User ID"(Field 3)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Closing Item Register No."(Field 6)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Closing Item Register No."(Field 6)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Entry Type"(Field 7)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Ending Date,Entry No."(Key)". Please convert manually.

        key(Key1; "Ending Date", "Entry No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 3).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RemoveItemRegNo(PROCEDURE 4).ItemReg(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RemoveItemRegNo : 46;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RemoveItemRegNo : "Item Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RemoveItemRegNo(PROCEDURE 4).InvtPeriodEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RemoveItemRegNo : 5815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RemoveItemRegNo : "Inventory Period Entry";
    //Variable type has not been exported.
}


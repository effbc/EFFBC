tableextension 70160 InventoryAdjmtEntryExt extends "Inventory Adjmt. Entry (Order)"
{
    // version NAVW19.00.00.47838

    fields
    {

        //Unsupported feature: Change OptionString on ""Order Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Routing No."(Field 7)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Cost is Adjusted"(Field 29)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Online Adjustment"(Field 30)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Order Type,Order No.,Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cost is Adjusted,Allow Online Adjustment"(Key)". Please convert manually.

        key(Key1; "Order Type", "Order No.", "Order Line No.")
        {
        }
        key(Key2; "Cost is Adjusted", "Allow Online Adjustment")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "GetUnroundedCostsFromItem(PROCEDURE 21).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUnroundedCostsFromItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUnroundedCostsFromItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSingleLevelCosts(PROCEDURE 27).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSingleLevelCosts : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSingleLevelCosts : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcCurrencyFactor(PROCEDURE 24).OutputItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcCurrencyFactor : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcCurrencyFactor : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcCurrencyFactor(PROCEDURE 24).CurrExchRate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcCurrencyFactor : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcCurrencyFactor : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetRoundingPrecision(PROCEDURE 30).Currency(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetRoundingPrecision : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetRoundingPrecision : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUnitAmtRoundingPrecision(PROCEDURE 18).Currency(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUnitAmtRoundingPrecision : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUnitAmtRoundingPrecision : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.
}


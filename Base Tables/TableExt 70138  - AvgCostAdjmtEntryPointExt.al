tableextension 70138 AvgCostAdjmtEntryPointExt extends "Avg. Cost Adjmt. Entry Point"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 2)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Valuation Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Cost Is Adjusted,Valuation Date"(Key)". Please convert manually.

        key(Key1; "Item No.", "Variant Code", "Location Code", "Valuation Date")
        {
        }
        key(Key2; "Item No.", "Cost Is Adjusted", "Valuation Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ValuationExists(PROCEDURE 8).CalendarPeriod(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValuationExists : 2000000007;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValuationExists : Date;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrevValuationAdjusted(PROCEDURE 9).CopyOfAvgCostAdjmtPoint(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrevValuationAdjusted : 5804;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrevValuationAdjusted : "Avg. Cost Adjmt. Entry Point";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateNextValuations(PROCEDURE 1).CopyOfAvgCostAdjmtPoint(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateNextValuations : 5804;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateNextValuations : "Avg. Cost Adjmt. Entry Point";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AvgCostCalcTypeIsChanged(PROCEDURE 6).NextFiscalYearAccPeriod(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AvgCostCalcTypeIsChanged : 50;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AvgCostCalcTypeIsChanged : "Accounting Period";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetValuationPeriod(PROCEDURE 2).PeriodMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetValuationPeriod : 359;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetValuationPeriod : PeriodFormManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFiscalYearAccPeriod(PROCEDURE 13).AccountingPeriodMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFiscalYearAccPeriod : 360;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFiscalYearAccPeriod : "Accounting Period Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetAvgCostAjmtFilter(PROCEDURE 10).NextFiscalYearAccPeriod(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetAvgCostAjmtFilter : 50;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetAvgCostAjmtFilter : "Accounting Period";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FiscalYearAccPeriod(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FiscalYearAccPeriod : 50;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FiscalYearAccPeriod : "Accounting Period";
    //Variable type has not been exported.
}


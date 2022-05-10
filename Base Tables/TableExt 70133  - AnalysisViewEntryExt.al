tableextension 70133 AnalysisViewEntryExt extends "Analysis View Entry"
{
    // version NAVW19.00.00.48992

    fields
    {

        //Unsupported feature: Change TableRelation on ""Analysis View Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Analysis View Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Account No."(Field 3)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Dimension 1 Value Code"(Field 4)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Dimension 2 Value Code"(Field 5)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Dimension 3 Value Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Dimension 4 Value Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Add.-Curr. Amount"(Field 13)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Add.-Curr. Debit Amount"(Field 14)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Add.-Curr. Credit Amount"(Field 15)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Account Source"(Field 16)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Analysis View Code,Account No.,Account Source,Dimension 1 Value Code,Dimension 2 Value Code,Dimension 3 Value Code,Dimension 4 Value Code,Business Unit Code,Posting Date,Entry No.,Cash Flow Forecast No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Analysis View Code,Account No.,Account Source,Dimension 1 Value Code,Dimension 2 Value Code,Dimension 3 Value Code,Dimension 4 Value Code,Business Unit Code,Posting Date,Cash Flow Forecast No."(Key)". Please convert manually.

        key(Key1; "Analysis View Code", "Account No.", "Account Source", "Dimension 1 Value Code", "Dimension 2 Value Code", "Dimension 3 Value Code", "Dimension 4 Value Code", "Business Unit Code", "Posting Date", "Entry No.", "Cash Flow Forecast No.")
        {
        }
        key(Key2; "Analysis View Code", "Account No.", "Account Source", "Dimension 1 Value Code", "Dimension 2 Value Code", "Dimension 3 Value Code", "Dimension 4 Value Code", "Business Unit Code", "Posting Date", "Cash Flow Forecast No.")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Add.-Curr. Amount", "Add.-Curr. Debit Amount", "Add.-Curr. Credit Amount";
        }
        key(Key3; "Posting Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "DrillDown(PROCEDURE 1).TempGLEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDown : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDown : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDown(PROCEDURE 1).TempCFForecastEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDown : 847;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDown : "Cash Flow Forecast Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DrillDown(PROCEDURE 1).AnalysisViewEntryToGLEntries(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDown : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDown : AnalysisViewEntryToGLEntries;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AnalysisView(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AnalysisView : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnalysisView : "Analysis View";
    //Variable type has not been exported.
}


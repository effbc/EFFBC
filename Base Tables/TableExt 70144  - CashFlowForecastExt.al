tableextension 70144 CashFlowForecastExt extends "Cash Flow Forecast"
{
    // version NAVW19.00.00.50087,Rev01

    fields
    {

        //Unsupported feature: Change TableRelation on ""Created By"(Field 7)". Please convert manually.


        //Unsupported feature: Change Description on ""Created By"(Field 7)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 10)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""G/L Budget From"(Field 12)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""G/L Budget To"(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type Filter"(Field 18)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount (LCY)"(Field 20)". Please convert manually.


        //Unsupported feature: CodeModification on "Description(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Search Name" = UPPERCASE(xRec.Description)) OR ("Search Name" = '') THEN
          "Search Name" := Description;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Search Name" = UpperCase(xRec.Description)) or ("Search Name" = '') then
          "Search Name" := Description;
        */
        //end;


        //Unsupported feature: CodeModification on ""Consider Discount"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Consider Discount" THEN
          "Consider Pmt. Disc. Tol. Date" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Consider Discount" then
          "Consider Pmt. Disc. Tol. Date" := false;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF GetShowInChart THEN
      CFSetup.SetChartRoleCenterCFNo('');

    CFAccountComment.RESET;
    CFAccountComment.SETRANGE("Table Name",CFAccountComment."Table Name"::"Cash Flow Forecast");
    CFAccountComment.SETRANGE("No.","No.");
    CFAccountComment.DELETEALL;

    CFForecastEntry.RESET;
    CFForecastEntry.SETCURRENTKEY("Cash Flow Forecast No.");
    CFForecastEntry.SETRANGE("Cash Flow Forecast No.","No.");
    CFForecastEntry.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if GetShowInChart then
      CFSetup.SetChartRoleCenterCFNo('');

    CFAccountComment.Reset;
    CFAccountComment.SetRange("Table Name",CFAccountComment."Table Name"::"Cash Flow Forecast");
    CFAccountComment.SetRange("No.","No.");
    CFAccountComment.DeleteAll;

    CFForecastEntry.Reset;
    CFForecastEntry.SetCurrentKey("Cash Flow Forecast No.");
    CFForecastEntry.SetRange("Cash Flow Forecast No.","No.");
    CFForecastEntry.DeleteAll;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "No." = '' THEN BEGIN
      CFSetup.GET;
      CFSetup.TESTFIELD("Cash Flow Forecast No. Series");
      NoSeriesMgt.InitSeries(CFSetup."Cash Flow Forecast No. Series",xRec."No. Series",0D,"No.","No. Series");
    END;

    "Creation Date" := WORKDATE;
    "Created By" := USERID;
    "Manual Payments From" := WORKDATE;
    "G/L Budget From" := WORKDATE;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "No." = '' then begin
      CFSetup.Get;
      CFSetup.TestField("Cash Flow Forecast No. Series");
      NoSeriesMgt.InitSeries(CFSetup."Cash Flow Forecast No. Series",xRec."No. Series",0D,"No.","No. Series");
    end;

    "Creation Date" := WorkDate;
    "Created By" := UserId;
    "Manual Payments From" := WorkDate;
    "G/L Budget From" := WorkDate;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "DrillDown(PROCEDURE 17).CFForecastEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DrillDown : 847;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DrillDown : "Cash Flow Forecast Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).CashFlowForecast(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 840;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Cash Flow Forecast";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).CFReportSelection(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 856;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Cash Flow Report Selection";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupCashFlowFilter(PROCEDURE 9).CashFlowForecastList(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupCashFlowFilter : 849;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupCashFlowFilter : "Cash Flow Forecast List";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetEntryDate(PROCEDURE 11).CFForecastEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetEntryDate : 847;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetEntryDate : "Cash Flow Forecast Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CFSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CFSetup : 843;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CFSetup : "Cash Flow Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CashFlowForecast(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CashFlowForecast : 840;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CashFlowForecast : "Cash Flow Forecast";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CFAccountComment(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CFAccountComment : 842;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CFAccountComment : "Cash Flow Account Comment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CFForecastEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CFForecastEntry : 847;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CFForecastEntry : "Cash Flow Forecast Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.
}


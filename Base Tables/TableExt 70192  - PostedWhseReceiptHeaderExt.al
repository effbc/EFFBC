tableextension 70192 PostedWhseReceiptHeaderExt extends "Posted Whse. Receipt Header"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change TableRelation on ""Location Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Assigned User ID"(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assigned User ID"(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assignment Date"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assignment Time"(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 11)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Status"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Document Status"(Field 15)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Whse. Receipt No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Location Code")
        {
        }
        key(Key3; "Whse. Receipt No.")
        {
        }
        key(Key4; "Posting Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    WhseSetup.GET;
    IF "No." = '' THEN BEGIN
      IsHandled := FALSE;
      OnInsertOnBeforeTestWhseReceiptNos(WhseSetup,IsHandled);
      IF NOT IsHandled THEN
        WhseSetup.TESTFIELD("Whse. Receipt Nos.");
      NoSeriesMgt.InitSeries(
        WhseSetup."Posted Whse. Receipt Nos.",xRec."No. Series","Posting Date","No.","No. Series");
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    WhseSetup.Get;
    if "No." = '' then begin
      IsHandled := false;
      OnInsertOnBeforeTestWhseReceiptNos(WhseSetup,IsHandled);
      if not IsHandled then
        WhseSetup.TestField("Whse. Receipt Nos.");
      NoSeriesMgt.InitSeries(
        WhseSetup."Posted Whse. Receipt Nos.",xRec."No. Series","Posting Date","No.","No. Series");
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "GetHeaderStatus(PROCEDURE 15).PostedWhseRcptLine2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetHeaderStatus : 7319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetHeaderStatus : "Posted Whse. Receipt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetHeaderStatus(PROCEDURE 15).OrderStatus(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetHeaderStatus :  ,Partially Put Away,Completely Put Away;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetHeaderStatus : " ","Partially Put Away","Completely Put Away";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelatedLines(PROCEDURE 2).Location(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelatedLines : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelatedLines : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelatedLines(PROCEDURE 2).WhsePutAwayRequest(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelatedLines : 7324;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelatedLines : "Whse. Put-away Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelatedLines(PROCEDURE 2).PostedWhseRcptLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelatedLines : 7319;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelatedLines : "Posted Whse. Receipt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelatedLines(PROCEDURE 2).WhseCommentLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelatedLines : 5770;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelatedLines : "Warehouse Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindFirstAllowedRec(PROCEDURE 1).PostedWhseRcptHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindFirstAllowedRec : 7318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindFirstAllowedRec : "Posted Whse. Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindFirstAllowedRec(PROCEDURE 1).WMSManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindFirstAllowedRec : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindFirstAllowedRec : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindNextAllowedRec(PROCEDURE 3).PostedWhseRcptHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindNextAllowedRec : 7318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindNextAllowedRec : "Posted Whse. Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindNextAllowedRec(PROCEDURE 3).WMSManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindNextAllowedRec : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindNextAllowedRec : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ErrorIfUserIsNotWhseEmployee(PROCEDURE 4).WhseEmployee(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ErrorIfUserIsNotWhseEmployee : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ErrorIfUserIsNotWhseEmployee : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseSetup : 5769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseSetup : "Warehouse Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.
}


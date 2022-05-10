tableextension 70000235 tableextension70000235 extends "Order Promising Line" 
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit of Measure Code"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 15)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Requested Shipment Date"(Field 44)". Please convert manually.


        //Unsupported feature: CodeModification on ""Requested Delivery Date"(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            CASE "Source Type" OF
              "Source Type"::Sales:
                BEGIN
                  SalesLine.GET("Source Subtype","Source ID","Source Line No.");
                  "Requested Shipment Date" := CalcReqShipDate(SalesLine);
                END;
              "Source Type"::"Service Order":
                BEGIN
                  ServLine.GET("Source Subtype","Source ID","Source Line No.");
                  "Requested Shipment Date" := ServLine."Needed by Date";
                END;
              "Source Type"::Job:
                BEGIN
                  JobPlanningLine.SETRANGE("Job No.","Source ID");
                  JobPlanningLine.SETRANGE("Job Contract Entry No.","Source Line No.");
                  JobPlanningLine.FINDFIRST;
                  "Requested Shipment Date" := JobPlanningLine."Planning Date";
                END;
            END;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            case "Source Type" of
              "Source Type"::Sales:
                begin
                  SalesLine.Get("Source Subtype","Source ID","Source Line No.");
                  "Requested Shipment Date" := CalcReqShipDate(SalesLine);
                end;
              "Source Type"::"Service Order":
                begin
                  ServLine.Get("Source Subtype","Source ID","Source Line No.");
                  "Requested Shipment Date" := ServLine."Needed by Date";
                end;
              "Source Type"::Job:
                begin
                  JobPlanningLine.SetRange("Job No.","Source ID");
                  JobPlanningLine.SetRange("Job Contract Entry No.","Source Line No.");
                  JobPlanningLine.FindFirst;
                  "Requested Shipment Date" := JobPlanningLine."Planning Date";
                end;
            end;
            */
        //end;


        //Unsupported feature: CodeModification on ""Planned Delivery Date"(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            IF "Planned Delivery Date" <> 0D THEN
              CASE "Source Type" OF
                "Source Type"::Sales:
                  BEGIN
                    SalesLine.GET("Source Subtype","Source ID","Source Line No.");
                    SalesLine."Planned Delivery Date" := "Planned Delivery Date";
                    SalesLine."Planned Shipment Date" := SalesLine.CalcPlannedDate;
                    SalesLine."Shipment Date" := SalesLine.CalcShipmentDate;
                    "Planned Delivery Date" := SalesLine."Planned Delivery Date";
                    "Earliest Shipment Date" := SalesLine."Shipment Date";
                    IF "Earliest Shipment Date" > "Planned Delivery Date" THEN
                      "Planned Delivery Date" := "Earliest Shipment Date";
                  END;
                "Source Type"::"Service Order","Source Type"::Job:
                  "Earliest Shipment Date" := "Planned Delivery Date";
              END;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            if "Planned Delivery Date" <> 0D then
              case "Source Type" of
                "Source Type"::Sales:
                  begin
                    SalesLine.Get("Source Subtype","Source ID","Source Line No.");
            #6..10
                    if "Earliest Shipment Date" > "Planned Delivery Date" then
                      "Planned Delivery Date" := "Earliest Shipment Date";
                  end;
                "Source Type"::"Service Order","Source Type"::Job:
                  "Earliest Shipment Date" := "Planned Delivery Date";
              end;
            */
        //end;


        //Unsupported feature: CodeModification on ""Earliest Shipment Date"(Field 43).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            CASE "Source Type" OF
              "Source Type"::Sales:
                IF "Earliest Shipment Date" <> 0D THEN BEGIN
                  SalesLine.GET("Source Subtype","Source ID","Source Line No.");
                  SalesLine.VALIDATE("Shipment Date","Earliest Shipment Date");
                  "Planned Delivery Date" := SalesLine."Planned Delivery Date";
                END;
              "Source Type"::"Service Order":
                IF "Earliest Shipment Date" <> 0D THEN
                  "Planned Delivery Date" := "Earliest Shipment Date";
              "Source Type"::Job:
                IF "Earliest Shipment Date" <> 0D THEN
                  "Planned Delivery Date" := "Earliest Shipment Date";
            END;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            case "Source Type" of
              "Source Type"::Sales:
                if "Earliest Shipment Date" <> 0D then begin
                  SalesLine.Get("Source Subtype","Source ID","Source Line No.");
                  SalesLine.Validate("Shipment Date","Earliest Shipment Date");
                  "Planned Delivery Date" := SalesLine."Planned Delivery Date";
                end;
              "Source Type"::"Service Order":
                if "Earliest Shipment Date" <> 0D then
                  "Planned Delivery Date" := "Earliest Shipment Date";
              "Source Type"::Job:
                if "Earliest Shipment Date" <> 0D then
                  "Planned Delivery Date" := "Earliest Shipment Date";
            end;
            */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Requested Shipment Date"(Key)". Please convert manually.

        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Requested Shipment Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Requested Delivery Date"(Field 40).OnValidate.SalesLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Requested Delivery Date" : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Requested Delivery Date" : "Sales Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Requested Delivery Date"(Field 40).OnValidate.ServLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Requested Delivery Date" : 5902;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Requested Delivery Date" : "Service Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Requested Delivery Date"(Field 40).OnValidate.JobPlanningLine(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Requested Delivery Date" : 1003;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Requested Delivery Date" : "Job Planning Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Planned Delivery Date"(Field 41).OnValidate.SalesLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Planned Delivery Date" : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Planned Delivery Date" : "Sales Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Earliest Shipment Date"(Field 43).OnValidate.SalesLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Earliest Shipment Date" : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Earliest Shipment Date" : "Sales Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLastEntryNo(PROCEDURE 5).CopyOfOrderPromisingLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //GetLastEntryNo : 99000880;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetLastEntryNo : "Order Promising Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailability(PROCEDURE 18).Item(Variable 1004)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalcAvailability : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalcAvailability : Item;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailability(PROCEDURE 18).AvailableToPromise(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalcAvailability : 5790;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalcAvailability : "Available to Promise";
        //Variable type has not been exported.
}


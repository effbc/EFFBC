tableextension 70123 RoutingHeaderExt extends "Routing Header"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 10)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 12)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 51)". Please convert manually.


        //Unsupported feature: CodeModification on "Status(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Status <> xRec.Status) AND (Status = Status::Certified) THEN
          CheckRouting.Calculate(Rec,'');

        IF Status = Status::Closed THEN BEGIN
          IF CONFIRM(
               Text001,FALSE)
          THEN BEGIN
            RtngVersion.SETRANGE("Routing No.","No.");
            RtngVersion.MODIFYALL(Status,RtngVersion.Status::Closed);
          END ELSE
            Status := xRec.Status;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Status <> xRec.Status) and (Status = Status::Certified) then
          CheckRouting.Calculate(Rec,'');

        if Status = Status::Closed then begin
          if Confirm(
               Text001,false)
          then begin
            RtngVersion.SetRange("Routing No.","No.");
            RtngVersion.ModifyAll(Status,RtngVersion.Status::Closed);
          end else
            Status := xRec.Status;
        end;

        RoutingLine.SetRange("Routing No.","No.");
        if RoutingLine.Find('-') then begin
          "Bench Mark Time(In Hours)" := 0;
          repeat
            "Bench Mark Time(In Hours)" := "Bench Mark Time(In Hours)" + Round((RoutingLine."Run Time" / 60),0.01);
          until RoutingLine.Next = 0;
        end;

        //Cost1.0 b2b
        CalcFields("Man Cost");
        RoutingLine.Reset;
        RoutingLine.SetRange("Routing No.","No.");
        TotMin:=0;
        if RoutingLine.Find('-') then
          repeat
             TotMin+=RoutingLine."Run Time";
          until RoutingLine.Next=0;
          TotHours:=TotMin/60;
          //"Tot Man Cost/Hour":="Man Cost"*TotHours;
          "Tot Man Cost/Hour":=("Man Cost"/60)*TotHours;
        //Cost1.0 b2b

        Modify(true);
        Commit;
        */
        //end;


        //Unsupported feature: CodeModification on "Type(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Status = Status::Certified THEN
          FIELDERROR(Status);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Status = Status::Certified then
          FieldError(Status);
        */
        //end;
        field(60001; "Bench Mark Time(In Hours)"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60002; "Man Cost"; Decimal)
        {
            CalcFormula = Sum("Routing Line"."Man Cost" WHERE("Routing No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(60003; "Tot Man Cost/Hour"; Decimal)
        {
            Editable = false;
        }
        field(90080; "User Id"; Code[50])
        {
            Editable = false;
        }
        field(90081; "Modifef User ID"; Code[50])
        {
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Description"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Description")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    MfgComment.SETRANGE("Table Name",MfgComment."Table Name"::"Routing Header");
    MfgComment.SETRANGE("No.","No.");
    MfgComment.DELETEALL;

    RtngLine.LOCKTABLE;
    RtngLine.SETRANGE("Routing No.","No.");
    RtngLine.DELETEALL(TRUE);

    RtngVersion.SETRANGE("Routing No.","No.");
    RtngVersion.DELETEALL;

    Item.SETRANGE("Routing No.","No.");
    IF NOT Item.ISEMPTY THEN
      ERROR(Text000);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    MfgComment.SetRange("Table Name",MfgComment."Table Name"::"Routing Header");
    MfgComment.SetRange("No.","No.");
    MfgComment.DeleteAll;

    RtngLine.LockTable;
    RtngLine.SetRange("Routing No.","No.");
    RtngLine.DeleteAll(true);

    RtngVersion.SetRange("Routing No.","No.");
    RtngVersion.DeleteAll;

    Item.SetRange("Routing No.","No.");
    if not Item.IsEmpty then
      Error(Text000);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    MfgSetup.GET;
    IF "No." = '' THEN BEGIN
      MfgSetup.TESTFIELD("Routing Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Routing Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    MfgSetup.Get;
    if "No." = '' then begin
      MfgSetup.TestField("Routing Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Routing Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    "Modifef User ID" := UserId;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Certified THEN
      ERROR(Text002,TABLECAPTION,FIELDCAPTION(Status),FORMAT(Status));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Status = Status::Certified then
      Error(Text002,TableCaption,FieldCaption(Status),Format(Status));
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.RtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.RtngLine : 99000764;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.RtngLine : "Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.MfgComment(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.MfgComment : 99000770;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.MfgComment : "Manufacturing Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgSetup : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgSetup : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RoutingHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RoutingHeader : 99000763;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RoutingHeader : "Routing Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngVersion(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngVersion : 99000786;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngVersion : "Routing Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckRouting(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckRouting : 99000752;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckRouting : "Check Routing Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.

    var
        RoutingLine: Record "Routing Line";
        TotMin: Decimal;
        TotHours: Decimal;
}


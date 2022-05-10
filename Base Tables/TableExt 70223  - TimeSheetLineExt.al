tableextension 70223 TimeSheetLineExt extends "Time Sheet Line"
{
    // version NAVW19.00.00.50221,Rev01

    fields
    {

        //Unsupported feature: Change Editable on ""Time Sheet Starting Date"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Approver ID"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Order No."(Field 13)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Total Quantity"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Quantity"(Field 15)". Please convert manually.


        //Unsupported feature: Change InitValue on "Chargeable(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Assembly Order No."(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assembly Order No."(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assembly Order Line No."(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Approved By"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Approval Date"(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on "Posted(Field 23)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatus;
        IF Type = Type::"Assembly Order" THEN
          FIELDERROR(Type);
        IF Type <> xRec.Type THEN BEGIN
          TimeSheetDetail.SETRANGE("Time Sheet No.","Time Sheet No.");
          TimeSheetDetail.SETRANGE("Time Sheet Line No.","Line No.");
          IF NOT TimeSheetDetail.ISEMPTY THEN
            TimeSheetDetail.DELETEALL;
          "Job No." := '';
          "Job Task No." := '';
          "Service Order No." := '';
        #12..14
          "Assembly Order No." := '';
          "Assembly Order Line No." := 0;
          UpdateApproverID;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatus;
        if Type = Type::"Assembly Order" then
          FieldError(Type);
        if Type <> xRec.Type then begin
          TimeSheetDetail.SetRange("Time Sheet No.","Time Sheet No.");
          TimeSheetDetail.SetRange("Time Sheet Line No.","Line No.");
          if not TimeSheetDetail.IsEmpty then
            TimeSheetDetail.DeleteAll;
        #9..17
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job No." <> '' THEN BEGIN
          TESTFIELD(Type,Type::Job);
          Job.GET("Job No.");
          IF Job.Blocked = Job.Blocked::All THEN
            Job.TestBlocked;
        END;
        VALIDATE("Job Task No.",'');
        UpdateApproverID;
        UpdateJobId;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job No." <> '' then begin
          TestField(Type,Type::Job);
          Job.Get("Job No.");
          if Job.Blocked = Job.Blocked::All then
            Job.TestBlocked;
        end;
        Validate("Job Task No.",'');
        UpdateApproverID;
        UpdateJobId;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Task No."(Field 7).OnValidate". Please convert manually.

        //trigger "(Field 7)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Task No." <> '' THEN BEGIN
          TESTFIELD(Type,Type::Job);
          JobTask.GET("Job No.","Job Task No.");
          JobTask.TESTFIELD("Job Task Type",JobTask."Job Task Type"::Posting);
          Description := JobTask.Description;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Task No." <> '' then begin
          TestField(Type,Type::Job);
          JobTask.Get("Job No.","Job Task No.");
          JobTask.TestField("Job Task Type",JobTask."Job Task Type"::Posting);
          Description := JobTask.Description;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Cause of Absence Code"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Cause of Absence Code" <> '' THEN BEGIN
          TESTFIELD(Type,Type::Absence);
          CauseOfAbsence.GET("Cause of Absence Code");
          Description := CauseOfAbsence.Description;
          TimeSheetHeader.GET("Time Sheet No.");
          Resource.GET(TimeSheetHeader."Resource No.");
          Resource.TESTFIELD("Base Unit of Measure");
          Resource.TESTFIELD(Type,Resource.Type::Person);
          Employee.RESET;
          Employee.SETRANGE("Resource No.",TimeSheetHeader."Resource No.");
          IF Employee.ISEMPTY THEN
            ERROR(Text001,TimeSheetHeader."Resource No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Cause of Absence Code" <> '' then begin
          TestField(Type,Type::Absence);
          CauseOfAbsence.Get("Cause of Absence Code");
          Description := CauseOfAbsence.Description;
          TimeSheetHeader.Get("Time Sheet No.");
          Resource.Get(TimeSheetHeader."Resource No.");
          Resource.TestField("Base Unit of Measure");
          Resource.TestField(Type,Resource.Type::Person);
          Employee.Reset;
          Employee.SetRange("Resource No.",TimeSheetHeader."Resource No.");
          if Employee.IsEmpty then
            Error(Text001,TimeSheetHeader."Resource No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Work Type Code"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Work Type Code" <> xRec."Work Type Code") AND ("Work Type Code" <> '') THEN
          CheckWorkType;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Work Type Code" <> xRec."Work Type Code") and ("Work Type Code" <> '') then
          CheckWorkType;
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Order No."(Field 13).OnValidate". Please convert manually.

        //trigger "(Field 13)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Order No." <> '' THEN BEGIN
          TESTFIELD(Type,Type::Service);
          ServiceHeader.GET(ServiceHeader."Document Type"::Order,"Service Order No.");
          Description := COPYSTR(
              STRSUBSTNO(Text003,"Service Order No.",ServiceHeader."Customer No."),
              1,
              MAXSTRLEN(Description));
        END ELSE
          Description := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Order No." <> '' then begin
          TestField(Type,Type::Service);
          ServiceHeader.Get(ServiceHeader."Document Type"::Order,"Service Order No.");
          Description := CopyStr(
              StrSubstNo(Text003,"Service Order No.",ServiceHeader."Customer No."),
              1,
              MaxStrLen(Description));
        end else
          Description := '';
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Time Sheet No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Time Sheet No.,Status,Posted"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,Job No."(Key)". Please convert manually.

        key(Pk; "Time Sheet No.", "Line No.")
        {
        }
        key(Sk1; "Time Sheet No.", Status, Posted)
        {
        }
        key(Sk2; Type, "Job No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatus;

    GetTimeSheetResource(Resource);
    CheckResourcePrivacyBlocked(Resource);
    Resource.TESTFIELD(Blocked,FALSE);

    TimeSheetDetail.SETRANGE("Time Sheet No.","Time Sheet No.");
    TimeSheetDetail.SETRANGE("Time Sheet Line No.","Line No.");
    TimeSheetDetail.DELETEALL;

    TimeSheetCommentLine.SETRANGE("No.","Time Sheet No.");
    TimeSheetCommentLine.SETRANGE("Time Sheet Line No.","Line No.");
    TimeSheetCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    Resource.TestField(Blocked,false);

    TimeSheetDetail.SetRange("Time Sheet No.","Time Sheet No.");
    TimeSheetDetail.SetRange("Time Sheet Line No.","Line No.");
    TimeSheetDetail.DeleteAll;

    TimeSheetCommentLine.SetRange("No.","Time Sheet No.");
    TimeSheetCommentLine.SetRange("Time Sheet Line No.","Line No.");
    TimeSheetCommentLine.DeleteAll;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetTimeSheetResource(Resource);
    CheckResourcePrivacyBlocked(Resource);
    Resource.TESTFIELD(Blocked,FALSE);

    UpdateApproverID;
    "Time Sheet Starting Date" := TimeSheetHeader."Starting Date";
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GetTimeSheetResource(Resource);
    CheckResourcePrivacyBlocked(Resource);
    Resource.TestField(Blocked,false);
    #4..6
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetTimeSheetResource(Resource);
    CheckResourcePrivacyBlocked(Resource);
    Resource.TESTFIELD(Blocked,FALSE);

    UpdateDetails;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GetTimeSheetResource(Resource);
    CheckResourcePrivacyBlocked(Resource);
    Resource.TestField(Blocked,false);

    UpdateDetails;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Cause of Absence Code"(Field 9).OnValidate.Resource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Cause of Absence Code" : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Cause of Absence Code" : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Cause of Absence Code"(Field 9).OnValidate.Employee(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Cause of Absence Code" : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Cause of Absence Code" : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Cause of Absence Code"(Field 9).OnValidate.CauseOfAbsence(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Cause of Absence Code" : 5206;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Cause of Absence Code" : "Cause of Absence";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Order No."(Field 13).OnValidate.ServiceHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Service Order No." : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Service Order No." : "Service Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TimeSheetCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TimeSheetCommentLine : 953;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TimeSheetCommentLine : "Time Sheet Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Resource(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Resource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Resource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.Resource(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.Resource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.Resource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnModify.Resource(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnModify.Resource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnModify.Resource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDetails(PROCEDURE 1).TimeSheetDetail(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDetails : 952;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDetails : "Time Sheet Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetJobApproverID(PROCEDURE 6).Resource(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetJobApproverID : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetJobApproverID : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateApproverID(PROCEDURE 2).Resource(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateApproverID : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateApproverID : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWorkType(PROCEDURE 5).Resource(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWorkType : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWorkType : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWorkType(PROCEDURE 5).WorkType(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWorkType : 200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWorkType : "Work Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineDetails(PROCEDURE 4).TimeSheetLineResDetail(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineDetails : 965;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineDetails : "Time Sheet Line Res. Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineDetails(PROCEDURE 4).TimeSheetLineJobDetail(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineDetails : 966;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineDetails : "Time Sheet Line Job Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineDetails(PROCEDURE 4).TimeSheetLineServiceDetail(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineDetails : 967;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineDetails : "Time Sheet Line Service Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineDetails(PROCEDURE 4).TimeSheetLineAssembDetail(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineDetails : 968;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineDetails : "Time Sheet Line Assemb. Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineDetails(PROCEDURE 4).TimeSheetLineAbsenceDetail(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineDetails : 969;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineDetails : "Time Sheet Line Absence Detail";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateJobId(PROCEDURE 10).Job(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateJobId : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateJobId : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResourcesSetup(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResourcesSetup : 314;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResourcesSetup : "Resources Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Job(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Job : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Job : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "JobTask(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //JobTask : 1001;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobTask : "Job Task";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TimeSheetHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TimeSheetHeader : 950;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TimeSheetHeader : "Time Sheet Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TimeSheetDetail(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TimeSheetDetail : 952;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TimeSheetDetail : "Time Sheet Detail";
    //Variable type has not been exported.
}


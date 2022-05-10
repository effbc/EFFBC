tableextension 70068 SegmentLineExt extends "Segment Line"
{
    // version NAVW19.00.00.51918

    fields
    {

        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 5)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Correspondence Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Contact Name"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contact Name"(Field 12)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Information Flow"(Field 13)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Information Flow"(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Initiated By"(Field 14)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Initiated By"(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contact Alt. Address Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change OptionString on "Evaluation(Field 16)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Contact Company Name"(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contact Company Name"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To-do No."(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Campaign Entry No."(Field 28)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 31)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Document No."(Field 32)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Wizard Step"(Field 9501)". Please convert manually.


        //Unsupported feature: Change Editable on ""Wizard Step"(Field 9501)". Please convert manually.


        //Unsupported feature: CodeModification on ""Contact No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        InitLine;

        IF Cont.GET("Contact No.") THEN BEGIN
          "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
          "Contact Company No." := Cont."Company No.";
          "Contact Alt. Address Code" := Cont.ActiveAltAddress(Date);
          IF SegHeader.GET("Segment No.") THEN BEGIN
            IF SegHeader."Salesperson Code" = '' THEN
              "Salesperson Code" := Cont."Salesperson Code"
            ELSE
              "Salesperson Code" := SegHeader."Salesperson Code";
            IF SegHeader."Ignore Contact Corres. Type" AND
               (SegHeader."Correspondence Type (Default)" <> SegHeader."Correspondence Type (Default)"::" ")
            THEN
              "Correspondence Type" := SegHeader."Correspondence Type (Default)"
            ELSE
              IF InteractTmpl.GET(SegHeader."Interaction Template Code") AND
                 (InteractTmpl."Ignore Contact Corres. Type" OR
                  ((InteractTmpl."Ignore Contact Corres. Type" = FALSE) AND
                   (Cont."Correspondence Type" = Cont."Correspondence Type"::" ")))
              THEN
                "Correspondence Type" := InteractTmpl."Correspondence Type (Default)"
              ELSE
                "Correspondence Type" := Cont."Correspondence Type";
          END ELSE BEGIN
            SetDefaultSalesperson;
            IF "Salesperson Code" = '' THEN
              IF NOT Salesperson.GET(GETFILTER("Salesperson Code")) THEN
                "Salesperson Code" := Cont."Salesperson Code";
          END;
        END ELSE BEGIN
          "Contact Company No." := '';
          "Contact Alt. Address Code" := '';
          IF SegHeader.GET("Segment No.") THEN
            "Salesperson Code" := SegHeader."Salesperson Code"
          ELSE BEGIN
            "Salesperson Code" := '';
            "Language Code" := '';
          END;
        END;
        CALCFIELDS("Contact Name","Contact Company Name");

        IF "Segment No." <> '' THEN BEGIN
          IF UniqueAttachmentExists THEN BEGIN
            MODIFY;
            SegInteractLanguage.RESET;
            SegInteractLanguage.SETRANGE("Segment No.","Segment No.");
            SegInteractLanguage.SETRANGE("Segment Line No.","Line No.");
            SegInteractLanguage.DELETEALL(TRUE);
            GET("Segment No.","Line No.");
          END;

          "Language Code" := FindLanguage("Interaction Template Code","Language Code");
          IF SegInteractLanguage.GET("Segment No.",0,"Language Code") THEN BEGIN
            IF Attachment.GET(SegInteractLanguage."Attachment No.") THEN
              "Attachment No." := SegInteractLanguage."Attachment No.";
            Subject := SegInteractLanguage.Subject;
          END;
        END;

        IF xRec."Contact No." <> "Contact No." THEN
          SetCampaignTargetGroup;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        InitLine;

        if Cont.Get("Contact No.") then begin
        #4..6
          if SegHeader.Get("Segment No.") then begin
            if SegHeader."Salesperson Code" = '' then
              "Salesperson Code" := Cont."Salesperson Code"
            else
              "Salesperson Code" := SegHeader."Salesperson Code";
            if SegHeader."Ignore Contact Corres. Type" and
               (SegHeader."Correspondence Type (Default)" <> SegHeader."Correspondence Type (Default)"::" ")
            then
              "Correspondence Type" := SegHeader."Correspondence Type (Default)"
            else
              if InteractTmpl.Get(SegHeader."Interaction Template Code") and
                 (InteractTmpl."Ignore Contact Corres. Type" or
                  ((InteractTmpl."Ignore Contact Corres. Type" = false) and
                   (Cont."Correspondence Type" = Cont."Correspondence Type"::" ")))
              then
                "Correspondence Type" := InteractTmpl."Correspondence Type (Default)"
              else
                "Correspondence Type" := Cont."Correspondence Type";
          end else begin
            SetDefaultSalesperson;
            if "Salesperson Code" = '' then
              if not Salesperson.Get(GetFilter("Salesperson Code")) then
                "Salesperson Code" := Cont."Salesperson Code";
          end;
        end else begin
          "Contact Company No." := '';
          "Contact Alt. Address Code" := '';
          if SegHeader.Get("Segment No.") then
            "Salesperson Code" := SegHeader."Salesperson Code"
          else begin
            "Salesperson Code" := '';
            "Language Code" := '';
          end;
        end;
        CalcFields("Contact Name","Contact Company Name");

        if "Segment No." <> '' then begin
          if UniqueAttachmentExists then begin
            Modify;
            SegInteractLanguage.Reset;
            SegInteractLanguage.SetRange("Segment No.","Segment No.");
            SegInteractLanguage.SetRange("Segment Line No.","Line No.");
            SegInteractLanguage.DeleteAll(true);
            Get("Segment No.","Line No.");
          end;

          "Language Code" := FindLanguage("Interaction Template Code","Language Code");
          if SegInteractLanguage.Get("Segment No.",0,"Language Code") then begin
            if Attachment.Get(SegInteractLanguage."Attachment No.") then
              "Attachment No." := SegInteractLanguage."Attachment No.";
            Subject := SegInteractLanguage.Subject;
          end;
        end;

        if xRec."Contact No." <> "Contact No." then
          SetCampaignTargetGroup;
        */
        //end;


        //Unsupported feature: CodeModification on ""Campaign No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Campaign No." <> "Campaign No." THEN
          SetCampaignTargetGroup;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Campaign No." <> "Campaign No." then
          SetCampaignTargetGroup;
        */
        //end;


        //Unsupported feature: CodeModification on ""Correspondence Type"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT Attachment.GET("Attachment No.") THEN
          EXIT;

        ErrorText := Attachment.CheckCorrespondenceType("Correspondence Type");
        IF ErrorText <> '' THEN
          ERROR(
            STRSUBSTNO('%1%2',
              STRSUBSTNO(Text000,FIELDCAPTION("Correspondence Type"),"Correspondence Type",TABLECAPTION,"Line No."),
              ErrorText));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not Attachment.Get("Attachment No.") then
          exit;

        ErrorText := Attachment.CheckCorrespondenceType("Correspondence Type");
        if ErrorText <> '' then
          Error(
            StrSubstNo('%1%2',
              StrSubstNo(Text000,FieldCaption("Correspondence Type"),"Correspondence Type",TableCaption,"Line No."),
              ErrorText));
        */
        //end;


        //Unsupported feature: CodeModification on ""Interaction Template Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Contact No.");
        Cont.GET("Contact No.");
        "Attachment No." := 0;
        "Language Code" := '';
        Subject := '';
        "Correspondence Type" := "Correspondence Type"::" ";
        "Interaction Group Code" := '';
        "Cost (LCY)" := 0;
        "Duration (Min.)" := 0;
        "Information Flow" := "Information Flow"::" ";
        "Initiated By" := "Initiated By"::" ";
        "Campaign Target" := FALSE;
        "Campaign Response" := FALSE;
        "Correspondence Type" := "Correspondence Type"::" ";
        IF (GETFILTER("Campaign No.") = '') AND (InteractTmpl."Campaign No." <> '') THEN
          "Campaign No." := '';
        MODIFY;

        IF "Segment No." <> '' THEN BEGIN
          SegInteractLanguage.RESET;
          SegInteractLanguage.SETRANGE("Segment No.","Segment No.");
          SegInteractLanguage.SETRANGE("Segment Line No.","Line No.");
          SegInteractLanguage.DELETEALL(TRUE);
          GET("Segment No.","Line No.");
          IF "Interaction Template Code" <> '' THEN BEGIN
            SegHeader.GET("Segment No.");
            IF "Interaction Template Code" <> SegHeader."Interaction Template Code" THEN BEGIN
              SegHeader.CreateSegInteractions("Interaction Template Code","Segment No.","Line No.");
              "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
              IF SegInteractLanguage.GET("Segment No.","Line No.","Language Code") THEN
                "Attachment No." := SegInteractLanguage."Attachment No.";
            END ELSE BEGIN
              "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
              IF SegInteractLanguage.GET("Segment No.",0,"Language Code") THEN
                "Attachment No." := SegInteractLanguage."Attachment No.";
            END;
          END;
        END ELSE BEGIN
          "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
          IF InteractTemplLanguage.GET("Interaction Template Code","Language Code") THEN
            "Attachment No." := InteractTemplLanguage."Attachment No.";
        END;

        IF InteractTmpl.GET("Interaction Template Code") THEN BEGIN
          "Interaction Group Code" := InteractTmpl."Interaction Group Code";
          IF Description = '' THEN
            Description := InteractTmpl.Description;
          "Cost (LCY)" := InteractTmpl."Unit Cost (LCY)";
          "Duration (Min.)" := InteractTmpl."Unit Duration (Min.)";
          "Information Flow" := InteractTmpl."Information Flow";
          "Initiated By" := InteractTmpl."Initiated By";
          "Campaign Target" := InteractTmpl."Campaign Target";
          "Campaign Response" := InteractTmpl."Campaign Response";

          CASE TRUE OF
            SegHeader."Ignore Contact Corres. Type" AND
            (SegHeader."Correspondence Type (Default)" <> SegHeader."Correspondence Type (Default)"::" "):
              "Correspondence Type" := SegHeader."Correspondence Type (Default)";
            InteractTmpl."Ignore Contact Corres. Type" OR
            ((InteractTmpl."Ignore Contact Corres. Type" = FALSE) AND
             (Cont."Correspondence Type" = Cont."Correspondence Type"::" ") AND
             (InteractTmpl."Correspondence Type (Default)" <> InteractTmpl."Correspondence Type (Default)"::" ")):
              "Correspondence Type" := InteractTmpl."Correspondence Type (Default)";
            ELSE
              IF Cont."Correspondence Type" <> Cont."Correspondence Type"::" " THEN
                "Correspondence Type" := Cont."Correspondence Type"
              ELSE
                "Correspondence Type" := xRec."Correspondence Type";
          END;
          IF SegHeader."Campaign No." <> '' THEN
            "Campaign No." := SegHeader."Campaign No."
          ELSE
            IF (GETFILTER("Campaign No.") = '') AND (InteractTmpl."Campaign No." <> '') THEN
              "Campaign No." := InteractTmpl."Campaign No.";
        END;
        IF Campaign.GET("Campaign No.") THEN
          "Campaign Description" := Campaign.Description;

        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Contact No.");
        Cont.Get("Contact No.");
        #3..11
        "Campaign Target" := false;
        "Campaign Response" := false;
        "Correspondence Type" := "Correspondence Type"::" ";
        if (GetFilter("Campaign No.") = '') and (InteractTmpl."Campaign No." <> '') then
          "Campaign No." := '';
        Modify;

        if "Segment No." <> '' then begin
          SegInteractLanguage.Reset;
          SegInteractLanguage.SetRange("Segment No.","Segment No.");
          SegInteractLanguage.SetRange("Segment Line No.","Line No.");
          SegInteractLanguage.DeleteAll(true);
          Get("Segment No.","Line No.");
          if "Interaction Template Code" <> '' then begin
            SegHeader.Get("Segment No.");
            if "Interaction Template Code" <> SegHeader."Interaction Template Code" then begin
              SegHeader.CreateSegInteractions("Interaction Template Code","Segment No.","Line No.");
              "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
              if SegInteractLanguage.Get("Segment No.","Line No.","Language Code") then
                "Attachment No." := SegInteractLanguage."Attachment No.";
            end else begin
              "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
              if SegInteractLanguage.Get("Segment No.",0,"Language Code") then
                "Attachment No." := SegInteractLanguage."Attachment No.";
            end;
          end;
        end else begin
          "Language Code" := FindLanguage("Interaction Template Code",Cont."Language Code");
          if InteractTemplLanguage.Get("Interaction Template Code","Language Code") then
            "Attachment No." := InteractTemplLanguage."Attachment No.";
        end;

        if InteractTmpl.Get("Interaction Template Code") then begin
          "Interaction Group Code" := InteractTmpl."Interaction Group Code";
          if Description = '' then
        #47..54
          case true of
            SegHeader."Ignore Contact Corres. Type" and
            (SegHeader."Correspondence Type (Default)" <> SegHeader."Correspondence Type (Default)"::" "):
              "Correspondence Type" := SegHeader."Correspondence Type (Default)";
            InteractTmpl."Ignore Contact Corres. Type" or
            ((InteractTmpl."Ignore Contact Corres. Type" = false) and
             (Cont."Correspondence Type" = Cont."Correspondence Type"::" ") and
             (InteractTmpl."Correspondence Type (Default)" <> InteractTmpl."Correspondence Type (Default)"::" ")):
              "Correspondence Type" := InteractTmpl."Correspondence Type (Default)";
            else
              if Cont."Correspondence Type" <> Cont."Correspondence Type"::" " then
                "Correspondence Type" := Cont."Correspondence Type"
              else
                "Correspondence Type" := xRec."Correspondence Type";
          end;
          if SegHeader."Campaign No." <> '' then
            "Campaign No." := SegHeader."Campaign No."
          else
            if (GetFilter("Campaign No.") = '') and (InteractTmpl."Campaign No." <> '') then
              "Campaign No." := InteractTmpl."Campaign No.";
        end;
        if Campaign.Get("Campaign No.") then
          "Campaign Description" := Campaign.Description;

        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Campaign Target"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Campaign Target" <> "Campaign Target" THEN
          SetCampaignTargetGroup;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Campaign Target" <> "Campaign Target" then
          SetCampaignTargetGroup;
        */
        //end;


        //Unsupported feature: CodeModification on ""Language Code"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Interaction Template Code");

        IF "Language Code" = xRec."Language Code" THEN
          EXIT;

        IF SegHeader.GET("Segment No.") THEN BEGIN
          IF NOT UniqueAttachmentExists THEN BEGIN
            IF SegInteractLanguage.GET("Segment No.",0,"Language Code") THEN BEGIN
              "Attachment No." := SegInteractLanguage."Attachment No.";
              Subject := SegInteractLanguage.Subject;
            END ELSE BEGIN
              "Attachment No." := 0;
              Subject := '';
            END;
          END ELSE
            IF SegInteractLanguage.GET("Segment No.","Line No.","Language Code") THEN BEGIN
              "Attachment No." := SegInteractLanguage."Attachment No.";
              Subject := SegInteractLanguage.Subject;
            END ELSE BEGIN
              "Attachment No." := 0;
              Subject := '';
            END;
          MODIFY;
        END ELSE BEGIN
          InteractTemplLanguage.GET("Interaction Template Code","Language Code");
          SetInteractionAttachment;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Interaction Template Code");

        if "Language Code" = xRec."Language Code" then
          exit;

        if SegHeader.Get("Segment No.") then begin
          if not UniqueAttachmentExists then begin
            if SegInteractLanguage.Get("Segment No.",0,"Language Code") then begin
              "Attachment No." := SegInteractLanguage."Attachment No.";
              Subject := SegInteractLanguage.Subject;
            end else begin
              "Attachment No." := 0;
              Subject := '';
            end;
          end else
            if SegInteractLanguage.Get("Segment No.","Line No.","Language Code") then begin
              "Attachment No." := SegInteractLanguage."Attachment No.";
              Subject := SegInteractLanguage.Subject;
            end else begin
              "Attachment No." := 0;
              Subject := '';
            end;
          Modify;
        end else begin
          InteractTemplLanguage.Get("Interaction Template Code","Language Code");
          SetInteractionAttachment;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Date(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Cont.GET("Contact No.") THEN
          IF "Contact Alt. Address Code" = Cont.ActiveAltAddress(xRec.Date) THEN
            "Contact Alt. Address Code" := Cont.ActiveAltAddress(Date);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Cont.Get("Contact No.") then
          if "Contact Alt. Address Code" = Cont.ActiveAltAddress(xRec.Date) then
            "Contact Alt. Address Code" := Cont.ActiveAltAddress(Date);
        */
        //end;
        field(50000; "OutWard No."; Code[30])
        {
        }
        field(50001; "InWard No."; Code[30])
        {
        }
        field(50002; "OutWard Ref No."; Code[30])
        {
        }
        field(50003; "InWard Ref No."; Code[30])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Segment No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Segment No.,Campaign No.,Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contact No.,Segment No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Campaign No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Campaign No.,Contact Company No.,Campaign Target"(Key)". Please convert manually.

        key(Key1; "Segment No.", "Line No.")
        {
        }
        key(Key2; "Segment No.", "Campaign No.", Date)
        {
        }
        key(Key3; "Contact No.", "Segment No.")
        {
        }
        key(Key4; "Campaign No.")
        {
        }
        key(Key5; "Campaign No.", "Contact Company No.", "Campaign Target")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CampaignTargetGrMgt.DeleteSegfromTargetGr(Rec);

    SegInteractLanguage.RESET;
    SegInteractLanguage.SETRANGE("Segment No.","Segment No.");
    SegInteractLanguage.SETRANGE("Segment Line No.","Line No.");
    SegInteractLanguage.DELETEALL(TRUE);
    GET("Segment No.","Line No.");

    SegLine.SETRANGE("Segment No.","Segment No.");
    SegLine.SETFILTER("Line No.",'<>%1',"Line No.");
    IF SegLine.ISEMPTY THEN BEGIN
      IF SegHeader.GET("Segment No.") THEN
        SegHeader.CALCFIELDS("No. of Criteria Actions");
      IF SegHeader."No. of Criteria Actions" > 1 THEN
        IF CONFIRM(Text006,TRUE) THEN BEGIN
          SegmentCriteriaLine.SETRANGE("Segment No.","Segment No.");
          SegmentCriteriaLine.DELETEALL;
          SegmentHistory.SETRANGE("Segment No.","Segment No.");
          SegmentHistory.DELETEALL;
        END;
    END;
    IF "Contact No." <> '' THEN BEGIN
      SegLine.SETRANGE("Contact No.","Contact No.");
      IF SegLine.ISEMPTY THEN BEGIN
        Task.SETRANGE("Segment No.","Segment No.");
        Task.SETRANGE("Contact No.","Contact No.");
        Task.MODIFYALL("Segment No.",'');
      END;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CampaignTargetGrMgt.DeleteSegfromTargetGr(Rec);

    SegInteractLanguage.Reset;
    SegInteractLanguage.SetRange("Segment No.","Segment No.");
    SegInteractLanguage.SetRange("Segment Line No.","Line No.");
    SegInteractLanguage.DeleteAll(true);
    Get("Segment No.","Line No.");

    SegLine.SetRange("Segment No.","Segment No.");
    SegLine.SetFilter("Line No.",'<>%1',"Line No.");
    if SegLine.IsEmpty then begin
      if SegHeader.Get("Segment No.") then
        SegHeader.CalcFields("No. of Criteria Actions");
      if SegHeader."No. of Criteria Actions" > 1 then
        if Confirm(Text006,true) then begin
          SegmentCriteriaLine.SetRange("Segment No.","Segment No.");
          SegmentCriteriaLine.DeleteAll;
          SegmentHistory.SetRange("Segment No.","Segment No.");
          SegmentHistory.DeleteAll;
        end;
    end;
    if "Contact No." <> '' then begin
      SegLine.SetRange("Contact No.","Contact No.");
      if SegLine.IsEmpty then begin
        Task.SetRange("Segment No.","Segment No.");
        Task.SetRange("Contact No.","Contact No.");
        Task.ModifyAll("Segment No.",'');
      end;
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Contact No."(Field 3).OnValidate.SegInteractLanguage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contact No." : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contact No." : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contact No."(Field 3).OnValidate.Attachment(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contact No." : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contact No." : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contact No."(Field 3).OnValidate.InteractTmpl(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contact No." : 5064;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contact No." : "Interaction Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Correspondence Type"(Field 6).OnValidate.Attachment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Correspondence Type" : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Correspondence Type" : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Interaction Template Code"(Field 7).OnValidate.SegInteractLanguage(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Interaction Template Code" : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Interaction Template Code" : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Interaction Template Code"(Field 7).OnValidate.InteractTemplLanguage(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Interaction Template Code" : 5103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Interaction Template Code" : "Interaction Tmpl. Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Interaction Template Code"(Field 7).OnValidate.InteractTmpl(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Interaction Template Code" : 5064;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Interaction Template Code" : "Interaction Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Language Code"(Field 19).OnValidate.SegInteractLanguage(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Language Code" : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Language Code" : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Language Code"(Field 19).OnValidate.InteractTemplLanguage(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Language Code" : 5103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Language Code" : "Interaction Tmpl. Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SegLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SegLine : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SegLine : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SegmentCriteriaLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SegmentCriteriaLine : 5097;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SegmentCriteriaLine : "Segment Criteria Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SegmentHistory(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SegmentHistory : 5078;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SegmentHistory : "Segment History";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SegInteractLanguage(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SegInteractLanguage : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SegInteractLanguage : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Task(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Task : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Task : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MaintainAttachment(PROCEDURE 9).Cont(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MaintainAttachment : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MaintainAttachment : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MaintainAttachment(PROCEDURE 9).SalutationFormula(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MaintainAttachment : 5069;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MaintainAttachment : "Salutation Formula";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateAttachment(PROCEDURE 8).SegInteractLanguage(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateAttachment : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateAttachment : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 2).Attachment(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 2).Attachment2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 2).SegInteractLanguage(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ImportAttachment(PROCEDURE 3).SegInteractLanguage(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ImportAttachment : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ImportAttachment : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportAttachment(PROCEDURE 4).SegInteractLanguage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportAttachment : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportAttachment : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RemoveAttachment(PROCEDURE 7).SegInteractLanguage(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RemoveAttachment : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RemoveAttachment : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePhoneCall(PROCEDURE 21).TempSegmentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePhoneCall : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePhoneCall : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindLanguage(PROCEDURE 10).SegInteractLanguage(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindLanguage : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindLanguage : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindLanguage(PROCEDURE 10).InteractTemplLanguage(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindLanguage : 5103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindLanguage : "Interaction Tmpl. Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindLanguage(PROCEDURE 10).InteractTmpl(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindLanguage : 5064;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindLanguage : "Interaction Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AttachmentInherited(PROCEDURE 12).SegInteractLanguage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AttachmentInherited : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AttachmentInherited : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetInteractionAttachment(PROCEDURE 13).Attachment(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetInteractionAttachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetInteractionAttachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetInteractionAttachment(PROCEDURE 13).InteractTemplLanguage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetInteractionAttachment : 5103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetInteractionAttachment : "Interaction Tmpl. Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UniqueAttachmentExists(PROCEDURE 14).SegInteractLanguage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UniqueAttachmentExists : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UniqueAttachmentExists : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromInteractLogEntry(PROCEDURE 42).Cont(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromInteractLogEntry : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromInteractLogEntry : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromInteractLogEntry(PROCEDURE 42).Salesperson(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromInteractLogEntry : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromInteractLogEntry : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromInteractLogEntry(PROCEDURE 42).Campaign(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromInteractLogEntry : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromInteractLogEntry : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromInteractLogEntry(PROCEDURE 42).Task(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromInteractLogEntry : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromInteractLogEntry : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromInteractLogEntry(PROCEDURE 42).Opportunity(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromInteractLogEntry : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromInteractLogEntry : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromOpp(PROCEDURE 129).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromOpp : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromOpp : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromOpp(PROCEDURE 129).Salesperson(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromOpp : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromOpp : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteractionFromOpp(PROCEDURE 129).Campaign(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteractionFromOpp : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteractionFromOpp : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateOpportunity(PROCEDURE 32).Opportunity(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateOpportunity : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateOpportunity : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetContactName(PROCEDURE 41).Cont(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetContactName : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetContactName : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StartWizard(PROCEDURE 33).Opp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StartWizard : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StartWizard : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StartWizard(PROCEDURE 33).RelationshipPerformanceMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StartWizard : 783;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StartWizard : "Relationship Performance Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckStatus(PROCEDURE 16).InteractTmpl(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckStatus : 5064;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckStatus : "Interaction Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckStatus(PROCEDURE 16).Attachment(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckStatus : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckStatus : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckStatus(PROCEDURE 16).SalutationFormula(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckStatus : 5069;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckStatus : "Salutation Formula";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinishWizard(PROCEDURE 18).InteractionLogEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinishWizard : 5065;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinishWizard : "Interaction Log Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinishWizard(PROCEDURE 18).SegManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinishWizard : 5051;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinishWizard : SegManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinishWizard(PROCEDURE 18).WordManagement(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinishWizard : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinishWizard : WordManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinishWizard(PROCEDURE 18).WordApplicationHandler(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinishWizard : 5068;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinishWizard : WordApplicationHandler;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HandleTrigger(PROCEDURE 20).TempBlob(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HandleTrigger : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HandleTrigger : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HandleTrigger(PROCEDURE 20).FileMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HandleTrigger : 419;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HandleTrigger : "File Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StartWizard2(PROCEDURE 34).InteractionTmplSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StartWizard2 : 5122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StartWizard2 : "Interaction Template Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StartWizard2(PROCEDURE 34).Campaign(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StartWizard2 : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StartWizard2 : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LogPhoneCall(PROCEDURE 23).TempAttachment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LogPhoneCall : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LogPhoneCall : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LogPhoneCall(PROCEDURE 23).SegLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LogPhoneCall : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LogPhoneCall : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LogPhoneCall(PROCEDURE 23).SegManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LogPhoneCall : 5051;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LogPhoneCall : SegManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LanguageCodeOnLookup(PROCEDURE 31).SegInteractLanguage(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LanguageCodeOnLookup : 5104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LanguageCodeOnLookup : "Segment Interaction Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LanguageCodeOnLookup(PROCEDURE 31).InteractionTmplLanguage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LanguageCodeOnLookup : 5103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LanguageCodeOnLookup : "Interaction Tmpl. Language";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindSalespersonByUserEmail(PROCEDURE 35).User(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindSalespersonByUserEmail : 2000000120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindSalespersonByUserEmail : User;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindSalespersonByUserEmail(PROCEDURE 35).Salesperson(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindSalespersonByUserEmail : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindSalespersonByUserEmail : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportODataFields(PROCEDURE 36).TenantWebService(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportODataFields : 2000000168;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportODataFields : "Tenant Web Service";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportODataFields(PROCEDURE 36).ODataFieldsExport(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportODataFields : 6713;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportODataFields : "OData Fields Export";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetDefaultSalesperson(PROCEDURE 59).UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetDefaultSalesperson : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetDefaultSalesperson : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SegHeader(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SegHeader : 5076;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SegHeader : "Segment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cont(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cont : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cont : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Salesperson(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Salesperson : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Salesperson : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Campaign(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Campaign : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Campaign : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InteractTmpl(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InteractTmpl : 5064;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InteractTmpl : "Interaction Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Attachment(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Attachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Attachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempAttachment(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempAttachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempAttachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InterLogEntryCommentLine(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InterLogEntryCommentLine : 5123;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InterLogEntryCommentLine : "Inter. Log Entry Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempInterLogEntryCommentLine(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempInterLogEntryCommentLine : 5123;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempInterLogEntryCommentLine : "Inter. Log Entry Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AttachmentManagement(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AttachmentManagement : 5052;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AttachmentManagement : AttachmentManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClientTypeManagement(Variable 1077)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClientTypeManagement : 4030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClientTypeManagement : "Client Type Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CampaignTargetGrMgt(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CampaignTargetGrMgt : 7030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CampaignTargetGrMgt : "Campaign Target Group Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Mail(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Mail : 397;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Mail : Mail;
    //Variable type has not been exported.
}


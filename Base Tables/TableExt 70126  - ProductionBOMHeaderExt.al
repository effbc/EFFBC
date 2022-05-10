tableextension 70126 ProductionBOMHeaderExt extends "Production BOM Header"
{
    // version NAVW19.00.00.45778,B2B1.0,Update PB,Rev01

    fields
    {

        //Unsupported feature: Change Data type on "Description(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Low-Level Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Creation Date"(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 43)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 51)". Please convert manually.


        //Unsupported feature: CodeInsertion on ""No."(Field 1)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        if Item.Get("No.") then       //Added by Pranavi on 08-09-2015 to prevent Item selection if Itm Tracking code is blank
          Item.TestField(Item."Item Tracking Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Status = Status::Certified THEN
          FIELDERROR(Status);
        Item.SETCURRENTKEY("Production BOM No.");
        Item.SETRANGE("Production BOM No.","No.");
        IF Item.FINDSET THEN
          REPEAT
            ItemUnitOfMeasure.GET(Item."No.","Unit of Measure Code");
          UNTIL Item.NEXT = 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Status = Status::Certified then
          FieldError(Status);
        Item.SetCurrentKey("Production BOM No.");
        Item.SetRange("Production BOM No.","No.");
        if Item.FindSet then
          repeat
            ItemUnitOfMeasure.Get(Item."No.","Unit of Measure Code");
          until Item.Next = 0;
        */
        //end;


        //Unsupported feature: CodeModification on "Status(Field 45).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Status <> xRec.Status) AND (Status = Status::Certified) THEN BEGIN
          MfgSetup.LOCKTABLE;
          MfgSetup.GET;
          ProdBOMCheck.ProdBOMLineCheck("No.",'');
          "Low-Level Code" := 0;
          ProdBOMCheck.RUN(Rec);
          PlanningAssignment.NewBOM("No.");
        END;
        IF Status = Status::Closed THEN BEGIN
          IF CONFIRM(
               Text001,FALSE)
          THEN BEGIN
            ProdBOMVersion.SETRANGE("Production BOM No.","No.");
            IF ProdBOMVersion.FIND('-') THEN
              REPEAT
                ProdBOMVersion.Status := ProdBOMVersion.Status::Closed;
                ProdBOMVersion.MODIFY;
              UNTIL ProdBOMVersion.NEXT = 0;
          END ELSE
            Status := xRec.Status;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if BOMLine.FindSet then
        PrevItem := '';
        PrevPosition := '';
        PrevDescription := '';
        BOMLine.Reset;
        BOMLine.SetCurrentKey(Type,"No.");
        BOMLine.SetRange("Version Code",'');
        BOMLine.SetRange("Production BOM No.","No.");
        if BOMLine.FindSet then
        repeat
          if (PrevItem = BOMLine."No.") and (PrevPosition = BOMLine.Position) and (PrevDescription = BOMLine.Description) then
             Error('BOM having Duplicate Item :: '+PrevItem +' With the BOM No::'+ "No.");
          PrevItem := BOMLine."No.";
         PrevPosition := BOMLine.Position;
        until BOMLine.Next = 0;
        //added by vishnu priya on 24-09-2020
        if (Rec."Creation Date" <= 20200909D) and (xRec.Status = 1)  and not(UserId in ['EFFTRONICS\SUVARCHALADEVI','EFFTRONICS\DURGAMAHESWARI'])  then
          Error('You can not modify the old certified BOMs');
        //added by vishnu priya on 24-09-2020

        // Commented  by Vishnu Priya on 28-09-2020
        {
        IF NOT( USERID IN ['SUPER','EFFTRONICS\JHANSI', 'EFFTRONICS\ANILKUMAR','EFFTRONICS\PARVATHI','EFFTRONICS\RSILPARANI','EFFTRONICS\RATNARAVALI','EFFTRONICS\UBEDULLA',
                          'EFFTRONICS\MEENA','EFFTRONICS\GRAVI','EFFTRONICS\VANIDEVI','EFFTRONICS\VISHNUPRIYA',
                          'EFFTRONICS\YNARESH','EFFTRONICS\INDUMATHI','EFFTRONICS\SARAT','EFFTRONICS\VIMALANAND','EFFTRONICS\VENKATESH','EFFTRONICS\SARDHAR','EFFTRONICS\HARI'
                          ])  THEN
          ERROR('You dont have permissions to change the Status of BOM');
        }
        // Commented  by Vishnu Priya on 28-09-2020
        //IF  NOT (SMTP_MAIL.Permission_Checking(USERID,'BOM_CREATION_ROLE')) THEN
          Error('You dont have permissions to change the Status of BOM');


        if (CopyStr("No.",1,8)='ECMPBPCB') and not (UserId in ['EFFTRONICS\PARVATHI','EFFTRONICS\JHANSI','EFFTRONICS\RAMALAKSHMI','EFFTRONICS\RATNARAVALI','EFFTRONICS\UBEDULLA','EFFTRONICS\VISHNUPRIYA','EFFTRONICS\ANILKUMAR','EFFTRONICS\MANOJA','EFFTRONICS\SUVARCHALADEVI','EFFTRONICS\DURGAMAHESWARI']) then
         Error('You dont have permissions to Certify the MASTER BOM');


        if (CopyStr("No.",1,8)<>'ECMPBPCB') and (Status=Status::Certified) and not (UserId in ['EFFTRONICS\JHANSI','EFFTRONICS\ANILKUMAR','ERPSERVER\ADMINISTRATOR','EFFTRONICS\SUVARCHALADEVI','EFFTRONICS\DURGAMAHESWARI']) then
          Error('You dont have permissions to Certify the BOM');




        if Status=Status::Certified then
           StatusCheck3;

        if Status=2 then
           StatusCheck4;
        //
        if ((Status <> Status::Certified) and (Status <> Status::Closed) and (Status = Status::New) and
             (UserId<>'SUPER') and (UserId<>'EFFTRONICS\JHANSI') and (UserId<>'EFFTRONICS\DIR') and (UserId<>'EFFTRONICS\PARVATHI') and (UserId<>'EFFTRONICS\RATNARAVALI') and (UserId<>'EFFTRONICS\MANOJA') and (UserId<>'EFFTRONICS\RAMALAKSHMI')
             and (UserId<>'EFFTRONICS\UBEDULLA') and("Stranded BOM"<>true)
             and (UserId<>'EFFTRONICS\SWATHI')) then
        begin
          Message('Not possible to underdevelopment');
          Status := Status::Certified;
        end else
          OldStatus := xRec.Status;

        if (Status <> xRec.Status) and (Status = Status::Certified) then
        begin
          if RecordLevelLocking then
          begin
            MfgSetup.LockTable;
            MfgSetup.Get;
          end;
          ProdBOMCheck.ProdBOMLineCheck("No.",'');
          "Low-Level Code" := 0;
          ProdBOMCheck.Run(Rec);
          PlanningAssignment.NewBOM("No.");
        end;

        if Status = Status::Closed then
        begin
          if Confirm(Text001,false) then
           begin
            ProdBOMVersion.SetRange("Production BOM No.","No.");
            if ProdBOMVersion.FindSet then
              repeat
                ProdBOMVersion.Status := ProdBOMVersion.Status::Closed;
                ProdBOMVersion.Modify;
              until ProdBOMVersion.Next = 0;
          end else
            Status := xRec.Status;
        end;
        MfgSetup.Get();
        "Total No. of Fixing Holes" := 0;
        ProdBOMLineRec.Reset;
        ProdBOMLineRec.SetRange("Production BOM No.","No.");
        ProdBOMLineRec.SetRange("Version Code",'');
        if ProdBOMLineRec.FindSet then
        repeat
          "Total No. of Fixing Holes" := "Total No. of Fixing Holes" +ProdBOMLineRec."No. of Fixing Holes";
        until ProdBOMLineRec.Next =0;

        //NSS 140907
        "Total Soldering Points SMD":= 0;
        "Total Soldering Points DIP":= 0;
        "Total Soldering Points":= 0;


        TypeofSolder := false;
        ProdBOMLineRec.Reset;
        ProdBOMLineRec.SetRange("Production BOM No.","No.");
        ProdBOMLineRec.SetRange("Version Code",'');
        if ProdBOMLineRec.FindSet then
        repeat
          if ProdBOMLineRec."Type of Solder" > 0 then
               TypeofSolder := true;

          if ProdBOMHeader.Get(ProdBOMLineRec."No.") then
          begin
            CALC_SOLDERING_POINTS(ProdBOMLineRec."No.");
            ProdBOMLineRec."No. of Soldering Points":=ProdBOMLineRec."Quantity per"*ProdBOMHeader."Total Soldering Points";
            ProdBOMLineRec."No. of SMD Points":=ProdBOMLineRec."Quantity per"*ProdBOMHeader."Total Soldering Points SMD";
            ProdBOMLineRec."No. of DIP Point":=ProdBOMLineRec."Quantity per"*ProdBOMHeader."Total Soldering Points DIP";

          end else if Item.Get(ProdBOMLineRec."No.") then
          begin
            ProdBOMLineRec."No. of Pins":=Item."No. of Pins";
            ProdBOMLineRec."No. of Soldering Points":=Item."No. of Soldering Points"*(ProdBOMLineRec.Quantity-
                                                                                          ProdBOMLineRec."Scrap Quantity");
            ProdBOMLineRec."Type of Solder":=Item."Type of Solder";
          end;


          ProdBOMLineRec.Modify;
        until ProdBOMLineRec.Next =0;

        if TypeofSolder = true then
        begin
          //Commentd on 011007
          ProdBOMLineRec.Reset;
          ProdBOMLineRec.SetRange("Production BOM No.","No.");
          ProdBOMLineRec.SetRange("Version Code",'');
          ProdBOMLineRec.SetFilter("Type of Solder",'%1',ProdBOMLineRec."Type of Solder"::SMD);
          if ProdBOMLineRec.Find('-') then
          repeat
            "Total Soldering Points SMD" := "Total Soldering Points SMD" +ProdBOMLineRec."No. of Soldering Points";
          until ProdBOMLineRec.Next =0;

          ProdBOMLineRec.Reset;
          ProdBOMLineRec.SetRange("Production BOM No.","No.");
          ProdBOMLineRec.SetRange("Version Code",'');
          ProdBOMLineRec.SetFilter("Type of Solder",'%1',ProdBOMLineRec."Type of Solder"::DIP);
          if ProdBOMLineRec.Find('-') then
          repeat
            if Item.Get(ProdBOMLineRec."No.") then
                ProdBOMLineRec."No. of Soldering Points":=Item."No. of Soldering Points"*(ProdBOMLineRec.Quantity-
                                                                                     ProdBOMLineRec."Scrap Quantity");
            "Total Soldering Points DIP" := "Total Soldering Points DIP" +ProdBOMLineRec."No. of Soldering Points";
          until ProdBOMLineRec.Next =0;

          ProdBOMLineRec.Reset;
          ProdBOMLineRec.SetRange("Production BOM No.","No.");
          ProdBOMLineRec.SetRange("Version Code",'');
          ProdBOMLineRec.SetFilter("Type of Solder",'%1',ProdBOMLineRec."Type of Solder"::" ");
          if ProdBOMLineRec.Find('-') then
          repeat
             "Total Soldering Points SMD" := "Total Soldering Points SMD" + ProdBOMLineRec."No. of SMD Points";
             "Total Soldering Points DIP" := "Total Soldering Points DIP" + ProdBOMLineRec."No. of DIP Point";
          until ProdBOMLineRec.Next =0;
          "Total Soldering Points" :=  "Total Soldering Points DIP"  + "Total Soldering Points SMD";
        end;

        if TypeofSolder = false then
        begin
          if Status = Status ::Certified then
          begin
            ProdBOMHeader.Reset;
            ProdBOMLineRec.Reset;
            Item.Reset;
            ProdBOMLineRec.SetRange("Production BOM No.","No.");
            ProdBOMLineRec.SetRange("Version Code",'');
            if ProdBOMLineRec.Find('-') then
            repeat
              if ProdBOMLineRec.Type = ProdBOMLineRec.Type::Item then
              begin
                Item.Get(ProdBOMLineRec."No.");
                if ProdBOMHeader.Get(Item."Production BOM No.") then
                begin
                  ProdBOMHeader.TestField(Status,ProdBOMHeader.Status::Certified);
                  "Total Soldering Points SMD" := "Total Soldering Points SMD" +( ProdBOMHeader."Total Soldering Points SMD"*
                                                                                   ProdBOMLineRec."Quantity per");
                  "Total Soldering Points DIP" := "Total Soldering Points DIP" +( ProdBOMHeader."Total Soldering Points DIP"*
                                                                                 ProdBOMLineRec."Quantity per");
                end;
              end else
              begin
                if ProdBOMLineRec.Type = ProdBOMLineRec.Type::"Production BOM" then
                begin
                  if ProdBOMHeader.Get(ProdBOMLineRec."No.") then
                  begin
                    ProdBOMHeader.TestField(Status,ProdBOMHeader.Status::Certified);
                    "Total Soldering Points SMD" := "Total Soldering Points SMD" + (ProdBOMHeader."Total Soldering Points SMD"*
                                                                                    ProdBOMLineRec."Quantity per");
                    "Total Soldering Points DIP" := "Total Soldering Points DIP" + (ProdBOMHeader."Total Soldering Points DIP"*
                                                                                  ProdBOMLineRec."Quantity per");
                  end;
                end;
              end;
            until ProdBOMLineRec.Next =0;
          end;
          "Total Soldering Points" :=  "Total Soldering Points DIP"  + "Total Soldering Points SMD";
        end;

        "Bench Mark Time(In Hours)" := "Total Soldering Points SMD" * (MfgSetup."Soldering Time Req.for BID" / 3600) +
                                       "Total Soldering Points DIP" * (MfgSetup."Soldering Time Req.for DIP" / 3600) +
                                       "Total No. of Fixing Holes" * (MfgSetup."Total Fixing Points Time" / 3600);

        ProdBOMLineRec.Reset;
        ProdBOMLineRec.SetRange("Production BOM No.","No.");
        ProdBOMLineRec.SetRange("Version Code",'');
        if ProdBOMLineRec.Find('-') then
          repeat
            if ProdBOMLineRec."BOM Type" = ProdBOMLineRec."BOM Type"::" " then
            begin   // Condition added by Pranavi on 11-Jan-2016
              ProdBOMLineRec."BOM Type" := "BOM Type";
              ProdBOMLineRec.Modify;
            end;
          until ProdBOMLineRec.Next = 0;

        Modify(true);

        if (Status = xRec.Status) then
          exit;

        if not (UpperCase(UserId) in ['EFFTRONICS\PRANAVI','EFFTRONICS\VIJAYA']) then
        begin
          if (Status=Status::Certified) and (xRec.Status<>Status::"Under Development")  then
          begin
            "NewNo." := CopyStr("No.",1,7);
            if  ("Creation Date" >=DMY2Date(1,1,2011)) and ("NewNo." = 'ECPBPCB') then
            begin
              if not "mail check"  then
              begin
                user.Reset;
                user.SetFilter(user."User Name",UserId);//Rev01
                if user.Find('-') then
                begin
                  NAME:='ERP';// user."Full Name";//Rev01
                  Body :='<br>The Production Bom "'+Format("No.") +'"  ('+Description+') is certified by user ';
                   Body+= Format(Authorised_ID_GVar);//          Body+=FORMAT(NAME)+'('+FORMAT(USERID)+')';
                  Body+='<br><br><br><b><u> NOTE:- </u></B> Please Post the Layout using PRM Layout Software';
                  Body+='<br><br><br>*** This is a Auto Mail Generated From ERP ***';
                  Mail_Subject := 'New Production BOM was Created';
                 // from_Mail :='noreply@efftronics.com';// FORMAT(user.MailID);
                 from_Mail :='erp@efftronics.com';
                  to_mail:='erp@efftronics.com,layouts@efftronics.com,bharat@efftronics.com';//'Layouts1@efftronics.com';
                  SMTP_MAIL.CreateMessage(NAME,from_Mail,to_mail,Mail_Subject,Body,true);
                  Recipients +='padmaja@efftronics.com,';
                  Recipients +='jhansi@efftronics.com,erp@efftronics.com';
                  SMTP_MAIL.AddCC(Recipients);
                  SMTP_MAIL.Send;
                  "mail check" :=true;
                  Commit;
                  Message('Mail was succesfully sent to Layouts Department');
                end;
              end;
            end;
          end;
        end;



        // PRM Integration
        if Status=Status::Certified  then
        begin
         //PRMIntegration.ProdBOMHeadertoPRM(Rec);
        end;
        // PRM Integration

        {IF (Status=Status::Certified) OR (xRec.Status=xRec.Status::Certified)  THEN
        BEGIN
          "NewNo." := COPYSTR("No.",1,7);
          IF  ("Creation Date" >=DMY2DATE(1,1,2011)) THEN
          BEGIN
            user.RESET;
            user.SETFILTER(user."User Name",USERID);
            IF user.FIND('-') THEN
            BEGIN
              NAME:= user."Full Name";
              Body :='<br>Production Bom     - '+Description+' ('+FORMAT("No.")+')';
              Item.RESET;
              Item.SETFILTER(Item."No.","No.");

              IF Item.FINDFIRST THEN
              Body +='<br>Product Group Code - '+FORMAT(Item."Product Group Code");
              Body +='<br>Previous Status    - '+FORMAT(xRec.Status);
              Body +='<br>Present Status     - '+FORMAT(Status);
              Body +='<br>User Name          -'+FORMAT(NAME)+'('+FORMAT(USERID)+')';
            END;

            IF (Status=Status::Certified) AND ("mail check" = FALSE) AND ("NewNo." = 'ECPBPCB')  THEN
              Body+='<br><br><br><b><u> NOTE:- </u></B> Please Post the Layout using PRM Layout Software';
              Body+='<br><br><br>*** This is a Auto Mail Generated From ERP ***';
            IF (Status=Status::Certified) AND NOT ("mail check")  THEN
              Mail_Subject := 'New Production BOM ('+ Description +') was Created'
            ELSE
              Mail_Subject := 'Production BOM ('+ Description +') has been modified';
            from_Mail := FORMAT(user.MailID);
            IF "BOM Type" = "BOM Type"::Mechanical THEN
              to_mail := 'ubedulla@efftronics.com'
            ELSE
              to_mail:='Layouts1@efftronics.com,Layouts2@efftronics.com';
            SMTP_MAIL.CreateMessage(NAME,from_Mail,to_mail,Mail_Subject,Body,TRUE);
            IF ("NewNo." = 'ECPBPCB') AND (Status=Status::Certified) AND ("mail check" = FALSE) THEN
              Recipients +='prm@efftronics.com,';

            Recipients +='parvathi@efftronics.com,padmaja@efftronics.com,bharat@efftronics.com,';
            Recipients +='anilkumar@efftronics.com,jhansi@efftronics.com,layouts1@efftronics.com,Prasannad@efftronics.com,';
            Recipients +='tulasi@efftronics.com,lakshmit@efftronics.com,erp@efftronics.com';
            SMTP_MAIL.AddCC(Recipients);

            IF  (Status=Status::Certified) AND ("mail check" = TRUE) THEN
            BEGIN
              changelog.RESET;
              changelog.SETFILTER(changelog."Table No.",'99000772');
              changelog.SETFILTER(changelog."Primary Key Field 1 Value","No.");
              changelog.SETFILTER(changelog."Field No.",'11|12|14');
              changelog.SETFILTER(changelog."Date and Time",FORMAT(xRec."Last Date Modified")+'..'+FORMAT("Last Date Modified"+1));
              IF changelog.FINDFIRST THEN
              BEGIN
                IF ISCLEAR(BullZipPDF) THEN
                  CREATE(BullZipPDF);
                FileDirectory := '\\erpserver\ErpAttachments\';//anil
                WINDOW.OPEN('PREPARING THE REPORT');
                FileName :='BOM_Changes.pdf';
                Attachment:=FileDirectory+FileName;
                IF EXISTS(Attachment) THEN
                  ERASE(Attachment);
                BullZipPDF.Init;
                BullZipPDF.LoadSettings;
                RunOnceFile := BullZipPDF.GetSettingsFileName(TRUE);
                BullZipPDF.SetValue('Output',FileDirectory+FileName);
                BullZipPDF.SetValue('Showsettings', 'never');
                BullZipPDF.SetValue('ShowPDF', 'no');
                BullZipPDF.SetValue('ShowProgress', 'no');
                BullZipPDF.SetValue('ShowProgressFinished', 'no');
                BullZipPDF.SetValue('SuppressErrors', 'yes');
                BullZipPDF.SetValue('ConfirmOverwrite', 'yes');
                BullZipPDF.WriteSettings(TRUE);
                REPORT.RUNMODAL(509,FALSE,FALSE,changelog);
                TimeOut := 0;
                WHILE EXISTS(RunOnceFile) AND (TimeOut < 20) DO
                BEGIN
                  SLEEP(2000);
                  TimeOut := TimeOut + 1;
                END;
                WINDOW.CLOSE;
                Attachment:=FileDirectory+FileName;
                SMTP_MAIL.AddAttachment(Attachment);
              END;
            END;
            SMTP_MAIL.Send;
            "mail check" :=TRUE;

            //COMMIT;
            MESSAGE('Mail was succesfully sent to Layouts Department');
          END;
        END;
        }

        {
        IF (Status=Status::Certified) AND (USERID<>'10RD010') THEN
        BEGIN
          "NewNo." := COPYSTR("No.",1,7);
          IF  ("Creation Date" >=DMY2DATE(1,1,2011)) AND ("NewNo." = 'ECPBPCB') THEN
          BEGIN
            IF NOT "mail check"  THEN
            BEGIN
              user.RESET;
              user.SETFILTER(user."User Name",USERID);
              IF user.FIND('-') THEN
              BEGIN
                NAME:= user."Full Name";
                Body :='<br>Production Bom     - '+Description+' ('+FORMAT("No.")+')';
                Item.RESET;
                Item.SETFILTER(Item."No.","No.");
                IF Item.FINDFIRST THEN
                  Body +='<br>Product Group Code - '+FORMAT(Item."Product Group Code");
                  Body +='<br>Previous Status    - '+FORMAT(xRec.Status);
                  Body +='<br>Present Status     - '+FORMAT(Status);
                  Body +='<br>User Name          -'+FORMAT(NAME)+'('+FORMAT(USERID)+')';

              Body :='<br>The Production Bom "'+FORMAT("No.") +'"  ('+Description+') is certified by user ';
              Body+=FORMAT(NAME)+'('+FORMAT(USERID)+')';
              Body+='<br><br><br><b><u> NOTE:- </u></B> Please Post the Layout using PRM Layout Software';
              Body+='<br><br><br>*** This is a Auto Mail Generated From ERP ***';
              Mail_Subject := 'New Production BOM was Created';
              from_Mail := FORMAT(user.MailID);
              to_mail:='Layouts1@efftronics.com,Layouts2@efftronics.com';
              SMTP_MAIL.CreateMessage(NAME,from_Mail,to_mail,Mail_Subject,Body,TRUE);
              Recipients +='prm@efftronics.com,layouts1@efftronics.com,padmaja@efftronics.com,bharat@efftronics.com,';
              Recipients +='anilkumar@efftronics.com,jhansi@efftronics.com,Parvathi@efftronics.com';
              SMTP_MAIL.AddCC(Recipients);
              SMTP_MAIL.Send;
              "mail check" :=TRUE;
              COMMIT;
              MESSAGE('Mail was succesfully sent to Layouts Department');
            END;
            END;
          END;
        END;

         }
        if Status<>Status::Certified then
        begin
          "Update in PRM":=false;
          Modify;
        end;


        Commit;
        */
        //end;
        field(60001; "Bench Mark Time(In Hours)"; Decimal)
        {
            Description = 'B2B';
        }
        field(60002; "Total Soldering Points SMD"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60003; "Total No. of Fixing Holes"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60004; "User Id"; Code[50])
        {
            Description = 'B2B,Rev01';
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
        field(60005; "Total Soldering Points DIP"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60006; "Total Soldering Points"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60007; BOMCOST; Decimal)
        {
        }
        field(60015; "BOM Type"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Mechanical,Wiring"';
            OptionMembers = " ",Mechanical,Wiring;

            trigger OnValidate();
            begin
                if Status = Status::Certified then
                    FieldError(Status);
            end;
        }
        field(60016; "BOM Cost"; Decimal)
        {
            CalcFormula = Sum("Production BOM Line"."Tot Avg Cost" WHERE("Production BOM No." = FIELD("No.")));
            Description = 'Cost1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60017; "BOM Manufacturing Cost"; Decimal)
        {
            CalcFormula = Sum("Production BOM Line"."Manufacturing Cost" WHERE("Production BOM No." = FIELD("No.")));
            Description = 'Cost1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60018; "Modified User ID"; Code[50])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
        field(60019; "Stranded BOM"; Boolean)
        {
            Editable = true;
        }
        field(60020; "Update BOM"; Boolean)
        {
        }
        field(60021; "mail check"; Boolean)
        {
        }
        field(60022; Certify; Integer)
        {
        }
        field(60023; "Update in PRM"; Boolean)
        {
        }
        field(60024; "BOM Running Status"; Option)
        {
            Description = 'Added by sujani for running/old bom segregation';
            OptionMembers = "  ",Running,Old;
        }
        field(60025; "Inherited From"; Code[20])
        {
            Description = 'Added by sujani for running/old bom segregation';
            TableRelation = "Production BOM Header"."No.";
        }
        field(60026; Configuration; Code[50])
        {
            Description = 'Added by sujani for Configuration tracking';
            TableRelation = "Product Configurations Master".Configuration;
            ValidateTableRelation = false;
        }
        field(60027; "BOM Category"; Option)
        {
            Description = 'Added by sujani bom tentative or final';
            OptionCaption = '" ,Tentative,Final"';
            OptionMembers = " ",Tentative,Final;
        }
        field(60028; CertifyStatus; Option)
        {
            Description = 'Added by sujani for approval rejection tracking';
            OptionCaption = '" ,Accept,Reject"';
            OptionMembers = " ",Accept,Reject;
        }
        field(60029; CertifyModDate; DateTime)
        {
            Description = 'Added by sujani for approval rejection tracking';
        }
        field(60030; "Remarks/Reason"; Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the Approvals process';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Name")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Item.SETRANGE("Production BOM No.","No.");
    IF NOT Item.ISEMPTY THEN
      ERROR(Text000);

    ProdBOMLine.SETRANGE("Production BOM No.","No.");
    ProdBOMLine.DELETEALL(TRUE);

    ProdBOMVersion.SETRANGE("Production BOM No.","No.");
    ProdBOMVersion.DELETEALL;

    MfgComment.SETRANGE("Table Name",MfgComment."Table Name"::"Production BOM Header");
    MfgComment.SETRANGE("No.","No.");
    MfgComment.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Item.SetCurrentKey("Production BOM No.");
    {//Added by Rakesh on 12-Jul-14 to stop modification when BOM is under certification
    IF NOT (UPPERCASE(USERID) IN ['ERPSERVER\ADMINISTRATOR','EFFTRONICS\PRANAVI']) THEN
    BEGIN
      IF Certify > 0  THEN
        ERROR('BOM('+"No."+') is submitted for Approval. Changes are not allowed.');
    END;
    //end by Rakesh
    }
    Item.SetCurrentKey("Production BOM No.");
    Item.SetRange("Production BOM No.","No.");
    if not Item.IsEmpty then
      Error(Text000);

    ProdBOMLine.SetRange("Production BOM No.","No.");
    ProdBOMLine.DeleteAll(true);

    ProdBOMVersion.SetRange("Production BOM No.","No.");
    ProdBOMVersion.DeleteAll;

    MfgComment.SetRange("Table Name",MfgComment."Table Name"::"Production BOM Header");
    MfgComment.SetRange("No.","No.");
    MfgComment.DeleteAll;
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
      MfgSetup.TESTFIELD("Production BOM Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Production BOM Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;

    "Creation Date" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //Added by Rakesh on 12-Jul-14 to stop modification when BOM is under certification
    {IF NOT (UPPERCASE(USERID) IN ['ERPSERVER\ADMINISTRATOR','EFFTRONICS\MNRAJU','EFFTRONICS\JHANSI']) THEN
    BEGIN
      IF Certify > 0  THEN
        ERROR('BOM('+"No."+') is submitted for Approval. Changes are not allowed.');
    END;
    //end by Rakesh
     }




    MfgSetup.Get;
    if "No." = '' then begin
      MfgSetup.TestField("Production BOM Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Production BOM Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;

    "Creation Date" := Today;
    //B2B 100807 Eid 169
    "User Id":=UserId;
    //B2B 100807 Eid 169
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
    //Added by Rakesh on 12-Jul-14 to stop modification when BOM is under certification
    {IF NOT (UPPERCASE(USERID) IN ['ERPSERVER\anilkumar','EFFTRONICS\PRANAVI']) THEN
    BEGIN
      IF Certify > 0  THEN
        ERROR('BOM('+"No."+') is submitted for Approval. Changes are not allowed ');
    END;
    //end by Rakesh
     }

    //added by Vishnu Priya

    {IF USERID IN ['EFFTRONICS\ANANDA'] THEN
      BEGIN
        IF Certify > 0 THEN
          ERROR('BOM('+"No."+') IS Submitted for Approval. Changes are not allowed');
        END;}
    //end by Vishnu Priya



    "Last Date Modified" := Today;
    if Authorised_ID_GVar='' then
    begin
      if not (UserId  in ['EFFTRONICS\PRANAVI','EFFTRONICS\RAKESHT'{,'EFFTRONICS\JHANSI'}]) then   //commented by pranavi on 13-04-2015
      begin
      "Modified User ID":=UserId
      end;
    end
    else
      "Modified User ID":=Authorised_ID_GVar;
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


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 21).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 21).OnValidate.ItemUnitOfMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Status(Field 45).OnValidate.PlanningAssignment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Status : 99000850;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Status : "Planning Assignment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Status(Field 45).OnValidate.MfgSetup(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Status : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Status : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Status(Field 45).OnValidate.ProdBOMCheck(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Status : 99000769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Status : "Production BOM-Check";
    //Variable type has not been exported.

    var
        BOMLine: Record "Production BOM Line";
        PrevItem: Text[30];
        PrevPosition: Text[250];
        PrevDescription: Text[250];


    //Unsupported feature: PropertyModification on "OnDelete.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgSetup : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgSetup : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMHeader : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMHeader : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMVersion(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMVersion : 99000779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMVersion : "Production BOM Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMLine : 99000772;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMLine : "Production BOM Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgComment(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgComment : 99000770;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgComment : "Manufacturing Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.

    var
        ProdBOMLineRec: Record "Production BOM Line";
        TypeofSolder: Boolean;
        PBMV: Record "Production BOM Version";
        Version1: Code[30];
        SMTPSETUP: Record "SMTP SETUP";
        objEmailConf: Automation "'{CD000000-8B95-11D1-82DB-00C04FB1625D}' 1.0:'{CD000002-8B95-11D1-82DB-00C04FB1625D}':''{CD000000-8B95-11D1-82DB-00C04FB1625D}' 1.0'.Configuration";
        objEmail: Automation "'{CD000000-8B95-11D1-82DB-00C04FB1625D}' 1.0:'{CD000001-8B95-11D1-82DB-00C04FB1625D}':''{CD000000-8B95-11D1-82DB-00C04FB1625D}' 1.0'.Message";
        flds: Automation "'{00000205-0000-0010-8000-00AA006D2EA4}' 2.5:'{00000564-0000-0010-8000-00AA006D2EA4}':''{00000205-0000-0010-8000-00AA006D2EA4}' 2.5'.Fields";
        fld: Integer;
        Mail_Body: array[5] of Text[30];
        Attachment: Text[1000];
        "Mail-Id": Record User;
        from_Mail: Text[1000];
        to_mail: Text[1000];
        Mail_Subject: Text[1000];
        SMTP_MAIL: Codeunit "SMTP Mail";
        Body: Text[1000];
        user: Record User;
        NAME: Text[100];
        Recipients: Text[1000];
        "NewNo.": Text[30];
        changelog: Record "Change Log Entry";
        FileDirectory: Text[100];
        FileName: Text[100];
        RunOnceFile: Text[1000];
        TimeOut: Integer;
        WINDOW: Dialog;
        OldStatus: Integer;
        Authorised_ID_GVar: Code[50];
        RoutingHeader: Record "Routing Header";
        Item: Record Item;
}


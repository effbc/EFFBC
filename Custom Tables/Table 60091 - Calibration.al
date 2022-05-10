table 60091 Calibration
{
    // version Cal1.0

    DrillDownPageID = 60159;
    LookupPageID = 60159;
    PasteIsValid = false;

    fields
    {
        field(1;"Equipment No";Code[20])
        {
        }
        field(2;Description;Text[50])
        {
        }
        field(3;"Equipment Type";Option)
        {
            OptionCaption = ',DMM,Tepm.Meter,Lux Meter,Vernier,Screw Guage,Torque Meter,Potting Machine,CHAMBER,Power Meter,Burst-Generator,Surge-Generator,Voltage Interruption Simulator,Weighing Machine,RF Analyzer,Mixer,ESD ,Stacker,Air Compressor,Packing Machine,Clamp Meter,DC SUPPLY,FUNCTION GENERATOR,HV TESTER,IR Tester,LCR METER,MYDATA,Oscilloscope,DPM,Rheostat,VARIAC,CVT,Scale,Microscope,Sound Meter,De-Soldering System,Soldering System,Soldering Station,Hot Air Gun,Screw Driver,Hammer Machine,Drilling Machine,Cutting Tool,Thickness Gauge,Pick & Place,Wire Harnessing,Engraving Machine';
            OptionMembers = ,DMM,"Tepm.Meter","Lux Meter",Vernier,"Screw Guage","Torque Meter","Potting Machine",CHAMBER,"Power Meter","Burst-Generator","Surge-Generator","Voltage Interruption Simulator","Weighing Machine","RF Analyzer",Mixer,"ESD ",Stacker,"Air Compressor","Packing Machine","Clamp Meter","DC SUPPLY","FUNCTION GENERATOR","HV TESTER","IR Tester","LCR METER",MYDATA,Oscilloscope,DPM,Rheostat,VARIAC,CVT,Scale,Microscope,"Sound Meter","De-Soldering System","Soldering System","Soldering Station","Hot Air Gun","Screw Driver","Hammer Machine","Drilling Machine","Cutting Tool","Thickness Gauge","Pick & Place","Wire Harnessing","Engraving Machine";
        }
        field(4;"Unit Of Measure";Code[10])
        {
            TableRelation = "Unit of Measure";
        }
        field(5;"Least Count";Integer)
        {
            CalcFormula = Count("Calibration Ledger Entries" WHERE (Description=FIELD(Description),
                                                                    "Eqpt. Serial No."=FIELD("Eqpt. Serial No.")));
            FieldClass = FlowField;
        }
        field(6;"Measuring Range";Text[30])
        {
        }
        field(7;"Model No.";Text[30])
        {
        }
        field(8;"Eqpt. Serial No.";Text[30])
        {
        }
        field(9;Status;Option)
        {
            OptionMembers = "Working in Good Condition"," Reffered To Service"," Usage Subjective",Scrapped;
        }
        field(10;Location;Code[10])
        {
            TableRelation = Location;
        }
        field(11;Department;Code[20])
        {
        }
        field(12;Resource;Code[20])
        {
            TableRelation = Resource;
        }
        field(13;"Std. Reference";Code[20])
        {
            TableRelation = IF ("Usage Type"=FILTER(<>Master)) Calibration WHERE ("Usage Type"=CONST(Master));
        }
        field(14;"Usage Type";Option)
        {
            OptionMembers = Instrument,Master;
        }
        field(15;"Warranty Starting Date";Date)
        {
        }
        field(16;"Warranty Ending Date";Date)
        {
        }
        field(17;"Contract Starting Date";Date)
        {
        }
        field(18;"Contract Ending Date";Date)
        {
        }
        field(19;"Last Calibration Date";Date)
        {

            trigger OnValidate();
            begin
                "Next Calibration Due On" := CalcDate("Calibration Period","Last Calibration Date");
                if ((Today - "Next Calibration Due On")>0) then
                "Delay Days" := Today - "Next Calibration Due On"
                else
                "Delay Days" :=0;
            end;
        }
        field(20;"Calibration Period";DateFormula)
        {

            trigger OnValidate();
            begin
                if "Last Calibration Date" <> 0D then
                  begin
                  "Next Calibration Due On" := CalcDate("Calibration Period","Last Calibration Date");
                    if ((Today - "Next Calibration Due On")>0) then
                        "Delay Days" := Today - "Next Calibration Due On"
                    else
                        "Delay Days" :=0
                    end;
            end;
        }
        field(21;"Next Calibration Due On";Date)
        {
        }
        field(22;"Vendor No.";Code[20])
        {
            TableRelation = Vendor;

            trigger OnLookup();
            begin
                if Vendor.Get("Vendor No.") then;
                if PAGE.RunModal(27,Vendor) = ACTION::LookupOK then begin
                  "Vendor No." := Vendor."No.";
                  "Vendor Name" := Vendor.Name;
                  Address1 := Vendor.Address;
                  Address2 := Vendor."Address 2";
                  City := Vendor.City;
                  "Contact Person" := Vendor.Contact;
                  "Contact Phone No." := Vendor."Phone No."
                end;
            end;
        }
        field(23;"Vendor Name";Text[30])
        {
        }
        field(24;Address1;Text[30])
        {
        }
        field(25;Address2;Text[30])
        {
        }
        field(26;City;Text[30])
        {
        }
        field(27;"Contact Person";Text[30])
        {
        }
        field(28;"Contact Phone No.";Text[30])
        {
        }
        field(29;Manufacturer;Text[30])
        {
        }
        field(30;"MFG. Serial No.";Text[30])
        {
        }
        field(31;"Purchase Date";Date)
        {
        }
        field(32;"Service Agent";Code[20])
        {
            TableRelation = Vendor;

            trigger OnLookup();
            begin
                if Vendor.Get("Vendor No.") then;
                if PAGE.RunModal(27,Vendor) = ACTION::LookupOK then begin
                  "Service Agent" := Vendor."No.";
                  Name := Vendor.Name;
                  "S Address1" := Vendor.Address;
                  "S Address2" := Vendor."Address 2";
                  "S City":= Vendor.City;
                  "S Contact Person" := Vendor.Contact;
                  "S Contact Phone No." := Vendor."Phone No."
                end;
            end;
        }
        field(33;Name;Text[30])
        {
        }
        field(34;"E-Mail Address";Text[30])
        {
        }
        field(35;"Calibration Party";Option)
        {
            OptionMembers = "External Calibration",Calibrated,"Not Applicable","Periodical Verification","Partial Calibration",Damage,Missing;
        }
        field(36;"Calibration Cert No./ IR No";Code[20])
        {

            trigger OnLookup();
            begin
                if "Calibration Party" = "Calibration Party" :: "External Calibration" then begin
                  IRHeader.SetRange("Source Type",IRHeader."Source Type" :: Calibration);
                  if IRHeader.Find('-') then
                    PAGE.Run(60166,IRHeader);
                end;
            end;
        }
        field(37;Results;Text[30])
        {
        }
        field(38;Recommendations;Text[30])
        {
        }
        field(39;"Response Time";DateFormula)
        {
        }
        field(40;"Expected Return Date";Date)
        {
        }
        field(41;Priority;Option)
        {
            OptionMembers = Low,Medium,High;
        }
        field(42;"Spec Id";Code[20])
        {
            TableRelation = "Specification Header";
        }
        field(43;"QC Enabled";Boolean)
        {

            trigger OnValidate();
            begin
                if "QC Enabled" then
                  TestField("Spec Id");
            end;
        }
        field(44;"S Address1";Text[30])
        {
        }
        field(45;"S Address2";Text[30])
        {
        }
        field(46;"S City";Text[30])
        {
        }
        field(47;"S Contact Person";Text[30])
        {
        }
        field(48;"S Contact Phone No.";Text[30])
        {
        }
        field(49;"Created Date";Date)
        {
        }
        field(50;"Last Modified Date";Date)
        {
        }
        field(51;"No. Series";Code[10])
        {
        }
        field(52;"Current Status";Option)
        {
            OptionMembers = " ","Under Calibration",Calibrated;
        }
        field(53;Process;Boolean)
        {
        }
        field(54;Check;Boolean)
        {
        }
        field(55;"RGP Status";Boolean)
        {
        }
        field(56;"Calib. Resource Name";Text[100])
        {
            Caption = 'Resource Name';
        }
        field(57;"IR No";Code[15])
        {
            Editable = true;
            TableRelation = "Inspection Receipt Header"."No.";
            //This property is currently not supported
            //TestTableRelation = true;
            ValidateTableRelation = false;

            trigger OnValidate();
            begin
                /*Calibration.RESET;
                Calibration.SETFILTER("IR No",Rec."IR No");
                IF Calibration.FINDSET THEN
                  BEGIN
                    IF ((Calibration.COUNT) > 0 ) THEN
                      ERROR('This Item is already there in Calibration with Item Desc ' + Calibration."Item Desc");
                  END;*/ // commented in order to have multiple IR
                
                PIRH.Reset;
                PIRH.SetFilter("No.",Rec."IR No");
                if PIRH.FindSet then
                  begin
                    Rec."Item Desc" := PIRH."Item Description";
                    Rec."Item No" := PIRH."Item No.";
                    Rec.Manufacturer := PIRH.Make;
                    Rec."MFG. Serial No." := PIRH."Lot No.";
                     PRL.Reset;
                     PRL.SetFilter("Document No.",PIRH."Receipt No.");
                     PRL.SetFilter("Order Line No.",Format(PIRH."Purch Line No"));
                     PRL.SetFilter("No.",PIRH."Item No.");
                     if PRL.FindSet then
                       begin
                          PRH.Reset;
                          PRH.SetFilter("No.",PRL."Document No.");
                          if PRH.FindSet then
                            begin
                                Rec."Purchase Date" := PRH."Posting Date";
                                Rec."Unit cost(LCY)" := PRL."Unit Cost (LCY)";
                                days :=(Today-"Purchase Date");
                                days := Round(days/365 ,2);
                                "Life time in Yrs" := days;
                
                            end;
                       end;
                  end;

            end;
        }
        field(58;"Item Desc";Code[200])
        {
            Editable = false;
        }
        field(59;"Item No";Code[20])
        {
        }
        field(60;"Created By";Code[50])
        {
        }
        field(61;"Modified By";Code[50])
        {
        }
        field(62;Transfered_from;Option)
        {
            OptionMembers = ,IR,CalibrationModule;
        }
        field(63;"Unit cost(LCY)";Decimal)
        {
            Editable = false;
        }
        field(64;"Owner of the Equpmnt";Code[50])
        {

            trigger OnLookup();
            begin
                UserGrec.Reset;
                if PAGE.RunModal(9800,UserGrec) = ACTION :: LookupOK then begin
                  "Owner of the Equpmnt":= UserGrec."User Name";
                  "Owner of the Equpmnt_empid" := UserGrec."Full Name";
                  "Owner of the Equpmnt_Dept" := UserGrec.Tams_Dept;
                  Validate("Owner of the Equpmnt");
                end;
            end;
        }
        field(65;"Owner of the Equpmnt_empid";Code[70])
        {
        }
        field(66;"Owner of the Equpmnt_Dept";Code[10])
        {
        }
        field(67;Remarks;Text[250])
        {
        }
        field(68;Classification;Option)
        {
            OptionCaption = ',Blue,Green,Red,Yellow,Missing';
            OptionMembers = ,Blue,Green,Red,Yellow,Missing;
        }
        field(69;"Reason for Delay";Text[250])
        {
        }
        field(70;"Delay Days";Integer)
        {
            Editable = false;
        }
        field(71;"Entry No";Code[20])
        {
            Editable = false;
        }
        field(72;"Not an ERP Integrated";Boolean)
        {
        }
        field(73;"Master Item";Boolean)
        {
        }
        field(74;"Life Time";Date)
        {
        }
        field(75;"Previously Calibrated Times";Integer)
        {

            trigger OnValidate();
            begin
                "Least Count" := "Least Count" +"Previously Calibrated Times";
            end;
        }
        field(76;"Life time in Yrs";Integer)
        {
        }
        field(77;mailsent;Boolean)
        {
            Description = 'added by vishnu for alertsing system';

            trigger OnValidate();
            begin
                Rec.MailSentDate := Today;
            end;
        }
        field(78;MailSentDate;Date)
        {
            Description = 'added by vishnu for alertsing system';
        }
    }

    keys
    {
        key(Key1;"Equipment No")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        if not(UserId in ['EFFTRONICS\SUJANI']) then
          Error('You are not authorized to delete');
    end;

    trigger OnInsert();
    begin
        if not(UserId in ['EFFTRONICS\SUJANI','EFFTRONICS\DINEEL','EFFTRONICS\VISHNUPRIYA']) then
          Error('You are not authorized to insert calibration record');

        "Created Date" := Today;
        "Created By" :=UserId;

        //IF "Equipment No" = '' THEN
          begin
            QCSetup.Get;
            QCSetup.TestField(QCSetup."Equipment No.");
            NoSeriesMgt.InitSeries(QCSetup."Equipment No.",xRec."No. Series",0D,"Equipment No","No. Series");
            Calibration.Transfered_from := Calibration.Transfered_from::CalibrationModule;
          end;
        // TO GET THE INWARDS DATE
        if "Next Calibration Due On" <> 0D then
          begin
        if ((Today - "Next Calibration Due On")>0) then
        "Delay Days" := Today - "Next Calibration Due On"
        else
        "Delay Days" :=0
        end;
    end;

    trigger OnModify();
    begin
        if not(UserId in ['EFFTRONICS\SUJANI','EFFTRONICS\KRISHNAD','EFFTRONICS\VISHNUPRIYA','EFFTRONICS\DINEEL']) then
          Error('You are not authorized to modify calibration record');

        "Last Modified Date" := Today;
        "Modified By":= UserId;
    end;

    var
        NoSeriesMgt : Codeunit NoSeriesManagement;
        Vendor : Record Vendor;
        QCSetup : Record "Quality Control Setup";
        Text000 : Label 'Inspection Datasheet already created';
        Calibration : Record Calibration;
        Text001 : Label 'You can''t create Inspection Datasheet Bcoz status is Scrapped';
        Text002 : Label 'Inspection Receipt not yet posted';
        IRHeader : Record "Inspection Receipt Header";
        RGPOut : Record "RGP Out Header";
        RGPIn : Record "RGP In Header";
        Text003 : Label 'RGP Out exists , So you can''t create Inspection Datasheet';
        Text004 : Label 'RGP In  exists , So you can''t create Inspection Datasheet';
        PIRH : Record "Inspection Receipt Header";
        PRH : Record "Purch. Rcpt. Header";
        PRL : Record "Purch. Rcpt. Line";
        UserGrec : Record User;
        "IR Flag" : Boolean;
        CLE : Record "Calibration Ledger Entries";
        days : Integer;
        cperiod_edt_flg : Boolean;

    [LineStart(3930)]
    procedure AssistEdit(OldCalibration : Record Calibration) : Boolean;
    var
        Calibration : Record Calibration;
    begin
        with Calibration do begin
          Calibration := Rec;
         QCSetup.Get;
          QCSetup.TestField(QCSetup."Equipment No.");
          if NoSeriesMgt.SelectSeries(QCSetup."Equipment No.",OldCalibration."No. Series","No. Series") then begin
            QCSetup.Get;
            QCSetup.TestField(QCSetup."Equipment No.");
            NoSeriesMgt.SetSeries("Equipment No");
            Rec := Calibration;
            exit(true);
          end;
        end;
    end;

    [LineStart(3944)]
    procedure TenderAttachments();
    var
        Attachments : Record Attachments;
    begin
        Attachments.Reset;
        Attachments.SetRange("Table ID",DATABASE::Calibration);
        Attachments.SetRange("Document No.","Equipment No");
        PAGE.Run(PAGE::Page60117,Attachments);
    end;

    [LineStart(3950)]
    procedure CreateInspectionDataSheets();
    var
        PurchHeader : Record "Purchase Header";
        WhseRcptLine : Record "Warehouse Receipt Line";
        IDSHeader : Record "Inspection Datasheet Header";
        IRHeader : Record "Inspection Receipt Header";
    begin
        /*IDSHeader.SETRANGE("Source Type",IDSHeader."Source Type" :: Calibration);
        IDSHeader.SETRANGE("Item No.","Equipment No");
        IF IDSHeader.FIND('-') THEN
          ERROR(Text000);
        
        IRHeader.SETRANGE("Source Type",IRHeader."Source Type" ::Calibration);
        IRHeader.SETRANGE("Item No.","Equipment No");
        IRHeader.SETRANGE(Status,FALSE);
        IF IRHeader.FIND('-') THEN
          ERROR(Text002);
        
        RGPOut.SETRANGE(Status,RGPOut.Status :: "Not Posted");
        RGPOut.SETRANGE("Equipment No","Equipment No");
        IF RGPOut.FIND('-') THEN
          ERROR(Text003);
        
        RGPIn.SETRANGE(Status,RGPIn.Status :: "Not Posted");
        RGPIn.SETRANGE("Equipment No","Equipment No");
        IF RGPIn.FIND('-') THEN
          ERROR(Text004);
        */
        /*
        IF Status <>Status :: Scrapped THEN BEGIN
          InspectDataSheets.CreateCalibrationIDS(Rec);
          "Current Status" := "Current Status" :: "Under Calibration";
          "Expected Return Date" := CALCDATE("Response Time",WORKDATE);
          MODIFY;
        END ELSE
          MESSAGE(Text001);
          */

    end;

    [LineStart(3982)]
    procedure ShowDataSheets();
    var
        InspectDataSheet : Record "Inspection Datasheet Header";
    begin
        InspectDataSheet.SetRange("Item No.","Equipment No");
        InspectDataSheet.SetRange("Source Type",InspectDataSheet."Source Type" ::Calibration);
        PAGE.Run(PAGE::Page33000259,InspectDataSheet);
    end;

    [LineStart(3987)]
    procedure ShowPostDataSheets();
    var
        PostInspectDataSheet : Record "Posted Inspect DatasheetHeader";
    begin
        PostInspectDataSheet.SetRange("Item No.","Equipment No");
        PostInspectDataSheet.SetRange("Source Type",PostInspectDataSheet."Source Type" ::Calibration);
        PAGE.Run(PAGE::Page33000265,PostInspectDataSheet);
    end;

    [LineStart(3992)]
    procedure ShowInspectReceipt();
    var
        InspectionReceipt : Record "Inspection Receipt Header";
    begin
        InspectionReceipt.SetRange("Item No.","Equipment No");
        InspectionReceipt.SetRange("Source Type",InspectionReceipt."Source Type" ::Calibration);
        InspectionReceipt.SetRange(Status,false);
        PAGE.Run(PAGE::Page60166,InspectionReceipt);
    end;

    [LineStart(3998)]
    procedure ShowPostInspectReceipt();
    var
        InspectionReceipt : Record "Inspection Receipt Header";
    begin
        InspectionReceipt.SetRange("Item No.","Equipment No");
        InspectionReceipt.SetRange("Source Type",InspectionReceipt."Source Type" ::Calibration);
        InspectionReceipt.SetRange(Status,true);
        PAGE.Run(PAGE::Page60166,InspectionReceipt);
    end;

    [LineStart(4004)]
    procedure CancelInspection(var QualityStatus : Text[50]);
    var
        IDS : Record "Inspection Datasheet Header";
        IDSL : Record "Inspection Datasheet Line";
        QILE : Record "Quality Item Ledger Entry";
        PIDS : Record "Posted Inspect DatasheetHeader";
        PIDSL : Record "Posted Inspect Datasheet Line";
    begin
        IDS.SetRange("Item No.","Equipment No");
        if not IDS.Find('-') then
          Error('Inspection Datasheets Does not exist')
        else begin
          PIDS.TransferFields(IDS);
          PIDS."Quality Status" := PIDS."Quality Status" :: Cancel;
          PIDS.Insert;
          IDS.Delete;
          IDSL.SetRange("Document No.",IDS."No.");
          if IDSL.Find('-') then begin
            repeat
              PIDSL.TransferFields(IDSL);
              PIDSL.Insert;
            until IDSL.Next = 0;
            IDSL.DeleteAll;
          end;
          QILE.SetRange("Document No.",IDS."Receipt No.");
          if QILE.Find('-') then
            QILE.Delete;
          "Current Status" := "Current Status" :: Calibrated;
          "Expected Return Date" := 0D;
          Modify;
        end;
    end;

    [LineStart(4029)]
    procedure "Cal ledger attachements"();
    var
        Attachments : Record Attachments;
    begin
        Attachments.Reset;
        Attachments.SetRange("Table ID",33000929);
        Attachments.SetRange("Document No.","Equipment No");
        PAGE.Run(PAGE::Page60117,Attachments);
    end;
}


table 60093 "Calibration Procedure Header"
{
    // version Cal1.0

    Caption = 'Calibration Procedure Header';
    // LookupPageID = 60161;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';

            trigger OnValidate();
            begin

                /*  if "No." <> xRec."No." then begin
                    QCSetup.Get ;
                    NoSeriesMgt.TestManual(QCSetup."Calibration Procedure No.");
                    "No. Series" := '';
                  end;*/
            end;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        /*  QCSetup.Get ;
          if "No." = '' then begin
          //  QCSetup.TestField("Calibration Procedure No.");
            NoSeriesMgt.InitSeries(QCSetup."Calibration Procedure No.",xRec."No. Series",0D,"No.","No. Series");
          end;*/
    end;

    var
        Text000: Label 'No %1 was found.';
        Text001: Label 'No %1 was found for %2 %3.';
        // QCSetup : Record "Quality Control Setup";
        CalProcHeader: Record "Calibration Procedure Header";
        CalProSetup: Record "Calibration Setup";
        CalProcHeader2: Record "Calibration Procedure Header";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        Text002: Label 'Calibration Procedure not found';

    //[LineStart(4042)]
    procedure AssistEdit(OldCalProcHeader: Record "Calibration Procedure Header"): Boolean;
    begin
        /*with CalProcHeader do begin
          CalProcHeader := Rec;
          QCSetup.Get;
      //    QCSetup.TestField("Calibration Procedure No.");
          if NoSeriesMgt.SelectSeries(QCSetup."Calibration Procedure No.",OldCalProcHeader."No. Series","No. Series") then begin
            NoSeriesMgt.SetSeries("No.");
            Rec := CalProcHeader;
            exit(true);
          end;
          end;
    end;

    //[LineStart(4054)]
    procedure ShowCalProc(Calibration : Record Calibration);
    var
        CalProFound : Boolean;
    begin
        /*
        CalProSetup.RESET;
        CalProSetup.SETRANGE("Equipment No.",Calibration."Equipment No");
        CalProFound := CalProSetup.FIND('-');
        
        IF NOT CalProFound THEN BEGIN
          CalProSetup.RESET;
          CalProSetup.SETRANGE("Equipment No.",Calibration."Equipment No");
          CalProFound := CalProSetup.FIND('-');
        END;
        IF CalProFound THEN BEGIN
          CalProcHeader.GET(CalProSetup."Procedure No.");
          MarkCalProHeader(CalProSetup);
          CalProcHeader2.MARKEDONLY(TRUE);
          CLEAR(CalProc);
          CalProc.SETRECORD(CalProcHeader);
          CalProc.SETTABLEVIEW(CalProcHeader2);
          CalProc.RUN;
          CalProcHeader2.RESET;
        END ELSE
          MESSAGE(Text001,CalProSetup.TABLECAPTION,Calibration.FIELDCAPTION("Equipment No"),Calibration."Equipment No");
        */

    end;

    //[LineStart(4078)]
    procedure MarkCalProHeader(CalProSetup2: Record "Calibration Setup");
    begin
        CalProSetup2.Find('-');
        repeat
            CalProcHeader2.Get(CalProSetup2."Procedure No.");
            CalProcHeader2.Mark(true);
        until CalProSetup2.Next = 0;
    end;


    //[LineStart(4085)]
    /*
    procedure ShowCalProcForIDs(IDS : Record "Inspection Datasheet Header");
    var
        CalProFound : Boolean;
    begin
        
        CalProSetup.RESET;
        CalProSetup.SETRANGE("Equipment No.",IDS."Item No.");
        CalProFound := CalProSetup.FIND('-');
        
        IF NOT CalProFound THEN BEGIN
          CalProSetup.RESET;
          CalProSetup.SETRANGE("Equipment No.",IDS."Item No.");
          CalProFound := CalProSetup.FIND('-');
        END;
        IF CalProFound THEN BEGIN
          CalProcHeader.GET(CalProSetup."Procedure No.");
          MarkCalProHeader(CalProSetup);
          CalProcHeader2.MARKEDONLY(TRUE);
          CLEAR(CalProc);
          CalProc.SETRECORD(CalProcHeader);
          CalProc.SETTABLEVIEW(CalProcHeader2);
          CalProc.RUN;
          CalProcHeader2.RESET;
        END ELSE
          MESSAGE(Text002);
        

    end;
    */
}


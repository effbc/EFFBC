table 13724 "Income Tax Accounting Period"
{
    // version NAVIN7.00

    CaptionML = ENU='Income Tax Accounting Period',
                ENN='Income Tax Accounting Period';
    LookupPageID = 13721;

    fields
    {
        field(1;"No.";Integer)
        {
            CaptionML = ENU='No.',
                        ENN='No.';
            Editable = false;
            NotBlank = true;
        }
        field(2;"Starting Date";Date)
        {
            CaptionML = ENU='Starting Date',
                        ENN='Starting Date';
            Editable = false;
            NotBlank = true;
        }
        field(3;"Ending Date";Date)
        {
            CaptionML = ENU='Ending Date',
                        ENN='Ending Date';
            Editable = false;
        }
        field(4;Closed;Boolean)
        {
            CaptionML = ENU='Closed',
                        ENN='Closed';
            Editable = false;
        }
        field(5;"Financial Year for eTDS/TCS";Code[6])
        {
            CaptionML = ENU='Financial Year for eTDS/TCS',
                        ENN='Financial Year for eTDS/TCS';
        }
        field(6;"Assessment Year for eTDS/TCS";Code[6])
        {
            CaptionML = ENU='Assessment Year for eTDS/TCS',
                        ENN='Assessment Year for eTDS/TCS';
        }
    }

    keys
    {
        key(Key1;"No.")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(61891)]
    procedure GetLastEntryNo(TableID : Integer) : Integer;
    var
        BatchHeader : Record "Batch Header";
        ChallanRegister : Record "Challan Register";
        Form26Q27QEntry : Record "Form 26Q/27Q Entry";
    begin
        if TableID = DATABASE::"Batch Header" then begin
          BatchHeader.LockTable;
          BatchHeader.Reset;
          if BatchHeader.FindLast then
            exit(BatchHeader."Entry No.");
        end;
        if TableID = DATABASE::"Challan Register" then begin
          ChallanRegister.LockTable;
          ChallanRegister.Reset;
          if ChallanRegister.FindLast then
            exit(ChallanRegister."Entry No.");
        end;
        if TableID = DATABASE::"Form 26Q/27Q Entry" then begin
          Form26Q27QEntry.LockTable;
          Form26Q27QEntry.Reset;
          if Form26Q27QEntry.FindLast then
            exit(Form26Q27QEntry."Entry No.");
        end;
    end;

    [LineStart(61911)]
    procedure GetStartEndDate(ReferenceDate : Date;"Start/End" : Option Start,"End") : Date;
    var
        TDSAccountingPeriod : Record "Income Tax Accounting Period";
    begin
        TDSAccountingPeriod.Reset;
        TDSAccountingPeriod.SetRange(Closed,false);
        TDSAccountingPeriod.SetFilter("Starting Date",'<=%1',ReferenceDate);
        TDSAccountingPeriod.SetFilter("Ending Date",'>=%1',ReferenceDate);
        if TDSAccountingPeriod.FindLast then begin
          if "Start/End" = "Start/End"::Start then
            exit(TDSAccountingPeriod."Starting Date");

          exit(TDSAccountingPeriod."Ending Date");
        end;
    end;

    [LineStart(61923)]
    procedure GetTCSLastEntryNo(TableID : Integer) : Integer;
    var
        TCSBatchHeader : Record "TCS Batch Header";
        TCSChallanRegister : Record "TCS Challan Register";
        Form27EQEntry : Record "Form 27EQ Entry";
    begin
        if TableID = DATABASE::"TCS Batch Header" then begin
          TCSBatchHeader.LockTable;
          TCSBatchHeader.Reset;
          if TCSBatchHeader.FindLast then
            exit(TCSBatchHeader."Entry No.");
        end;
        if TableID = DATABASE::"TCS Challan Register" then begin
          TCSChallanRegister.LockTable;
          TCSChallanRegister.Reset;
          if TCSChallanRegister.FindLast then
            exit(TCSChallanRegister."Entry No.");
        end;
        if TableID = DATABASE::"Form 27EQ Entry" then begin
          Form27EQEntry.LockTable;
          Form27EQEntry.Reset;
          if Form27EQEntry.FindLast then
            exit(Form27EQEntry."Entry No.");
        end;
    end;

    [LineStart(61943)]
    procedure GetTCSStartEndDate(ReferenceDate : Date;StartorEnd : Option Start,"End") : Date;
    var
        IncomeTaxAccountingPeriod : Record "Income Tax Accounting Period";
    begin
        IncomeTaxAccountingPeriod.Reset;
        IncomeTaxAccountingPeriod.SetRange(Closed,false);
        IncomeTaxAccountingPeriod.SetFilter("Starting Date",'<=%1',ReferenceDate);
        IncomeTaxAccountingPeriod.SetFilter("Ending Date",'>=%1',ReferenceDate);
        if IncomeTaxAccountingPeriod.FindLast then begin
          if StartorEnd = StartorEnd::Start then
            exit(IncomeTaxAccountingPeriod."Starting Date");

          exit(IncomeTaxAccountingPeriod."Ending Date");
        end;
    end;
}


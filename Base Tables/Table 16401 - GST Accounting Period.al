table 16401 "GST Accounting Period"
{
    // version NAVIN9.00.00.48466

    CaptionML = ENU='GST Accounting Period',
                ENN='GST Accounting Period';
    DrillDownPageID = 16401;
    LookupPageID = 16401;

    fields
    {
        field(1;"Starting Date";Date)
        {
            CaptionML = ENU='Starting Date',
                        ENN='Starting Date';
            NotBlank = true;

            trigger OnValidate();
            begin
                CheckGSTAccountingPeriod;
                Validate("Ending Date",CalcDate('<-1D>',CalcDate('<12M>',"Starting Date")));
                if "Ending Date" <> 0D then
                  CheckDates("Starting Date","Ending Date");
            end;
        }
        field(2;"Ending Date";Date)
        {
            CaptionML = ENU='Ending Date',
                        ENN='Ending Date';
            NotBlank = true;

            trigger OnValidate();
            begin
                CheckGSTAccountingPeriod;
                if "Starting Date" <> 0D then
                  CheckDates("Starting Date","Ending Date");
            end;
        }
        field(3;"Year Closed";Boolean)
        {
            CaptionML = ENU='Year Closed',
                        ENN='Year Closed';
            Editable = true;
        }
        field(4;"Credit Memo Locking Date";Date)
        {
            CaptionML = ENU='Credit Memo Locking Date',
                        ENN='Credit Memo Locking Date';
        }
        field(5;"Annual Return Filed Date";Date)
        {
            CaptionML = ENU='Annual Return Filed Date',
                        ENN='Annual Return Filed Date';
        }
    }

    keys
    {
        key(Key1;"Starting Date")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestField("Year Closed",false);
        GSTAccountingSubPeriod.SetRange("Accounting Period Start Date","Starting Date");
        if GSTAccountingSubPeriod.FindFirst then
          GSTAccountingSubPeriod.DeleteAll;
    end;

    trigger OnRename();
    begin
        TestField("Year Closed",false);
    end;

    var
        DateErr : TextConst ENU='Ending Date must not be before Starting Date.',ENN='Ending Date must not be before Starting Date.';
        GSTAccountingSubPeriod : Record "GST Accounting Sub Period";
        PeriodSDateErr : TextConst ENU='Starting Date must not lie in existing Accounting Period.',ENN='Starting Date must not lie in existing Accounting Period.';
        PeriodEDateErr : TextConst ENU='Ending Date must not lie in existing Accounting Period.',ENN='Ending Date must not lie in existing Accounting Period.';

    [LineStart(62785)]
    procedure CheckDates(StartingDate : Date;EndingDate : Date);
    begin
        if EndingDate <= StartingDate then
          Error(DateErr);
    end;

    [LineStart(62789)]
    local procedure CheckGSTAccountingPeriod();
    var
        GSTAccountingPeriod : Record "GST Accounting Period";
    begin
        if GSTAccountingPeriod.FindSet then
          repeat
            if ("Starting Date" >= GSTAccountingPeriod."Starting Date") and ("Starting Date" <= GSTAccountingPeriod."Ending Date") then
              Error(PeriodSDateErr);
            if ("Ending Date" >= GSTAccountingPeriod."Starting Date") and ("Ending Date" <= GSTAccountingPeriod."Ending Date") then
              Error(PeriodEDateErr);
          until GSTAccountingPeriod.Next = 0;
    end;
}


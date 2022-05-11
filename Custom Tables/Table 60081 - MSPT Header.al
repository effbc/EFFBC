table 60081 "MSPT Header"
{
    // version MSPT1.0

    // B2B Software Technologies
    // ---------------------------------------------------
    // Project : Mile Stone Payment Terms
    // B2B
    // No. sign   Description
    // ---------------------------------------------------
    // 01  B2B    MSPT Header

  //  DrillDownPageID = 60101;
   // LookupPageID = 60101;

    fields
    {
        field(1;"Code";Code[20])
        {
            NotBlank = true;

            trigger OnValidate();
            begin
                TestField(Status,Status::Open);
            end;
        }
        field(2;Description;Text[80])
        {

            trigger OnValidate();
            begin
                TestField(Status,Status::Open);
            end;
        }
        field(3;Type;Option)
        {
            Enabled = false;
            OptionMembers = Percentage,"Fixed Value";
        }
        field(4;"MSPT Date";Date)
        {
        }
        field(5;Status;Option)
        {
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Open,Released,Closed;

            trigger OnValidate();
            begin
                MSPTLine.SetRange("MSPT Header Code",Code);
                if MSPTLine.Find('-') then
                  repeat
                    MSPTLine.TestField("Calculation Period");
                    MSPTLine.TestField(Percentage);
                    Percentage1:=Percentage1+MSPTLine.Percentage;
                  until MSPTLine.Next=0;
                  if Percentage1 <> 100 then begin
                    Error(Text001);
                    exit;
                  end;
            end;
        }
    }

    keys
    {
        key(Key1;"Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestField(Status,Status::Open);

        MSPTLine.SetRange(MSPTLine."MSPT Header Code",Code);
        if MSPTLine.Find('-') then
          MSPTLine.DeleteAll;
    end;

    trigger OnInsert();
    begin
        TestField(Status,Status::Open);
    end;

    var
        MSPTLine : Record "MSPT Line";
        Percentage1 : Decimal;
        Text001 : Label 'Percentage Must be Equal to 100 In MSPT Order Details';
}


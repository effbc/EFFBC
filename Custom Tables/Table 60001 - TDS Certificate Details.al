table 60001 "TDS Certificate Details"
{
    // version B2B1.0

    LookupPageID = 60001;

    fields
    {
        field(1;"Document No.";Code[20])
        {
            Editable = false;
        }
        field(2;"Document Type";Option)
        {
            Editable = false;
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund,Posting,FullFinal,Reimbursement;
        }
        field(3;"Customer Acc.No.";Code[20])
        {
            Editable = false;
        }
        field(4;"Invoice No.";Code[20])
        {
        }
        field(5;"TDS / Work Tax Amount";Decimal)
        {
            Editable = false;
        }
        field(6;"Posting Date";Date)
        {
            Editable = false;
        }
        field(7;Type;Option)
        {
            Editable = false;
            OptionMembers = TDS,"Work Tax ";
        }
        field(8;"TDS Certificate No.";Code[20])
        {
            Editable = false;

            trigger OnValidate();
            begin
                TestStatus;
            end;
        }
        field(9;"Certificate Date";Date)
        {
            Editable = false;

            trigger OnValidate();
            begin
                TestStatus;
            end;
        }
        field(10;"Receipt Date";Date)
        {
            Editable = false;

            trigger OnValidate();
            begin
                TestStatus;
            end;
        }
        field(11;Status;Option)
        {
            Editable = false;
            OptionMembers = Open,Released;
        }
        field(12;"Entry No.";Integer)
        {
        }
        field(13;Assign;Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Document No.","Document Type","Customer Acc.No.","Invoice No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        Error ('You cannot delete TDS Certificate Detials');
    end;

    [LineStart(1253)]
    procedure TestStatus();
    begin
        TestField(Status,Status::Open);
    end;
}


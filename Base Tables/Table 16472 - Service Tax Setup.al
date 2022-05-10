table 16472 "Service Tax Setup"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='Service Tax Setup',
                ENN='Service Tax Setup';

    fields
    {
        field(1;"Code";Code[20])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
            TableRelation = "Service Tax Groups".Code;
        }
        field(2;"From Date";Date)
        {
            CaptionML = ENU='From Date',
                        ENN='From Date';
        }
        field(3;"Service Tax %";Decimal)
        {
            CaptionML = ENU='Service Tax %',
                        ENN='Service Tax %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(4;"Service Tax Receivable Account";Code[20])
        {
            CaptionML = ENU='Service Tax Receivable Account',
                        ENN='Service Tax Receivable Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("Service Tax Receivable Account");
            end;
        }
        field(5;"Service Tax Payable Account";Code[20])
        {
            CaptionML = ENU='Service Tax Payable Account',
                        ENN='Service Tax Payable Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("Service Tax Payable Account");
            end;
        }
        field(6;"Abatement %";Decimal)
        {
            CaptionML = ENU='Abatement %',
                        ENN='Abatement %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(7;"Same Group Set Off";Boolean)
        {
            CaptionML = ENU='Same Group Set Off',
                        ENN='Same Group Set Off';
        }
        field(10;"eCess %";Decimal)
        {
            CaptionML = ENU='eCess %',
                        ENN='eCess %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(11;"Receivables Account (Interim)";Code[20])
        {
            CaptionML = ENU='Receivables Account (Interim)',
                        ENN='Receivables Account (Interim)';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("Receivables Account (Interim)");
            end;
        }
        field(12;"Payables Account (Interim)";Code[20])
        {
            CaptionML = ENU='Payables Account (Interim)',
                        ENN='Payables Account (Interim)';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("Payables Account (Interim)");
            end;
        }
        field(13;"Service Tax Expenses Account";Code[20])
        {
            CaptionML = ENU='Service Tax Expenses Account',
                        ENN='Service Tax Expenses Account';
            TableRelation = "G/L Account"."No.";
        }
        field(14;"SHE Cess %";Decimal)
        {
            CaptionML = ENU='SHE Cess %',
                        ENN='SHE Cess %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(15;"S.T. Receivable Account (Dist)";Code[20])
        {
            CaptionML = ENU='S.T. Receivable Account (Dist)',
                        ENN='S.T. Receivable Account (Dist)';
            TableRelation = "G/L Account";
        }
        field(16;"Receivable Acc. Interim (Dist)";Code[20])
        {
            CaptionML = ENU='Receivable Acc. Interim (Dist)',
                        ENN='Receivable Acc. Interim (Dist)';
            TableRelation = "G/L Account";
        }
        field(17;"SB Cess%";Decimal)
        {
            CaptionML = ENU='SB Cess%',
                        ENN='SB Cess%';
            MaxValue = 100;
            MinValue = 0;
        }
        field(18;"SB Cess Expense Account";Code[20])
        {
            CaptionML = ENU='SB Cess Expense Account',
                        ENN='SB Cess Expense Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("SB Cess Expense Account");
            end;
        }
        field(19;"SB Cess Payable Account";Code[20])
        {
            CaptionML = ENU='SB Cess Payable Account',
                        ENN='SB Cess Payable Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("SB Cess Payable Account");
            end;
        }
        field(20;"SB Cess Acc.(Interim)";Code[20])
        {
            CaptionML = ENU='SB Cess Acc.(Interim)',
                        ENN='SB Cess Acc.(Interim)';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("SB Cess Acc.(Interim)");
            end;
        }
        field(21;"SB Cess Payable Acc.(Interim)";Code[20])
        {
            CaptionML = ENU='SB Cess Payable Acc.(Interim)',
                        ENN='SB Cess Payable Acc.(Interim)';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("SB Cess Payable Acc.(Interim)");
            end;
        }
        field(22;"KK Cess%";Decimal)
        {
            CaptionML = ENU='KK Cess%',
                        ENN='KK Cess%';
            MaxValue = 100;
            MinValue = 0;
        }
        field(23;"KK Cess Receivable Account";Code[20])
        {
            CaptionML = ENU='KK Cess Receivable Account',
                        ENN='KK Cess Receivable Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("KK Cess Receivable Account");
            end;
        }
        field(24;"KK Cess Payable Account";Code[20])
        {
            CaptionML = ENU='KK Cess Payable Account',
                        ENN='KK Cess Payable Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("KK Cess Payable Account");
            end;
        }
        field(25;"KK Cess Rec. Acc. (Interim)";Code[20])
        {
            CaptionML = ENU='KK Cess Rec. Acc. (Interim)',
                        ENN='KK Cess Rec. Acc. (Interim)';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("KK Cess Rec. Acc. (Interim)");
            end;
        }
        field(26;"KK Cess Payable Acc. (Interim)";Code[20])
        {
            CaptionML = ENU='KK Cess Payable Acc. (Interim)',
                        ENN='KK Cess Payable Acc. (Interim)';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("KK Cess Payable Acc. (Interim)");
            end;
        }
        field(27;"KK Cess Expense Account";Code[20])
        {
            CaptionML = ENU='KK Cess Expense Account',
                        ENN='KK Cess Expense Account';
            TableRelation = "G/L Account"."No.";

            trigger OnValidate();
            begin
                CheckGLAcc("KK Cess Expense Account");
            end;
        }
    }

    keys
    {
        key(Key1;"Code","From Date")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(63591)]
    local procedure CheckGLAcc(AccNo : Code[20]);
    var
        GLAcc : Record "G/L Account";
    begin
        if AccNo <> '' then begin
          GLAcc.Get(AccNo);
          GLAcc.CheckGLAcc;
        end;
    end;

    [LineStart(63597)]
    procedure GetPaymentAccNo(ServiceType : Option) : Code[20];
    var
        ServiceTaxEntryDetails : Record "Service Tax Entry Details";
    begin
        if ServiceType = ServiceTaxEntryDetails."Service Type (Rev. Chrg.)"::Outward then
          exit(GetExpensesAccNo);
        exit(GetRecAccNo);
    end;

    [LineStart(63602)]
    procedure GetRecAccNo() : Code[20];
    begin
        TestField("Service Tax Receivable Account");
        exit("Service Tax Receivable Account");
    end;

    [LineStart(63606)]
    procedure GetRecAccNoByISD(InputServiceDistribution : Boolean) : Code[20];
    begin
        if InputServiceDistribution then
          exit(GetRecDistAccNo);
        exit(GetRecAccNo);
    end;

    [LineStart(63611)]
    procedure GetRecInterimAccNo() : Code[20];
    begin
        TestField("Receivables Account (Interim)");
        exit("Receivables Account (Interim)");
    end;

    [LineStart(63615)]
    procedure GetRecInterimAccNoByISD(InputServiceDistribution : Boolean) : Code[20];
    begin
        if InputServiceDistribution then
          exit(GetRecInterimDistAccNo);
        exit(GetRecInterimAccNo);
    end;

    [LineStart(63620)]
    local procedure GetRecDistAccNo() : Code[20];
    begin
        TestField("S.T. Receivable Account (Dist)");
        exit("S.T. Receivable Account (Dist)");
    end;

    [LineStart(63624)]
    local procedure GetRecInterimDistAccNo() : Code[20];
    begin
        TestField("Receivable Acc. Interim (Dist)");
        exit("Receivable Acc. Interim (Dist)");
    end;

    [LineStart(63628)]
    procedure GetPayAccNo() : Code[20];
    begin
        TestField("Service Tax Payable Account");
        exit("Service Tax Payable Account");
    end;

    [LineStart(63632)]
    procedure GetPayInterimAccNo() : Code[20];
    begin
        TestField("Payables Account (Interim)");
        exit("Payables Account (Interim)");
    end;

    [LineStart(63636)]
    procedure GetExpensesAccNo() : Code[20];
    begin
        TestField("Service Tax Expenses Account");
        exit("Service Tax Expenses Account");
    end;

    [LineStart(63640)]
    procedure FindOnDate(NewCode : Code[20];OnDate : Date) : Boolean;
    begin
        Reset;
        SetRange(Code,NewCode);
        SetRange("From Date",0D,OnDate);
        exit(FindLast);
    end;

    [LineStart(63646)]
    procedure GetRecSBCAccNo() : Code[20];
    begin
        TestField("SB Cess Expense Account");
        exit("SB Cess Expense Account");
    end;

    [LineStart(63650)]
    procedure GetPaySBCAccNo() : Code[20];
    begin
        TestField("SB Cess Payable Account");
        exit("SB Cess Payable Account");
    end;

    [LineStart(63654)]
    procedure GetRecInterimSBCAccNo() : Code[20];
    begin
        TestField("SB Cess Acc.(Interim)");
        exit("SB Cess Acc.(Interim)");
    end;

    [LineStart(63658)]
    procedure GetPayInterimSBCAccNo() : Code[20];
    begin
        TestField("SB Cess Payable Acc.(Interim)");
        exit("SB Cess Payable Acc.(Interim)");
    end;

    [LineStart(63662)]
    procedure GetRecSBCAccNoByISD(InputServiceDistribution : Boolean) : Code[20];
    begin
        if InputServiceDistribution then
          exit(GetRecDistAccNo);
        exit(GetRecSBCAccNo);
    end;

    [LineStart(63667)]
    procedure GetRecInterimSBCAccNoByISD(InputServiceDistribution : Boolean) : Code[20];
    begin
        if InputServiceDistribution then
          exit(GetRecInterimDistAccNo);
        exit(GetRecInterimSBCAccNo);
    end;

    [LineStart(63672)]
    procedure GetExpensesSBCAccNo() : Code[20];
    begin
        TestField("SB Cess Expense Account");
        exit("SB Cess Expense Account");
    end;

    [LineStart(63676)]
    procedure GetPaymentSBCAccNo(ServiceType : Option) : Code[20];
    var
        ServiceTaxEntryDetails : Record "Service Tax Entry Details";
    begin
        if ServiceType = ServiceTaxEntryDetails."Service Type (Rev. Chrg.)"::Outward then
          exit(GetExpensesSBCAccNo);
        exit(GetRecSBCAccNo);
    end;

    [LineStart(63681)]
    procedure GetKKCessPaymentAccNo(ServiceType : Option) : Code[20];
    var
        ServiceTaxEntryDetails : Record "Service Tax Entry Details";
    begin
        if ServiceType = ServiceTaxEntryDetails."Service Type (Rev. Chrg.)"::Outward then
          exit(GetKKCessExpensesAccNo);
        exit(GetKKCessRecAccNo);
    end;

    [LineStart(63686)]
    procedure GetKKCessRecAccNo() : Code[20];
    begin
        TestField("KK Cess Receivable Account");
        exit("KK Cess Receivable Account");
    end;

    [LineStart(63690)]
    procedure GetKKCessRecInterimAccNo() : Code[20];
    begin
        TestField("KK Cess Rec. Acc. (Interim)");
        exit("KK Cess Rec. Acc. (Interim)");
    end;

    [LineStart(63694)]
    procedure GetKKCessPayAccNo() : Code[20];
    begin
        TestField("KK Cess Payable Account");
        exit("KK Cess Payable Account");
    end;

    [LineStart(63698)]
    procedure GetKKCessPayInterimAccNo() : Code[20];
    begin
        TestField("KK Cess Payable Acc. (Interim)");
        exit("KK Cess Payable Acc. (Interim)");
    end;

    [LineStart(63702)]
    procedure GetKKCessExpensesAccNo() : Code[20];
    begin
        TestField("KK Cess Expense Account");
        exit("KK Cess Expense Account");
    end;

    [LineStart(63706)]
    procedure GetKKCessRecInterimAccNoByISD(InputServiceDistribution : Boolean) : Code[20];
    begin
        if InputServiceDistribution then
          exit(GetRecInterimDistAccNo);
        exit(GetKKCessRecInterimAccNo);
    end;

    [LineStart(63711)]
    procedure GetKKCessRecAccNoByISD(InputServiceDistribution : Boolean) : Code[20];
    begin
        if InputServiceDistribution then
          exit(GetRecDistAccNo);
        exit(GetKKCessRecAccNo);
    end;
}


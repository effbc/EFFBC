table 13728 "TDS Setup"
{
    // version NAVIN9.00.00.46621,TDS-REGEF-194Q

    CaptionML = ENU='TDS Setup',
                ENN='TDS Setup';

    fields
    {
        field(1;"TDS Nature of Deduction";Code[10])
        {
            CaptionML = ENU='TDS Nature of Deduction',
                        ENN='TDS Nature of Deduction';
            NotBlank = true;
            TableRelation = "TDS Nature of Deduction";

            trigger OnValidate();
            begin
                NatureOfDeduction.Get("TDS Nature of Deduction");
                "TDS Group" := NatureOfDeduction."TDS Group";

                if (xRec."TDS Nature of Deduction" <> "TDS Nature of Deduction") and
                  ("TDS Group" <> "TDS Group"::"Payable to Non Residents")
                then begin
                  "Nature of Remittance" :='';
                  "Act Applicable" := "Act Applicable"::" ";
                  "Country Code" :='';
                end;
            end;
        }
        field(2;"Assessee Code";Code[10])
        {
            CaptionML = ENU='Assessee Code',
                        ENN='Assessee Code';
            NotBlank = true;
            TableRelation = "Assessee Code";
        }
        field(12;"TDS %";Decimal)
        {
            CaptionML = ENU='TDS %',
                        ENN='TDS %';
        }
        field(15;"Effective Date";Date)
        {
            CaptionML = ENU='Effective Date',
                        ENN='Effective Date';
        }
        field(16;"Concessional Code";Code[10])
        {
            CaptionML = ENU='Concessional Code',
                        ENN='Concessional Code';
            TableRelation = "Concessional Codes";
        }
        field(18;"Surcharge %";Decimal)
        {
            CaptionML = ENU='Surcharge %',
                        ENN='Surcharge %';
        }
        field(20;"TDS Group";Option)
        {
            CaptionML = ENU='TDS Group',
                        ENN='TDS Group';
            Editable = false;
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods,Salaries',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods,Salaries;
        }
        field(21;"eCESS %";Decimal)
        {
            CaptionML = ENU='eCESS %',
                        ENN='eCESS %';
        }
        field(22;"SHE Cess %";Decimal)
        {
            CaptionML = ENU='SHE Cess %',
                        ENN='SHE Cess %';
        }
        field(23;"Non PAN TDS %";Decimal)
        {
            CaptionML = ENU='Non PAN TDS %',
                        ENN='Non PAN TDS %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(24;"Nature of Remittance";Code[10])
        {
            CaptionML = ENU='Nature of Remittance',
                        ENN='Nature of Remittance';
            TableRelation = "TDS Nature of Remittance";

            trigger OnValidate();
            begin
                if "Nature of Remittance" <> '' then
                  TestField("TDS Group","TDS Group"::"Payable to Non Residents");
            end;
        }
        field(25;"Act Applicable";Option)
        {
            CaptionML = ENU='Act Applicable',
                        ENN='Act Applicable';
            OptionCaptionML = ENU=' ,IT,DTAA',
                              ENN=' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;

            trigger OnValidate();
            begin
                if "Act Applicable" <> "Act Applicable"::" " then
                  TestField("TDS Group","TDS Group"::"Payable to Non Residents");
            end;
        }
        field(26;"Country Code";Code[10])
        {
            CaptionML = ENU='Country Code',
                        ENN='Country Code';
            TableRelation = "Country/Region";

            trigger OnValidate();
            begin
                if "Country Code" <> '' then
                  TestField("TDS Group","TDS Group"::"Payable to Non Residents");
            end;
        }
        field(27;"Calc. Over & Above Threshold";Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"TDS Nature of Deduction","Assessee Code","Effective Date","Concessional Code","Nature of Remittance","Act Applicable","Country Code")
        {
        }
    }

    fieldgroups
    {
    }

    var
        NatureOfDeduction : Record "TDS Nature of Deduction";

    [LineStart(61955)]
    procedure FindOnDate(TDSNatureOfDeduction : Code[10];AssesseeCode : Code[10];TDSGroup : Option;ConcessionalCode : Code[10];EffectiveDate : Date;NatureOfRemittance : Code[10];ActApplicable : Option;CountryCode : Code[10]) : Boolean;
    begin
        Reset;
        SetRange("TDS Nature of Deduction",TDSNatureOfDeduction);
        SetRange("Assessee Code",AssesseeCode);
        SetRange("TDS Group",TDSGroup);
        SetRange("Effective Date",0D,EffectiveDate);
        SetRange("Concessional Code",ConcessionalCode);
        SetRange("Nature of Remittance",NatureOfRemittance);
        SetRange("Act Applicable",ActApplicable);
        SetRange("Country Code",CountryCode);
        exit(FindLast);
    end;
}


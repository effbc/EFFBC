table 13731 "TDS Group"
{
    // version NAVIN9.00.00.51333,TDS-REGEF-194Q

    CaptionML = ENU='TDS Group',
                ENN='TDS Group';

    fields
    {
        field(1;"TDS Group";Option)
        {
            CaptionML = ENU='TDS Group',
                        ENN='TDS Group';
            NotBlank = true;
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods,Salaries',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods,Salaries;
        }
        field(2;"TDS Threshold Amount";Decimal)
        {
            CaptionML = ENU='TDS Threshold Amount',
                        ENN='TDS Threshold Amount';
        }
        field(3;"Surcharge Threshold Amount";Decimal)
        {
            CaptionML = ENU='Surcharge Threshold Amount',
                        ENN='Surcharge Threshold Amount';
        }
        field(4;"TDS Account";Code[20])
        {
            CaptionML = ENU='TDS Account',
                        ENN='TDS Account';
            TableRelation = "G/L Account";
        }
        field(5;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
            TableRelation = "No. Series";
        }
        field(6;"Effective Date";Date)
        {
            CaptionML = ENU='Effective Date',
                        ENN='Effective Date';
            NotBlank = true;
        }
        field(7;"Per Contract Value";Decimal)
        {
            CaptionML = ENU='Per Contract Value',
                        ENN='Per Contract Value';
        }
        field(8;"Non Resident Payments";Boolean)
        {
            CaptionML = ENU='Non Resident Payments',
                        ENN='Non Resident Payments';
        }
        field(9;"TDS Section";Option)
        {
            CaptionML = ENU='TDS Section',
                        ENN='TDS Section';
            OptionCaptionML = ENU=' ,194C,194G,194J,194A,194I,194,193,194B,194D,194EE,194F,194H,194K,194L,194BB,194E,195,196A,196B,196C,196D,194IA,194IB,197A1F,194LA,192A,194Q',
                              ENN=' ,194C,194G,194J,194A,194I,194,193,194B,194D,194EE,194F,194H,194K,194L,194BB,194E,195,196A,196B,196C,196D,194IA,194IB,197A1F,194LA,192A,194Q';
            OptionMembers = " ","194C","194G","194J","194A","194I","194","193","194B","194D","194EE","194F","194H","194K","194L","194BB","194E","195","196A","196B","196C","196D","194IA","194IB","197A1F","194LA","192A","194Q";
        }
        field(10;"TDS Receivable Account";Code[20])
        {
            CaptionML = ENU='TDS Receivable Account',
                        ENN='TDS Receivable Account';
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1;"TDS Group","Effective Date")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(62025)]
    procedure FindOnDate(TDSGroup : Option;EffectiveDate : Date) : Boolean;
    begin
        Reset;
        SetRange("TDS Group",TDSGroup);
        SetRange("Effective Date",0D,EffectiveDate);
        exit(FindLast);
    end;
}


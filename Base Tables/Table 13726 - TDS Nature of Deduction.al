table 13726 "TDS Nature of Deduction"
{
    // version NAVIN9.00.00.46621,TDS-REGEF-194Q

    CaptionML = ENU='TDS Nature of Deduction',
                ENN='TDS Nature of Deduction';
    DataCaptionFields = "Code",Description;
    DrillDownPageID = 13734;
    LookupPageID = 13734;

    fields
    {
        field(1;"Code";Code[10])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
            NotBlank = true;
        }
        field(2;Description;Text[30])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(3;Category;Option)
        {
            CaptionML = ENU='Category',
                        ENN='Category';
            OptionCaptionML = ENU=' ,A,C,S,T',
                              ENN=' ,A,C,S,T';
            OptionMembers = " ",A,C,S,T;
        }
        field(6;Mark;Boolean)
        {
            CaptionML = ENU='Mark',
                        ENN='Mark';
        }
        field(7;"TDS Group";Option)
        {
            CaptionML = ENU='TDS Group',
                        ENN='TDS Group';
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods,Salaries',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods,Salaries;

            trigger OnValidate();
            var
                TDSGroup : Record "TDS Group";
            begin
                TDSGroup.SetRange("TDS Group","TDS Group");
                if not TDSGroup.FindFirst then
                  Error(Text001);
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
        fieldgroup(DropDown;"Code",Description)
        {
        }
    }

    var
        Text001 : TextConst ENU='You cannot select this TDS Group as there is no setup exists for this group in TDS Group Setup. ',ENN='You cannot select this TDS Group as there is no setup exists for this group in TDS Group Setup. ';
}


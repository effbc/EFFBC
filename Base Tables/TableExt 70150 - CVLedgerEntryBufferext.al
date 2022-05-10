tableextension 70150 CVLedgerEntryBufferext extends "CV Ledger Entry Buffer"
{
    // version NAVW19.00.00.50221,NAVIN9.00.00.50221,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 5)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 34)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 52)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount"(Field 58)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount"(Field 59)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Debit Amount (LCY)"(Field 60)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Credit Amount (LCY)"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(13702; "TDS Nature of Deduction"; Code[10])
        {
            CaptionML = ENU = 'TDS Nature of Deduction',
                        ENN = 'TDS Nature of Deduction';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = "TDS Nature of Deduction";
        }
        field(13703; "TDS Group"; Option)
        {
            CaptionML = ENU = 'TDS Group',
                        ENN = 'TDS Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,Goods;
        }
        field(13704; "Total TDS Including SHECESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS Including SHECESS',
                        ENN = 'Total TDS Including SHECESS';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 27).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecalculateAmounts(PROCEDURE 41).CurrExchRate(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RecalculateAmounts : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecalculateAmounts : "Currency Exchange Rate";
    //Variable type has not been exported.
}


table 13785 "NOD/NOC Lines"
{
    // version NAVIN9.00.00.51934,TDS-REGEF-194Q

    CaptionML = ENU='NOD/NOC Lines',
                ENN='NOD/NOC Lines';
    DrillDownPageID = 13708;
    LookupPageID = 13708;

    fields
    {
        field(1;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,Party,Customer,Vendor',
                              ENN=' ,Party,Customer,Vendor';
            OptionMembers = " ",Party,Customer,Vendor;
        }
        field(2;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
            TableRelation = IF (Type=CONST(Customer)) Customer
                            ELSE IF (Type=CONST(Vendor)) Vendor
                            ELSE IF (Type=CONST(Party)) Party;
        }
        field(4;"NOD/NOC";Code[10])
        {
            CaptionML = ENU='NOD/NOC',
                        ENN='NOD/NOC';
            TableRelation = IF (Type=CONST(Customer),
                                "TDS for Customer"=FILTER(false)) "TCS Nature Of Collection"
                                ELSE IF (Type=CONST(Customer),
                                         "TDS for Customer"=FILTER(true)) "TDS Nature of Deduction"
                                         ELSE IF (Type=CONST(Vendor)) "TDS Nature of Deduction"
                                         ELSE IF (Type=CONST(Party),
                                                  "TCS Party"=FILTER(true)) "TCS Nature Of Collection"
                                                  ELSE IF (Type=CONST(Party),
                                                           "TCS Party"=FILTER(false)) "TDS Nature of Deduction";

            trigger OnValidate();
            var
                Vend : Record Vendor;
            begin
                if (xRec."NOD/NOC" <> "NOD/NOC") then begin
                  if "TDS Group" <> "TDS Group"::"Payable to Non Residents" then
                    "Country Code" := '';
                  "Nature of Remittance" := '';
                  "Act Applicable" := "Act Applicable"::" ";
                end;

                if (Type = Type::Vendor) or ((Type = Type::Party) and not "TCS Party") or
                   ((Type = Type::Customer) and "TDS for Customer")
                then begin
                  NatureOfDeduction.Get("NOD/NOC");
                  "TDS Group" := NatureOfDeduction."TDS Group";
                  TDSGroup.SetRange("TDS Group","TDS Group");
                  if TDSGroup.FindFirst then
                    if ("TDS Group" = "TDS Group"::"Payable to Non Residents") or
                       (TDSGroup."Non Resident Payments" = true)
                    then begin
                    Vend.Get("No.");
                    Vend.TestField("Country/Region Code");
                    "Country Code" := Vend."Country/Region Code";
                    end;
                  TDSGroup.SetRange("TDS Group","TDS Group");
                  if TDSGroup.FindLast then
                    if TDSGroup."Non Resident Payments" then begin
                      "Threshold Overlook" := true;
                      "Surcharge Overlook" := true;
                    end;
                end else
                  if (Type = Type::Customer) or ((Type = Type::Party) and "TCS Party") then begin
                    NatureOfCollection.Get("NOD/NOC");
                    "TCS Type" := NatureOfCollection."TCS Type";
                  end;
            end;
        }
        field(5;"Concessional Code";Code[10])
        {
            CaptionML = ENU='Concessional Code',
                        ENN='Concessional Code';
            TableRelation = "Concessional Codes";
        }
        field(6;"Concessional Form No.";Code[20])
        {
            CaptionML = ENU='Concessional Form No.',
                        ENN='Concessional Form No.';
        }
        field(9;"Monthly Certificate";Boolean)
        {
            CaptionML = ENU='Monthly Certificate',
                        ENN='Monthly Certificate';
        }
        field(10;"Threshold Overlook";Boolean)
        {
            CaptionML = ENU='Threshold Overlook',
                        ENN='Threshold Overlook';

            trigger OnValidate();
            begin
                if "TDS for Customer" then
                  Error(TDSForCustCheckErr);
                if not "Threshold Overlook" and "Surcharge Overlook" then
                  Error(TherSholdCheckForSurcharErr);
            end;
        }
        field(12;"Surcharge Overlook";Boolean)
        {
            CaptionML = ENU='Surcharge Overlook',
                        ENN='Surcharge Overlook';

            trigger OnValidate();
            begin
                if "TDS for Customer" then
                  Error(TDSForCustCheckErr);
                if not "Threshold Overlook" and "Surcharge Overlook" then
                  Error(TherSholdCheckForSurcharErr);
            end;
        }
        field(13;"TDS Group";Option)
        {
            CaptionML = ENU='TDS Group',
                        ENN='TDS Group';
            Editable = false;
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods;
        }
        field(14;"TCS Type";Option)
        {
            CaptionML = ENU='TCS Type',
                        ENN='TCS Type';
            OptionCaptionML = ENU=',A,B,C,D,E,F,G, H,I,J,K,L,M,N,1H',
                              ENN=',A,B,C,D,E,F,G, H,I,J,K,L,M,N,1H';
            OptionMembers = ,A,B,C,D,E,F,G," H",I,J,K,L,M,N,"1H";
        }
        field(15;"TCS Party";Boolean)
        {
            CaptionML = ENU='TCS Party',
                        ENN='TCS Party';

            trigger OnValidate();
            begin
                TestField(Type,Type::Party);
                "NOD/NOC" := '';
            end;
        }
        field(16;"Nature of Remittance";Code[10])
        {
            CaptionML = ENU='Nature of Remittance',
                        ENN='Nature of Remittance';
            TableRelation = "TDS Nature of Remittance";

            trigger OnValidate();
            begin
                CheckMandatoryFieldsForNonRes;
            end;
        }
        field(17;"Act Applicable";Option)
        {
            CaptionML = ENU='Act Applicable',
                        ENN='Act Applicable';
            OptionCaptionML = ENU=' ,IT,DTAA',
                              ENN=' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;

            trigger OnValidate();
            begin
                CheckMandatoryFieldsForNonRes;
            end;
        }
        field(18;"Country Code";Code[10])
        {
            CaptionML = ENU='Country Code',
                        ENN='Country Code';
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(19;"TDS for Customer";Boolean)
        {
            CaptionML = ENU='TDS for Customer',
                        ENN='TDS for Customer';

            trigger OnValidate();
            begin
                TestField(Type,Type::Customer);

                if "TDS for Customer" then begin
                  "NOD/NOC" := '';
                  "Surcharge Overlook" := true;
                  "Threshold Overlook" := true;
                end else begin
                  "NOD/NOC" := '';
                  "Surcharge Overlook" := false;
                  "Threshold Overlook" := false;
                end;
            end;
        }
    }

    keys
    {
        key(Key1;Type,"No.","NOD/NOC","Nature of Remittance","Act Applicable")
        {
        }
    }

    fieldgroups
    {
    }

    var
        NatureOfDeduction : Record "TDS Nature of Deduction";
        TDSGroup : Record "TDS Group";
        NatureOfCollection : Record "TCS Nature Of Collection";
        TDSForCustCheckErr : TextConst ENU='Threshold overlook and surcharge overlook fields are not allowed to modified if TDS for Customers is TRUE.',ENN='Threshold overlook and surcharge overlook fields are not allowed to modified if TDS for Customers is TRUE.';
        TherSholdCheckForSurcharErr : Label 'Surcharge Overlook can be enabled in combinations with Threshold Overlook, it cannot be enabled individually.';

    [LineStart(62060)]
    procedure FindNODLines(Type : Option;PaytoVendorNo : Code[20];WorkTaxNatureOfDeduction : Code[10]) : Boolean;
    begin
        Reset;
        SetRange(Type,Type);
        SetRange("No.",PaytoVendorNo);
        SetRange("NOD/NOC",WorkTaxNatureOfDeduction);
        exit(FindFirst);
    end;

    [LineStart(62067)]
    local procedure CheckMandatoryFieldsForNonRes();
    begin
        TestField(Type,Type::Vendor);
        TestField("NOD/NOC");
        if ("Nature of Remittance" <> '') or ("Act Applicable" <> "Act Applicable"::" ") then
          TestField("TDS Group","TDS Group"::"Payable to Non Residents");
    end;
}


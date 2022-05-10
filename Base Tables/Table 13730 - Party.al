table 13730 Party
{
    // version NAVIN9.00.00.51918

    CaptionML = ENU='Party',
                ENN='Party';
    DataCaptionFields = "Code",Name;
    DrillDownPageID = 13735;
    LookupPageID = 13735;

    fields
    {
        field(3;"Code";Code[10])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
            NotBlank = true;
        }
        field(4;Name;Text[30])
        {
            CaptionML = ENU='Name',
                        ENN='Name';

            trigger OnValidate();
            begin
                if Name <> xRec.Name then
                  UpdateDedName;
                if Name <> xRec.Name then
                  UpdatePartyName;
            end;
        }
        field(5;Address;Text[50])
        {
            CaptionML = ENU='Address',
                        ENN='Address';
        }
        field(6;"P.A.N. No.";Code[20])
        {
            CaptionML = ENU='P.A.N. No.',
                        ENN='P.A.N. No.';

            trigger OnValidate();
            begin
                // IF "P.A.N. No." <> xRec."P.A.N. No." THEN
                // UpdateDedPAN;
                // IF "P.A.N. No." <> xRec."P.A.N. No." THEN
                // UpdatePartyPAN;

                if "GST Registration No." <> '' then
                  CheckGSTRegBlankInRef;
            end;
        }
        field(7;"Address 2";Text[50])
        {
            CaptionML = ENU='Address 2',
                        ENN='Address 2';
        }
        field(8;State;Code[10])
        {
            CaptionML = ENU='State',
                        ENN='State';
            TableRelation = State;

            trigger OnValidate();
            begin
                TestField("GST Registration No.",'');
            end;
        }
        field(9;"Post Code";Code[20])
        {
            CaptionML = ENU='Post Code',
                        ENN='Post Code';
            TableRelation = "Post Code";
        }
        field(10;"P.A.N. Reference No.";Code[20])
        {
            CaptionML = ENU='P.A.N. Reference No.',
                        ENN='P.A.N. Reference No.';

            trigger OnValidate();
            begin
                // IF "P.A.N. Reference No." <> xRec."P.A.N. Reference No." THEN
                // UpdateDedPANRefNo;
                // IF "P.A.N. Reference No." <> xRec."P.A.N. Reference No." THEN
                // UpdatePartyPANRefNo;
            end;
        }
        field(11;"P.A.N. Status";Option)
        {
            CaptionML = ENU='P.A.N. Status',
                        ENN='P.A.N. Status';
            OptionCaptionML = ENU=' ,PANAPPLIED,PANINVALID,PANNOTAVBL',
                              ENN=' ,PANAPPLIED,PANINVALID,PANNOTAVBL';
            OptionMembers = " ",PANAPPLIED,PANINVALID,PANNOTAVBL;

            trigger OnValidate();
            begin
                "P.A.N. No." := Format("P.A.N. Status");
            end;
        }
        field(16600;"GST Party Type";Option)
        {
            CaptionML = ENU='GST Party Type',
                        ENN='GST Party Type';
            OptionCaptionML = ENU=' ,Vendor,Customer',
                              ENN=' ,Vendor,Customer';
            OptionMembers = " ",Vendor,Customer;

            trigger OnValidate();
            begin
                case "GST Party Type" of
                  "GST Party Type"::" ":
                    begin
                      TestField("GST Vendor Type","GST Vendor Type"::" ");
                      TestField("GST Customer Type","GST Customer Type"::" ");
                      TestField("Associated Enterprises",false);
                    end;
                  "GST Party Type"::Customer:
                    begin
                      TestField("GST Vendor Type","GST Vendor Type"::" ");
                      TestField("Associated Enterprises",false);
                    end;
                  "GST Party Type"::Vendor:
                    begin
                      TestField("GST Customer Type","GST Customer Type"::" ");
                      TestField("GST Registration Type","GST Registration Type"::GSTIN);
                    end;
                end;
            end;
        }
        field(16601;"GST Registration No.";Code[15])
        {
            CaptionML = ENU='GST Registration No.',
                        ENN='GST Registration No.';

            trigger OnValidate();
            begin
                if "GST Registration No." <> '' then begin
                  TestField(State);
                  if "GST Registration Type" = "GST Registration Type"::GSTIN then
                    if "P.A.N. No." <> '' then
                      GSTRegistrationNos.CheckGSTRegistrationNo(State,"GST Registration No.","P.A.N. No.")
                    else
                      if "GST Registration No." <> '' then
                        Error(PANErr);

                  TestField("GST Party Type");
                  case "GST Party Type" of
                    "GST Party Type"::Vendor:
                      if "GST Vendor Type" = "GST Vendor Type"::" " then
                        "GST Vendor Type" := "GST Vendor Type"::Registered
                      else
                        if not ("GST Vendor Type" in ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,"GST Vendor Type"::Exempted,
                                                      "GST Vendor Type"::SEZ])
                        then
                          "GST Vendor Type" := "GST Vendor Type"::Registered;
                    "GST Party Type"::Customer:
                      if "GST Registration Type" = "GST Registration Type"::GSTIN then begin
                        if "P.A.N. No." <> '' then
                          GSTRegistrationNos.CheckGSTRegistrationNo(State,"GST Registration No.","P.A.N. No.")
                        else
                          if "GST Registration No." <> '' then
                            Error(PANErr);
                        if "GST Customer Type" = "GST Customer Type"::" " then
                          "GST Customer Type" := "GST Customer Type"::Registered
                        else
                          if not ("GST Customer Type" in ["GST Customer Type"::Registered,"GST Customer Type"::Exempted,
                                                          "GST Customer Type"::"SEZ Development","GST Customer Type"::"SEZ Unit",
                                                          "GST Customer Type"::"Deemed Export"])
                          then
                            "GST Customer Type" := "GST Customer Type"::Registered;
                      end else
                        "GST Customer Type" := "GST Customer Type"::Registered;
                  end;
                end else
                  if "ARN No." = '' then begin
                    "GST Customer Type" := "GST Customer Type"::" ";
                    "GST Vendor Type" := "GST Vendor Type"::" ";
                  end;
            end;
        }
        field(16602;"GST Vendor Type";Option)
        {
            CaptionML = ENU='GST Vendor Type',
                        ENN='GST Vendor Type';
            OptionCaptionML = ENU=' ,Registered,Composite,Unregistered,Import,Exempted,SEZ',
                              ENN=' ,Registered,Composite,Unregistered,Import,Exempted,SEZ';
            OptionMembers = " ",Registered,Composite,Unregistered,Import,Exempted,SEZ;

            trigger OnValidate();
            begin
                TestField("GST Party Type","GST Party Type"::Vendor);
                if "GST Vendor Type" = "GST Vendor Type"::" " then begin
                  "GST Registration No." := '';
                  exit;
                end;
                if "GST Vendor Type" in ["GST Vendor Type"::Registered,"GST Vendor Type"::Composite,"GST Vendor Type"::SEZ,
                                         "GST Vendor Type"::Exempted]
                then begin
                  if "GST Registration No." = '' then
                    if "ARN No." = '' then
                      Error(GSTARNErr)
                end else begin
                  if "GST Vendor Type" <> "GST Vendor Type"::Exempted then
                    "GST Registration No." := '';
                  if "GST Vendor Type" = "GST Vendor Type"::Import then
                    TestField(State,'')
                  else
                    if "GST Vendor Type" = "GST Vendor Type"::Unregistered then
                      TestField(State);
                  if "GST Vendor Type" <> "GST Vendor Type"::Import then
                    "Associated Enterprises" := false;
                end;

                if "GST Registration No." <> '' then begin
                  TestField(State);
                  if "P.A.N. No." <> '' then
                    GSTRegistrationNos.CheckGSTRegistrationNo(State,"GST Registration No.","P.A.N. No.")
                  else
                    if "GST Registration No." <> '' then
                      Error(PANErr);
                end;
            end;
        }
        field(16603;"Associated Enterprises";Boolean)
        {
            CaptionML = ENU='Associated Enterprises',
                        ENN='Associated Enterprises';

            trigger OnValidate();
            begin
                if "Associated Enterprises" then
                  TestField("GST Vendor Type","GST Vendor Type"::Import);
            end;
        }
        field(16604;"GST Registration Type";Option)
        {
            CaptionML = ENU='GST Registration Type',
                        ENN='GST Registration Type';
            OptionCaptionML = ENU='GSTIN,UID,GID',
                              ENN='GSTIN,UID,GID';
            OptionMembers = GSTIN,UID,GID;

            trigger OnValidate();
            begin
                case "GST Party Type" of
                  "GST Party Type"::Vendor:
                    TestField("GST Registration Type","GST Registration Type"::GSTIN);
                  "GST Party Type"::Customer:
                    begin
                      if not ("GST Customer Type" in ["GST Customer Type"::Registered,"GST Customer Type"::" "]) and not
                         ("GST Registration Type" = "GST Registration Type"::GSTIN)
                      then
                        Error(GSTCustRegErr);
                      if ("P.A.N. No." <> '') and ("P.A.N. Status" = "P.A.N. Status"::" ") then
                        GSTRegistrationNos.CheckGSTRegistrationNo(State,"GST Registration No.","P.A.N. No.")
                      else
                        if "GST Registration No." <> '' then
                          Error(PANErr);
                    end;
                end;
            end;
        }
        field(16605;"GST Customer Type";Option)
        {
            CaptionML = ENU='GST Customer Type',
                        ENN='GST Customer Type';
            OptionCaptionML = ENU=' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN=' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";

            trigger OnValidate();
            var
                GSTRegistrationNos : Record "GST Registration Nos.";
            begin
                TestField("GST Party Type","GST Party Type"::Customer);

                if "GST Customer Type" = "GST Customer Type"::" " then begin
                  "GST Registration No." := '';
                  exit;
                end;
                TestField(Address);
                if not ("GST Customer Type" in ["GST Customer Type"::Registered]) and not
                   ("GST Registration Type" = "GST Registration Type"::GSTIN)
                then
                  Error(GSTCustRegErr);
                if ("GST Customer Type" in ["GST Customer Type"::Registered,
                                            "GST Customer Type"::"Deemed Export",
                                            "GST Customer Type"::Exempted,
                                            "GST Customer Type"::"SEZ Development",
                                            "GST Customer Type"::"SEZ Unit"])
                then
                  if "GST Registration No." = '' then
                    if "ARN No." = '' then
                      Error(GSTARNErr);
                if ("GST Customer Type" in ["GST Customer Type"::Registered,
                                            "GST Customer Type"::Unregistered,
                                            "GST Customer Type"::Exempted,
                                            "GST Customer Type"::"SEZ Development",
                                            "GST Customer Type"::"SEZ Unit"])
                then
                  TestField(State)
                else
                  if "GST Customer Type" <> "GST Customer Type"::"Deemed Export" then
                    TestField(State,'');
                if not ("GST Customer Type" in ["GST Customer Type"::Registered,
                                                "GST Customer Type"::Exempted,
                                                "GST Customer Type"::"Deemed Export",
                                                "GST Customer Type"::"SEZ Development",
                                                "GST Customer Type"::"SEZ Unit"])
                then
                  "GST Registration No." := '';
                if "GST Registration No." <> '' then begin
                  TestField(State);
                  if "P.A.N. No." <> '' then
                    GSTRegistrationNos.CheckGSTRegistrationNo(State,"GST Registration No.","P.A.N. No.")
                  else
                    if "GST Registration No." <> '' then
                      Error(PANErr);
                end;
            end;
        }
        field(16606;"ARN No.";Code[15])
        {
            CaptionML = ENU='ARN No.',
                        ENN='ARN No.';

            trigger OnValidate();
            begin
                if ("ARN No." = '') and ("GST Registration No." = '') and ("GST Party Type" = "GST Party Type"::Customer) then
                  if not ("GST Customer Type" in ["GST Customer Type"::Export,"GST Customer Type"::Unregistered]) then
                    "GST Customer Type" := "GST Customer Type"::" ";
                if ("ARN No." = '') and ("GST Registration No." = '') and ("GST Party Type" = "GST Party Type"::Vendor) then
                  if not ("GST Vendor Type" in ["GST Vendor Type"::Import,"GST Vendor Type"::Unregistered]) then
                    "GST Vendor Type" := "GST Vendor Type"::" ";
                if "GST Vendor Type" in ["GST Vendor Type"::Import,"GST Vendor Type"::Unregistered] then
                  TestField("ARN No.",'');
                if "GST Customer Type" in ["GST Customer Type"::Export,"GST Customer Type"::Unregistered] then
                  TestField("ARN No.",'');
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

    var
        GSTRegistrationNos : Record "GST Registration Nos.";
        GSTARNErr : TextConst ENU='Either GST Registration No. or ARN No. should have a value.',ENN='Either GST Registration No. or ARN No. should have a value.';
        PANErr : TextConst ENU='PAN No. must be entered.',ENN='PAN No. must be entered.';
        SamePANErr : TextConst ENU='From postion 3 to 12 it should be same as it is in PAN No. so delete the GST Registration No. and then update it.',ENN='From postion 3 to 12 it should be same as it is in PAN No. so delete the GST Registration No. and then update it.';
        GSTCustRegErr : TextConst ENU='GST Customer type ''Blank'' & ''Registered'' is allowed to select when GST Registration Type is UID or GID.',ENN='GST Customer type ''Blank'' & ''Registered'' is allowed to select when GST Registration Type is UID or GID.';

    [LineStart(61985)]
    procedure UpdateDedName();
    var
        Form26Q27QEntry : Record "Form 26Q/27Q Entry";
    begin
        Form26Q27QEntry.Reset;
        Form26Q27QEntry.SetRange(Revised,false);
        Form26Q27QEntry.SetRange(Filed,false);
        Form26Q27QEntry.SetRange("Party Type",Form26Q27QEntry."Party Type"::Party);
        Form26Q27QEntry.SetRange("Party Code",Code);
        if Form26Q27QEntry.FindFirst then
          Form26Q27QEntry.ModifyAll("Deductee Name",Name);
    end;

    [LineStart(61994)]
    procedure UpdateDedPAN();
    var
        Form26Q27QEntry : Record "Form 26Q/27Q Entry";
    begin
        Form26Q27QEntry.Reset;
        Form26Q27QEntry.SetRange(Revised,false);
        Form26Q27QEntry.SetRange(Filed,false);
        Form26Q27QEntry.SetRange("Party Type",Form26Q27QEntry."Party Type"::Party);
        Form26Q27QEntry.SetRange("Party Code",Code);
        if Form26Q27QEntry.FindFirst then
          Form26Q27QEntry.ModifyAll("Deductee P.A.N. No.","P.A.N. No.");
    end;

    [LineStart(62003)]
    procedure UpdateDedPANRefNo();
    var
        Form26Q27QEntry : Record "Form 26Q/27Q Entry";
    begin
        Form26Q27QEntry.Reset;
        Form26Q27QEntry.SetRange(Revised,false);
        Form26Q27QEntry.SetRange(Filed,false);
        Form26Q27QEntry.SetRange("Party Type",Form26Q27QEntry."Party Type"::Party);
        Form26Q27QEntry.SetRange("Party Code",Code);
        if Form26Q27QEntry.FindFirst then
          Form26Q27QEntry.ModifyAll("Deductee P.A.N. Ref. No.","P.A.N. Reference No.");
    end;

    [LineStart(62012)]
    local procedure UpdatePartyName();
    var
        Form27EQEntry : Record "Form 27EQ Entry";
    begin
        Form27EQEntry.Reset;
        Form27EQEntry.SetRange(Revised,false);
        Form27EQEntry.SetRange(Filed,false);
        Form27EQEntry.SetRange("Party Type",Form27EQEntry."Party Type"::Party);
        Form27EQEntry.SetRange("Party Code",Code);
        if Form27EQEntry.FindFirst then
          Form27EQEntry.ModifyAll("Party Name",Name);
    end;

    [LineStart(62021)]
    local procedure CheckGSTRegBlankInRef();
    begin
        if "P.A.N. No." <> CopyStr("GST Registration No.",3,10) then
          Error(SamePANErr);
    end;
}


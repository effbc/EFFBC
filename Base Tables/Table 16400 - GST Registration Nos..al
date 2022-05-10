table 16400 "GST Registration Nos."
{
    // version NAVIN9.00.00.51418

    CaptionML = ENU='GST Registration Nos.',
                ENN='GST Registration Nos.';
    DrillDownPageID = 16400;
    LookupPageID = 16400;

    fields
    {
        field(1;"Code";Code[15])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
            NotBlank = true;

            trigger OnValidate();
            var
                CompanyInformation : Record "Company Information";
            begin
                /*CompanyInformation.GET;
                
                IF CompanyInformation."P.A.N. No." <> '' THEN
                  CheckGSTRegistrationNo("State Code",Code,CompanyInformation."P.A.N. No.")
                ELSE
                  ERROR(PANErr);
                
                IF xRec.Code <> '' THEN
                  CheckDependentDataInCompanyAndLocationAtEditing;
                  */

            end;
        }
        field(2;"State Code";Code[10])
        {
            CaptionML = ENU='State Code',
                        ENN='State Code';
            NotBlank = true;
            TableRelation = State;

            trigger OnValidate();
            var
                CompanyInformation : Record "Company Information";
            begin
                /*CompanyInformation.GET;
                CheckGSTRegistrationNo("State Code",Code,CompanyInformation."P.A.N. No.");
                */

            end;
        }
        field(4;Description;Text[30])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(5;"Input Service Distributor";Boolean)
        {
            CaptionML = ENU='Input Service Distributor',
                        ENN='Input Service Distributor';
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
        CheckDependentDataInCompanyAndLocation;
    end;

    var
        LengthErr : TextConst ENU='The Length of the GST Registration Nos. must be 15.',ENN='The Length of the GST Registration Nos. must be 15.';
        StateCodeErr : TextConst Comment='%1 and %2 = State Code and Initial State Code',ENU='The GST Registration No. for the state %1 should start with %2.',ENN='The GST Registration No. for the state %1 should start with %2.';
        OnlyAlphabetErr : TextConst Comment='%1 = Integer',ENU='Only Alphabet is allowed in the position %1.',ENN='Only Alphabet is allowed in the position %1.';
        OnlyNumericErr : TextConst Comment='%1 = Integer',ENU='Only Numeric is allowed in the position %1.',ENN='Only Numeric is allowed in the position %1.';
        OnlyAlphaNumericErr : TextConst Comment='%1 = Integer',ENU='Only AlphaNumeric is allowed in the position %1.',ENN='Only AlphaNumeric is allowed in the position %1.';
        OnlyZErr : TextConst Comment='%1 = Postion',ENU='Only ''Z'' value is allowed in the position %1.',ENN='Only ''Z'' value is allowed in the position %1.';
        SamePanErr : TextConst Comment='%1=PAN No.',ENU='In GST Registration No from postion 3 to 12 the value should be same as the PAN No. %1.',ENN='In GST Registration No from postion 3 to 12 the value should be same as the PAN No. %1.';
        PANErr : TextConst ENU='PAN No. must be entered in Company Information.',ENN='PAN No. must be entered in Company Information.';
        GSTCompyErr : TextConst Comment='%1 = GST Registration No.',ENU='Please delete the GST Registration No. %1 from Company Information.',ENN='Please delete the GST Registration No. %1 from Company Information.';
        GSTLocaErr : TextConst Comment='%1 = GST Registration No. , %2 = Location Code',ENU='Please delete the GST Registration No. %1 from Location %2.',ENN='Please delete the GST Registration No. %1 from Location %2.';

    [LineStart(62706)]
    procedure CheckGSTRegistrationNo(StateCode : Code[10];RegistrationNo : Code[15];PANNo : Code[20]);
    var
        State : Record State;
        Position : Integer;
    begin
        if RegistrationNo = '' then
          exit;
        if StrLen(RegistrationNo) <> 15 then
          Error(LengthErr);
        State.Get(StateCode);
        // Added by Vishnu Priya on 11-09-2020
        
        /*IF (StateCode = 'D&D') AND NOT(COPYSTR(RegistrationNo,1,2) IN ['25','26']) THEN
          ERROR(StateCodeErr,StateCode,State."State Code (GST Reg. No.)")
        ELSE
        BEGIN*/
        /*
        IF  (State."State Code (GST Reg. No.)" <> COPYSTR(RegistrationNo,1,2)) THEN
          ERROR(StateCodeErr,StateCode,State."State Code (GST Reg. No.)");
        IF PANNo <> '' THEN
          IF PANNo <> COPYSTR(RegistrationNo,3,10) THEN
            ERROR(SamePanErr,PANNo);
        *///Commented by durga
        for Position := 3 to 15 do
          case Position of
            3..7,12:
              CheckIsAlphabet(RegistrationNo,Position);
            8..11:
              CheckIsNumeric(RegistrationNo,Position);
            13:
              CheckIsAlphaNumeric(RegistrationNo,Position);
            14:
              CheckForZValue(RegistrationNo,Position);
            15:
              CheckIsAlphaNumeric(RegistrationNo,Position)
          end;

    end;

    [LineStart(62739)]
    local procedure CheckIsAlphabet(RegistrationNo : Code[15];Position : Integer);
    begin
        if not (CopyStr(RegistrationNo,Position,1) in ['A'..'Z']) then
          Error(OnlyAlphabetErr,Position);
    end;

    [LineStart(62743)]
    local procedure CheckIsNumeric(RegistrationNo : Code[15];Position : Integer);
    begin
        if not (CopyStr(RegistrationNo,Position,1) in ['0'..'9']) then
          Error(OnlyNumericErr,Position);
    end;

    [LineStart(62747)]
    local procedure CheckIsAlphaNumeric(RegistrationNo : Code[15];Position : Integer);
    begin
        if not ((CopyStr(RegistrationNo,Position,1) in ['0'..'9']) or (CopyStr(RegistrationNo,Position,1) in ['A'..'Z']) )then
          Error(OnlyAlphaNumericErr,Position);
    end;

    [LineStart(62751)]
    local procedure CheckForZValue(RegistrationNo : Code[15];Position : Integer);
    begin
        if not (CopyStr(RegistrationNo,Position,1) in ['Z']) then
          Error(OnlyZErr,Position);
    end;

    [LineStart(62755)]
    local procedure CheckDependentDataInCompanyAndLocation();
    var
        CompanyInformation : Record "Company Information";
        Location : Record Location;
    begin
        /*CompanyInformation.GET;
        IF CompanyInformation."GST Registration No." = Code THEN
          ERROR(GSTCompyErr,Code);
        
        Location.SETRANGE("GST Registration No.",Code);
        IF Location.FINDFIRST THEN
          ERROR(GSTLocaErr,Code,Location.Code);*/

    end;

    [LineStart(62764)]
    local procedure CheckDependentDataInCompanyAndLocationAtEditing();
    var
        CompanyInformation : Record "Company Information";
        Location : Record Location;
    begin
        /*CompanyInformation.GET;
        IF CompanyInformation."GST Registration No." <> '' THEN
          IF CompanyInformation."GST Registration No." = xRec.Code THEN
            ERROR(GSTCompyErr,xRec.Code);
        
        Location.SETRANGE("GST Registration No.",xRec.Code);
        IF Location.FINDFIRST THEN
          IF Location."GST Registration No." <> '' THEN
            IF Location."GST Registration No." = xRec.Code THEN
              ERROR(GSTLocaErr,xRec.Code,Location.Code);*/

    end;
}


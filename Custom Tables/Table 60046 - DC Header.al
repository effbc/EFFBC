table 60046 "DC Header"
{
    // version B2B1.0,Rev01

    LookupPageID = 60067;

    fields
    {
        field(1;"No.";Code[20])
        {

            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                  GetInvtSetup;
                 // NoSeriesMgt.TestManual(InvtSetup."DC Nos.");
                  "No. Series" := '';
                end;
            end;
        }
        field(3;"Document Date";Date)
        {
        }
        field(4;Type;Option)
        {
            OptionCaption = 'Customer,Vendor,Site';
            OptionMembers = Customer,Vendor,Site;
        }
        field(5;"Customer No.";Code[20])
        {
            TableRelation = IF (Type=CONST(Customer)) Customer
                            ELSE IF (Type=CONST(Vendor)) Vendor
                            ELSE IF (Type=CONST(Site)) Employee;

            trigger OnValidate();
            begin
                // Added by Pranavi on 28-Jan-2016 for LED Cards Process
                if Type=Type::Customer then
                begin
                  if CustmrGRec.Get(CustmrGRec."No.") then
                  begin
                    "Sell-to Customer Name" := CustmrGRec.Name;
                    "Sell-to Customer Name 2":= CustmrGRec."Name 2";
                    "Sell-to Address" := CustmrGRec.Address;
                    "Sell-to Address 2" := CustmrGRec."Address 2";
                    "Sell-to City" := CustmrGRec.City;
                    "Sell-to Contact" := CustmrGRec.Contact;
                    "Sell-to Post Code" := CustmrGRec."Post Code";
                    "Sell-to Country Code" := CustmrGRec.County;
                    "Ship-to Code" := CustmrGRec."No.";
                    "Ship-to Name" := CustmrGRec.Name;
                    "Ship-to Name 2" := CustmrGRec."Name 2";
                    "Ship-to Address" := CustmrGRec.Address;
                    "Ship-to Address 2" := CustmrGRec."Address 2";
                    "Ship-to City" := CustmrGRec.City;
                    "Ship-to Contact" := CustmrGRec.Contact;
                    "Ship-to Post Code" := CustmrGRec."Post Code";
                    "Ship-to Country Code" := CustmrGRec.County;
                  end;
                end;
                // End by Pranavi
            end;
        }
        field(6;"Sales Order No.";Code[20])
        {
            TableRelation = "Sales Header"."No." WHERE ("Document Type"=CONST(Order),
                                                        "Sell-to Customer No."=FIELD("Customer No."));

            trigger OnValidate();
            begin
                if SalesHeader.Get(SalesHeader."Document Type" :: Order,"Sales Order No.") then begin
                  "Sell-to Customer Name" := SalesHeader."Sell-to Customer Name";
                  "Sell-to Customer Name 2":= SalesHeader."Sell-to Customer Name 2";
                  "Sell-to Address" := SalesHeader."Sell-to Address";
                  "Sell-to Address 2" := SalesHeader."Sell-to Address 2";
                  "Sell-to City" := SalesHeader."Sell-to City";
                  "Sell-to Contact" := SalesHeader."Sell-to Contact";
                  "Sell-to Post Code" := SalesHeader."Sell-to Post Code";
                  "Sell-to Country Code" := SalesHeader."Sell-to Country/Region Code";
                  "Ship-to Code" := SalesHeader."Ship-to Code";
                  "Ship-to Name" := SalesHeader."Ship-to Name";
                  "Ship-to Name 2" := SalesHeader."Ship-to Name 2";
                  "Ship-to Address" := SalesHeader."Ship-to Address";
                  "Ship-to Address 2" := SalesHeader."Ship-to Address 2";
                  "Ship-to City" := SalesHeader."Ship-to City";
                  "Ship-to Contact" := SalesHeader."Ship-to Contact";
                  "Ship-to Post Code" := SalesHeader."Ship-to Post Code";
                  "Ship-to Country Code" := SalesHeader."Ship-to Country/Region Code";
                end;
            end;
        }
        field(7;"L.R Number";Code[20])
        {
        }
        field(8;"Vehicle Number";Code[20])
        {
        }
        field(9;"User Id";Code[50])
        {
            Description = 'Rev01';
            TableRelation = User;
        }
        field(10;"Created Date";Date)
        {
            Editable = false;
        }
        field(11;Remarks;Text[250])
        {
        }
        field(15;Status;Option)
        {
            Editable = true;
            OptionMembers = Open,Released;
        }
        field(16;"Posted Shipment No.";Code[20])
        {
            TableRelation = "Sales Shipment Header" WHERE ("Sell-to Customer No."=FIELD("Customer No."));
        }
        field(17;"Received By";Text[30])
        {
        }
        field(18;"Checked By";Text[30])
        {
        }
        field(19;"Prepared By";Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(20;"No. Series";Code[10])
        {
            TableRelation = "No. Series";
        }
        field(21;"Last Date Modified";Date)
        {
        }
        field(24;"Ship-to Code";Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No."=FIELD("Customer No."));

            trigger OnValidate();
            begin
                if "Ship-to Code" <> '' then begin
                  ShipToAddr.Get("Customer No.","Ship-to Code");
                  "Ship-to Name" := ShipToAddr.Name;
                  "Ship-to Name 2" := ShipToAddr."Name 2";
                  "Ship-to Address" := ShipToAddr.Address;
                  "Ship-to Address 2" := ShipToAddr."Address 2";
                  "Ship-to City" := ShipToAddr.City;
                  "Ship-to Post Code" := ShipToAddr."Post Code";
                  "Ship-to Country Code" := ShipToAddr."Country/Region Code";
                  "Ship-to Contact" := ShipToAddr.Contact;
                end;
            end;
        }
        field(25;"Ship-to Name";Text[30])
        {
            Caption = 'Ship-to Name';
        }
        field(26;"Ship-to Name 2";Text[30])
        {
            Caption = 'Ship-to Name 2';
        }
        field(27;"Ship-to Address";Text[30])
        {
            Caption = 'Ship-to Address';
        }
        field(28;"Ship-to Address 2";Text[30])
        {
            Caption = 'Ship-to Address 2';
        }
        field(29;"Ship-to City";Text[30])
        {
            Caption = 'Ship-to City';

            trigger OnLookup();
            begin
                /*PostCode.LookUpCity("Ship-to City","Ship-to Post Code",TRUE);*///B2B

            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity("Ship-to City","Ship-to Post Code",County,"Ship-to Country Code",true);//B2B
            end;
        }
        field(30;"Ship-to Contact";Text[30])
        {
            Caption = 'Ship-to Contact';
        }
        field(35;"Customer P. O. No.";Code[80])
        {
        }
        field(36;"Customer P. O. Date";Date)
        {
        }
        field(79;"Sell-to Customer Name";Text[250])
        {
            Caption = 'Sell-to Customer Name';
        }
        field(80;"Sell-to Customer Name 2";Text[30])
        {
            Caption = 'Sell-to Customer Name 2';
        }
        field(81;"Sell-to Address";Text[30])
        {
            Caption = 'Sell-to Address';
        }
        field(82;"Sell-to Address 2";Text[30])
        {
            Caption = 'Sell-to Address 2';
        }
        field(83;"Sell-to City";Text[30])
        {
            Caption = 'Sell-to City';

            trigger OnLookup();
            begin
                /*PostCode.LookUpCity("Sell-to City","Sell-to Post Code",TRUE);*///B2B

            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity("Sell-to City","Sell-to Post Code",County,"Sell-to Country Code",true);//B2b
            end;
        }
        field(84;"Sell-to Contact";Text[30])
        {
            Caption = 'Sell-to Contact';
        }
        field(88;"Sell-to Post Code";Code[20])
        {
            Caption = 'Sell-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            begin
                /*PostCode.LookUpPostCode("Sell-to City","Sell-to Post Code",TRUE);*///b2B

            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode("Sell-to City","Sell-to Post Code",County,"Sell-to Country Code",true);//B2B
            end;
        }
        field(90;"Sell-to Country Code";Code[10])
        {
            Caption = 'Sell-to Country Code';
            TableRelation = "Country/Region";

            trigger OnValidate();
            begin
                Validate("Ship-to Country Code");
            end;
        }
        field(91;"Ship-to Post Code";Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            begin
                /*PostCode.LookUpPostCode("Ship-to City","Ship-to Post Code",TRUE);*/

            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode("Ship-to City","Ship-to Post Code",County,"Ship-to Country Code",true);//B2B
            end;
        }
        field(93;"Ship-to Country Code";Code[10])
        {
            Caption = 'Ship-to Country Code';
            TableRelation = "Country/Region";
        }
        field(95;"No.of Packages";Code[10])
        {
        }
        field(96;"Package No's";Code[20])
        {
        }
        field(97;"Service Order No.";Code[20])
        {
            Description = 'VTIP-FDESP';
            TableRelation = "Service Header"."No." WHERE ("Document Type"=CONST(Order),
                                                          "Customer No."=FIELD("Customer No."));

            trigger OnValidate();
            begin
                if ServiceHeader.Get(ServiceHeader."Document Type" :: Order,"Service Order No.") then begin
                  "Sell-to Customer Name" := ServiceHeader."Bill-to City";
                  "Sell-to Customer Name 2":= ServiceHeader."Bill-to Contact";
                  "Sell-to Address" := ServiceHeader."Your Reference";
                  "Sell-to Address 2" := ServiceHeader."Ship-to Code";
                  "Sell-to City" := ServiceHeader."Ship-to Name";
                  "Sell-to Contact" := ServiceHeader."Language Code";
                  "Sell-to Post Code" := ServiceHeader."Ship-to Name 2";
                  "Sell-to Country Code" := ServiceHeader."Bill-to County";
                  "Ship-to Code" := ServiceHeader."Ship-to Code";
                  "Ship-to Name" := ServiceHeader."Ship-to Name";
                  "Ship-to Name 2" := ServiceHeader.County;
                  "Ship-to Address" := ServiceHeader."Ship-to Address";
                  "Ship-to Address 2" := ServiceHeader."Ship-to Address 2";
                  "Ship-to City" := ServiceHeader."Ship-to City";
                  "Ship-to Contact" := ServiceHeader."Ship-to Contact";
                  "Ship-to Post Code" := ServiceHeader."Applies-to Doc. No.";
                  "Ship-to Country Code" := ServiceHeader."Country/Region Code";
                end;
            end;
        }
        field(60100;Reciver;Code[50])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";

            trigger OnValidate();
            begin
                 user.Reset;
                 user.SetFilter(user."User Name",Reciver);
                 if user.FindFirst then begin
                    "Reciver Name":=user."User Name";// Changed User."Name" to User."User Name" B2B
                    Modify;
                 end;
            end;
        }
        field(60101;"Reciver Name";Text[30])
        {
        }
        field(60102;Receptionist;Code[50])
        {
            Description = 'Rev01';
            TableRelation = User."User Name" WHERE (Dept=FILTER('GAD'));

            trigger OnValidate();
            begin
                 user.Reset;
                 user.SetFilter(user."User Name",Receptionist);
                 if user.FindFirst then begin
                   "Receptionist Name":=user."User Name";//B2B
                   Modify;
                 end;
            end;
        }
        field(60103;"Receptionist Name";Text[30])
        {
        }
        field(60104;Indented;Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name" WHERE (levels=FILTER(true),
                                                    Dept=FILTER('CSA'));

            trigger OnLookup();
            begin
                user.Reset;
                user.SetRange(levels,true);
                if PAGE.RunModal(9800,user) = ACTION:: LookupOK then begin
                 Indented := user."User Name";
                "Indented Name":=user."Full Name";//B2B
                end;
            end;

            trigger OnValidate();
            begin
                 user.Reset;
                 user.SetFilter(user."User Name",Indented) ;
                 if user.FindFirst then begin

                   "Indented Name":=user."User Name";//B2B
                    Modify;
                 end;
            end;
        }
        field(60105;"Indented Name";Text[30])
        {
        }
        field(60106;StoreIncharge;Code[50])
        {
            Description = 'Rev01';
            Editable = false;

            trigger OnLookup();
            begin
                user.Reset;
                user.SetFilter(Dept,'%1|%2','STR','GAD');
                if PAGE.RunModal(9800,user) = ACTION:: LookupOK then begin
                 StoreIncharge := user."User Name";
                 "StoreIncharge Name":=user."Full Name";//B2B
                end;
            end;

            trigger OnValidate();
            begin
                 user.Reset;
                 user.SetFilter(user."User Name",StoreIncharge);
                 if user.FindFirst then begin

                  "StoreIncharge Name":=user."User Name";//B2B
                   Modify;
                 end;
            end;
        }
        field(60107;"StoreIncharge Name";Text[30])
        {
        }
        field(60108;Returnable;Boolean)
        {
        }
        field(60109;NonReturnable;Boolean)
        {

            trigger OnValidate();
            begin
                // Added by Pranavi on 12-Aug-2016
                DCL1.Reset;
                DCL1.SetRange(DCL1."Document No.","No.");
                if DCL1.FindSet then
                  DCL1.ModifyAll(DCL1."Non-Returnable",NonReturnable);
                // End by Pranavi
            end;
        }
        field(60110;"From Date";Date)
        {
        }
        field(60111;"To Date";Date)
        {
        }
        field(60112;SessionCode;Code[10])
        {
            TableRelation = Location;
        }
        field(60113;"Mode Of Transport";Text[30])
        {
        }
        field(60114;"Location Code";Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code"=CONST('LOCATIONS'));

            trigger OnValidate();
            begin
                "Dimension Value".SetRange("Dimension Value"."Dimension Code",'LOCATIONS');
                "Dimension Value".SetRange("Dimension Value".Code,"Location Code");
                if "Dimension Value".Find('-') then
                  "Location Name":="Dimension Value".Name;
            end;
        }
        field(60115;"Location Name";Text[50])
        {
        }
        field(60116;Charges;Decimal)
        {
        }
        field(60117;sendmail;Boolean)
        {
        }
        field(60118;Authorized;Code[50])
        {
        }
        field(60119;"Authorized name";Text[30])
        {
        }
        field(60120;"Request no";Code[20])
        {
        }
        field(60121;Returned;Boolean)
        {

            trigger OnValidate();
            begin
                if NonReturnable then
                  Error('All the material in DC are No-Returnable!');
                
                DCL.Reset;
                DCL.SetFilter(DCL."Document No.","No.");
                DCL.SetFilter(DCL.Returned,'NO');
                DCL.SetFilter(DCL."Non-Returnable",'NO');
                if DCL.FindFirst then
                repeat
                /*
                  MIH.RESET;
                  MIH.SETFILTER(MIH."No.",DCL."Request no");
                  IF MIH.FINDFIRST THEN
                  BEGIN
                    IF MIH.Status<> Status::Open THEN
                    BEGIN
                      MIH.Status:=Status::Open;
                      MODIFY;
                    END;
                    MIL.RESET;
                    MIL.SETFILTER(MIL."Document No.",DCL."Request no");
                    MIL.SETFILTER(MIL."Non-Returnable",'NO');
                    IF MIL.FINDSET THEN
                    REPEAT
                    //  MIL.DELETEALL;
                    UNTIL MIL.NEXT=0;
                    MIL.RESET;
                    MIL.SETFILTER(MIL."Document No.","Request no");
                    IF MIL.COUNT=0 THEN
                    BEGIN
                    //  MIH.DELETE
                    END
                    ELSE
                    BEGIN
                      MIH.Status:=Status::Released;
                      MODIFY;
                      MIH."Posting Date":=TODAY;
                      CODEUNIT.RUN(60011,MIH);
                    END;
                  END;
                  MITH.RESET;
                  MITH.SETFILTER(MITH."Order No.",DCL."Request no");
                  MITH.SETFILTER(MITH."Item No.",DCL."No.");
                  IF MITH.FINDSET THEN
                  BEGIN
                  //  MITH.DELETEALL;
                  END;
                */
                  DCL.Returned := true;
                  DCL."Returned Date" := Today();
                  DCL.Modify(true);
                until DCL.Next=0;
                "Returned Date" := Today();

            end;
        }
        field(60122;"Docket No";Text[30])
        {
        }
        field(60123;"Tracking Status";Text[250])
        {
        }
        field(60124;"Tracking Status Last Updated";DateTime)
        {
        }
        field(60125;"Tracking URL";Text[250])
        {
            ExtendedDatatype = URL;
        }
        field(60126;"Courier Agency Name";Text[80])
        {
        }
        field(60127;"Returned Date";Date)
        {
        }
        field(60128;ModOfTrnsprt;Option)
        {
            OptionMembers = " ",Courier,Bus,Vehicle,"By Hand",Train,Lorry,Truck,VRL,ANL,Auto;
        }
        field(60129;"Doc Number entered";Text[50])
        {
            Description = 'added by vishnu priya on 23-01-2020';
        }
        field(60130;"Mode Entered";Text[100])
        {
            Description = 'added by Vishnu Priya on 23-01-2020';
        }
    }

    keys
    {
        key(Key1;"No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestField(Status,Status::Open);
    end;

    trigger OnInsert();
    begin
        //"Due Date":=today;
        InvtSetup.Get;

        if "No." = '' then begin
          TestNoSeries;
          NoSeriesMgt.InitSeries(InvtSetup."DC Nos.",xRec."No. Series",Today,"No.",xRec."No. Series");
          // NoSeriesMgt.TestManual(InvtSetup."DC Nos.");

        YearValue := CopyStr(Format(Date2DMY(WorkDate,3)),3,2);

        case  Date2DMY(Today,2) of
          1:begin
              Month:='JAN';
            end;
          2:begin
              Month:='FEB';
            end;
          3:begin
              Month:='MAR';
            end;
          4:begin
              Month:='APR';
            end;
          5:begin
              Month:='MAY';
            end;
          6:begin
              Month:='JUN';
          end;
          7:begin
              Month:='JUL';
            end;
          8:begin
              Month:='AUG';
            end;
          9:begin
              Month:='SEP';
            end;
          10:begin
              Month:='OCt';
            end;
          11:begin
              Month:='NOV';
            end;
          12:begin
              Month:='DEC';
             end;
        end;

          Selection := StrMenu(Text000,1);
          if Selection = 0 then     // Added by Pranavi on 17-Aug-2016
            Error('You Must Select Any one of STR,CS STR, R&D STR!');
          case Selection of
            1:  "Outward No.":='STR/DC/'+Month+'/'+YearValue+'/*';

            2:  "Outward No.":='RND/DC/'+Month+'/'+YearValue+'/*';

            3:  "Outward No.":='CUS/DR/'+Month+'/'+YearValue+'/*';

            4:  "Outward No.":='LMD/DC/'+Month+'/'+YearValue+'/*';
          end;
          DCH.Reset;
          DCH.SetFilter(DCH."No.","Outward No.");
          if DCH.FindLast then
          begin
            "Outward No.":=IncStr(CopyStr(DCH."No.",15,17));
            case Selection of
              1:  "Outward No.":='STR/DC/'+Month+'/'+YearValue+'/'+"Outward No.";

              2:  "Outward No.":='RND/DC/'+Month+'/'+YearValue+'/'+"Outward No.";

              3:  "Outward No.":='CUS/DR/'+Month+'/'+YearValue+'/'+"Outward No.";

              4:  "Outward No.":='LMD/DC/'+Month+'/'+YearValue+'/'+"Outward No.";
            end;
          end
          else
          begin
            case Selection of
              1:  "Outward No.":='STR/DC/'+Month+'/'+YearValue+'/001';

              2:  "Outward No.":='RND/DC/'+Month+'/'+YearValue+'/001';

              3:  "Outward No.":='CUS/DR/'+Month+'/'+YearValue+'/001';

              4:  "Outward No.":='LMD/DC/'+Month+'/'+YearValue+'/001';
            end;
          end;

          if Selection in [1,2,3,4] then
          begin
            "No.":= "Outward No.";
            "User Id":=UserId;
            Reciver:=UserId;
            "Created Date":=Today;
            "From Date":=Today;
          end;
          if Selection=1 then
            StoreIncharge:= 'EFFTRONICS\TUALSI';
          if Selection=2 then
            StoreIncharge:= 'EFFTRONICS\TUALSI';
          if Selection=3 then
            StoreIncharge:= 'EFFTRONICS\TUALSI';
          if Selection=4 then
            StoreIncharge:= 'EFFTRONICS\TUALSI';


          user.Reset;
          user.SetFilter(user."User Name",StoreIncharge);// Changed User."User Id" to User."User Security ID" B2B
          if user.FindFirst then
             "StoreIncharge Name":=user."Full Name";// Changed User."Name" to User."User Name" B2B

          user.Reset;
          user.SetFilter(user."User Security ID",UserSecurityId);// Changed User."User Id" to User."User Security ID" B2B
          if user.FindFirst then
             "Reciver Name":=user."Full Name";// Changed User."Name" to User."User Name" B2B;

        end;
    end;

    var
        InvtSetup : Record "Inventory Setup";
        SalesHeader : Record "Sales Header";
        ShipToAddr : Record "Ship-to Address";
        NoSeriesMgt : Codeunit NoSeriesManagement;
        HasInvtSetup : Boolean;
        PostCode : Record "Post Code";
        ServiceHeader : Record "Service Header";
        user : Record User;
        "Dimension Value" : Record "Dimension Value";
        MIH : Record "Material Issues Header";
        MIL : Record "Material Issues Line";
        DCL : Record "DC Line";
        MITH : Record "Mat.Issue Track. Specification";
        YearValue : Text[30];
        "Outward No." : Code[30];
        Month : Code[5];
        DCH : Record "DC Header";
        Selection : Integer;
        Text000 : Label '&Store,&RD_STR,&CS_STR,&LMD';
        County : Text[30];
        CustmrGRec : Record Customer;
        DCL1 : Record "DC Line";

    [LineStart(2649)]
    procedure AssistEdit() : Boolean;
    begin
        GetInvtSetup;
        InvtSetup.TestField("DC Nos.");
        if NoSeriesMgt.SelectSeries(InvtSetup."DC Nos.",xRec."No. Series","No. Series") then begin
          NoSeriesMgt.SetSeries("No.");
          exit(true);
        end;
    end;

    [LineStart(2657)]
    procedure GetInvtSetup();
    begin
        if not HasInvtSetup then begin
          InvtSetup.Get;
          HasInvtSetup := true;
        end;
    end;

    [LineStart(2663)]
    procedure TestNoSeries();
    begin
          InvtSetup.Get;
    end;

    [LineStart(2666)]
    procedure GetNoSeriesCode() : Code[10];
    begin
          InvtSetup.Get;
    end;
}


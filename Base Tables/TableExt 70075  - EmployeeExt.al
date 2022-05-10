tableextension 70075 EmployeeExt extends Employee
{
    // version NAVW19.00.00.50221

    fields
    {

        //Unsupported feature: Change Data type on ""Job Title"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on "City(Field 10)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 10)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Alt. Address Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change OptionString on "Gender(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Statistics Group Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cause of Inactivity Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 36)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 37)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Filter"(Field 42)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Filter"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Total Absence (Base)"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Absence (Base)"(Field 45)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Modified Date Time"(Field 54)". Please convert manually.


        //Unsupported feature: Change Editable on "Balance(Field 59)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""SWIFT Code"(Field 60)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Application Method"(Field 80)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          HumanResSetup.GET;
          NoSeriesMgt.TestManual(HumanResSetup."Employee Nos.");
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          HumanResSetup.Get;
          NoSeriesMgt.TestManual(HumanResSetup."Employee Nos.");
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Initials(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Search Name" = UPPERCASE(xRec.Initials)) OR ("Search Name" = '') THEN
          "Search Name" := Initials;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Search Name" = UpperCase(xRec.Initials)) or ("Search Name" = '') then
          "Search Name" := Initials;
        */
        //end;


        //Unsupported feature: CodeModification on ""Search Name"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Search Name" = '' THEN
          "Search Name" := SetSearchNameToFullnameAndInitials;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Search Name" = '' then
          "Search Name" := SetSearchNameToFullnameAndInitials;
        */
        //end;


        //Unsupported feature: CodeModification on "City(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on "Status(Field 31).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        EmployeeQualification.SETRANGE("Employee No.","No.");
        EmployeeQualification.MODIFYALL("Employee Status",Status);
        MODIFY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        EmployeeQualification.SetRange("Employee No.","No.");
        EmployeeQualification.ModifyAll("Employee Status",Status);
        Modify;
        */
        //end;


        //Unsupported feature: CodeModification on ""Resource No."(Field 38).OnValidate". Please convert manually.

        //trigger "(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Resource No." <> '') AND Res.WRITEPERMISSION THEN BEGIN
          CheckIfAnEmployeeIsLinkedToTheResource("Resource No.");
          EmployeeResUpdate.ResUpdate(Rec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Resource No." <> '') and Res.WritePermission then begin
          CheckIfAnEmployeeIsLinkedToTheResource("Resource No.");
          EmployeeResUpdate.ResUpdate(Rec);
        end;
        */
        //end;

        //Unsupported feature: PropertyDeletion on "Balance(Field 59)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""SWIFT Code"(Field 60)". Please convert manually.

        field(50010; "Job Title/Grade"; Code[10])
        {
            TableRelation = "Pay Grade"."Designation Code";
        }
        field(50011; "Department Code"; Code[20])
        {
        }
        field(50012; "Project Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = CONST('PROJECT'));
        }
        field(50013; "Location Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = CONST('AREA'));
        }
        field(50014; "Qualification Code"; Code[10])
        {
            TableRelation = Qualification;
        }
        field(50015; "Sanctioning Incharge"; Code[20])
        {
            TableRelation = Employee."No." WHERE("Leave Date" = CONST(0D));
        }
        field(50016; "Skill Code"; Code[10])
        {
            TableRelation = "Pay Skill".Code;
        }
        field(50017; "Branch Code"; Code[20])
        {
            Editable = false;
        }
        field(50019; "Marital Status"; Option)
        {
            OptionMembers = Single,Married,Divorced,Widowed;
        }
        field(50020; "Spouse Name"; Text[50])
        {
        }
        field(50021; "Marriage Date"; Date)
        {
        }
        field(50022; "No of Children"; Integer)
        {
            MinValue = 0;
        }
        field(50025; "Entitiled To Overtime"; Boolean)
        {
        }
        field(50026; "Entitlement to ESI"; Boolean)
        {
        }
        field(50027; "Entitlement to PF"; Boolean)
        {
        }
        field(50030; "Home Page"; Text[80])
        {
        }
        field(50032; "Driving License No"; Text[20])
        {
        }
        field(50033; "Valid Up To"; Date)
        {
        }
        field(50034; Place; Text[30])
        {
        }
        field(50038; "PAN No"; Code[20])
        {
        }
        field(50039; "ESI No"; Text[20])
        {
        }
        field(50040; "PF No"; Text[20])
        {
        }
        field(50041; "ESI Dispensary"; Text[50])
        {
        }
        field(50042; "Father/Husband"; Text[50])
        {
        }
        field(50043; "Blood Group"; Option)
        {
            OptionMembers = " ","A+","A-","B+","B-","AB+","AB-","O+","O-";
        }
        field(50045; "Salary Stopped"; Boolean)
        {
        }
        field(50046; Remarks; Text[50])
        {
        }
        field(50050; "Payment Method"; Option)
        {
            OptionMembers = Cash,Cheque,"Bank Transfer";
        }
        field(50051; "Bank Code"; Code[10])
        {
        }
        field(50052; "Bank Name"; Text[20])
        {
        }
        field(50053; "Bank Branch"; Text[20])
        {
        }
        field(50054; "Account Type"; Text[30])
        {
        }
        field(50055; "Account No"; Code[20])
        {
        }
        field(50060; "Department Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(50061; "Project Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(50062; "Location Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(50063; "Grade Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Pay Grade";
        }
        field(50064; "Pay Element Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Pay Elements";
        }
        field(50065; "Qualification Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Pay Holidays";
        }
        field(50066; MonthFilter; Integer)
        {
        }
        field(50067; YearFilter; Integer)
        {
        }
        field(50068; TypeFilter; Option)
        {
            OptionMembers = Addition,Deduction,Reimbursement;
        }
        field(50070; "Resignation Date"; Date)
        {
        }
        field(50071; "Leave Date"; Date)
        {
        }
        field(50072; "Confirmation Date"; Date)
        {
        }
        field(50075; "Increment Effective Date"; Option)
        {
            OptionMembers = ,"Date of Joining","Date of Confirmation";
        }
        field(50076; "Increment Month Interval"; Decimal)
        {
        }
        field(50077; "Latest Pay Revision Date"; Date)
        {
        }
        field(50078; "Latest Pay Effective Date"; Date)
        {
            Editable = false;
        }
        field(50079; "No Of Month For Confirmation"; Integer)
        {
        }
        field(50081; MonthlyEmolumentTotal; Decimal)
        {
            CalcFormula = Sum("Pay Employee Pay Details"."Payable Amount" WHERE("Employee No" = FIELD("Employee No. Filter"),
                                                                                 Year = FIELD(YearFilter),
                                                                                 Month = FIELD(MonthFilter),
                                                                                 Type = FIELD(TypeFilter)));
            FieldClass = FlowField;
        }
        field(50082; QualfiedForStatement217; Boolean)
        {
        }
        field(50083; QualfiedForStatement217AMT; Decimal)
        {
            Description = 'THIS FIELD IS USED IN STATEMENT REPORT JUST TO HOLD THE TOTAL ADDITION VALUE';
        }
        field(50085; DaysDifference; Integer)
        {
        }
        field(50089; "Status Tax"; Option)
        {
            OptionMembers = "Ordinarily Resident","Not Ordinarily Resident","Non Resident";
        }
        field(50090; "Eligible Ded 80U"; Boolean)
        {
        }
        field(50091; "TDS Amount"; Decimal)
        {
        }
        field(50092; "TDS Amount Actual"; Decimal)
        {
        }
        field(50093; "TDS Ded US"; Decimal)
        {
        }
        field(50095; Password; Text[10])
        {
        }
        field(50096; "Recorded By"; Text[30])
        {
            Editable = false;
        }
        field(50105; "Occupation Code"; Code[20])
        {
            TableRelation = "Pay Occupation Classification";
        }
        field(50111; "ECS Bank Code No."; Text[9])
        {
            Caption = 'ECS Bank Code No.';
        }
        field(50112; "ECS Bank Account Type"; Option)
        {
            Caption = 'ECS Bank Account Type';
            OptionMembers = Savings,Current,"Cash Credit";
        }
        field(50113; "ECS Bank Ledger No"; Text[30])
        {
            Caption = 'ECS Bank Ledger No';
        }
        field(50114; "Consent For Bulk Return"; Boolean)
        {
        }
        field(50115; "Consent For ECS"; Boolean)
        {
        }
        field(50116; "ECS Bank Account No."; Code[20])
        {
            Caption = 'ECS Bank Account No.';
        }
        field(50117; "ECS Bank Branch Name"; Text[30])
        {
            Caption = 'ECS Bank Branch Name';
        }
        field(50118; "ECS Bank Name"; Text[30])
        {
            Caption = 'ECS Bank Name';
        }
        field(50125; "Incentive %"; Decimal)
        {
        }
        field(50126; "Job Title Code"; Code[30])
        {
            TableRelation = "Job Titles"."Job Code";
        }
        field(50130; "PF Deduction on Actual Salary"; Boolean)
        {
            Caption = 'PF Deduction on Actual Salary';
        }
        field(50131; "EPF Deduction on Salary Amount"; Boolean)
        {
            Caption = 'Employee''s PF Deduction on Salary Amount';
        }
        field(50132; "VPF %"; Decimal)
        {
            MinValue = 0;

            trigger OnValidate();
            var
                Err001: Label 'Maximum limit defined in company policy is %1';
                Err002: Label 'Maximum limit for percentage value is 100';
            begin
            end;
        }
        field(50133; "VPF Amount"; Decimal)
        {
            MinValue = 0;

            trigger OnValidate();
            var
                Err003: Label 'Maximum limit defined in company policy is Rs %1';
                Err002: Label 'Negative values are not allowed';
            begin
            end;
        }
        field(50134; "PF Contribution Limit"; Decimal)
        {
            Caption = 'Employer''s PF Contribution Salary Limit';
            MinValue = 0;

            trigger OnValidate();
            var
                Err001: Label 'Payroll Processing Month Date not defined';
                Err002: Label 'PF Policy not defined for current payroll processing month date : %1';
                Err003: Label 'PF Contribution Limit cannot be less than Rs %1';
            begin
            end;
        }
        field(50135; "PF %"; Decimal)
        {
            MinValue = 0;

            trigger OnValidate();
            var
                Err001: Label 'Mininmum value is %1';
            begin
            end;
        }
        field(50140; "Salary Processed"; Boolean)
        {
            Description = 'Checking for Salary Processing for the Processing Month';
        }
        field(50145; "Salary Posted"; Boolean)
        {
            Description = 'Checking for Salary Posting for the Processing Month';
        }
        field(50146; "Requested TDS Amount"; Decimal)
        {
        }
        field(50147; "Employee Posting Group 2"; Code[10])
        {
            Caption = 'Employee Posting Group';
            TableRelation = Employee;
        }
        field(50148; "Employee Bus. Posting Group"; Code[10])
        {
            Caption = 'Employee Bus. Posting Group';
            TableRelation = "Pay Business Posting Group";
        }
        field(50149; "Balance 2"; Decimal)
        {
            CalcFormula = Sum("Detailed Employee Ledg. Entry".Amount WHERE("Employee No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(50150; "Balance (LCY)"; Decimal)
        {
            CalcFormula = Sum("Detailed Employee Ledg. Entry"."Amount (LCY)" WHERE("Employee No." = FIELD("No.")));
            Caption = 'Balance (LCY)';
            FieldClass = FlowField;
        }
        field(50151; "Net Change"; Decimal)
        {
            CalcFormula = - Sum("Detailed Employee Ledg. Entry".Amount WHERE("Employee No." = FIELD("No."),
                                                                             "Posting Date" = FIELD("Date Filter")));
            Caption = 'Net Change';
            FieldClass = FlowField;
        }
        field(50152; "Net Change (LCY)"; Decimal)
        {
            CalcFormula = - Sum("Detailed Employee Ledg. Entry"."Amount (LCY)" WHERE("Employee No." = FIELD("No."),
                                                                                     "Posting Date" = FIELD("Date Filter")));
            Caption = 'Net Change (LCY)';
            FieldClass = FlowField;
        }
        field(50153; "Balance Due"; Decimal)
        {
            CalcFormula = - Sum("Detailed Employee Ledg. Entry".Amount WHERE("Employee No." = FIELD("No."),
                                                                             "Initial Entry Due Date" = FIELD("Date Filter"),
                                                                             "Posting Date" = FIELD("Date Filter")));
            Caption = 'Balance Due';
            FieldClass = FlowField;
        }
        field(50154; "Balance Due (LCY)"; Decimal)
        {
            CalcFormula = - Sum("Detailed Employee Ledg. Entry"."Amount (LCY)" WHERE("Employee No." = FIELD("No."),
                                                                                     "Initial Entry Due Date" = FIELD("Date Filter"),
                                                                                     "Posting Date" = FIELD("Date Filter")));
            Caption = 'Balance Due (LCY)';
            FieldClass = FlowField;
        }
        field(50155; Payments; Decimal)
        {
            Caption = 'Payments';
        }
        field(50156; Signature; BLOB)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Union Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Emplymt. Contract Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Last Name,First Name,Middle Name"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; Status, "Union Code")
        {
        }
        key(Key4; Status, "Emplymt. Contract Code")
        {
        }
        key(Key5; "Last Name", "First Name", "Middle Name")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    AlternativeAddr.SETRANGE("Employee No.","No.");
    AlternativeAddr.DELETEALL;

    EmployeeQualification.SETRANGE("Employee No.","No.");
    EmployeeQualification.DELETEALL;

    Relative.SETRANGE("Employee No.","No.");
    Relative.DELETEALL;

    EmployeeAbsence.SETRANGE("Employee No.","No.");
    EmployeeAbsence.DELETEALL;

    MiscArticleInformation.SETRANGE("Employee No.","No.");
    MiscArticleInformation.DELETEALL;

    ConfidentialInformation.SETRANGE("Employee No.","No.");
    ConfidentialInformation.DELETEALL;

    HumanResComment.SETRANGE("No.","No.");
    HumanResComment.DELETEALL;

    DimMgt.DeleteDefaultDim(DATABASE::Employee,"No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    AlternativeAddr.SetRange("Employee No.","No.");
    AlternativeAddr.DeleteAll;

    EmployeeQualification.SetRange("Employee No.","No.");
    EmployeeQualification.DeleteAll;

    Relative.SetRange("Employee No.","No.");
    Relative.DeleteAll;

    EmployeeAbsence.SetRange("Employee No.","No.");
    EmployeeAbsence.DeleteAll;

    MiscArticleInformation.SetRange("Employee No.","No.");
    MiscArticleInformation.DeleteAll;
    {
    ConfidentialInformation.SETRANGE("Employee No.","No.");
    ConfidentialInformation.DELETEALL;
    }//B2B Commented
    HumanResComment.SetRange("No.","No.");
    HumanResComment.DeleteAll;

    DimMgt.DeleteDefaultDim(DATABASE::Employee,"No.");
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified Date Time" := CURRENTDATETIME;
    HumanResSetup.GET;
    IF "No." = '' THEN BEGIN
      HumanResSetup.TESTFIELD("Employee Nos.");
      NoSeriesMgt.InitSeries(HumanResSetup."Employee Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;
    IF HumanResSetup."Automatically Create Resource" THEN BEGIN
      ResourcesSetup.GET;
      Resource.INIT;
      IF NoSeriesMgt.ManualNoAllowed(ResourcesSetup."Resource Nos.") THEN BEGIN
        Resource."No." := "No.";
        Resource.INSERT(TRUE);
      END ELSE
        Resource.INSERT(TRUE);
      "Resource No." := Resource."No.";
    END;

    DimMgt.UpdateDefaultDim(
      DATABASE::Employee,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    UpdateSearchName;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified Date Time" := CurrentDateTime;
    HumanResSetup.Get;
    if "No." = '' then begin
      HumanResSetup.TestField("Employee Nos.");
      NoSeriesMgt.InitSeries(HumanResSetup."Employee Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;
    //IF HumanResSetup."Automatically Create Resource" THEN BEGIN
      ResourcesSetup.Get;
      Resource.Init;
      if NoSeriesMgt.ManualNoAllowed(ResourcesSetup."Resource Nos.") then begin
        Resource."No." := "No.";
        Resource.Insert(true);
      end else
        Resource.Insert(true);
      "Resource No." := Resource."No.";
    #17..21
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified Date Time" := CURRENTDATETIME;
    "Last Date Modified" := TODAY;
    IF Res.READPERMISSION THEN
      EmployeeResUpdate.HumanResToRes(xRec,Rec);
    IF SalespersonPurchaser.READPERMISSION THEN
      EmployeeSalespersonUpdate.HumanResToSalesPerson(xRec,Rec);
    UpdateSearchName;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Modified Date Time" := CurrentDateTime;
    "Last Date Modified" := Today;
    if Res.ReadPermission then
      EmployeeResUpdate.HumanResToRes(xRec,Rec);
    if SalespersonPurchaser.ReadPermission then
      EmployeeSalespersonUpdate.HumanResToSalesPerson(xRec,Rec);
    UpdateSearchName;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DimMgt.RenameDefaultDim(DATABASE::Employee,xRec."No.","No.");
    "Last Modified Date Time" := CURRENTDATETIME;
    "Last Date Modified" := TODAY;
    UpdateSearchName;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    DimMgt.RenameDefaultDim(DATABASE::Employee,xRec."No.","No.");
    "Last Modified Date Time" := CurrentDateTime;
    "Last Date Modified" := Today;
    UpdateSearchName;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 15).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company E-Mail"(Field 50).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IBAN(Field 58).OnValidate.CompanyInfo(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IBAN : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IBAN : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.ResourcesSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.ResourcesSetup : 314;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.ResourcesSetup : "Resources Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.Resource(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.Resource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.Resource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIfAnEmployeeIsLinkedToTheResource(PROCEDURE 10).Employee(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIfAnEmployeeIsLinkedToTheResource : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIfAnEmployeeIsLinkedToTheResource : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HumanResSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HumanResSetup : 5218;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HumanResSetup : "Human Resources Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Res(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Res : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Res : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AlternativeAddr(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AlternativeAddr : 5201;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AlternativeAddr : "Alternative Address";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmployeeQualification(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmployeeQualification : 5203;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmployeeQualification : "Employee Qualification";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Relative(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Relative : 5205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Relative : "Employee Relative";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmployeeAbsence(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmployeeAbsence : 5207;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmployeeAbsence : "Employee Absence";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MiscArticleInformation(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MiscArticleInformation : 5214;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MiscArticleInformation : "Misc. Article Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfidentialInformation(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfidentialInformation : 5216;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfidentialInformation : "Confidential Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HumanResComment(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HumanResComment : 5208;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HumanResComment : "Human Resource Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalespersonPurchaser(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalespersonPurchaser : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalespersonPurchaser : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmployeeResUpdate(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmployeeResUpdate : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmployeeResUpdate : "Employee/Resource Update";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmployeeSalespersonUpdate(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmployeeSalespersonUpdate : 5201;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmployeeSalespersonUpdate : "Employee/Salesperson Update";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}


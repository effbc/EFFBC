table 16503 "Batch Header"
{
    // version NAVIN9.00.00.50221

    CaptionML = ENU='Batch Header',
                ENN='Batch Header';

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Financial Year";Code[6])
        {
            CaptionML = ENU='Financial Year',
                        ENN='Financial Year';
        }
        field(3;"Assessment Year";Code[6])
        {
            CaptionML = ENU='Assessment Year',
                        ENN='Assessment Year';
        }
        field(4;Quarter;Option)
        {
            CaptionML = ENU='Quarter',
                        ENN='Quarter';
            OptionCaptionML = ENU=' ,Q1,Q2,Q3,Q4',
                              ENN=' ,Q1,Q2,Q3,Q4';
            OptionMembers = " ",Q1,Q2,Q3,Q4;
        }
        field(5;"Form No.";Option)
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
            OptionCaptionML = ENU='26Q,27Q',
                              ENN='26Q,27Q';
            OptionMembers = "26Q","27Q";
        }
        field(6;"Transaction Type";Text[4])
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
        }
        field(7;"Batch Updation Indicator";Integer)
        {
            CaptionML = ENU='Batch Updation Indicator',
                        ENN='Batch Updation Indicator';
        }
        field(8;"Deductor Name";Text[75])
        {
            CaptionML = ENU='Deductor Name',
                        ENN='Deductor Name';
        }
        field(9;"Deductor Branch/Division";Text[75])
        {
            CaptionML = ENU='Deductor Branch/Division',
                        ENN='Deductor Branch/Division';
        }
        field(10;"Deductor T.A.N. No.";Code[20])
        {
            CaptionML = ENU='Deductor T.A.N. No.',
                        ENN='Deductor T.A.N. No.';
        }
        field(11;"Deductor Address";Text[50])
        {
            CaptionML = ENU='Deductor Address',
                        ENN='Deductor Address';
        }
        field(12;"Deductor Address 2";Text[50])
        {
            CaptionML = ENU='Deductor Address 2',
                        ENN='Deductor Address 2';
        }
        field(13;"Deductor Address 3";Text[50])
        {
            CaptionML = ENU='Deductor Address 3',
                        ENN='Deductor Address 3';
        }
        field(14;"Deductor Address 4";Text[50])
        {
            CaptionML = ENU='Deductor Address 4',
                        ENN='Deductor Address 4';
        }
        field(15;"Deductor Address 5";Text[50])
        {
            CaptionML = ENU='Deductor Address 5',
                        ENN='Deductor Address 5';
        }
        field(16;"Deductor State";Code[2])
        {
            CaptionML = ENU='Deductor State',
                        ENN='Deductor State';
            ValuesAllowed = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,99;
        }
        field(17;"Deductor Post Code";Code[10])
        {
            CaptionML = ENU='Deductor Post Code',
                        ENN='Deductor Post Code';
        }
        field(18;"Deductor E-Mail";Text[75])
        {
            CaptionML = ENU='Deductor E-Mail',
                        ENN='Deductor E-Mail';
            ExtendedDatatype = EMail;
        }
        field(19;"Deductor Phone No.";Code[20])
        {
            CaptionML = ENU='Deductor Phone No.',
                        ENN='Deductor Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(20;"Deductor STD Code";Code[10])
        {
            CaptionML = ENU='Deductor STD Code',
                        ENN='Deductor STD Code';
        }
        field(21;"Change of Add of Deductor";Boolean)
        {
            CaptionML = ENU='Change of Add of Deductor',
                        ENN='Change of Add of Deductor';
        }
        field(22;"Deductor Category";Code[1])
        {
            CaptionML = ENU='Deductor Category',
                        ENN='Deductor Category';
        }
        field(23;"Deductor P.A.N. No.";Code[20])
        {
            CaptionML = ENU='Deductor P.A.N. No.',
                        ENN='Deductor P.A.N. No.';
        }
        field(24;"Responsible Person Name";Text[75])
        {
            CaptionML = ENU='Responsible Person Name',
                        ENN='Responsible Person Name';
        }
        field(25;"Responsible Person Address";Text[50])
        {
            CaptionML = ENU='Responsible Person Address',
                        ENN='Responsible Person Address';
        }
        field(26;"Responsible Person Address 2";Text[50])
        {
            CaptionML = ENU='Responsible Person Address 2',
                        ENN='Responsible Person Address 2';
        }
        field(27;"Responsible Person Address 3";Text[50])
        {
            CaptionML = ENU='Responsible Person Address 3',
                        ENN='Responsible Person Address 3';
        }
        field(28;"Responsible Person Address 4";Text[50])
        {
            CaptionML = ENU='Responsible Person Address 4',
                        ENN='Responsible Person Address 4';
        }
        field(29;"Responsible Person Address 5";Text[50])
        {
            CaptionML = ENU='Responsible Person Address 5',
                        ENN='Responsible Person Address 5';
        }
        field(30;"Responsible Person State";Code[2])
        {
            CaptionML = ENU='Responsible Person State',
                        ENN='Responsible Person State';
            ValuesAllowed = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,99;
        }
        field(31;"Responsible Person Post Code";Code[10])
        {
            CaptionML = ENU='Responsible Person Post Code',
                        ENN='Responsible Person Post Code';
        }
        field(32;"Responsible Person E-Mail";Text[75])
        {
            CaptionML = ENU='Responsible Person E-Mail',
                        ENN='Responsible Person E-Mail';
            ExtendedDatatype = EMail;
        }
        field(33;"Responsible Person Designation";Text[20])
        {
            CaptionML = ENU='Responsible Person Designation',
                        ENN='Responsible Person Designation';
        }
        field(34;"Responsible Person STD Code";Code[20])
        {
            CaptionML = ENU='Responsible Person STD Code',
                        ENN='Responsible Person STD Code';
        }
        field(35;"Responsible Person Phone No.";Code[20])
        {
            CaptionML = ENU='Responsible Person Phone No.',
                        ENN='Responsible Person Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(36;"Responsible person Add Change";Boolean)
        {
            CaptionML = ENU='Responsible person Add Change',
                        ENN='Responsible person Add Change';
        }
        field(37;"AO Approval";Text[1])
        {
            CaptionML = ENU='AO Approval',
                        ENN='AO Approval';
        }
        field(38;"Original RRR No.";Code[20])
        {
            CaptionML = ENU='Original RRR No.',
                        ENN='Original RRR No.';
        }
        field(39;"Previous RRR No.";Code[20])
        {
            CaptionML = ENU='Previous RRR No.',
                        ENN='Previous RRR No.';
            TableRelation = "Provisional Receipt No." WHERE (Quarter=FIELD(Quarter),
                                                             "Financial Year"=FIELD("Financial Year"));
        }
        field(40;"Deductor Last TAN";Code[20])
        {
            CaptionML = ENU='Deductor Last TAN',
                        ENN='Deductor Last TAN';
        }
        field(41;"Batch Tot-Deposit Amt/Challan";Decimal)
        {
            CaptionML = ENU='Batch Tot-Deposit Amt/Challan',
                        ENN='Batch Tot-Deposit Amt/Challan';
        }
        field(42;"Last Employee/Party P.A.N";Code[20])
        {
            CaptionML = ENU='Last Employee/Party P.A.N',
                        ENN='Last Employee/Party P.A.N';
        }
        field(43;"Last Emp./Party PAN Ref. No.";Code[20])
        {
            CaptionML = ENU='Last Emp./Party PAN Ref. No.',
                        ENN='Last Emp./Party PAN Ref. No.';
        }
        field(44;Filed;Boolean)
        {
            CaptionML = ENU='Filed',
                        ENN='Filed';
        }
        field(45;Revised;Boolean)
        {
            CaptionML = ENU='Revised',
                        ENN='Revised';
        }
        field(46;"Filing Date";Date)
        {
            CaptionML = ENU='Filing Date',
                        ENN='Filing Date';
            Editable = false;
        }
        field(47;"No. of Revision";Integer)
        {
            CaptionML = ENU='No. of Revision',
                        ENN='No. of Revision';
            Editable = false;
        }
        field(48;"Revised eTDS Filing Date";Date)
        {
            CaptionML = ENU='Revised eTDS Filing Date',
                        ENN='Revised eTDS Filing Date';
            Editable = false;
        }
        field(50;"Correction-Y";Boolean)
        {
            CaptionML = ENU='Correction-Y',
                        ENN='Correction-Y';
            Editable = false;
        }
        field(51;"Correction-C1";Boolean)
        {
            CaptionML = ENU='Correction-C1',
                        ENN='Correction-C1';
            Editable = false;
        }
        field(52;"Correction-C2";Boolean)
        {
            CaptionML = ENU='Correction-C2',
                        ENN='Correction-C2';
            Editable = false;
        }
        field(53;"Correction-C3";Boolean)
        {
            CaptionML = ENU='Correction-C3',
                        ENN='Correction-C3';
            Editable = false;
        }
        field(54;"File Sequence No.";Integer)
        {
            CaptionML = ENU='File Sequence No.',
                        ENN='File Sequence No.';
        }
        field(55;"Revised File Seq No.";Integer)
        {
            CaptionML = ENU='Revised File Seq No.',
                        ENN='Revised File Seq No.';
        }
        field(56;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(57;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                UserMgt : Codeunit "User Management";
            begin
                UserMgt.LookupUserID("User ID");
            end;
        }
        field(59;Remarks;Text[75])
        {
            CaptionML = ENU='Remarks',
                        ENN='Remarks';
        }
        field(60;"P.A.N. Reference No.";Code[20])
        {
            CaptionML = ENU='P.A.N. Reference No.',
                        ENN='P.A.N. Reference No.';
        }
        field(61;"Deductor Last Name";Text[75])
        {
            CaptionML = ENU='Deductor Last Name',
                        ENN='Deductor Last Name';
        }
        field(62;"Normal eTDS Generated";Boolean)
        {
            CaptionML = ENU='Normal eTDS Generated',
                        ENN='Normal eTDS Generated';
        }
        field(63;"Revised eTDS Generated";Boolean)
        {
            CaptionML = ENU='Revised eTDS Generated',
                        ENN='Revised eTDS Generated';
        }
        field(64;"Correction-C9";Boolean)
        {
            CaptionML = ENU='Correction-C9',
                        ENN='Correction-C9';
            Editable = false;
        }
        field(65;"PAO Code";Code[20])
        {
            CaptionML = ENU='PAO Code',
                        ENN='PAO Code';
        }
        field(66;"DDO Code";Code[20])
        {
            CaptionML = ENU='DDO Code',
                        ENN='DDO Code';
        }
        field(67;"Ministry Name Code";Code[3])
        {
            CaptionML = ENU='Ministry Name Code',
                        ENN='Ministry Name Code';
        }
        field(68;"Ministry Name Other";Code[150])
        {
            CaptionML = ENU='Ministry Name Other',
                        ENN='Ministry Name Other';
        }
        field(69;"PAO Registration No.";Code[7])
        {
            CaptionML = ENU='PAO Registration No.',
                        ENN='PAO Registration No.';
        }
        field(70;"DDO Registration No.";Code[10])
        {
            CaptionML = ENU='DDO Registration No.',
                        ENN='DDO Registration No.';
        }
        field(71;"State Code";Code[2])
        {
            CaptionML = ENU='State Code',
                        ENN='State Code';
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;Quarter)
        {
        }
        key(Key3;"Deductor T.A.N. No.","Form No.","Financial Year",Quarter)
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(63957)]
    procedure FindBatchOfPreviousPeriod(var PrevBatchHeader : Record "Batch Header") : Boolean;
    begin
        PrevBatchHeader.SetCurrentKey("Deductor T.A.N. No.","Form No.","Financial Year",Quarter);
        PrevBatchHeader.SetRange("Deductor T.A.N. No.","Deductor T.A.N. No.");
        PrevBatchHeader.SetRange("Form No.","Form No.");
        PrevBatchHeader.SetFilter("Financial Year",'<=%1',"Financial Year");
        PrevBatchHeader.SetFilter("Entry No.",'<>%1',"Entry No.");
        exit(PrevBatchHeader.FindLast);
    end;
}


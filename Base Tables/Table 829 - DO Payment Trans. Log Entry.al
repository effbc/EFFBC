table 829 "DO Payment Trans. Log Entry"
{
    // version NAVW19.00.00.50087,Rev01

    CaptionML = ENU='DO Payment Trans. Log Entry',
                ENN='DO Payment Trans. Log Entry';

    fields
    {
        field(1;"Entry No.";Integer)
        {
            AutoIncrement = true;
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU=' ,Order,Invoice,Payment,Refund',
                              ENN=' ,Order,Invoice,Payment,Refund';
            OptionMembers = " ","Order",Invoice,Payment,Refund;
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(4;"Customer No.";Code[20])
        {
            CaptionML = ENU='Customer No.',
                        ENN='Customer No.';
            TableRelation = Customer;
        }
        field(5;"Credit Card No.";Code[20])
        {
            CaptionML = ENU='Credit Card No.',
                        ENN='Credit Card No.';
            TableRelation = "DO Payment Credit Card"."No.";
        }
        field(6;"Transaction Type";Option)
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
            OptionCaptionML = ENU='Authorization,Void,Capture,Refund',
                              ENN='Authorization,Void,Capture,Refund';
            OptionMembers = Authorization,Void,Capture,Refund;
        }
        field(7;"Transaction Result";Option)
        {
            CaptionML = ENU='Transaction Result',
                        ENN='Transaction Result';
            OptionCaptionML = ENU='Success,Failed',
                              ENN='Success,Failed';
            OptionMembers = Success,Failed;
        }
        field(8;"Transaction Description";Text[250])
        {
            CaptionML = ENU='Transaction Description',
                        ENN='Transaction Description';
        }
        field(9;Amount;Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Amount',
                        ENN='Amount';
        }
        field(10;"Transaction Date-Time";DateTime)
        {
            CaptionML = ENU='Transaction Date-Time',
                        ENN='Transaction Date-Time';
        }
        field(11;"Transaction Status";Option)
        {
            CaptionML = ENU='Transaction Status',
                        ENN='Transaction Status';
            OptionCaptionML = ENU=' ,Voided,Expired,Captured,Refunded,Posting Not Finished',
                              ENN=' ,Voided,Expired,Captured,Refunded,Posting Not Finished';
            OptionMembers = " ",Voided,Expired,Captured,Refunded,"Posting Not Finished";
        }
        field(12;"Cust. Ledger Entry No.";Integer)
        {
            CaptionML = ENU='Cust. Ledger Entry No.',
                        ENN='Cust. Ledger Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(13;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        ENN='Currency Code';
            TableRelation = Currency;
        }
        field(14;"Transaction GUID";Guid)
        {
            CaptionML = ENU='Transaction GUID',
                        ENN='Transaction GUID';
        }
        field(15;"Transaction ID";Text[50])
        {
            CaptionML = ENU='Transaction ID',
                        ENN='Transaction ID';
        }
        field(16;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
            Description = 'Rev01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(17;"Parent Entry No.";Integer)
        {
            CaptionML = ENU='Parent Entry No.',
                        ENN='Parent Entry No.';
        }
        field(18;"Reference GUID";Guid)
        {
            CaptionML = ENU='Reference GUID',
                        ENN='Reference GUID';
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Document Type","Document No.","Transaction Type","Transaction Result","Transaction Status")
        {
        }
        key(Key3;"Cust. Ledger Entry No.")
        {
        }
        key(Key4;"Parent Entry No.","Transaction Type","Transaction Result")
        {
            SumIndexFields = Amount;
        }
        key(Key5;"Credit Card No.")
        {
        }
        key(Key6;"Document No.","Customer No.","Transaction Status")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(37241)]
    procedure HasTransaction(var DOPaymentCreditCard : Record "DO Payment Credit Card") : Boolean;
    begin
        SetCurrentKey("Credit Card No.");
        SetRange("Credit Card No.",DOPaymentCreditCard."No.");
        SetFilter("Transaction Result",'<>%1',"Transaction Result"::Failed);
        exit(FindFirst);
    end;
}


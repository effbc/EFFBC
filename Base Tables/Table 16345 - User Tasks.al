table 16345 "User Tasks"
{
    // version NAVIN3.70.00.11,Rev01

    Caption = 'User Tasks';

    fields
    {
        field(1;"Transaction Type";Option)
        {
            Caption = 'Transaction Type';
            OptionCaption = 'Purchase,Sale';
            OptionMembers = Purchase,Sale;
        }
        field(2;"Document Type";Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Document No.";Code[20])
        {
            Caption = 'Document No.';
        }
        field(4;Activity;Option)
        {
            Caption = 'Activity';
            OptionCaption = 'Authorization';
            OptionMembers = Authorization;
        }
        field(5;"Task/Authorization Level";Integer)
        {
            Caption = 'Task/Authorization Level';
        }
        field(6;Description;Text[80])
        {
            Caption = 'Description';
        }
        field(9;"Received From";Code[50])
        {
            Caption = 'Received From';
            Description = 'Rev01';
            NotBlank = true;
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt : Codeunit "User Management";
            begin
                LoginMgt.LookupUserID("User ID");
            end;

            trigger OnValidate();
            var
                LoginMgt : Codeunit "User Management";
            begin
                LoginMgt.ValidateUserID("User ID");
            end;
        }
        field(10;"Authorization Date";Date)
        {
            Caption = 'Authorization Date';
        }
        field(11;"Authorization Time";Time)
        {
            Caption = 'Authorization Time';
        }
        field(12;"User ID";Code[50])
        {
            Caption = 'User ID';
            Description = 'Rev01';
            NotBlank = true;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt : Codeunit "User Management";
            begin
                LoginMgt.LookupUserID("User ID");
            end;

            trigger OnValidate();
            var
                LoginMgt : Codeunit "User Management";
            begin
                LoginMgt.ValidateUserID("User ID");
            end;
        }
        field(13;"Message Sent";Boolean)
        {
            Caption = 'Message Sent';
        }
        field(14;"Entry No.";Integer)
        {
            Caption = 'Entry No.';
        }
        field(15;"Message Displayed";Boolean)
        {
            Caption = 'Message Displayed';
        }
        field(16;Status;Option)
        {
            Caption = 'Status';
            OptionCaption = '" ,Approved,Rejected,Returned,Not Responding"';
            OptionMembers = " ",Approved,Rejected,Returned,"Not Responding";
        }
        field(17;"Response Time in Minutes";Decimal)
        {
            BlankZero = true;
            Caption = 'Response Time in Minutes';
            DecimalPlaces = 0:2;
        }
        field(18;"Line No.";Integer)
        {
            Caption = 'Line No.';
        }
        field(20;"AltUser Line No.";Integer)
        {
            Caption = 'AltUser Line No.';
        }
        field(21;"Not Responding";Integer)
        {
            Caption = 'Not Responding';
        }
    }

    keys
    {
        key(Key1;"Transaction Type","Document Type","Document No.","Line No.",Status,"Not Responding")
        {
        }
        key(Key2;"Authorization Date","Authorization Time",Status)
        {
        }
    }

    fieldgroups
    {
    }
}


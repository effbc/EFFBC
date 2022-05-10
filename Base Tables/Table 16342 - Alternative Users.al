table 16342 "Alternative Users"
{
    // version NAVIN3.70.00.01,Rev01

    LookupPageID = 16343;

    fields
    {
        field(1;"Transaction Type";Option)
        {
            OptionCaption = 'Purchase,Sale';
            OptionMembers = Purchase,Sale;
        }
        field(2;"Document Type";Option)
        {
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(4;"Alternative Line No.";Integer)
        {
        }
        field(5;"User ID";Code[50])
        {
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
        field(6;"Response Time in Minutes";Decimal)
        {
            DecimalPlaces = 0:2;
            MinValue = 0;
        }
        field(7;"Line No.";Integer)
        {
        }
    }

    keys
    {
        key(Key1;"Transaction Type","Document Type","Line No.","Alternative Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}


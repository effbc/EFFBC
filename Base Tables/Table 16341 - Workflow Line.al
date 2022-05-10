table 16341 "Workflow Line"
{
    // version NAVIN3.70.00.01,Rev01


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
        field(4;Activity;Option)
        {
            OptionCaption = 'Authorization';
            OptionMembers = Authorization;
        }
        field(5;"Task/Authorization Level";Integer)
        {
        }
        field(8;"Min. Value";Decimal)
        {
            DecimalPlaces = 0:2;

            trigger OnValidate();
            begin
                /*// RATNA - 15JAN'04 - BEGIN
                WFL.RESET;
                WFL.SETRANGE(WFL."Transaction Type","Transaction Type");
                WFL.SETRANGE(WFL."Document Type","Document Type");
                WFL.SETFILTER(WFL."Line No.", '<%1',"Line No.");
                IF WFL.FIND('-') THEN BEGIN
                  REPEAT
                    IF ("Min. Value" >= WFL."Min. Value") AND ("Min. Value" <= WFL."Max. Value") THEN
                      ERROR(Text1300,WFL."Min. Value",WFL."Max. Value");
                  UNTIL WFL.NEXT = 0;
                END;
                // RATNA - 15JAN'04 - END
                 */

            end;
        }
        field(9;"Max. Value";Decimal)
        {
            DecimalPlaces = 0:2;

            trigger OnValidate();
            begin
                // RATNA - 15JAN'04 - BEGIN
                if "Max. Value" < "Min. Value" then
                  FieldError("Max. Value", 'should be > Min. Value');
                // RATNA - 15JAN'04 - END
            end;
        }
        field(10;"User ID";Code[50])
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
        field(11;"Response Time in Minutes";Decimal)
        {
            DecimalPlaces = 0:2;
            MinValue = 0;
        }
        field(12;"Line No.";Integer)
        {
        }
    }

    keys
    {
        key(Key1;"Transaction Type","Document Type","Line No.")
        {
        }
        key(Key2;"Task/Authorization Level")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        ALT.SetRange(ALT."Transaction Type","Transaction Type");
        ALT.SetRange(ALT."Document Type","Document Type");
        ALT.SetRange(ALT."Alternative Line No.","Line No.");
        if ALT.Find('-') then
          ALT.DeleteAll;
    end;

    var
        WFL : Record "Workflow Line";
        Text1300 : Label 'Min. Value should not lie between the range %1 and %2';
        ALT : Record "Alternative Users";
}


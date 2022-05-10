table 50018 "Product Customer's List"
{
    // version B2B1.0

    LookupPageID = 60023;

    fields
    {
        field(1;"Product Code";Code[20])
        {
            Editable = false;
            NotBlank = true;
            TableRelation = Products;
        }
        field(2;"Customer Code";Code[20])
        {
            Editable = false;
            NotBlank = true;
            TableRelation = Customer;

            trigger OnValidate();
            var
                Customer : Record Customer;
            begin
                /*IF Customer.GET("SMTP Port No") THEN BEGIN
                  "E-Mail From" := Customer.Name;
                   Address := Customer.Address;
                END;
                */

            end;
        }
        field(3;"Customer Name";Text[50])
        {
            Editable = false;
        }
        field(4;Address;Text[70])
        {
            Editable = false;
        }
        field(5;"Installed Year";Text[10])
        {
        }
    }

    keys
    {
        key(Key1;"Product Code","Customer Code")
        {
        }
    }

    fieldgroups
    {
    }
}


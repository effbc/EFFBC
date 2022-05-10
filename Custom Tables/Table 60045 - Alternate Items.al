table 60045 "Alternate Items"
{
    // version B2B1.0

    DataCaptionFields = "Proudct Type","Item No.";

    fields
    {
        field(1;"Proudct Type";Code[20])
        {
            TableRelation = "Item Sub Group".Code WHERE ("Product Group Code"=FILTER('FPRODUCT'|'CPCB'));
        }
        field(3;"Item No.";Code[20])
        {
            TableRelation = Item;

            trigger OnLookup();
            begin
                if Item.Get("Item No.") then
                "Item Description":=Item.Description;
            end;
        }
        field(4;"Item Description";Text[50])
        {
        }
        field(5;"Alternative Item No.";Code[20])
        {
            TableRelation = Item;

            trigger OnValidate();
            begin
                if Item.Get("Alternative Item No.") then
                "Alternative Item Description":=Item.Description;
            end;
        }
        field(6;"Alternative Item Description";Text[50])
        {
        }
        field(7;Make;Code[30])
        {
            TableRelation = Make;
        }
        field(8;"Priority Order";Integer)
        {
        }
    }

    keys
    {
        key(Key1;"Proudct Type","Item No.","Alternative Item No.")
        {
        }
        key(Key2;"Item No.")
        {
        }
        key(Key3;"Proudct Type","Item No.","Priority Order")
        {
        }
        key(Key4;"Alternative Item No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
         /*
         IF (NOT SMTP_MAIL.Permission_Checking(USERID,'ALTERNATEITEMS')) THEN
            ERROR('YOU DONT HAVE SUFFICIENT PERMISSIONS');
        */

    end;

    trigger OnInsert();
    begin
        /*
        IF (NOT SMTP_MAIL.Permission_Checking(USERID,'ALTERNATEITEMS')) THEN
            ERROR('YOU DONT HAVE SUFFICIENT PERMISSIONS');
        */

    end;

    trigger OnModify();
    begin
         /*
         IF (NOT SMTP_MAIL.Permission_Checking(USERID,'ALTERNATEITEMS')) THEN
            ERROR('YOU DONT HAVE SUFFICIENT PERMISSIONS');
        */

    end;

    trigger OnRename();
    begin
         //IF NOT (USERID IN['EFFTRONICS\JHANSI','EFFTRONICS\VANIDEVI','EFFTRONICS\VIJAYA','EFFTRONICS\ANILKUMAR']) THEN
          //ERROR('YOU DONT HAVE SUFFICIENT PERMISSIONS');
        /*
         IF (NOT SMTP_MAIL.Permission_Checking(USERID,'ALTERNATEITEMS')) THEN
            ERROR('YOU DONT HAVE SUFFICIENT PERMISSIONS');
        */

    end;

    var
        "Production Bom header" : Record "Production BOM Header";
        Item : Record Item;
        SMTP_MAIL : Codeunit "SMTP Mail";
}


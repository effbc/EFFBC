tableextension 70237 ZoneExt extends Zone
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on ""Location Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on "Code(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 2)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Location Code,Code"(Key)". Please convert manually.

        key(Loc; "Location Code", "Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Bin.SETCURRENTKEY("Location Code","Zone Code");
    Bin.SETRANGE("Location Code","Location Code");
    Bin.SETRANGE("Zone Code",Code);
    Bin.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Bin.SetCurrentKey("Location Code","Zone Code");
    Bin.SetRange("Location Code","Location Code");
    Bin.SetRange("Zone Code",Code);
    Bin.DeleteAll(true);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.Bin(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Bin : Bin;
    //Variable type has not been exported.
}


tableextension 70118 BinTypeExt extends "Bin Type"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Data type on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on "Code(Field 1)". Please convert manually.

        field(60001; "Item No"; Code[30])
        {
            TableRelation = Item."No.";

            trigger OnValidate();
            begin
                if ITEM_REC.Get("Item No") then
                    Description := ITEM_REC.Description;
            end;
        }
        field(60002; QTY; Decimal)
        {
            DecimalPlaces = 2 : 5;
        }
        field(60003; "Material Required Day"; Integer)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on "Code(Key)". Please convert manually.

        key(Key1; "Code", "Item No")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Zone.SETRANGE("Bin Type Code",Code);
    IF Zone.FINDFIRST THEN
      ERROR(
        Text000,
    #5..16
      ERROR(
        Text001,
        TABLECAPTION,BinContent.TABLECAPTION,BinContent."Location Code",
        BinContent."Zone Code",BinContent."Bin Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {Zone.SETRANGE("Bin Type Code",Code);
    #2..19
        BinContent."Zone Code",BinContent."Bin Code");}
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.Zone(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Zone : 7300;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Zone : Zone;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Bin(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.BinContent(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.BinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.BinContent : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCombination(PROCEDURE 2).BinType(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCombination : 7303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCombination : "Bin Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateBinTypeFilter(PROCEDURE 13).BinType(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateBinTypeFilter : 7303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateBinTypeFilter : "Bin Type";
    //Variable type has not been exported.

    var
        ITEM_REC: Record Item;
}


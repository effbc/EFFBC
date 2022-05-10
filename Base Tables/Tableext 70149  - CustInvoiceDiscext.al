tableextension 70149 CustInvoiceDiscext extends "Cust. Invoice Disc."
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Code,Currency Code,Minimum Amount"(Key)". Please convert manually.

        key(Pk; "Code", "Currency Code", "Minimum Amount")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "GetRec(PROCEDURE 1).Currency(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetRec : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetRec : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetRec(PROCEDURE 1).CurrExchRate(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetRec : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetRec : "Currency Exchange Rate";
    //Variable type has not been exported.
}


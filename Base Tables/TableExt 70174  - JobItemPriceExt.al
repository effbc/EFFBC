tableextension 70174 JobItemPriceExt extends "Job Item Price"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on ""Job No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 4)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Description(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Apply Job Price"(Field 11)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Apply Job Discount"(Field 12)". Please convert manually.


        //Unsupported feature: CodeModification on ""Job Task No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Task No." <> '' THEN BEGIN
          JT.GET("Job No.","Job Task No.");
          JT.TESTFIELD("Job Task Type",JT."Job Task Type"::Posting);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Task No." <> '' then begin
          JT.Get("Job No.","Job Task No.");
          JT.TestField("Job Task Type",JT."Job Task Type"::Posting);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Item.GET("Item No.");
        VALIDATE("Unit of Measure Code",Item."Sales Unit of Measure");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Item.Get("Item No.");
        Validate("Unit of Measure Code",Item."Sales Unit of Measure");
        */
        //end;


        //Unsupported feature: CodeModification on ""Currency Code"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Currency Code" <> xRec."Currency Code" THEN BEGIN
          "Unit Cost Factor" := 0;
          "Line Discount %" := 0;
          "Unit Price" := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Currency Code" <> xRec."Currency Code" then begin
        #2..4
        end;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Job No.,Job Task No.,Item No.,Variant Code,Unit of Measure Code,Currency Code"(Key)". Please convert manually.

        key(Key1; "Job No.", "Job Task No.", "Item No.", "Variant Code", "Unit of Measure Code", "Currency Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LOCKTABLE;
    Job.GET("Job No.");
    TESTFIELD("Item No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    Job.Get("Job No.");
    TestField("Item No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Job(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Job : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Job : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "JT(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //JT : 1001;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JT : "Job Task";
    //Variable type has not been exported.
}


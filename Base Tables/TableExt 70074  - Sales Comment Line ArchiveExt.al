tableextension 70074 SalesCommentLineArchiveExt extends "Sales Comment Line Archive"
{
    // version NAVW17.00,B2BQTO

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on "Code(Field 5)". Please convert manually.

        field(60001; "User ID"; Code[40])
        {
            DataClassification = ToBeClassified;

            trigger OnLookup();
            begin
                User.Reset;
                if PAGE.RunModal(9800, User) = ACTION::LookupOK then
                    Rec."User ID" := User."User Name";
            end;
        }
        field(60002; "Responsible Person"; Code[40])
        {
            DataClassification = ToBeClassified;

            trigger OnLookup();
            begin
                User.Reset;
                if PAGE.RunModal(9800, User) = ACTION::LookupOK then
                    "Responsible Person" := User."User Name";
            end;
        }
        field(60003; Status; Option)
        {
            DataClassification = ToBeClassified;
            Editable = true;
            OptionMembers = ,"Need to Start",Inprogress,Completed;
        }
        field(60004; "Exp Completion Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(60005; Priority; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Low,Medium,High;
        }
        field(60006; Product; Code[50])
        {
            DataClassification = ToBeClassified;

            trigger OnLookup();
            begin
                ISGC.Reset;
                if PAGE.RunModal(60263, ISGC) = ACTION::LookupOK then
                    Rec.Product := ISGC.Code;
            end;
        }
        field(60007; "Customer Number"; Code[30])
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the IREPS Purpose';
            TableRelation = Customer."No.";
        }
        field(60008; "Customer Name"; Text[60])
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the IREPS Purpose';
        }
        field(60009; "Remainder Date"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the IREPS Purpose';
        }
        field(60010; "Quote Status"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the IREPS Purpose';
            OptionCaption = '" ,Win,Loose,None"';
            OptionMembers = " ",Win,Loose,"None";
        }
        field(60011; Convert; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the IREPS Purpose';
        }
        field(60012; "Converted Order Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya for the IREPS Purpose';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No.,Doc. No. Occurrence,Version No.,Document Line No.,Line No."(Key)". Please convert manually.

        key(Key1; "Document Type", "No.", "Doc. No. Occurrence", "Version No.", "Document Line No.", "Line No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 1).SalesCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 5126;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Sales Comment Line Archive";
    //Variable type has not been exported.

    var
        Itm: Record Item;
        ISGC: Record "Item Sub Group";
        User: Record User;
}


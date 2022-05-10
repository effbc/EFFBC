tableextension 70016 SalesCommentLineExt extends "Sales Comment Line"
{
    // version NAVW17.00

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Shipment,Posted Invoice,Posted Credit Memo,Posted Return Receipt,,Design Worksheet', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Shipment,Posted Invoice,Posted Credit Memo,Posted Return Receipt,,Design Worksheet';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change Data type on "Code(Field 5)". Please convert manually.

        field(60001; "User ID"; Code[40])
        {

            trigger OnLookup();
            begin
                User.Reset;
                if PAGE.RunModal(9800, User) = ACTION::LookupOK then
                    "User ID" := User."User Name";
            end;
        }
        field(60002; "Responsible Person"; Code[40])
        {

            trigger OnLookup();
            begin
                User.Reset;
                if PAGE.RunModal(9800, User) = ACTION::LookupOK then
                    "Responsible Person" := User."User Name";
            end;
        }
        field(60003; Status; Option)
        {
            Editable = true;
            OptionMembers = ,"Need to Start",Inprogress,Completed;
        }
        field(60004; "Exp Completion Date"; DateTime)
        {
        }
        field(60005; Priority; Option)
        {
            OptionMembers = ,Low,Medium,High;
        }
        field(60006; Product; Code[50])
        {

            trigger OnLookup();
            begin
                ISGC.Reset;
                if PAGE.RunModal(60263, ISGC) = ACTION::LookupOK then
                    Product := ISGC.Code;
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

        //Unsupported feature: Deletion on ""Document Type,No.,Document Line No.,Line No."(Key)". Please convert manually.

        key(DocumentType1; "Document Type", "No.", "Document Line No.", "Line No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 1).SalesCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyComments(PROCEDURE 22).SalesCommentLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyComments(PROCEDURE 22).SalesCommentLine2(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineComments(PROCEDURE 6).SalesCommentLineSource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineComments(PROCEDURE 6).SalesCommentLineTarget(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineCommentsFromSalesLines(PROCEDURE 10).SalesCommentLineSource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineCommentsFromSalesLines : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineCommentsFromSalesLines : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineCommentsFromSalesLines(PROCEDURE 10).SalesCommentLineTarget(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineCommentsFromSalesLines : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineCommentsFromSalesLines : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyHeaderComments(PROCEDURE 8).SalesCommentLineSource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyHeaderComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyHeaderComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyHeaderComments(PROCEDURE 8).SalesCommentLineTarget(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyHeaderComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyHeaderComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowComments(PROCEDURE 3).SalesCommentSheet(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowComments : 67;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowComments : "Sales Comment Sheet";
    //Variable type has not been exported.

    var
        User: Record User;
        Itm: Record Item;
        ISGC: Record "Item Sub Group";
}


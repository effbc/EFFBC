tableextension 70015 PurchCommentLineExt extends "Purch. Comment Line"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on "Comment(Field 6)". Please convert manually.

        field(50001; Type; Option)
        {
            InitValue = "Narration Line";
            OptionMembers = ,"Narration Line";
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No.,Document Line No.,Line No."(Key)". Please convert manually.

        key(Document1; "Document Type", "No.", "Document Line No.", "Line No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 1).PurchCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyComments(PROCEDURE 22).PurchCommentLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyComments(PROCEDURE 22).PurchCommentLine2(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineComments(PROCEDURE 6).PurchCommentLineSource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineComments(PROCEDURE 6).PurchCommentLineTarget(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineCommentsFromPurchaseLines(PROCEDURE 10).PurchCommentLineSource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineCommentsFromPurchaseLines : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineCommentsFromPurchaseLines : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyLineCommentsFromPurchaseLines(PROCEDURE 10).PurchCommentLineTarget(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyLineCommentsFromPurchaseLines : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyLineCommentsFromPurchaseLines : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyHeaderComments(PROCEDURE 8).PurchCommentLineSource(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyHeaderComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyHeaderComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyHeaderComments(PROCEDURE 8).PurchCommentLineTarget(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyHeaderComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyHeaderComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowComments(PROCEDURE 3).PurchCommentSheet(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowComments : 66;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowComments : "Purch. Comment Sheet";
    //Variable type has not been exported.
}


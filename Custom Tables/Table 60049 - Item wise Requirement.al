table 60049 "Item wise Requirement"
{
    // version B2B1.0

    Caption = 'Job Budget Line Archive';
    LookupPageID = 60071;

    fields
    {
        field(1;"Item No.";Code[30])
        {
            TableRelation = Item;
        }
        field(2;Description;Text[100])
        {
        }
        field(3;"Required Quantity";Decimal)
        {
        }
        field(4;"Qty. In Material Issues";Decimal)
        {
        }
        field(5;"Req Qty";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Item No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Text000 : Label '"It is not allowed to rename %1. "';
        Text001 : Label 'Delete this line and enter a new line.';
        Res : Record Resource;
        ResGr : Record "Resource Group";
        ResCost : Record "Resource Cost";
        ResPrice : Record "Resource Price";
        Item : Record Item;
        GLAcc : Record "G/L Account";
        Job : Record Job;
        ItemVariant : Record "Item Variant";
        SalesPriceCalcMgt : Codeunit "Sales Price Calc. Mgt.";
        PurchPriceCalcMgt : Codeunit "Purch. Price Calc. Mgt.";
        LastBudgetEntryDate : Date;
        NextStep : Integer;
        "--B2B--" : Integer;
        TotalTime : Decimal;
        Temp : Decimal;

    [LineStart(2687)]
    local procedure UpdateJobBudgetEntry();
    begin
    end;

    [LineStart(2690)]
    local procedure FindResUnitCost(CalledByFieldNo : Integer);
    begin
    end;

    [LineStart(2693)]
    local procedure FindResPrice(CalledByFieldNo : Integer);
    begin
    end;

    [LineStart(2696)]
    procedure BudjetAttachments();
    var
        BudjetAttach : Record Attachments;
    begin
    end;
}


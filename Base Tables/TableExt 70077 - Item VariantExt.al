tableextension 70077 ItemVariantExt extends "Item Variant"
{
    // version NAVW17.00

    fields
    {
        modify("Code")
        {

            //Unsupported feature: Change Name on "Code(Field 1)". Please convert manually.


            //Unsupported feature: Change Data type on "Code(Field 1)". Please convert manually.

            CaptionML = ENU = 'Make', ENN = 'Make';

            //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


            //Unsupported feature: Change TableRelation on "Code(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change TableRelation on ""Item No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Item No."(Field 2)". Please convert manually.

        modify(Description)
        {

            //Unsupported feature: Change Name on "Description(Field 3)". Please convert manually.


            //Unsupported feature: Change Data type on "Description(Field 3)". Please convert manually.

            CaptionML = ENU = 'Part no';
        }
        modify("Description 2")
        {

            //Unsupported feature: Change Name on ""Description 2"(Field 4)". Please convert manually.

            CaptionML = ENU = 'Description';
        }
        field(50000; "Product type"; Code[10])
        {
            TableRelation = "Item Sub Group".Code WHERE("Product Group Code" = CONST('FPRODUCT'));
        }
        field(50001; Package; Code[20])
        {
        }
        field(50002; "No. of Pins"; Integer)
        {
        }
        field(50003; "No. of Soldering Points"; Integer)
        {
        }
        field(50004; "Operating Temperature"; Text[20])
        {
        }
        field(50005; "Storage Temperature"; Text[20])
        {
        }
        field(50006; Humidity; Text[10])
        {
        }
        field(50007; "ESD Sensitive"; Boolean)
        {
        }
        field(50008; ESD; Code[20])
        {
        }
        field(50009; "Work area Temp &  Humadity"; Code[25])
        {
        }
        field(50010; "Soldering Time (Sec)"; Code[20])
        {
        }
        field(50011; "Soldering Temp."; Code[15])
        {
        }
        field(50012; Priority; Integer)
        {
        }
        field(50013; "Item Status"; Option)
        {
            OptionCaption = '" ,Active,NRND,Obsolete"';
            OptionMembers = " ",Active,NRND,Obsolute;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on "Code(Key)". Please convert manually.

        key(Key1; "Item No.", Priority, Make)
        {
        }
        key(Key2; Make)
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    BOMComp.RESET;
    BOMComp.SETCURRENTKEY(Type,"No.");
    BOMComp.SETRANGE(Type,BOMComp.Type::Item);
    BOMComp.SETRANGE("No.","Item No.");
    BOMComp.SETRANGE("Variant Code",Code);
    IF NOT BOMComp.ISEMPTY THEN
      ERROR(Text001,Code,BOMComp.TABLECAPTION);

    ProdBOMLine.RESET;
    ProdBOMLine.SETCURRENTKEY(Type,"No.");
    ProdBOMLine.SETRANGE(Type,ProdBOMLine.Type::Item);
    ProdBOMLine.SETRANGE("No.","Item No.");
    ProdBOMLine.SETRANGE("Variant Code",Code);
    IF NOT ProdBOMLine.ISEMPTY THEN
      ERROR(Text001,Code,ProdBOMLine.TABLECAPTION);

    ProdOrderComp.RESET;
    ProdOrderComp.SETCURRENTKEY(Status,"Item No.");
    ProdOrderComp.SETRANGE("Item No.","Item No.");
    ProdOrderComp.SETRANGE("Variant Code",Code);
    IF NOT ProdOrderComp.ISEMPTY THEN
      ERROR(Text001,Code,ProdOrderComp.TABLECAPTION);

    IF ProdOrderExist THEN
      ERROR(Text002,"Item No.");

    AssemblyHeader.RESET;
    AssemblyHeader.SETCURRENTKEY("Document Type","Item No.");
    AssemblyHeader.SETRANGE("Item No.","Item No.");
    AssemblyHeader.SETRANGE("Variant Code",Code);
    IF NOT AssemblyHeader.ISEMPTY THEN
      ERROR(Text001,Code,AssemblyHeader.TABLECAPTION);

    AssemblyLine.RESET;
    AssemblyLine.SETCURRENTKEY("Document Type",Type,"No.");
    AssemblyLine.SETRANGE("No.","Item No.");
    AssemblyLine.SETRANGE("Variant Code",Code);
    IF NOT AssemblyLine.ISEMPTY THEN
      ERROR(Text001,Code,AssemblyLine.TABLECAPTION);

    BinContent.RESET;
    BinContent.SETCURRENTKEY("Item No.");
    BinContent.SETRANGE("Item No.","Item No.");
    BinContent.SETRANGE("Variant Code",Code);
    IF NOT BinContent.ISEMPTY THEN
      ERROR(Text001,Code,BinContent.TABLECAPTION);

    TransLine.RESET;
    TransLine.SETCURRENTKEY("Item No.");
    TransLine.SETRANGE("Item No.","Item No.");
    TransLine.SETRANGE("Variant Code",Code);
    IF NOT TransLine.ISEMPTY THEN
      ERROR(Text001,Code,TransLine.TABLECAPTION);

    RequisitionLine.RESET;
    RequisitionLine.SETCURRENTKEY(Type,"No.");
    RequisitionLine.SETRANGE(Type,RequisitionLine.Type::Item);
    RequisitionLine.SETRANGE("No.","Item No.");
    RequisitionLine.SETRANGE("Variant Code",Code);
    IF NOT RequisitionLine.ISEMPTY THEN
      ERROR(Text001,Code,RequisitionLine.TABLECAPTION);

    PurchOrderLine.RESET;
    PurchOrderLine.SETCURRENTKEY(Type,"No.");
    PurchOrderLine.SETRANGE(Type,PurchOrderLine.Type::Item);
    PurchOrderLine.SETRANGE("No.","Item No.");
    PurchOrderLine.SETRANGE("Variant Code",Code);
    IF NOT PurchOrderLine.ISEMPTY THEN
      ERROR(Text001,Code,PurchOrderLine.TABLECAPTION);

    SalesOrderLine.RESET;
    SalesOrderLine.SETCURRENTKEY(Type,"No.");
    SalesOrderLine.SETRANGE(Type,SalesOrderLine.Type::Item);
    SalesOrderLine.SETRANGE("No.","Item No.");
    SalesOrderLine.SETRANGE("Variant Code",Code);
    IF NOT SalesOrderLine.ISEMPTY THEN
      ERROR(Text001,Code,SalesOrderLine.TABLECAPTION);

    ServiceItem.RESET;
    ServiceItem.SETCURRENTKEY("Item No.","Serial No.");
    ServiceItem.SETRANGE("Item No.","Item No.");
    ServiceItem.SETRANGE("Variant Code",Code);
    IF NOT ServiceItem.ISEMPTY THEN
      ERROR(Text001,Code,ServiceItem.TABLECAPTION);

    ServiceLine.RESET;
    ServiceLine.SETCURRENTKEY(Type,"No.");
    ServiceLine.SETRANGE(Type,ServiceLine.Type::Item);
    ServiceLine.SETRANGE("No.","Item No.");
    ServiceLine.SETRANGE("Variant Code",Code);
    IF NOT ServiceLine.ISEMPTY THEN
      ERROR(Text001,Code,ServiceLine.TABLECAPTION);

    ServiceContractLine.RESET;
    ServiceContractLine.SETRANGE("Item No.","Item No.");
    ServiceContractLine.SETRANGE("Variant Code",Code);
    IF NOT ServiceContractLine.ISEMPTY THEN
      ERROR(Text001,Code,ServiceContractLine.TABLECAPTION);

    ServiceItemComponent.RESET;
    ServiceItemComponent.SETRANGE(Type,ServiceItemComponent.Type::Item);
    ServiceItemComponent.SETRANGE("No.","Item No.");
    ServiceItemComponent.SETRANGE("Variant Code",Code);
    ServiceItemComponent.MODIFYALL("Variant Code",'');

    ItemJnlLine.RESET;
    ItemJnlLine.SETCURRENTKEY("Item No.");
    ItemJnlLine.SETRANGE("Item No.","Item No.");
    ItemJnlLine.SETRANGE("Variant Code",Code);
    IF NOT ItemJnlLine.ISEMPTY THEN
      ERROR(Text001,Code,ItemJnlLine.TABLECAPTION);

    ItemLedgerEntry.RESET;
    ItemLedgerEntry.SETCURRENTKEY("Item No.");
    ItemLedgerEntry.SETRANGE("Item No.","Item No.");
    ItemLedgerEntry.SETRANGE("Variant Code",Code);
    IF NOT ItemLedgerEntry.ISEMPTY THEN
      ERROR(Text001,Code,ItemLedgerEntry.TABLECAPTION);

    ValueEntry.RESET;
    ValueEntry.SETCURRENTKEY("Item No.");
    ValueEntry.SETRANGE("Item No.","Item No.");
    ValueEntry.SETRANGE("Variant Code",Code);
    IF NOT ValueEntry.ISEMPTY THEN
      ERROR(Text001,Code,ValueEntry.TABLECAPTION);

    ItemTranslation.SETRANGE("Item No.","Item No.");
    ItemTranslation.SETRANGE("Variant Code",Code);
    ItemTranslation.DELETEALL;

    ItemIdent.RESET;
    ItemIdent.SETCURRENTKEY("Item No.");
    ItemIdent.SETRANGE("Item No.","Item No.");
    ItemIdent.SETRANGE("Variant Code",Code);
    ItemIdent.DELETEALL;

    ItemCrossReference.SETRANGE("Item No.","Item No.");
    ItemCrossReference.SETRANGE("Variant Code",Code);
    ItemCrossReference.DELETEALL;

    ItemSubstitution.RESET;
    ItemSubstitution.SETRANGE(Type,ItemSubstitution.Type::Item);
    ItemSubstitution.SETRANGE("No.","Item No.");
    ItemSubstitution.SETRANGE("Substitute Type",ItemSubstitution."Substitute Type"::Item);
    ItemSubstitution.SETRANGE("Variant Code",Code);
    ItemSubstitution.DELETEALL;

    ItemVend.RESET;
    ItemVend.SETCURRENTKEY("Item No.");
    ItemVend.SETRANGE("Item No.","Item No.");
    ItemVend.SETRANGE("Variant Code",Code);
    ItemVend.DELETEALL;

    SalesPrice.RESET;
    SalesPrice.SETRANGE("Item No.","Item No.");
    SalesPrice.SETRANGE("Variant Code",Code);
    SalesPrice.DELETEALL;

    SalesLineDiscount.RESET;
    SalesLineDiscount.SETRANGE(Code,"Item No.");
    SalesLineDiscount.SETRANGE("Variant Code",Code);
    SalesLineDiscount.DELETEALL;

    PurchasePrice.RESET;
    PurchasePrice.SETRANGE("Item No.","Item No.");
    PurchasePrice.SETRANGE("Variant Code",Code);
    PurchasePrice.DELETEALL;

    PurchaseLineDiscount.RESET;
    PurchaseLineDiscount.SETRANGE("Item No.","Item No.");
    PurchaseLineDiscount.SETRANGE("Variant Code",Code);
    PurchaseLineDiscount.DELETEALL;

    SKU.SETRANGE("Item No.","Item No.");
    SKU.SETRANGE("Variant Code",Code);
    SKU.DELETEALL(TRUE);

    PlanningAssignment.RESET;
    PlanningAssignment.SETRANGE("Item No.","Item No.");
    PlanningAssignment.SETRANGE("Variant Code",Code);
    PlanningAssignment.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*

    BOMComp.Reset;
    BOMComp.SetCurrentKey(Type,"No.");
    BOMComp.SetRange(Type,BOMComp.Type::Item);
    BOMComp.SetRange("No.","Item No.");
    BOMComp.SetRange("Variant Code",Make);
    if not BOMComp.IsEmpty then
      Error(Text001,Make,BOMComp.TableCaption);

    ProdBOMLine.Reset;
    ProdBOMLine.SetCurrentKey(Type,"No.");
    ProdBOMLine.SetRange(Type,ProdBOMLine.Type::Item);
    ProdBOMLine.SetRange("No.","Item No.");
    ProdBOMLine.SetRange("Variant Code",Make);
    if not ProdBOMLine.IsEmpty then
      Error(Text001,Make,ProdBOMLine.TableCaption);

    ProdOrderComp.Reset;
    ProdOrderComp.SetCurrentKey(Status,"Item No.");
    ProdOrderComp.SetRange("Item No.","Item No.");
    ProdOrderComp.SetRange("Variant Code",Make);
    if not ProdOrderComp.IsEmpty then
      Error(Text001,Make,ProdOrderComp.TableCaption);

    if ProdOrderExist then
      Error(Text002,"Item No.");

    AssemblyHeader.Reset;
    AssemblyHeader.SetCurrentKey("Document Type","Item No.");
    AssemblyHeader.SetRange("Item No.","Item No.");
    AssemblyHeader.SetRange("Variant Code",Make);
    if not AssemblyHeader.IsEmpty then
      Error(Text001,Make,AssemblyHeader.TableCaption);

    AssemblyLine.Reset;
    AssemblyLine.SetCurrentKey("Document Type",Type,"No.");
    AssemblyLine.SetRange("No.","Item No.");
    AssemblyLine.SetRange("Variant Code",Make);
    if not AssemblyLine.IsEmpty then
      Error(Text001,Make,AssemblyLine.TableCaption);

    BinContent.Reset;
    BinContent.SetCurrentKey("Item No.");
    BinContent.SetRange("Item No.","Item No.");
    BinContent.SetRange("Variant Code",Make);
    if not BinContent.IsEmpty then
      Error(Text001,Make,BinContent.TableCaption);

    TransLine.Reset;
    TransLine.SetCurrentKey("Item No.");
    TransLine.SetRange("Item No.","Item No.");
    TransLine.SetRange("Variant Code",Make);
    if not TransLine.IsEmpty then
      Error(Text001,Make,TransLine.TableCaption);

    RequisitionLine.Reset;
    RequisitionLine.SetCurrentKey(Type,"No.");
    RequisitionLine.SetRange(Type,RequisitionLine.Type::Item);
    RequisitionLine.SetRange("No.","Item No.");
    RequisitionLine.SetRange("Variant Code",Make);
    if not RequisitionLine.IsEmpty then
      Error(Text001,Make,RequisitionLine.TableCaption);

    PurchOrderLine.Reset;
    PurchOrderLine.SetCurrentKey(Type,"No.");
    PurchOrderLine.SetRange(Type,PurchOrderLine.Type::Item);
    PurchOrderLine.SetRange("No.","Item No.");
    PurchOrderLine.SetRange("Variant Code",Make);
    if not PurchOrderLine.IsEmpty then
      Error(Text001,Make,PurchOrderLine.TableCaption);

    SalesOrderLine.Reset;
    SalesOrderLine.SetCurrentKey(Type,"No.");
    SalesOrderLine.SetRange(Type,SalesOrderLine.Type::Item);
    SalesOrderLine.SetRange("No.","Item No.");
    SalesOrderLine.SetRange("Variant Code",Make);
    if not SalesOrderLine.IsEmpty then
      Error(Text001,Make,SalesOrderLine.TableCaption);

    ServiceItem.Reset;
    ServiceItem.SetCurrentKey("Item No.","Serial No.");
    ServiceItem.SetRange("Item No.","Item No.");
    ServiceItem.SetRange("Variant Code",Make);
    if not ServiceItem.IsEmpty then
      Error(Text001,Make,ServiceItem.TableCaption);

    ServiceLine.Reset;
    ServiceLine.SetCurrentKey(Type,"No.");
    ServiceLine.SetRange(Type,ServiceLine.Type::Item);
    ServiceLine.SetRange("No.","Item No.");
    ServiceLine.SetRange("Variant Code",Make);
    if not ServiceLine.IsEmpty then
      Error(Text001,Make,ServiceLine.TableCaption);

    ServiceContractLine.Reset;
    ServiceContractLine.SetRange("Item No.","Item No.");
    ServiceContractLine.SetRange("Variant Code",Make);
    if not ServiceContractLine.IsEmpty then
      Error(Text001,Make,ServiceContractLine.TableCaption);

    ServiceItemComponent.Reset;
    ServiceItemComponent.SetRange(Type,ServiceItemComponent.Type::Item);
    ServiceItemComponent.SetRange("No.","Item No.");
    ServiceItemComponent.SetRange("Variant Code",Make);
    ServiceItemComponent.ModifyAll("Variant Code",'');

    ItemJnlLine.Reset;
    ItemJnlLine.SetCurrentKey("Item No.");
    ItemJnlLine.SetRange("Item No.","Item No.");
    ItemJnlLine.SetRange("Variant Code",Make);
    if not ItemJnlLine.IsEmpty then
      Error(Text001,Make,ItemJnlLine.TableCaption);

    ItemLedgerEntry.Reset;
    ItemLedgerEntry.SetCurrentKey("Item No.");
    ItemLedgerEntry.SetRange("Item No.","Item No.");
    ItemLedgerEntry.SetRange("Variant Code",Make);
    if not ItemLedgerEntry.IsEmpty then
      Error(Text001,Make,ItemLedgerEntry.TableCaption);

    ValueEntry.Reset;
    ValueEntry.SetCurrentKey("Item No.");
    ValueEntry.SetRange("Item No.","Item No.");
    ValueEntry.SetRange("Variant Code",Make);
    if not ValueEntry.IsEmpty then
      Error(Text001,Make,ValueEntry.TableCaption);

    {ItemTranslation.SETRANGE("Item No.","Item No.");
    ItemTranslation.SETRANGE("Variant Code",Make);
    #129..133
    ItemIdent.SETRANGE("Variant Code",Make);
    ItemIdent.DELETEALL;
     }

    ItemCrossReference.SetRange("Item No.","Item No.");
    ItemCrossReference.SetRange("Variant Code",Make);
    ItemCrossReference.DeleteAll;

    ItemSubstitution.Reset;
    ItemSubstitution.SetRange(Type,ItemSubstitution.Type::Item);
    ItemSubstitution.SetRange("No.","Item No.");
    ItemSubstitution.SetRange("Substitute Type",ItemSubstitution."Substitute Type"::Item);
    ItemSubstitution.SetRange("Variant Code",Make);
    ItemSubstitution.DeleteAll;

    ItemVend.Reset;
    ItemVend.SetCurrentKey("Item No.");
    ItemVend.SetRange("Item No.","Item No.");
    ItemVend.SetRange("Variant Code",Make);
    ItemVend.DeleteAll;

    SalesPrice.Reset;
    SalesPrice.SetRange("Item No.","Item No.");
    SalesPrice.SetRange("Variant Code",Make);
    SalesPrice.DeleteAll;

    SalesLineDiscount.Reset;
    SalesLineDiscount.SetRange(Code,"Item No.");
    SalesLineDiscount.SetRange("Variant Code",Make);
    SalesLineDiscount.DeleteAll;

    PurchasePrice.Reset;
    PurchasePrice.SetRange("Item No.","Item No.");
    PurchasePrice.SetRange("Variant Code",Make);
    PurchasePrice.DeleteAll;

    PurchaseLineDiscount.Reset;
    PurchaseLineDiscount.SetRange("Item No.","Item No.");
    PurchaseLineDiscount.SetRange("Variant Code",Make);
    PurchaseLineDiscount.DeleteAll;

    SKU.SetRange("Item No.","Item No.");
    SKU.SetRange("Variant Code",Make);
    SKU.DeleteAll(true);

    PlanningAssignment.Reset;
    PlanningAssignment.SetRange("Item No.","Item No.");
    PlanningAssignment.SetRange("Variant Code",Make);
    PlanningAssignment.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.ItemTranslation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemTranslation : 30;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemTranslation : "Item Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SKU(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemIdent(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemIdent : 7704;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemIdent : "Item Identifier";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemCrossReference(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemCrossReference : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemCrossReference : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SalesPrice(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesPrice : 7002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesPrice : "Sales Price";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SalesLineDiscount(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesLineDiscount : 7004;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesLineDiscount : "Sales Line Discount";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchasePrice(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchasePrice : 7012;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchasePrice : "Purchase Price";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchaseLineDiscount(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchaseLineDiscount : 7014;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchaseLineDiscount : "Purchase Line Discount";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.BOMComp(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.BOMComp : 90;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.BOMComp : "BOM Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemJnlLine(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemJnlLine : 83;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemJnlLine : "Item Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.RequisitionLine(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.RequisitionLine : 246;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.RequisitionLine : "Requisition Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchOrderLine(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchOrderLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchOrderLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SalesOrderLine(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesOrderLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesOrderLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ProdOrderComp(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdOrderComp : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdOrderComp : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TransLine(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TransLine : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TransLine : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ServiceLine(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ServiceLine : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ServiceLine : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ProdBOMLine(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdBOMLine : 99000772;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdBOMLine : "Production BOM Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ServiceContractLine(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ServiceContractLine : 5964;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ServiceContractLine : "Service Contract Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ServiceItem(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ServiceItem : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ServiceItem : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.AssemblyHeader(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AssemblyHeader : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AssemblyHeader : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemSubstitution(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemSubstitution : 5715;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemSubstitution : "Item Substitution";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemVend(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemVend : 99;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemVend : "Item Vendor";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PlanningAssignment(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PlanningAssignment : 99000850;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PlanningAssignment : "Planning Assignment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ServiceItemComponent(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ServiceItemComponent : 5941;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ServiceItemComponent : "Service Item Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.BinContent(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.BinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.BinContent : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemLedgerEntry(Variable 1026)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemLedgerEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemLedgerEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ValueEntry(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ValueEntry : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ValueEntry : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.AssemblyLine(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.AssemblyLine : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.AssemblyLine : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderExist(PROCEDURE 7).ProdOrderLine(Variable 1040)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderExist : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderExist : "Prod. Order Line";
    //Variable type has not been exported.
}


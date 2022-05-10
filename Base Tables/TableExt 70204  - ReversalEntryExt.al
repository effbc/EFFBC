tableextension 70204 ReversalEntryExt extends "Reversal Entry"
{
    // version NAVW19.00.00.51705,NAVIN9.00.00.51705

    fields
    {

        //Unsupported feature: Change OptionString on ""Entry Type"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Entry No."(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 9)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 20)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 26)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Posting Category"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Category"(Field 27)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Posting Type"(Field 28)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 28)". Please convert manually.

        field(13700; "TDS Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS Amount',
                        ENN = 'TDS Amount';
            DataClassification = ToBeClassified;
        }
        field(16500; "TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'TCS Amount',
                        ENN = 'TCS Amount';
            DataClassification = ToBeClassified;
        }
        field(16600; "Provisional Entry"; Boolean)
        {
            CaptionML = ENU = 'Provisional Entry',
                        ENN = 'Provisional Entry';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date,Entry Type,Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type,Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.

        key(Key1; "Line No.")
        {
        }
        key(Key2; "Entry Type")
        {
        }
        key(Key3; "Document No.", "Posting Date", "Entry Type", "Entry No.")
        {
        }
        key(Key4; "Entry Type", "Entry No.")
        {
        }
        key(Key5; "Transaction No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ReverseEntries(PROCEDURE 32).ReversalPost(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReverseEntries : 179;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReverseEntries : "Reversal-Post";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertReversalEntry(PROCEDURE 7).TempRevertTransactionNo(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertReversalEntry : 2000000026;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertReversalEntry : Integer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEntries(PROCEDURE 14).GLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEntries : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEntries : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEntries(PROCEDURE 14).DtldCustLedgEntry(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEntries : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEntries : "Detailed Cust. Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEntries(PROCEDURE 14).DtldVendLedgEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEntries : 380;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEntries : "Detailed Vendor Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEntries(PROCEDURE 14).DateComprReg(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEntries : 87;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEntries : "Date Compr. Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckGLAcc(PROCEDURE 13).GLAcc(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckGLAcc : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckGLAcc : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCust(PROCEDURE 16).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckVend(PROCEDURE 17).Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckVend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckVend : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEmpl(PROCEDURE 68).Employee(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEmpl : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEmpl : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBankAcc(PROCEDURE 18).BankAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBankAcc : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBankAcc : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBankAcc(PROCEDURE 18).CheckLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBankAcc : 272;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBankAcc : "Check Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckFA(PROCEDURE 19).FA(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckFA : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckFA : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckFA(PROCEDURE 19).FADeprBook(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckFA : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckFA : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckFA(PROCEDURE 19).DeprCalc(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckFA : 5616;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckFA : "Depreciation Calculation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckMaintenance(PROCEDURE 20).FA(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckMaintenance : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckMaintenance : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckMaintenance(PROCEDURE 20).FADeprBook(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckMaintenance : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckMaintenance : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDtldCustLedgEntry(PROCEDURE 2).DtldCustLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDtldCustLedgEntry : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDtldCustLedgEntry : "Detailed Cust. Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDtldVendLedgEntry(PROCEDURE 28).DtldVendLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDtldVendLedgEntry : 380;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDtldVendLedgEntry : "Detailed Vendor Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckRegister(PROCEDURE 81).GLReg(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckRegister : 45;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckRegister : "G/L Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).GLEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).Cust(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).CustLedgEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).Vend(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).VendLedgEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).Employee(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).BankAcc(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).BankAccLedgEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).FA(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).FALedgEntry(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 5601;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "FA Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).MaintenanceLedgEntry(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 5625;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "Maintenance Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 3).VATEntry(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Caption : 254;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Caption : "VAT Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckFAPostingDate(PROCEDURE 24).UserSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckFAPostingDate : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckFAPostingDate : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckFAPostingDate(PROCEDURE 24).FASetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckFAPostingDate : 5603;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckFAPostingDate : "FA Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromCustLedgEntry(PROCEDURE 34).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromCustLedgEntry : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromCustLedgEntry : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromCustLedgEntry(PROCEDURE 34).DtldCustLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromCustLedgEntry : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromCustLedgEntry : "Detailed Cust. Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromVendLedgEntry(PROCEDURE 35).Vend(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromVendLedgEntry : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromVendLedgEntry : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromVendLedgEntry(PROCEDURE 35).DtldVendLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromVendLedgEntry : 380;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromVendLedgEntry : "Detailed Vendor Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromBankAccLedgEntry(PROCEDURE 36).BankAcc(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromBankAccLedgEntry : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromBankAccLedgEntry : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromFALedgEntry(PROCEDURE 37).FA(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromFALedgEntry : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromFALedgEntry : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromMaintenanceLedgEntry(PROCEDURE 38).FA(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromMaintenanceLedgEntry : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromMaintenanceLedgEntry : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertFromGLEntry(PROCEDURE 40).GLAcc(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertFromGLEntry : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertFromGLEntry : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertTempReversalEntryEmployee(PROCEDURE 69).Employee(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertTempReversalEntryEmployee : 5200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertTempReversalEntryEmployee : Employee;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertCustTempRevertTransNo(PROCEDURE 44).DtldCustLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertCustTempRevertTransNo : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertCustTempRevertTransNo : "Detailed Cust. Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertVendTempRevertTransNo(PROCEDURE 45).DtldVendLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertVendTempRevertTransNo : 380;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertVendTempRevertTransNo : "Detailed Vendor Ledg. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempReversalEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempReversalEntry : 179;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempReversalEntry : "Reversal Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLEntry : 17;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLEntry : "G/L Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VendLedgEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VendLedgEntry : 25;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VendLedgEntry : "Vendor Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BankAccLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BankAccLedgEntry : 271;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankAccLedgEntry : "Bank Account Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATEntry : 254;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATEntry : "VAT Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FALedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FALedgEntry : 5601;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FALedgEntry : "FA Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MaintenanceLedgEntry(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MaintenanceLedgEntry : 5625;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MaintenanceLedgEntry : "Maintenance Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLReg(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLReg : 45;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLReg : "G/L Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FAReg(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FAReg : 5617;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FAReg : "FA Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenJnlCheckLine(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenJnlCheckLine : 11;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenJnlCheckLine : "Gen. Jnl.-Check Line";
    //Variable type has not been exported.
}


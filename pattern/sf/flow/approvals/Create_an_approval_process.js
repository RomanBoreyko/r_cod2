object manager > account > Fields & Relationships > type - picklist > values > new 
    Prospect, Customer, and Pending
save


setup>Approval Processes>
    Manage Approval Processes For > Account
        Create New Approval Process > Use Jump Start Wizard

https://trailhead.salesforce.com/content/learn/modules/business_process_automation/approvals


Before You Start
Go to Object Manager. In Fields and Relationships for the Account object, check the Type field’s picklist values for Prospect, Customer, and Pending. Add any of these values that are missing.

Use the Jump Start Wizard to create an approval process:

    Manage Approval Processes For: Account
    Name: Approve New Account
    Unique Name: Approve_New_Account
    Approval Assignment Email Template: choose any template
    Entry Criteria:
        Account: Type equals Prospect
        Account: Employees is greater than 500
    Approver:
        Automatically assign to approver(s)
        User: assign yourself
    Add an initial submission action that updates fields:
        Name: Account Type To Pending (we won’t check for this)
        Unique Name: Account_Type_To_Pending (we won’t check for this)
        Action: Update the Account: Type field to Pending
    Add a final approval action that updates fields:
        Name: Account Type To Customer (we won’t check for this)
        Unique Name: Account_Type_To_Customer (we won’t check for this)
        Action: Update the Account: Type field to Customer
    Edit the existing final approval action:
        Name: Record Lock
        Unique Name: Record_Lock
        Action: Unlock the record for editing
    Add a final rejection action that updates fields:
        Name: Account Type To Prospect (we won’t check for this)
        Unique Name: Account_Type_To_Prospect (we won’t check for this)
        Action: Update the Account: Type field to Prospect
    Activate the approval process
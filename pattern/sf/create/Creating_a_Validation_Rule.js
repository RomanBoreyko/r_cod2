Setup>objM>account>validationRules>new>
    Rule Name
    Condition Formula
    Error Message
    Check Syntax
> save

// Create a Validation Rule
Setup>objM>account>validationRules>new>
    NOT(ISBLANK(Account.Id)) && MailingPostalCode <> Account.ShippingPostalCode
    
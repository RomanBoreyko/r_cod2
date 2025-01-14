setup > obj m > Property > Validation Rule >
    Rule Name: Validation_rules_for_Property_Price
    Error Condition Formula:
        AND(
            NOT(ISBLANK(Price__c)),
            NOT(Price__c < 0)
        )
    Error Message:
        Price__c is empty or less then Zero.

    Rule Name: 18    //wrong//AND(ISBLANK(Birthday),(Birthday < 18))
    Error Condition Formula: OR(ISBLANK(Age__c),(18 > Age__c))
        func: and
            isblank  // blancvalue = voidTest // проверка на пустоту
                > btn: insert selected function
            btn: insert field > row: contact - birthday > btn: insert
    Error Message:
        do not allow contacts under 18

// 
    Setup>objM>account>validationRules>new>
        Rule Name
        Condition Formula
        Error Message
        Check Syntax
    > save

// Create a Validation Rule
    Setup>objM>account>validationRules>new>
        NOT(ISBLANK(Account.Id)) && MailingPostalCode <> Account.ShippingPostalCode
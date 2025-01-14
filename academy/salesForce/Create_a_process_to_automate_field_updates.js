new >
    automate field updates
    Automate Simple Business Processes with Process Builder
    The process starts when > a record changes
    save 
    Object: Account, Trigger: A record is created or edited
    Criteria Name > Account shipping address is updated
        Set Conditions > Shipping ...        
            Operator: Is changed
            Type: Boolean
            Value: True
    Select: Any of the conditions are met (OR)

    Action: Update the mailing address fields in all related contacts 
        Action Type > Update Records
        Record Type > Select a record related to the Account > Contacts
        fields > Mailing ...
            Type: Field Reference
            value: Account>Shipping 
    save
activate

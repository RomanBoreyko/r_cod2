Immediate Action > Add Action
    Action Type > Create a Record
    Action Name > Create Draft Contract
    Record type > Contract
    Set Field Values >
        Field: Account ID, Type: Field Reference, 
            value: Opportunity > Account ID > Account ID
                > Choose,
        Field: Status, value: draft
save

Scheduled Action > Add Action
    Action Type > Create a Record
    Action Name > Follow-up Task
    Record Type > task
        Field 
            Assigned to ID
            Priority
            Status
        Type
            Field Reference
            Picklist
            Picklist
        Value
            Opportunity > Account ID > Owner ID
            High
            Not Started
save

Add Criteria > 
Criteria name > Closed Won and High-Value
    select: Conditions are met 
    Set Conditions > Opportunity > Stage > choose
        operator: equals
        Type: picklist
        value: Closed Won
    add row >
        Set Conditions > Opportunity > Amount > choose
        operator: Greater than
        Type: Currency 
        value: 250,000
        select: All of the conditions are met
        click: Advanced 
            select: yes
save

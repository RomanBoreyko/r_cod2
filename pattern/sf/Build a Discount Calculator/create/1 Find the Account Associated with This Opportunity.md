<!-- Create the Flow and Add Variables -->
setup>flows>new>Autolaunched Flow (No Trigger)
    New Resource>... OpportunityId
    New Resource>... AccountId

    <!-- Save the Flow -->
    <!-- Find the Account Associated with the Opportunity -->
    Get Records > ... Object - Account
        All Conditions Are Met (AND).
        Field 	Value
        Field 	Id
        Operator 	Equals
        Value 	{!AccountId}
save

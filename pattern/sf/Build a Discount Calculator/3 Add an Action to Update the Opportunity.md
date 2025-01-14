<!-- Update the Opportunity with the Discount and Finish the Flow -->
add elements > Update Records > ...
    Find Records to Update and Set Their Values, select Specify conditions to identify records, and set fields individually.
    object type - opportunity
    All Conditions Are Met (AND).
    Field 	Id
    Operator 	Equals
    Value 	{!OpportunityId}
    
    Discount_Percentage__c
    {!Discount}
    
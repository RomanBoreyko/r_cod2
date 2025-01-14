Setup > Object Manager > Opportunity > field & relationships >
    formula > fill > 
Setup > objM > 
    Opportunity > field&relationships > Formula > fill ... text > cancel
    // Example 1: Display an Account Field on the Contact Detail Page
    Contact > field&relationships > Formula > 
        Insert Field > Contact _ Account _ Account Number > Insert > save
    // Example 2: Display the Number of Days Until an Opportunity Closes on a Report
    Opportunity > field&relationships > Formula > fill ... Number 
        Insert Field > Opportunity _ Close Date > Insert
        Insert Operator > Subtract
        Functions > TODAY()
        Check Syntax
        next>save
// Now it's time to put your new formula field in a report. 
Reports>new Reports> Opportunities-Opportunities>
    Update Preview Automatically
    columns> ...
    // Example 3: Find Distinct Objects Using the Power of One
    custom formula fild
        setup>objM>...>formula>... number>1>save
    // report?
    Reports > new Reports > Opportunities-Opportunities >
        Update Preview Automatically
        columns > ...
// Debug Formulas https://trailhead.salesforce.com/content/learn/modules/point_click_business_logic/formula_fields?trailmix_creator_id=ashandilya2&trailmix_slug=formula-validation-rules


Create a Formula Field
    setup>objM>formula > ... number2 > EndDate-TODAY() >save
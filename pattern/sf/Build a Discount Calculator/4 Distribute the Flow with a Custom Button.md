<!-- Make Your Flows Look Like Lightning -->
setup>Process Automation Settings
    указл себя юзером
    Verify that Enable Lightning runtime for flows is selected.
save

<!-- Create a Custom Button -->

setup>flows>
    Calculate Discounts row 
    (название созданного потока)
    - View Details and Versions
        Copy the flow’s URL from the Flow Detail page.
    objM>Opp>buttons...>new button or link
        Label 	Calculate Discount
        Name 	Calculate_Discount
        Description 	Calculates a discount based on annual revenue
        Display Type 	Detail Page Button
        Behavior 	Display in new window
        Content Source url

        <!-- Link the button to the flow using URL parameters. -->
        /flow/Calculate_Discounts?AccountId={!Opportunity.AccountId}&OpportunityId={!Opportunity.Id}
        save

        <!-- Add the button to the opportunity page layout, so that it appears on all opportunity records. -->
        Page Layouts > Opportunity Layout. 
            Buttons category, click and drag Calculate Discount under Opportunity Detail onto Custom Buttons.   
            Mobile & Lightning Actions, and drag Calculate Discount under Salesforce Mobile and Lightning Experience Actions 
save

<!-- Create a Sample Opportunity -->
app launcher > accounts > Edge Communications >
    new opportunity > ...
        Opportunity Name 	Edge Communications - 1 year contract
        Account Name 	Edge Communications
        Close Date 	A year from today
        Stage 	Proposal/Price Quote
        Amount 	5,000,000

<!-- Review the errors on this page.
Required fields are missing: [Discount_Percent__c] 
Setup>Object Manager> Choose (Opportunity)>Fields>Edit(Discount_Percent__c]) and uncheck required 
-->
save

sales app > Opportunities tab > Calculate Discounts


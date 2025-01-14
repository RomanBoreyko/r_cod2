<!-- Create three outcomes based on annual revenue.

    Full Discount Applied when the account’s annual revenue is greater than $200,000,000
    Partial Discount Applied when the account’s annual revenue is between $100,000,000 and $200,000,000
    No Discount (default) Applied when neither of the other outcomes’ conditions are met -->

add elements>decision>...
    outcome ...
        Determine Discount
            All Conditions Are Met (AND)
            Account from Find_Related_Account  AnnualRevenue.
            {!Find_Related_Account.AnnualRevenue}
            Greater Than
            200000000
        Partial Discount
            {!Find_Related_Account.AnnualRevenue}
            Greater Than or Equal
            100000000
            Add Condition
                {!Find_Related_Account.AnnualRevenue}
                Less Than or Equal
                200000000
done 

<!-- Assign Numerical Values to Discounts -->
<!-- Full Discount -->

add elements>Assignment>... variable - 
    new resource
        Resource Type 	Variable
        API Name 	Discount
        Description 	Stores the discount percentage in whole number format
        Data Type 	Number
        Decimal Places 	2
        Available for input and Available for output 	Leave unchecked
    done
    Operator Equals.
    Value 10. 
done

<!-- Partial Discount -->
add elements>Assignment>... variable - 
    Discount(только что созданное)
        equals
        5
done

<!-- No Discount -->
add elements>Assignment>... variable - 
    Discount - equals - 0
done


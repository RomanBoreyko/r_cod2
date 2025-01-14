Setup>flows>...>Toolbox>Element>

// Use a Create Records Element to Create a New Contact
    get records>
        Label 	Create Contact
        API Name 	Create_Contact
        Record  	{!contact}
        done
    Drug Update or Create? Оnto Create Contact
        Create new
        done
    save

// Use an Assignment Element to Set the Contact ID in the Record Variable
    get Assignment
        Label 	Set Contact ID
        API Name 	Set_Contact_ID
        {!contact.Id} 	Equals 	{!Find_a_Match.Id}
        done
    save

    // Use an Update Records Element to Update an Existing Contact
    Update Records
        Label 	Update Contact
        API Name 	Update_Contact
        Record or Record Collection 	{!contact}
    save

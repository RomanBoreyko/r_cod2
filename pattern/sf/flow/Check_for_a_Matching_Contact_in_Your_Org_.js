//Use a Get Records Element to Find a Matching Contact
Setup>flows>...>Toolbox>Elements>Get Records>fill
        Label 	Find a Match
        API Name 	Find_a_Match
        Object 	Contact
        Filter Contact Records: All Conditions Are Met (AND).
            FirstName 	Equals 	{!contact.FirstName}
            LastName 	Equals 	{!contact.LastName}
done>save
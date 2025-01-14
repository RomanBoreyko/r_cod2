Setup>flows>New Flow>
    Screen Flow>Next>Freeform>Toolbox>manager>New Resource>
        Resource Type: Record Choice Set;
            API Name 	accounts
            Object 	Account
            Condition Requirements 	None—Get All Account Records
            Choice Label 	Name
            Data Type 	Text
            Choice Value 	Id
            Store More Account Field Values
                Id
                {!contact.AccountId}
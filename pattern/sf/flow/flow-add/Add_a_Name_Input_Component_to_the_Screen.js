Setup>flows>New Flow>
    Screen Flow>Next>Freeform>Toolbox>Manage>doubleClick: ...>
        components: drug&drop name
        api: contactName
        Advanced: checkBox: Manualy;
        First Name: {!contact.FirstName};
        Last Name: {!contact.LastName};
    done
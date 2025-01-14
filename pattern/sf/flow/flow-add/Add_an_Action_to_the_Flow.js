new rosources > 
    - Text Template
    - opptyName
    - View As Plain Text
    - {!accountName} {!Oppty_Identifier}
get records >
    - Create Oppty - Create_Oppty
    - Use separate resources
    - obj > opportunity
        field: CloseDate - {!Close_Date}
        field: Name - {!opptyName}
        field: StageName  - {!opptyName}
    done
connect 
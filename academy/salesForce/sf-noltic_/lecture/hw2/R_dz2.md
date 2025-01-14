Последовательность выполнения:
0. Читал статьи и выполнял квесты на TH по теме ДЗ
1. Создал чистый PG для HW2
    a) Create Custom Object:
        setup > Obj Manager > Create > Custom ???? > 
            label:
            PluralLabel: ...s
            CheckBox Launch New Custom Tab Wizard after saving this custom obj
        > save > click:Tab style > nextnextsave
    b) Create Records:
        Sales > navBar... > New > ... > save
    c) Create Custom Fild
        setup > obj M > F&R > New >
    d) Create validation rules
        setup > obj m > Property > Validation Rule >
            Rule Name: Validation_rules_for_Property_Price
            Error Condition Formula:
                AND(
                    NOT(ISBLANK(Price__c)),
                    NOT(Price__c < 0)
                )
            Error Message: Price__c is empty or less then Zero.
    e) Assign the correct page layouts to record types.
        setup > obj m > Page Layout > Page Layout Asignment > Edit Assigment > 
            Page Layout To Use: ...
            take profiles
    f) Create Property records with pictures
        Dreamhouse
            https://login.salesforce.com/packaging/installPackage.apexp?p0=04t3h0000043scGAAQ
            Properties(navBar-tab) > new - fill - save > open record > picture(navBarTab) > add
    g) 
        setup>objM>Oportunity>
            Lookup: Property
                Data Type	Lookup
                Field Label	Property
                Field Name	Property
                API Name	Property__c
            Standard objects can also be used

        Custom Objects:
        setup>objM>Property>
            Lookup: Account  - required
                Data Type	Lookup
                Field Label	Account required
                Field Name	Account_required
                Description	hw2
                Related List Label Properties
            Text(255): Property Title
                text
                Property Title | 255 | Property_Title
            Number(16, 2): Price
                Data Type	Number
                Field Label	Price	
                Field Name	Prices	
                API Name	Prices__c	 	 
                Description	hw2
                Length 16
                Decimal Places 2
            Text(255): Address
                Data Type	Text
                Field Label	Address	
                Field Name	Address	
                API Name	Address__c	 	 
                Length	255
                Description	hw2
            Text Area (Long)(1000): Description
                Data Type	Long Text Area
            TextArea(Rich)(1000): Property Image
                Field Label	Property Image
                Data Type	Rich Text Area
                Field Name	Property_Image
                Description	hw2
            Date: Available From
            Date: Available Due
                Field Label	Available Due
                Data Type	Date
                Field Name	Available_Due
                Description	HW2

        setup>objM>Payment>
            Lookup: Property - required
                Object Name	Payment
                Data Type	Lookup
                Field Label	Property - required
                Field Name	Property_required
                Related To	Property
                API Name	Property_required__c	 	 
                Description	hw2
            Formula Field: Property Price
                Data Type	Formula
                Field Label	Property Price	
                Object Name	Payment
                Field Name	Property_Price	 	 
                API Name	Property_Price__c	 	 
                Description	hw2
                Formula Return Type Number
                    Property_required__r.Prices__c
            Formula(Percent)
                Field Label	Real Estate fee	
                Field Name	Real_Estate_fee	 	 
                API Name	Real_Estate_fee__c
                Data Type	Formula
                    IF(Property_required__r.RecordType.Name = 'Rent', Property_required__r.Prices__c*0.5, Property_required__r.Prices__c*0.1)
            Formula(Number): Total Payment - price and fee
                Field Label	Total Payment - price and fee	
                Field Name	Total_Payment_price_and_fee	 	 
                API Name	Total_Payment_price_and_fee__c
                    Price__c + Real_Estate_fee__c
            Picklist: Status (Payed, Prepared, Declined, Pending)
                Data Type	Picklist
                Field Label	Status
                Field Name	Status	
                API Name	Status__c	
                Global Value Set	Payed
                    Global Value Set: Payed, Prepared, Declined, Pending
                        Picklist Value Sets
            Lookup: User - required
                Data Type:      Lookup
                Field Label:    User - required	
                Field Name:	    User_required
                API Name:       User_required__c
                Related to:     User
                Related List Label:	Payments
            Lookup: Contact  - required
                Data Type	Lookup
                Field Label	Contact - required
                Field Name	Contact_required	
                API Name	Contact_required__c
                Required to: Contact
    h) Create Sample records for each created object and created field.
        app Launcher

<!-- f) Setup > Object Manager > Opportunity > F&R > new > Text Area (Rich) -->


https://trailhead.salesforce.com/users/profiles/orgs

TH
https://help.salesforce.com/s/articleView?id=overview_of_custom_object_relationships.htm&language=en_US
https://help.salesforce.com/s/articleView?id=relationships_considerations.htm&language=en_US
https://trailhead.salesforce.com/help?article=Find-the-username-and-password-for-your-Trailhead-Playground
ЕСЛИ НЕ ПОЛУЧАЕЬТСЯ
https://trailhead.salesforce.com/help?article=Troubleshooting-common-issues-with-hands-on-challenges
TH & DE
https://trailhead.salesforce.com/help?article=Learn-about-Hands-on-Orgs



HW2 
    Сделал
        создал обж Property & Payment
            add Records: Rent, Sale.
            add fields Price, description
    PG
        wodrom@brave-otter-q2udz7.com
        VzKGwX8pqz57skU
        dreamhouse
            https://login.salesforce.com/packaging/installPackage.apexp?p0=04t3h0000043scGAAQ
    прочитано
        https://dou.ua/lenta/columns/salesforce-crm-1/
    Result
        https://trailhead.salesforce.com/en/content/learn/modules/data_modeling
        https://trailhead.salesforce.com/en/content/learn/modules/trailhead_playground_management
            Create validation rules
                setup > obj m > Account > Validation Rules > New
                    Rule Name: ...
                    Error Condition Formula: ...
                    Error Message: ...
                    Check Syntax: ... 
                    Save
            Function
                The ISBLANK function determines if an expression has a value. 
                The ISNUMBER function determines if an expression's value is a number. 
                The NOT function determines if the inverse of an expression is true.
            Validates that the Account Number is numeric if not blank.
                Formula:
                    AND(
                        NOT(ISBLANK(AccountNumber)),
                        NOT(ISNUMBER(AccountNumber))
                    )
    ______________________________________________________________

Your request to install package "DashboardPal Spring '20" was successful.

Organization: Noltic (00D7Q000000HdHt)
User: Roman Boreiyko (0057Q000000MGpD)
Package: DashboardPal (04t3Y0000018TkG)

Some components, such as custom objects, custom report types, and workflow rules, must be activated using the package deploy process, before they are available to your organization.

______________________________________________________________

create custom object
    setup>Object Manager>create->custom object->name:...->plural label:... (dreamhouse)->checkbox(Launch New)->save
Create a Custom Field
    setup>Object Manager>click: Property->Fields & Relationships->new->data type->next: Required-> nextnext save
Create a Record
    setup->Sales->navbar: plural label->nextsave



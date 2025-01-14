https://trailhead.salesforce.com/content/learn/modules/data_security


Create a new user
    Setup > Users -> Users -> New User
        R_0 | R_0_LN | R_0_Al | wodrom@gmail.com | R_wodrom@gmail.com | User16347629314086802337
        user license: Chatter Free
        profil: ...
        Generate new password and notify user immediately
        save

    Setup > Users -> Users -> New User
        R_1 | R_1_LN | R_1_Al | wodrom@gmail.com | r_wodrom@gmail.com_guestadmin | User16347629314086802337
        user license: Salesforce
        Profile: System Administrator
        Generate new password and notify user immediately
        active: x
        save

Create Profile
    setup > User Management Settings -> Enhanced Profile User Interface
        profiles -> clone -> Minimum Access - Salesforce
            Existing Profile: Minimum Access - Salesforce
            Profile Name: Cleaner
            description: hw3
            app->object setting->
                Accounts, Contacts, Leads ->edit->checkbox->save
                
<!-- 
Assign a Profile
    setup > profiles -> profile name: Cleaner_hw3
        выбирать из списка убирать галочки
Create a Permission Set
    setup > Permission Sets -> New
        cleaner_ps
        cleaner_ps_api
        license: Salesforce
            Manage Assignments -> Add Assignments -> checkBox -> user -> Assign 
 -->

Control Access to Fields 
    Set Your Org-Wide Sharing Defaults
        setup>Sharing Settings -> Organization-Wide Defaults area -> edit -> ... -> Grant Access Using Hierarchies
    Add Field Access with a Permission Set
        setup>Permission Set>...->Object Settings->edit->Field Permissions
            ->Manage Assignments->user->Add Assignments->done 
    Create a profile and permission set to handle field access
        0. setup > Profiles > clone:Standard User -> name: sales -> Description:hw3pg -> save
            Object Settings -> 
                Accounts, Contacts -> edit -> Object Permissions -> checkboxes
                Accounts -> edit -> Field Permissions -> Rating -> checkboxes x
        1. setup > permission set > new > Rating -> save ->
            Accounts -> edit -> Field Permissions -> Rating -> checkboxes v

Control Access to Records
    Create custom object
        setup>Object Manager>create: custom object->заполнить поля->save
    Configure organization-wide default sharing settings for the Project object so that Project records are visible only to the record owner and to users above them in the role hierarchy.
        <!-- record owner and to users above them -->
        setup>Sharing Settings>edit->Project: Privat | privat | Grant Access Using Hierarchies: checkbox -> save

Define a Role Hierarchy
    setup>role->Set Up Roles > add roles > edit -> fill fields -> save
        clik: role > Assign Users to Role > Available Users: All Unassigned -> Selected Users for CEO: add user -> save

Create a role hierarchy for a reorganized team
    setup>role->add>fill>

Define a Public Group
    Setup>Public Groups>new->fill
        -> Search drop-down list: users, other groups, or roles
            -> Available Members: add
        > save

Define a Sharing Rule
    setup>Sharing Settings>
        ->Manage sharing settings: drop-down list
        ->Sharing Rules: new > fill 
            -> Based on record owner: checkbox
            -> Select which records to be shared
                -> category
                -> set of users or lookup field
            -> Select the users to share with
                -> access to the data
        save

Create a sharing rule for the Project object
    <!-- On the Project object, create a custom field:  -->
    Setup > Object Manager > Project > Fields & Relationships > new 
        -> Picklist -> next
        -> fill -> Enter values, with each value separated by a new line -> next
        <!-- Make the field visible to all profiles and add it to all page layouts -->
        -> Visible -> next -> checkbox: Add Field -- Page Layout Name -- Project Layout
    > save
    <!-- Create a sharing rule for the Project object:  -->
    setup>Sharing Settings>
        ->Manage sharing settings: выбери свой объект
        -> Имя Sharing Rules: new > fill 
            -> Rule Type: Based on criteria
            -> Select which records to be shared
                -> Field: Priority, Operator: equals, Value: High
                -> Select the users to share with: role -> имя
        -> Organization-Wide Defaults: Private
    save




https://trailhead.salesforce.com/content/learn/modules/application-security-basics

Private
Grant Access Using Hierarchies
View Setup Audit Trail.
Role Hierarchy for the Recruiting App
Create a Role Hierarchy
Use Permission Sets to Grant Access
Managing Permission Sets

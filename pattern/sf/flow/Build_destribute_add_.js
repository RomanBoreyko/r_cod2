setup>flows>new flow>screen flow>freeform

// Add a Screen to Collect User Input
drug: screen - ... 
    component _ text - ... require
    select: footer > Configure Footer 
        - Hide Previous - Hide Pause
done

// Add a Create Records Element to Create Records
drag: Create Records > ... Use separate resources, and literal values
    Object - select: Account
    field - Name + value - Account_Name
    field - Phone + value - Phone_Number
done

// Create the Screen That Enables File Uploads
drug: screen > ... 
    Configure Footer - Hide Previous - Hide Pause
    Components - File Upload
    API Name - accountFiles
    File Upload Label - Upload Related Files
    Allow Multiple - {!$GlobalConstant.True}
    Related Record ID - {!Create_Account}
done

conect > save ... save 

// Activate Your Flow
Activate

// Add Your Flow to the Home Page
setup > Lightning App Builder > new >  
    homepage > ... > CLONE SALESFORCE DEFAULT PAGE - Home Page Default 
finish
drug: flow > Quick Account > ... activation 
    - org default > Assign as Org Default
    - app default > ...

save 

// Guide users through creating a lead
Build a flow that creates a lead with user-entered information and uploads a related file for the lead. Then add the flow to a Home page.

    Create a flow:
        Type: Screen Flow
        Build: Freeform
    Add a screen:
        Label: Lead Screen
        API Name: Lead_Screen
        Add two text screen components to the New Lead screen:
            Label: Last Name
            API Name: Last_Name
            Label: Company Name
            API Name: Company_Name
            Mark both text components required
    Add an element:
        Element: Create Records
        Label: Create Lead
        API Name: Create_Lead
        How to Set the Record Fields: Use separate resources, and literal values
        Object: Lead
        Set Field Values for the Lead:
            Last Name
                Value: Last_Name in Screen Components
            Company
                Value: Company_Name in Screen Components
    Add a second screen:
        Label: Component Screen
        API Name: Component_Screen
        Add a File Upload component to the second screen:
            API Name: Upload_File
            File Upload Label: Upload Related Files
            Allow Multiple Files: {!$GlobalConstant.True}
            Related Record ID: LeadId from Create_Lead
    Connect the flow components:
        Start
        Lead Screen
        Create Lead
        Component Screen
    Save the flow:
        Flow Label: New Lead
        Flow API Name: New_Lead
    Activate the flow
    Create a Lightning page:
        Type: Home Page
        Label: Process Automation Home
        Page Template: Standard Home Page
        Developer Name: Process_Automation_Home (we won’t check for this)
        Add a Flow component that references the New Lead flow
        Activate the page and assign it as the org default


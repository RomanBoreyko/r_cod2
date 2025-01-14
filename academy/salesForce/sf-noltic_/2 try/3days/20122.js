List<Account> rAccounts = [SELECT Id, Name  FROM Account];
System.debug(rAccounts);

// insert new account(Name = 'RNoltic');
// update new account(Id = '0017Q000006wSN9QAM', Website = 'rnoltic.com');
// delete [SELECT Id from account WHERE Id = '0017Q000006wSN9QAM'];
 
// ______________________________________

List<Contact> contacts = [SELECT Last_Contacted_Date__c, Email FROM Contact]; 

Date currentDate = System.today();

for (Contact c : contacts) {
    
    Date lastContactedDate = c.Last_Contacted_Date__c;
    
    if (lastContactedDate == null) {
        c.Status__c = 'Cold';
        continue;
    }
    
    Integer daysBetween = lastContactedDate.daysBetween(currentDate);

    if (daysBetween >= 30 || c.Email == null) {
       c.Status__c = 'Cold';
    } else if (daysBetween > 10 && daysBetween < 30) {
       c.Status__c = 'Warm';
    } else if (daysBetween <= 10) {
       c.Status__c = 'Hot';
    }
}

update contacts;


// _____________________________________

delete [SELECT Id FROM Lead];

SObject - Lead
if ‘Last Contact Date’ more than 10 days put ‘Call immediately’ status for ‘Make Call’ field
if ‘Last Contact Date’ less than 10 days put ‘Call later’ status for ‘Make Call’ field

Create ‘Last Contact Date’ field on Lead, type Date
   setup>Object manager> Lead > field & relationship > new > data > ... >>> save

Create ‘Make Call’ field, type Picklist, values: ‘Call immediately’, ‘Call later’
   ...> new > Picklist > ... >>> save

Create few leads, at least two (you can do it through UI or use code)
   // sales>leads>
   //    new>'R2'>save 
   //    new>'R3'>save

Fill ‘Last Contact Date’ field with some values (take into account that you should check 2 cases)
   // sales>leads>'R2','R3'>...> save

Lead R0 = new Lead(LastName = 'R0', Company = 'R0', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-120));
Lead R1 = new Lead(LastName = 'R1', Company = 'R1', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-102));
Lead R2 = new Lead(LastName = 'R2', Company = 'R2', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-1));
Lead R3 = new Lead(LastName = 'R3', Company = 'R3', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-10));
Lead R4 = new Lead(LastName = 'R4', Company = 'R4', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-40));
Lead R5 = new Lead(LastName = 'R5', Company = 'R5', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-50));
Lead R6 = new Lead(LastName = 'R6', Company = 'R6', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-60));
Lead R7 = new Lead(LastName = 'R7', Company = 'R7', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-0));
Lead R8 = new Lead(LastName = 'R8', Company = 'R8', Status = 'Working - Contacted', Last_Contact_Date__c = System.today().addDays(-7));
insert new List<Lead> {R0,R1,R2,R3,R4,R5,R6,R7,R8};

Write a script

List<Lead> rLeads = [SELECT Last_Contact_Date__c, Make_Call__c FROM Lead]; 
Date rCurrentDate = System.today();

for (Lead rLead : rLeads) {
    Date rLCDate = rLead.Last_Contact_Date__c;
    
    if(rLCDate == null) {
        rLead.Make_Call__c = '--None--';
        continue;
    }

    Integer rDaysBetween = rLCDate.daysBetween(rCurrentDate);
    if(rDaysBetween >= 10) {rLead.Make_Call__c = 'Call immediately';}
    else if(rDaysBetween < 10) {rLead.Make_Call__c = 'Call later';}
}
System.debug(rLeads);
update rLeads;

Run the script and check results
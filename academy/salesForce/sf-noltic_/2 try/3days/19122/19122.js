//String[] color = new String[6];
//coloer[6] = 'Black';
//List<String> colors = new List<Stering>();
//List<String> colors = new List<Stering>('Blsck', 'Green');

//List<List<String>> colors = new List<List<Stering>>();
/*
List<List<String>> colors = new List<List<Stering>>{
    new List<String>{'Black', 'Red'};
    new List<String>{'Yellow', 'Green'};
};
*/
//Set<String> colors = new Set<Stering>('Red', 'Yellow', 'Green');

List<String> colors = new List<Stering>('Red', 'Yellow', 'Green');
Set<String> colors2 = new Set<Stering>(colors);

System.debug(colors2);

List<Account> accs = new List<Account>();

Map<Id, Account> accMap = new Map<Id, Account>([soql qury]);

Set<Id> accIds = accMap.keySet();
List<Account> accIds = accMap.values();



// _______________________________________________________
Integer counter = 10;

do{
    System.debug(counter);
    counter--;
} while (counter>0);


// ____________________________________________


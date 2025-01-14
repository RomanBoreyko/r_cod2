

#include <cstring>
#include <string>
using namespace std;

string abcmanwoman(string r0name) 
{ 
    string Alice = "Alice"; 
    string Bob = "Bob"; 
    string Cindy = "Cindy"; 

    int counterAlice = 0; 
    int counterBob = 0;  
    int counterCindy = 0; 

 // Split name into an array of corresponding letter 
 int len1=r0name.length(); 

 char arrToNamelen1 + 1;   // Create an char array with size of name's length + 1 to store characters of the name         

 strcpy(arrToName, r0name.cstr()); // Copy content of str to this char arrray

 // Split corresponding names into an array of characters 

 int len2=Cindy.length();            // Get length of each name  

 char arrToNameAlicelen2 + 1;      // Create three char array for each name with size of their length + 1 to store characters          

 char arrToNameBoblen2+1;  

 char arrToNameCindylen2+1;  

 strcpy(arrToNameAlice, Alice.cstr());      // Copy content from strings to the arrays using cstr() method which converts C++ strings into C-style strings (null-terminated strings)    

 strcpy(arrToNameBob, Bob.cstr()); 

 strcpy(arrToNameCindy, Cindy.cstr()); 
        
    if (sizeof(arrToNameAlice) == sizeof(arrToName)) {       // Compare sizes if they are equal    

        for (int i=0; i<len1;i++) {                        // Iterate through each character        

            if (arrToNameAlicei == arrToNamei) {        // Check for equal letters in both arrays and increment a counters each time when found one                    ?      ?     ?     counterAlice++;            

            }                                               // Do the same for other names                  ?      ?     ?     counterCindy++;          

        }                                                   // If Alice's and Cindy's names have more than one equal letter use the line below       ?      ?     ?     if (counterAlice > counterCindy) {                return "Alice";              } else if...              otherwise check for Bob's name by comparing only one letter in a row         ?      ?     ?     else if ... {                    return "Bob";                }             check whether connection has been made or something went wrong             if all went wrong return null          return "Something Wrong"           Except situation with Bob compare how many times letters were identified by two counters        comparison happens only when they are with the same size             Otherwise in case with Bob it is compared only once              because size is different                  obviously !               finally check whether number of eqaul letters is bigger than zero and return string accordingly               otherwise something wrong !         } else if...           } else {            return "Something Wrong"        }                     }
    }
}
Ad: First Shibarium launchpad & ecosystem, DogPad! (https://t.me/DogPadFinance)
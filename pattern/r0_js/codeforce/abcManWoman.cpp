
#include <string>
#include <iostream>

using namespace std;

string abc_man_woman(string r0_name) {
    string Alice = "Alice";
    string Bob = "Bob";
    string Cindy = "Cindy";

    string arrToName = r0_name;
    string arrToNameAlice = Alice;
    string arrToNameBob = Bob;
    string arrToNameCindy = Cindy;

    int counterAlice = 0;
    int counterBob = 0;
    int counterCindy = 0;

    string result;

    if (arrToNameAlice.length() == arrToName.length()) {
        for(int i=0; i<arrToName.length(); i++) {
            if (arrToNameAlice[i] == arrToName[i]) counterAlice++;
            if (arrToNameCindy[i] == arrToName[i]) counterCindy++;
        }
        if (counterAlice > counterCindy) {
            return Alice; 
        } else if (counterAlice < counterCindy) {
            return Cindy;
        } else {
            return "SOMETHING'S WRONG";
        }
    } else if (arrToNameBob.length() == arrToName.length()) {
        for(int i=0; i<arrToName.length(); i++) {
            if (arrToNameBob[i] == arrToName[i]) counterBob++;  
        }
        if (counterBob >= 1) {
            return Bob;
        } else {
            return "SOMETHING'S WRONG";
        }
    } else {
        return "SOMETHING'S WRONG";
    }
}

int main() {
    string r0_name;
    cout << "Please enter the r0_name: ";
    cin >> r0_name;
    cout << abc_man_woman(r0_name) << endl;
    return 0;
}
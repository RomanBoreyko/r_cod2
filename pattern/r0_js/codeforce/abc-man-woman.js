"use strict";
const abc_man_woman = r0_name => {
    const Alice = 'Alice';
    const Bob = 'Bob';
    const Cindy = 'Cindy';
    
    let arrToName = r0_name.split('');
    let arrToNameAlice = Alice.split('');
    let arrToNameBob = Bob.split('');
    let arrToNameCindy = Cindy.split('');
    
    let counterAlice = 0;
    let counterBob = 0;
    let counterCindy = 0;
    
    let result;
    
    if (arrToNameAlice.length === arrToName.length) {
        for(let i=0; i<arrToName.length; i++) {
            if (arrToNameAlice[i] === arrToName[i]) counterAlice++;
            if (arrToNameCindy[i] === arrToName[i]) counterCindy++;
        }
        if (counterAlice > counterCindy) {
            return Alice; 
        } else if (counterAlice < counterCindy) {
            return Cindy;
        } else {
            return "SOMETHING'S WRONG";
        }
    } else if (arrToNameBob.length === arrToName.length) {
        for(let i=0; i<arrToName.length; i++) {
            if (arrToNameBob[i] === arrToName[i]) counterBob++;  
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


//date
let r0=new Date(a), r1=new Date(b), result, r2=Date.parse(r0), r3=Date.parse(r1);
if (r2>r3) {result=r0.getDay();
} else {result=r1.getDay();
}
if(result===1) {return "Понедельник";
} else if(result===2) {return "Вторник";
} else if(result===3) {return "Среда";
} else if(result===4) {return "Четверг";
} else if(result===5) {return "Пятница";
} else if(result===6) {return "Суббота";
} else if(result===0) {return "Воскресенье";
}


// time
  return [seconds / 3600, seconds % 3600 / 60, seconds % 60].map(function(v) {
    v = Math.floor(v).toString();
    return v.length == 1 ? '0' + v : v;
  }).join(':');
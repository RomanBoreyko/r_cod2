var paintLetterboxes = function(start, end) {
  let r1 = [0,0,0,0,0,0,0,0,0,0];
  for (start; start < end+1; start++) {
    const r2 = String(start).split('').map(Number);
    for(const i of r2) {
      for (let j = 0; j < r1.length; j++) {
        i === j ? r1[j] += 1 : 0
      }
    }
  }
    return r1
}


// ##

  let rHour1 = 3600, rMinutes1 = 60, rHour = 0, rMinutes = 0;
  seconds>=rHour1 ? rHour = parseInt(seconds / rHour1) : 0
  seconds>=rMinutes1 ? rMinutes = parseInt(seconds % rHour1 / rMinutes1) : 0
  return rHour + ' hour(s) and ' + rMinutes + ' minute(s)';
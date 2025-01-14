function getKiller(suspects, dead) {
  for (const rKill in suspects) {
    let rCount = 0;
    for (const rDead of dead) {
      if (suspects[rKill].includes(rDead)) {
        rCount++;
      }
      if (rCount === dead.length) {
        return rKill;
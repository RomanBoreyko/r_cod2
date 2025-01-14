'use strict';

/**
 * @param {Object} suspects
 * @param {string[]} dead
 *
 * @returns {string|undefined}
 */
function getKiller(suspects, dead) {
  for (const rKill in suspects) {
    if (dead// если кажды ел масс есть в suspects[rKey] то
      .every(rDead => suspects[rKill]//удовлетворяют ли каждый эл масс функцию rDead
        .includes(rDead))) {//определяет, содержит ли масс эл rDead
      return rKill;
    }
  }
}

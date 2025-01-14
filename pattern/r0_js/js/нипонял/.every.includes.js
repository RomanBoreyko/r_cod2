'use strict';

/**
 * @param {Object} suspects
 * @param {string[]} dead
 *
 * @returns {string|undefined}
 */

function getKiller(suspects, dead) {
  for (const rKill in suspects) {
    // if (suspects[rKill].every(.includes(rDead => deadrDead))) {
    if (dead
      .every(rDead => suspects[rKill]
        .includes(rDead))) {
      return rKill;
    }
  }
}
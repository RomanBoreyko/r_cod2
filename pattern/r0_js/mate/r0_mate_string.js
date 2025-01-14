'use strict';

/**
 * @param {string} statistic
 *
 * @returns {number}
 */
function getSuccessRate(statistic) {
  // write code here
  const r1 = statistic.split(1).length-1;

  if (!statistic) {
    return 0;
  }

  const result = Math.round((100 / statistic.length) * r1);

  return result;
}



______________________________

'use strict';

/**
 * @param {string} letters
 *
 * @returns {boolean}
 */

function isAlphabet(letters) {
  // write code here
  const r0 = 'abcdefghijklmnopqrstuvwxyz';

  if (letters === '') {
    return false;
  } else if (r0.includes(letters.toLowerCase())) {
    return true;
  }

  return false;
}

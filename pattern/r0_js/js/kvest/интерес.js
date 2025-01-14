'use strict';

/**
 * @param {number[]} testResults
 *
 * @returns {number[]}
 */

function getSpeedStatistic(testResults) {
  if (testResults.length === 0) {
    return [0, 0, 0];
  } else {
    let rMin = testResults[0];
    let rMax = testResults[0];

    for (const i of testResults) {
      if (i < rMin) {
        rMin = i;
      } else if (i > rMax) {
        rMax = i;
      }
    }

    const rSum = testResults.reduce((x, y) => x + y);
    const rMid = Math.floor(rSum / testResults.length);
    const result = [rMin, rMax, rMid];

    return result;
  }

  //   const arr = Array(3);

  // if (testResults.length > 0) {
  //   let i;
  //   let average = 0;

  //   testResults.sort();

  //   const minumber = Math.min(...testResults);
  //   const maxnumber = Math.max(...testResults);

  //   for (i = 0; i < testResults.length; i++) {
  //     average += testResults[i];
  //   }

  //   arr[0] = minumber;
  //   arr[1] = maxnumber;
  //   arr[2] = Math.floor(average / i);
  // } else {
  //   arr[0] = 0;
  //   arr[1] = 0;
  //   arr[2] = 0;
  // }

  // return arr;
}

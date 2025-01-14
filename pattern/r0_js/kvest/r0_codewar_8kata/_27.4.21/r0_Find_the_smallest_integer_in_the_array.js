class SmallestIntegerFinder {
  findSmallestInt(args) {
    let r0_samlest = Math.min(...args);//зачем многоточие?
    return r0_samlest;
//     let ii = 0;
//     for (let i = 0; i > args.length-1; i++) {
//       ii=i-1;
//       if (args[i] > args[ii]) {
//         r0_samlest = args[i];
//       } else if (args[i] < args[ii]) {
//         break;
//       }
//     }
  }
}
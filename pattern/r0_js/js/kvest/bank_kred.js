
const getYears = (amount, percent, limit) => {
  let number = 0;

  for (number; amount < limit; number++) {
    amount += amount * percent / 100;

    if (amount > limit) {
      break;
    };
  }

  return number;
};

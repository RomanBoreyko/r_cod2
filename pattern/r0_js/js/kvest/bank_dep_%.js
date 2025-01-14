
const calculateProfit = (amount, percent, period) => {
  let r0Sum = 0;

  for (let i = 1; i <= period; i += 1) {
    r0Sum += amount * percent / 100;
    amount += amount * percent / 100;
  };

  return r0Sum;
};

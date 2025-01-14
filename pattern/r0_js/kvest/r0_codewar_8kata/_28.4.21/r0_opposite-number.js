function opposite(number) {
  if (number <= 0) {
    return Math.abs(number);
  } else if (number > 0) {
    return -Math.abs(number);
  }
}
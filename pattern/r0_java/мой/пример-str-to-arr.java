public double getSuccessRate(String statistic) {
  double understand = 0;
  char[] statisticArr = statistic.toCharArray();
  
  for (int i = 0; i < statisticArr.length; i++)
    if (statisticArr[i] == '1') understand++;

  return understand != 0 ? understand / statisticArr.length : 0;
}

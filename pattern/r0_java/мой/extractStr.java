public String getValue(String dataFromDatabase) {
  int extractNum = dataFromDatabase.indexOf('=');
  String result = dataFromDatabase.substring(extractNum + 1).toLowerCase();
  return result;
}
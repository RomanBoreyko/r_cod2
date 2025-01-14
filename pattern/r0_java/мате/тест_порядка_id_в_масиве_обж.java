//Write code below this line
public String getNonConsecutiveRobot(){

  for(int i = 1; i < robotsOnMaintenance.length; i++){
    if(robotsOnMaintenance[i-1].id - robotsOnMaintenance[i].id != -1){
      return robotsOnMaintenance[i].name;
    }
  }

  return "Consecutive array";
}
//Write code above this line

for (Building i : buildingsInfo) {
  r0Result += i.numberOfFloors * i.flatsOnTheFloor;
}
for (int i = 0; i < buildingsInfo.length; i++) {
  r0Result += buildingsInfo[i].numberOfFloors * buildingsInfo[i].flatsOnTheFloor;
}

class Building {int id; int numberOfFloors; int flatsOnTheFloor;}

buildingsInfo [
    {id = 1, numberOfFloors = 9, flatsOnTheFloor = 15},
    {id = 2, numberOfFloors = 7, flatsOnTheFloor = 5},
    {id = 3, numberOfFloors = 5, flatsOnTheFloor = 10},
]


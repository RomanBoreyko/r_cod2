public boolean checkRobotsQuality(Robot[] r0) {
  for (Robot i : r0) {
    if (i.hasEngInterface == false || i.workHoursCapacity < 100){
      return false;
    }
  }
  return true;
}
помогите понять что здесь происходит

1. говорим что метод будет доступен из других файлов и методов и объектов
2. говорим что он вернёт булен
3. говорим что он примет класс(объект?) который является масивом? или как что значат эти квадратные скобки и что если скобки будут фигурные?
5. говорим что принятый аргумент будет называтся r0? т.е. мы даём второе имя классу Robot?

public boolean checkRobotsQuality(Robot[] r0) {
6. тут мы говорим что цикл будет работать с классом=объектом типа который скрывается за именем Robot? И етот тип будет менятся в зависимости от того какого типа будет i ? 
например известно что 
public class Robot {
    int workHoursCapacity;
    boolean hasEngInterface;
    // other fields
}
7. далее мы говорим что имя массива с которым мы работаем r0
  for (Robot i : r0) {
    if (i.hasEngInterface == false || i.workHoursCapacity < 100){return false;}}return true;
}

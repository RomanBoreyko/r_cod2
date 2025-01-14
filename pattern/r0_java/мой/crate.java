//Write code below this line
private class Car {
  private String model;
  private int year;
  private double price;

  public String getModel(){
    return model;
  }
  
  public void setModel(String model){
    this.model = model;
  }

  public int getYear(){
    return year;
  }

  public void setYear(int year){
    this.year = year;
  }

  public double getPrice(){
    return price;
  }

  public void setPrice(double price){
    this.price = price;
  }
  
  public Car(String model, int year, double price) {
    this.model  = model;
    this.year  = year;
    this.price  = price;
  }

  public Car() {
  }

}

//Write code above this line


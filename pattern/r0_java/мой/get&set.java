class UserAccount {
  private String firstName;
  private String lastName;
  private long uniqueNumber;
  private double balance;
  private boolean isVip;

  public String getFirstName() {
    return firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public long getUniqueNumber() {
    return uniqueNumber;
  }

  public double getBalance() {
    return balance;
  }

  public boolean isVip() {
    return isVip;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public void setUniqueNumber(long uniqueNumber) {
    this.uniqueNumber = uniqueNumber;
  }

  public void setBalance(double balance) {
    this.balance = balance;
  }
  
  public void setVip(boolean isVip) {
    this.isVip = isVip;
  }

}





???????????????????????????????????????


public class Parcel {
  private int weight;
  private int announcedPrice;
  private String sendingDate;
  private String sendersName;

  public int getWeight() {
      return weight;
  }

  public void setWeight(int weight) {
    if (weight > 100) {
      System.out.println("You have exceeded the allowable limit");
    } else if (weight <= 0) {
      System.out.println("Opps... something went wrong");
    } else if (weight >= 0) {
      this.weight = weight;
    }
  }

  public int getAnnouncedPrice() {
    return announcedPrice;
  }

  public void setAnnouncedPrice(int announcedPrice) {
    if (announcedPrice > 10000) {
      System.out.println("The cost of the parcel is too expensive");
    } else if (announcedPrice <= 0) {
      System.out.println("Opps... something went wrong");
    } else if (announcedPrice >= 0) {
      this.announcedPrice = announcedPrice;
    }
  }

  public String getSendingDate() {
    return sendingDate;
  }

  public void setSendingDate(String sendingDate) {
    this.sendingDate = sendingDate;
  }

  public String getSendersName() {
    return sendersName;
  }

  public void setSendersName(String sendersName) {
    this.sendersName = sendersName;
  }
}



class Thermostat {
  constructor(f){this.f=f;}
  get temperature() {return (5/9)*(this.f-32)}
  set temperature(c) {this.f=(c*9)/5+32}
}
class Ball {
    constructor(ballType = "regular") {
      this.ballType = ballType;
    }
}

var Ball = function(ballType) {
    ballType==undefined ? 
        this.ballType="regular" : 
        this.ballType=ballType;
};
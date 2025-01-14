class Figure {
  boolean hasBorder;
  int perimeter;
  String color;
  int area;

}

class Circle extends Figure {
  int radius;
}

class RightTriangle extends Figure {
  int leg;
  int hypotenuse;
}

class Square extends Figure {
  int side;
}


class Shape {
    constructor(sides = []) {
    this.sides = sides;
    }

    perimeter () { 
        return (this.sides.length) ? this.sides.reduce((a, b) => a + b, 0) : 0;
    }
    }
    
    console.log(new Shape([5, 10]).perimeter()); // 15
    console.log(new Shape([1, 2, 3, 4, 5]).perimeter()); // 15
    console.log(new Shape().perimeter()); // 0
    
    class Rectangle extends Shape {
    constructor(length = 0, width = 0) {
    super([length, width, length, width]);
    this.length = length;
    this.width = width;
    }
    
    area()  {
        this.length * this.width;
    }
    }
    
    console.log(new Rectangle(4, 4).perimeter()); // 16
    console.log(new Rectangle(4, 4).area()); // 16
    console.log(new Rectangle(5, 5).perimeter()); // 20
    console.log(new Rectangle(5, 5).area()); // 25
    console.log(new Rectangle().perimeter()); // 0
    console.log(new Rectangle().area()); // 0
    
    class Triangle extends Shape {
    constructor(sideA = 0, sideB = 0, sideC = 0) {
    super([sideA, sideB, sideC]);
    this.sideA = sideA;
    this.sideB = sideB;
    this.sideC = sideC;
    }
    
    area() {
    let s = (this.sideA + this.sideB + this.sideC) / 2;
    return Math.sqrt(s * (s - this.sideA) * (s - this.sideB) * (s - this.sideC));
    };
    }
    
    console.log(new Triangle(3, 4, 5).perimeter()); // 12
    console.log(new Triangle(3, 4, 5).area()); // 6
    console.log(new Triangle().perimeter()); // 0
    console.log(new Triangle().area()); // 0
    
    
    const data = [[3, 4], [5, 5], [3, 4, 5], [10], []];
    
    for (sides of data) {
        let shape = null;
        let areaShape = 0;
        let perimShape = 0;
        switch (sides.length) {
          case 2:
            shape = new Rectangle(...sides);
            areaShape = shape.area();
            perimShape = shape.perimeter();
            if (shape.width === shape.length) {
              console.log(
                `Square with sides ${sides} has perimeter of ${perimShape} and area of ${areaShape}`
              );
            } else {
              console.log(
                `Rectangle with sides ${sides} has perimeter of ${perimShape} and area of ${areaShape}`
              );
            }
            break;
          case 3:
            areaShape = new Triangle(...sides).area();
            perimShape = new Triangle(...sides).perimeter();
            console.log(
              `Triangle with sides ${sides} has perimeter of ${perimShape} and area of ${areaShape}`
            );
            break;
          default:
            console.log(`Shape with ${sides.length} side unsupported`);
            break;
        }
    }

import UIKit

protocol Shape {
    func getArea() -> Double
}

class Rectangle: Shape {
    
    var width: Double = 0
    var height: Double = 0
    
    func getArea() -> Double{
        return width * height
    }
}

class Circle: Shape {
    
    var radius: Double = 0
    
    func getArea() -> Double {
        return radius * radius * Double.pi
    }
}

// FIRST
//struct AreaCalculator {
//    
//    func getArea(shapes: [Rectangle]) -> Double {
//        var area: Double = 0
//        for shape in shapes {
//            area += shape.width * shape.height
//        }
//        return area
//    }
//}

//
//SECOND
//struct AreaCalculator {
//
//    func getArea(shapes: [NSObject]) -> Double {
//        var area: Double = 0
//        for shape in shapes {
//            if let rectangle = shape as? Rectangle {
//                area += rectangle.width * rectangle.height
//            }
//            else if let circle = shape as? Circle {
//                area += circle.radius * circle.radius * Double.pi
//            }
//        }
//        return area
//    }
//}

struct AreaCalculator {

    func getArea(shapes: [Shape]) -> Double {
        var area: Double = 0
        for shape in shapes {
            area += shape.getArea()
        }
        return area
    }
}

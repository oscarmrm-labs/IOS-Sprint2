import Foundation

class PolygonFactory {
    func calculateArea(type: String, apothem: Double, side: Double) -> Double {
        switch type {
        case PolygonType.Triangle.rawValue:
            return Triangle(base: side, height: apothem).calculateArea()
        case PolygonType.Pentagon.rawValue:
            return Pentagon(side: side, apothem: apothem).calculateArea()
        default :
            return Octagon(side: side, apothem: apothem).calculateArea()
        }
    }
    
    func calculatePerimeter(type: String, apothem: Double, side: Double) -> Double {
        switch type {
        case PolygonType.Triangle.rawValue:
            return Triangle(base: side, height: apothem).calculatePerimeter()
        case PolygonType.Pentagon.rawValue:
            return Pentagon(side: side, apothem: apothem).calculatePerimeter()
        default :
            return Octagon(side: side, apothem: apothem).calculatePerimeter()
        }
    }
    
    func showPerimeterFormula(type: String, apothem: Double, side: Double) -> String {
        switch type {
        case PolygonType.Triangle.rawValue:
            return Triangle(base: side, height: apothem).buildPerimeterFormula()
        case PolygonType.Pentagon.rawValue:
            return Pentagon(side: side, apothem: apothem).buildPerimeterFormula()
        default :
            return Octagon(side: side, apothem: apothem).buildPerimeterFormula()
        }
    }
    
    func showAreaFormula(type: String, apothem: Double, side: Double) -> String {
        switch type {
        case PolygonType.Triangle.rawValue:
            return Triangle(base: side, height: apothem).buildAreaFormula()
        case PolygonType.Pentagon.rawValue:
            return Pentagon(side: side, apothem: apothem).buildAreaFormula()
        default :
            return Octagon(side: side, apothem: apothem).buildAreaFormula()
        }
    }
}

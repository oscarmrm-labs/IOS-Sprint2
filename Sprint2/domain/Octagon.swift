import Foundation

class Octagon: Polygon {
    var side: Double
    var apothem: Double
    
    init(side: Double, apothem: Double) {
        self.side = side
        self.apothem = apothem
    }
    
    private let nSides: Int = 8
    
    func calculateArea() -> Double {
        return regularPolygonArea(apothem: side, perimeter: calculatePerimeter())
    }
    func calculatePerimeter() -> Double {
        regularPolygonPerimeter(side: side, nSides: nSides)
    }
    func buildAreaFormula() -> String {
        return ""
    }
    func buildPerimeterFormula() -> String {
        return ""
    }
}

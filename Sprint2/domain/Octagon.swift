import Foundation

class Octagon: Polygon {
    var side: String
    var apothem: String
    
    init(side: String, apothem: String) {
        self.side = side
        self.apothem = apothem
    }
    
    private var nSides: Int = 8
    
    func calculateArea() -> Double {
        return 0.0
    }
    func calculatePerimeter() -> Double {
        return 0.0
    }
    func buildAreaFormula() -> String {
        return ""
    }
    func buildPerimeterFormula() -> String {
        return ""
    }
}

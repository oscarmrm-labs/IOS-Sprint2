import Foundation

class Triangle: Polygon {
    var base: Double
    var height: Double
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    private let nSides: Int = 3
    
    func calculateArea() -> Double {
        return base * height / 2
    }
    func calculatePerimeter() -> Double {
        regularPolygonPerimeter(side: base, nSides: nSides)
    }
    func buildAreaFormula() -> String {
        return "Base (\(base)) * altura (\(height)) / 2"
    }
    func buildPerimeterFormula() -> String {
        return regularPolygonPerimeterFormule(side: base, nSides: nSides)
    }
}

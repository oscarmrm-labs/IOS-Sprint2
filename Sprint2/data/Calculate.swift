import Foundation

func calculate() -> Double{
    return 0.1
}

func formatNumber(n: Double) -> String {
    return String(format: "%.2f", n)
}

func regularPolygonArea(apothem: Double, perimeter: Double) -> Double {
    let area = perimeter * apothem / 2
    return area
    //return formatNumber2(number: area)
}
func regularPolygonPerimeter(side: Double, nSides: Int) -> Double {
    let perimeter: Double = side * Double(nSides)
    return perimeter
    //return formatNumber2(number: perimeter)
}

func regularPolygonAreaFormule(apothem: Double, perimeter: Double) -> String {
    return "Perimetro (\(perimeter)) * apotema (\(apothem)) / 2"
}
func regularPolygonPerimeterFormule(side: Double, nSides: Int) -> String {
    return "Suma de sus lados (\(side)) *  (\(nSides))"
}

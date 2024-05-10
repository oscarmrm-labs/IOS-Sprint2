import SwiftUI

struct DetailScreen: View {
    var type: String
    
    @State private var image: String = ""
    
    @State private var apothem: String = ""
    @State private var side: String = ""
    
    @State private var area: Double = 0.0
    @State private var perimeter: Double = 0.0
    
    @State private var areaFormula: String = ""
    @State private var perimeterFormula: String = ""
    
    @State private var showResults = false
    @State private var showErrors = false
    
    var body: some View {
        VStack{
            
            Image(selectImage())
                .resizable()
                .frame(width: 120, height: 120)
            
            TextField(
                showFirstHint(),
                text: $apothem
            ).padding(.horizontal, 30)
            
            TextField(
                showSecondHint(),
                text: $side
            ).padding(.horizontal, 30)
            
            Button(action: {
                if let apothem = Double(apothem) {
                    if let side = Double(side) {
                        calculate(apothem, side)
                    } else {
                        showErrors = true
                        showResults = false
                    }
                } else {
                    showErrors = true
                    showResults = false
                }
            }) {
                Text("Calcular")
            }
            
            if showResults {
                Text("Area: \(areaFormula) = \(formatNumber(n: area))").padding(10)
                Text("Perímetro: \(perimeterFormula) = \(formatNumber(n: perimeter))").padding(10)
            }
            
            if showErrors {
                Text("Solo se pueden introducir numeros mayores a '0'").padding(10)
            }
            
            Spacer()
            
        }
    }
    func selectImage() -> String {
        switch type {
        case PolygonType.Triangle.rawValue:
            return PolygonType.Triangle.rawValue
        case PolygonType.Pentagon.rawValue:
            return PolygonType.Pentagon.rawValue
        default:
            return PolygonType.Octagon.rawValue
        }
    }
    
    func showFirstHint() -> String {
        if type == PolygonType.Triangle.rawValue {
            return "Altura"
        } else {
            return "Apotema"
        }
    }
    
    func showSecondHint() -> String {
        if type == PolygonType.Triangle.rawValue {
            return "Base"
        } else{
            return "Lado"
        }
    }
    
    func calculate(_ apothem: Double, _ side: Double) {
        area = PolygonFactory().calculateArea(type: type, apothem: apothem, side: side)
        perimeter = PolygonFactory().calculatePerimeter(type: type, apothem: apothem, side: side)
        areaFormula = PolygonFactory().showAreaFormula(type: type, apothem: apothem, side: side)
        perimeterFormula = PolygonFactory().showPerimeterFormula(type: type, apothem: apothem, side: side)
        showResults = true
        showErrors = false
    }
    
}

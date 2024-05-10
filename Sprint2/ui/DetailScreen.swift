import SwiftUI

struct DetailScreen: View {
    var type: String
    @State private var prueba: String = ""
    @State private var prueba2: String = ""
    
    @State private var area: Double = 0.0
    @State private var perimeter: Double = 0.0
    
    var body: some View {
        VStack{
            TextField(
                "Apotema",
                text: $prueba
            )
            
            TextField(
                "Lado",
                text: $prueba2
            )
            
            Button(action: {
                if let number = Double(prueba) {
                    if let number2 = Double(prueba2) {
                        area = regularPolygonArea(apothem: Double(number), perimeter: number2)
                        perimeter = regularPolygonPerimeter(side: number, nSides: 8)
                    } else {
                        print("El valor ingresado no es válido")
                    }
                } else {
                    print("El valor ingresado no es válido")
                }
                perimeter = calculate()
            }) {
                Text("Calcular")
            }
            
            Text("\(area)")
            Text("\(perimeter)")
            
            Spacer()
        }
    }
}

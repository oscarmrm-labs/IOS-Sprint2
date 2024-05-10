import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                
                NavigationLink(destination: DetailScreen(type: PolygonType.Triangle.rawValue)){
                    Image(PolygonType.Triangle.rawValue)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                Text("Triangulo")
                
                NavigationLink(destination: DetailScreen(type: PolygonType.Pentagon.rawValue)){
                    Image(PolygonType.Pentagon.rawValue)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                Text("Pentagono")
                
                NavigationLink(destination: DetailScreen(type: PolygonType.Octagon.rawValue)){
                    Image(PolygonType.Octagon.rawValue)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                Text("Octogono")
                
                Spacer()
            }
        }
    }
}

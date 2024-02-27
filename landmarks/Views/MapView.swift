import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.3)
        )
    }
    
    var body: some View {
        Map(position: .constant(.region(region)))

    }
}

#Preview {
    MapView(coordinate:  CLLocationCoordinate2D(latitude: 21.1914401, longitude: 72.7843306))
}

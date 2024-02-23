import SwiftUI
import MapKit

struct MapView: View {
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 21.1914401, longitude: 72.7843306),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.3)
        )
    }
    
    var body: some View {
        Map(initialPosition: .region(region))

    }
}

#Preview {
    MapView()
}

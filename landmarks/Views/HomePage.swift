import SwiftUI

struct HomePage: View {
    
    var landmark : Landmark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates).frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            Text(landmark.name)
                .font(.largeTitle)
            Text("\(landmark.park), \(landmark.state)")
                .font(.subheadline.bold())
                .foregroundStyle(.secondary)
            
            Divider()
            
            VStack {
                HStack {
                    Text("About \(landmark.name)").font(.headline)
                    Spacer()
                }.padding(.bottom)
                
                Text(landmark.description)
            }.padding()
            
            // Added spacer here to move everything on top
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomePage(landmark: landmarks[0])
}

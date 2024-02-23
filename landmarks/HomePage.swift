import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            MapView().frame(height: .infinity)
            VStack (alignment: .center) {
                CircleImage()
                Text("Abhishek Doshi")
                    .font(.largeTitle)
                Text("Surat, Gujarat, India 🇮🇳")
                    .font(.subheadline.bold())
                    .foregroundStyle(.secondary)
            }.padding()
            
            // Added spacer here to move everything on top
            Spacer()
        }
    }
}

#Preview {
    HomePage()
}

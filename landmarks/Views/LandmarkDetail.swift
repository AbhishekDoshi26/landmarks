//
//  Detail.swift
//  landmarks
//
//  Created by Abhishek Doshi on 27/02/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    
    var body: some View {
        HomePage(landmark: landmark)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}

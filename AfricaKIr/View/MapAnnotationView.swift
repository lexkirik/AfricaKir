//
//  MapAnnotationView.swift
//  AfricaKIr
//
//  Created by Test on 21.09.23.
//

import SwiftUI

struct MapAnnotationView: View {
    var locations: NationalParkLocations
    @State private var animation: Double = 0.0
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            Image(locations.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [NationalParkLocations] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(locations: locations[0])
    }
}

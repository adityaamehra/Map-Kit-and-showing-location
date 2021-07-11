//
//  ContentView.swift
//  How to show directions in a map
//
//  Created by Adityaa Mehra on 11/07/21.
//

import SwiftUI
import MapKit

struct ContentView: View{
    @State var tracking = MapUserTrackingMode.follow
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 26.42160113654926, longitude: 80.32618734603572), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var body: some View {
        // MARK:-WAY 1
        /*
         Map(coordinateRegion: $region)
        */
        // MARK:-WAY2
        Map(coordinateRegion: $region, interactionModes: MapInteractionModes.all, showsUserLocation: true, userTrackingMode: $tracking)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  MapExample.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 09/02/2022.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct MapExample: View {
    @State private var cities: [City] = [
        City(coordinate: .init(latitude: 40.7128, longitude: 74.0060)),
        City(coordinate: .init(latitude: 37.7749, longitude: 122.4194)),
        City(coordinate: .init(latitude: 47.6062, longitude: 122.3321))
    ]

    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 25.7617, longitude: 80.1918),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: cities) { city in
              MapPin(coordinate: city.coordinate, tint: .green)
          }
        .cornerRadius(35)
        .padding(.horizontal,8)
        
    }
}
struct MapExample_Previews: PreviewProvider {
    static var previews: some View {
        MapExample()
    }
}



final class PinsViewModel: ObservableObject {
    @Published var mapRect = MKMapRect()
    let cities: [City]

    init(cities: [City]) {
        self.cities = cities
    }

    func fit() {
        let points = cities.map(\.coordinate).map(MKMapPoint.init)
        mapRect = points.reduce(MKMapRect.null) { rect, point in
            let newRect = MKMapRect(origin: point, size: MKMapSize())
            return rect.union(newRect)
        }
    }
}

struct PinsView: View {
    @ObservedObject var viewModel: PinsViewModel

    var body: some View {
        Map(
            mapRect: $viewModel.mapRect,
            annotationItems: viewModel.cities
        ) { city in
            MapPin(coordinate: city.coordinate, tint: .accentColor)
        }.onAppear(perform: viewModel.fit)
    }
}

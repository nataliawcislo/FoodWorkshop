//
//  LocalizationView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 13/10/2020.
//

import SwiftUI
import MapKit

struct LocalizationView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 40.7128, longitude: -74.0060)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}


struct LocalizationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalizationView().edgesIgnoringSafeArea(.all)
    }
}


//https://github.com/nerdsupremacist/Snap

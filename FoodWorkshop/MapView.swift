//
//  LocalizationView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 13/10/2020.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var locationManager: CLLocationManager
    @State var setDefaultLocation: Bool = false
    
    let map = MKMapView()
    
    ///Creating map view at startup
    func makeUIView(context: Context) -> MKMapView {
        locationManager.delegate = context.coordinator
        return map
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        map.showsUserLocation = true
        map.userTrackingMode = .follow
    }
    
    ///Use class Coordinator method
    func makeCoordinator() -> MapView.Coordinator {
        return Coordinator(mapView: self)
    }
    
    //MARK: - Core Location manager delegate
    class Coordinator: NSObject, CLLocationManagerDelegate {
        
        var mapView: MapView
        
        init(mapView: MapView) {
            self.mapView = mapView
        }
        
        ///Switch between user location status
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            switch status {
            case .restricted:
                break
            case .denied:
                let coordinate = CLLocationCoordinate2D(
                    latitude: 51.107883, longitude: 17.038538)
                let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                mapView.map.setRegion(region, animated: true)
                return
            case .notDetermined:
                mapView.locationManager.requestWhenInUseAuthorization()
                return
            case .authorizedWhenInUse:
                return
            case .authorizedAlways:
                mapView.locationManager.allowsBackgroundLocationUpdates = true
                mapView.locationManager.pausesLocationUpdatesAutomatically = false
                return
            @unknown default:
                break
            }
            mapView.locationManager.startUpdatingLocation()
        }
    }
}

struct LocationView: View {
    @State var locationManager = CLLocationManager()
    
    var body: some View {
        MapView(locationManager: $locationManager)
    }
}

struct LocalizationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}


//https://github.com/nerdsupremacist/Snap

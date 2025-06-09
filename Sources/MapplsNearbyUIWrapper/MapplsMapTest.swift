import MapplsAPICore
import MapplsAPIKit
import MapplsMap


class MapplsMapTest: UIViewController {
    var mapView: MapplsMapView!
    
    func setupMapView() {
        mapView = MapplsMapView()
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        
        // To enable user location
        mapView.showsUserLocation = true
        
        
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    // To set map center
    func setMapCenter() {
        let coordinate = CLLocationCoordinate2D(latitude: 28.98, longitude: 77.324)
        self.mapView.setCenter(coordinate, zoomLevel: 14, animated: true)
    }
    
    
    func setMapCamera() {
        let camera = MGLMapCamera(lookingAtCenterMapplsPin: "mmi000", acrossDistance: 200, pitch: 30, heading: 0)
        self.mapView.setCamera(camera, animated: true)
    }
    
    
}


extension MapplsMapTest: MapplsMapViewDelegate {
    
    func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
        
    }
}

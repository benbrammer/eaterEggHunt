import Foundation
import Firebase
import MapKit

class CustomAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var locationLabel: String?
    var locationImage: UIImage?
    var locationDescription: String?
    var eggRegion: String?
    var imageName: String?
    var color: UIColor!
    var annotationView: String?
    var image: UIImage!
    var ticketsButton: String?
    var title: String? {
        return locationLabel
    }
    
    var distanceToUser: CLLocationDistance!
    
    //All variables kept here for the Location View Controller & Custom Annotation
    
    init?(document:DocumentSnapshot) {
        let data = document.data()!
        
        guard let name = data["Name"] as? String,
            let geoPoint = data["Coordinates"] as? GeoPoint else { return nil }
        
        eggRegion = ""
        self.locationLabel = name
        self.coordinate = CLLocationCoordinate2D(latitude: geoPoint.latitude, longitude: geoPoint.longitude)
    }
  
        
    
}

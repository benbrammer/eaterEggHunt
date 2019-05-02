import Foundation

import MapKit

class CustomAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var locationLabel: String?
    var locationDescription: String?
    var ticketsButton: String?
    var imageName: String?
    var color: UIColor!
    var image: UIImage!
    var title: String? {
        return locationLabel
    }
    
    //All variables kept here for the Location View Controller & Custom Annotation
    
    init(locationLabel: String, coordinate: CLLocationCoordinate2D, locationDescription: String, imageName: String, ticketsButton: String) {
        self.locationLabel = locationLabel
        self.coordinate = coordinate
        self.locationDescription = locationDescription
        self.ticketsButton = ticketsButton
        self.imageName = imageName
        
    }
}

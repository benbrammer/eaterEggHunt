import Foundation

import MapKit

class CustomAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var locationLabel: String?
    var locationDescription: String?
<<<<<<< HEAD
    var ticketsButton: String?
    
    //    var imageName: String?
=======
    var imageName: String?
>>>>>>> a68f7f47ad75318a740ca0d4e74916586b44c494
    
    var color: UIColor!
    var image: UIImage!
    var title: String? {
        return locationLabel
    }
    
    //All variables kept here for the Location View Controller & Custom Annotation
    
<<<<<<< HEAD
    init(locationLabel: String, coordinate: CLLocationCoordinate2D, locationDescription: String, ticketsButton: String) {
        self.locationLabel = locationLabel
        self.coordinate = coordinate
        self.locationDescription = locationDescription
        self.ticketsButton = ticketsButton
=======
    init(locationLabel: String, coordinate: CLLocationCoordinate2D, locationDescription: String, imageName: String) {
        self.locationLabel = locationLabel
        self.coordinate = coordinate
        self.locationDescription = locationDescription
        self.imageName = imageName
>>>>>>> a68f7f47ad75318a740ca0d4e74916586b44c494
    }
    

}

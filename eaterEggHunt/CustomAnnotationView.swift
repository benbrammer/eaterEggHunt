import MapKit
import UIKit

class CustomAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            guard let custom = newValue as? CustomAnnotation else { return }
            markerTintColor = custom.color
            
        
            func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
            {
                if !(annotation is MKPointAnnotation) {
                    return nil
                }
                
                let annotationIdentifier = "AnnotationIdentifier"
                var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier)
                
                if annotationView == nil {
                    annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
                }
                else {
                    annotationView!.annotation = annotation
                }
                
                let pinImage = UIImage(named: "egg.png")
                annotationView!.image = pinImage
                return annotationView
            }
    
}
}

//This class allows me to set up change for the custom annotation.

// Chaz - use this as a base to change the icon to an egg.
// Will do <3

}

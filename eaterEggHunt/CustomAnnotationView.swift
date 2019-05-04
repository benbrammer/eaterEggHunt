import MapKit
import UIKit

class CustomAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            guard let custom = newValue as? CustomAnnotation else { return }
            markerTintColor = custom.color
            
        

    
}
}

//This class allows me to set up change for the custom annotation.

// Chaz - use this as a base to change the icon to an egg.
// Will do <3

}

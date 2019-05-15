import MapKit

class CustomAnnotationView: MKMarkerAnnotationView {
    var pinCustomImageName: String!
    override var annotation: MKAnnotation? {
        willSet {
            guard let custom = newValue as? CustomAnnotation else { return }
            markerTintColor = custom.color

        }
    }
    
}


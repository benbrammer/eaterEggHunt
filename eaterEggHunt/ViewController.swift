import UIKit
import MapKit
import Firebase

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    let annotationIdentifier = "AnnotationIdentifier"
    
    @IBOutlet weak var mapView: MKMapView!
    
    // Set up the initial location
    var initialLocation: CLLocation?
    var initialLoad = false
    
    let regionRadius: CLLocationDistance = 50000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
//    func loadLocations() {
//        let ref = Firestore.firestore().collection("locations")
//        ref.getDocuments { snapshot, error in
//
//            for document in snapshot!.documents {
//
//                if let annotation = CustomAnnotation(document: document) {
//                    annotation.distanceToUser = self.initialLocation!.distance(from: CLLocation(latitude: annotation.coordinate.latitude, longitude: annotation.coordinate.longitude) )
//                    self.mapView.addAnnotation(annotation)
//                }
//
//            }
//            self.figureOutClosest()
//        }
    
//    }
    
    //compares two values ($) to find the closest.
    func figureOutClosest() {
        var annotations = mapView.annotations as! [CustomAnnotation]
        print(annotations)
        annotations.sort { return $0.distanceToUser < $1.distanceToUser }
        let closestAnnotation = annotations.first!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 50.720806, longitude: -1.904755)
        centerMapOnLocation(location: initialLocation)
        // creating delegates for updating locations and managing location
        mapView.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
<<<<<<< HEAD
=======
        var pointAnnotation: CustomAnnotationView!
        var pinAnnotationView: MKPinAnnotationView!
        pointAnnotation = CustomAnnotationView()
        pointAnnotation.pinCustomImageName = "egg"
<<<<<<< HEAD
>>>>>>> parent of 45bbec9... .
=======
>>>>>>> parent of 45bbec9... .
        locationManager.startUpdatingLocation()

//        loadLocations()
        
        
        mapView.register(CustomAnnotationView.self, forAnnotationViewWithReuseIdentifier: annotationIdentifier)

     
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.annotaions = sender as? CustomAnnotation
        
    }
}

    extension ViewController: MKMapViewDelegate {
        
        // When annotations are clicked, segue is triggered
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            print(view as! CustomAnnotationView)
            guard let annotation = view.annotation as? CustomAnnotation else { return }
            performSegue(withIdentifier: "Next", sender: annotation)
            mapView.deselectAnnotation(annotation, animated: true)
        }
        
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    
            let annotationIdentifier = "AnnotationIdentifier"
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier)
            
            if annotationView == nil {
                annotationView = CustomAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
                annotationView!.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
                annotationView!.canShowCallout = true
            }
            else {
                annotationView!.annotation = annotation
            }
            

            
            return annotationView
            
        }
     
}

extension ViewController: CLLocationManagerDelegate {
    
//so it always loads, viewing one of the location clusters
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        if !initialLoad {
            initialLoad = true
            initialLocation = location
//            loadLocations()
        }
        
        
    }
    
}


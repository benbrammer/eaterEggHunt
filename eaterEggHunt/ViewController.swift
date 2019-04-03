import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.register(CustomAnnotationView.self, forAnnotationViewWithReuseIdentifier: "marker")
        
        
        
        //London
        
        let lonOne = CLLocationCoordinate2D(latitude: 51.500717, longitude: -0.124630)
        let annotationOne = CustomAnnotation(locationLabel: "Big Ben", coordinate: lonOne, locationDescription: "")
//        annotationOne.imageName = "Big Ben"
        mapView.addAnnotation(annotationOne)
        
        let lonTwo = CLLocationCoordinate2D(latitude: 51.503224, longitude: -0.119414)
        let annotationTwo = CustomAnnotation(locationLabel: "London Eye", coordinate: lonTwo, locationDescription: "")
//        annotationOne.imageName = "London Eye"
        mapView.addAnnotation(annotationTwo)
        
        let lonThree = CLLocationCoordinate2D(latitude: 51.518711, longitude: -0.126124)
        let annotationThree = CustomAnnotation(locationLabel: "The British Museum", coordinate: lonThree, locationDescription: "")
//        annotationOne.imageName = "The British Museum"
        mapView.addAnnotation(annotationThree)

        
        let lonFour = CLLocationCoordinate2D(latitude: 51.502067, longitude: -0.140082)
        let annotationFour = CustomAnnotation(locationLabel: "Buckingham Palace", coordinate: lonFour, locationDescription: "")
//        annotationOne.imageName = "Buckingham Palace"
        mapView.addAnnotation(annotationFour)

        
        let lonFive = CLLocationCoordinate2D(latitude: 51.513702, longitude: -0.099764)
        let annotationFive = CustomAnnotation(locationLabel: "St Paul's Cathedral", coordinate: lonFive, locationDescription: "")
//        annotationOne.imageName = "St Paul's Cathedral"
        mapView.addAnnotation(annotationFive)

        
        let lonSix = CLLocationCoordinate2D(latitude: 51.510055, longitude: -0.134896)
        let annotationSix = CustomAnnotation(locationLabel: "Picadilly Circus", coordinate: lonSix, locationDescription: "")
//        annotationOne.imageName = "Picadilly Circus"
        mapView.addAnnotation(annotationSix)


        
        //New York (Manhattan Island)
        
        let nyOne = CLLocationCoordinate2D(latitude: 40.748151, longitude: -73.985736)
        let annotationSeven = CustomAnnotation(locationLabel: "Empire State Building", coordinate: nyOne, locationDescription: "")
//        annotationOne.imageName = "Empire State Building"
        mapView.addAnnotation(annotationSeven)


        let nyTwo = CLLocationCoordinate2D(latitude: 40.751701, longitude: -73.975817)
        let annotationEight = CustomAnnotation(locationLabel: "Chrysler Building", coordinate: nyTwo, locationDescription: "")
//        annotationOne.imageName = "Chrysler Building"
        mapView.addAnnotation(annotationEight)

        
        let nyThree = CLLocationCoordinate2D(latitude: 40.759071, longitude: -73.985007)
        let annotationNine = CustomAnnotation(locationLabel: "Times Square", coordinate: nyThree, locationDescription: "")
//        annotationOne.imageName = "Times Square"
        mapView.addAnnotation(annotationNine)


        let nyFour = CLLocationCoordinate2D(latitude: 40.769785, longitude: -73.974567)
        let annotationTen = CustomAnnotation(locationLabel: "Central Park", coordinate: nyFour, locationDescription: "")
//        annotationOne.imageName = "Central Park"
        mapView.addAnnotation(annotationTen)


        let nyFive = CLLocationCoordinate2D(latitude: 40.760099, longitude: -73.980225)
        let annotationEleven = CustomAnnotation(locationLabel: "Radio City Music Hall", coordinate: nyFive, locationDescription: "")
//        annotationOne.imageName = "Radio City Music Hall"
        mapView.addAnnotation(annotationEleven)


        let nySix = CLLocationCoordinate2D(latitude: 40.765244, longitude: -73.980162)
        let annotationTwelve = CustomAnnotation(locationLabel: "Carnegie Hall", coordinate: nySix, locationDescription: "")
//        annotationOne.imageName = "Carnegie Hall"
        mapView.addAnnotation(annotationTwelve)
        
        
        
        //Los Angeles
        
        let laOne = CLLocationCoordinate2D(latitude: 34.101648, longitude: -118.340583)
        let annotationThirteen = CustomAnnotation(locationLabel: "Walk of Fame", coordinate: laOne, locationDescription: "")
//        annotationOne.imageName = "Walk of Fame"
        mapView.addAnnotation(annotationThirteen)
        
        let laTwo = CLLocationCoordinate2D(latitude: 34.103206, longitude: -118.326460)
        let annotationFourteen = CustomAnnotation(locationLabel: "Capitol Records Building", coordinate: laTwo, locationDescription: "")
//        annotationOne.imageName = "Capitol Records Building"
//        mapView.addAnnotation(annotationFourteen)
        
        
        let laThree = CLLocationCoordinate2D(latitude: 34.010018, longitude: -118.495811)
        let annotationFifteen = CustomAnnotation(locationLabel: "Santa Monica Pier", coordinate: laThree, locationDescription: "")
//        annotationOne.imageName = "Santa Monica Pier"
        mapView.addAnnotation(annotationFifteen)
        
        
        let laFour = CLLocationCoordinate2D(latitude: 34.055320, longitude: -118.249797)
        let annotationSixteen = CustomAnnotation(locationLabel: "Disney Concert Hall", coordinate: laFour, locationDescription: "")
//        annotationOne.imageName = "Disney Concert Hall"
        mapView.addAnnotation(annotationSixteen)
        
        
        let laFive = CLLocationCoordinate2D(latitude: 34.118509, longitude: -118.300401)
        let annotationSeventeen = CustomAnnotation(locationLabel: "Griffith Observatory", coordinate: laFive, locationDescription: "")
//        annotationOne.imageName = "Griffith Observatory"
        mapView.addAnnotation(annotationSeventeen)
        
        
        let laSix = CLLocationCoordinate2D(latitude: 34.056274, longitude: -118.236780)
        let annotationEighteen = CustomAnnotation(locationLabel: "Union Station", coordinate: laSix, locationDescription: "")
//        annotationOne.imageName = "Union Station"
        mapView.addAnnotation(annotationEighteen)
        
    }


}


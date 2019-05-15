import UIKit
import MapKit
import Firebase

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()

    @IBOutlet weak var mapView: MKMapView!
    
    // Set up the initial location
    let initialLocation = CLLocation(latitude: 50.720806, longitude: -1.904755)
    let regionRadius: CLLocationDistance = 50000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    func loadLocations() {
        let ref = Firestore.firestore().collection("locations")
        ref.getDocuments { snapshot, error in
            print(snapshot as Any)
            for document in snapshot!.documents {
                let annotation = CustomAnnotation(document: document)
                self.mapView.addAnnotation(annotation)
                print(annotation)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 50.720806, longitude: -1.904755)
        centerMapOnLocation(location: initialLocation)
        // creating delegets for updating locations and managing location
        mapView.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        loadLocations()
        
        
        //London
//        let lonOne = CLLocationCoordinate2D(latitude: 51.500717, longitude: -0.124630)
//        let annotationOne = CustomAnnotation(locationLabel: "Big Ben", coordinate: lonOne, locationDescription: "Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower. The tower stands at 96 metres tall. Opened: 31 May 1859", imageName: "Big Ben", ticketsButton: "https:www.getyourguide.com/big-ben-l2709/?utm_force=0", eggType: "egg")
//        let lonOneRegion = CLCircularRegion(center: lonOne, radius: 300, identifier: "Big Ben")
//        locationManager.startMonitoring(for: lonOneRegion)
//        annotationOne.imageName = "Big Ben"
//        mapView.addAnnotation(annotationOne)
//
//
//        let lonTwo = CLLocationCoordinate2D(latitude: 51.503224, longitude: -0.119414)
//        let annotationTwo = CustomAnnotation(locationLabel: "London Eye", coordinate: lonTwo, locationDescription: "The London Eye (or The Coca Cola London Eye) is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe's tallest cantilevered observation wheel, is the most popular paid tourist attraction in the United Kingdom with over 3.75 million visitors annually, and has made many appearances in popular culture. Construction was started in 1998 and stands at 135 metres tall.", imageName: "London Eye", ticketsButton: "https://www.londoneye.com/tickets-and-prices/", eggType: "egg")
//        let lonTwoRegion = CLCircularRegion(center: lonTwo, radius: 300, identifier: "London Eye")
//        locationManager.startMonitoring(for: lonTwoRegion)
//        annotationOne.imageName = "London Eye"
//        mapView.addAnnotation(annotationTwo)
//
//        let lonThree = CLLocationCoordinate2D(latitude: 51.518711, longitude: -0.126124)
//        let annotationThree = CustomAnnotation(locationLabel: "The British Museum", coordinate: lonThree, locationDescription: "Founded in 1753, The British Museum, in,∫ the Bloomsbury area of London, United Kingdom, is a public institution dedicated to human history, art and culture. Its permanent collection of some eight million works is among the largest and most comprehensive in existence, having been widely sourced during the era of the British Empire.", imageName: "The British Museum", ticketsButton: "https://www.britishmuseum.org/visiting.aspx", eggType: "egg")
//        let lonThreeRegion = CLCircularRegion(center: lonThree, radius: 300, identifier: "The British Museum")
//        locationManager.startMonitoring(for: lonThreeRegion)
//        annotationOne.imageName = "The British Museum"
//        mapView.addAnnotation(annotationThree)
//
//
//        let lonFour = CLLocationCoordinate2D(latitude: 51.502067, longitude: -0.140082)
//        let annotationFour = CustomAnnotation(locationLabel: "Buckingham Palace", coordinate: lonFour, locationDescription: "Buckingham Palace is the London residence and administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning. Opened in 1703.", imageName: "Buckingham Palace", ticketsButton: "https://buckinghampalace.londonpass.com/tickets.html", eggType: "egg")
//        let lonFourRegion = CLCircularRegion(center: lonFour, radius: 300, identifier: "Buckingham Palace")
//        locationManager.startMonitoring(for: lonFourRegion)
//        annotationOne.imageName = "Buckingham Palace"
//        mapView.addAnnotation(annotationFour)
//
//
//        let lonFive = CLLocationCoordinate2D(latitude: 51.513702, longitude: -0.099764)
//        let annotationFive = CustomAnnotation(locationLabel: "St Paul's Cathedral", coordinate: lonFive, locationDescription: "St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade I listed building. Construction originally started in June 1675.", imageName: "St Paul's Cathedral", ticketsButton: "https://www.stpauls.co.uk/tickets", eggType: "egg")
//        let lonFiveRegion = CLCircularRegion(center: lonFive, radius: 300, identifier: "St Paul's Cathedral")
//        locationManager.startMonitoring(for: lonFiveRegion)
//        annotationOne.imageName = "St Paul's Cathedral"
//
//        mapView.addAnnotation(annotationFive)
//
//
//        let lonSix = CLLocationCoordinate2D(latitude: 51.510055, longitude: -0.134896)
//        let annotationSix = CustomAnnotation(locationLabel: "Piccadilly Circus", coordinate: lonSix, locationDescription: "Opened in 1819, Piccadilly Circus is a road junction and public space of London's West End in the City of Westminster. It was built in 1819 to connect Regent Street with Piccadilly. In this context, a circus, from the Latin word meaning 'circle', is a round open space at a street junction.", imageName: "Piccadilly Circus", ticketsButton: "https://www.londontheatredirect.com/venue/12/piccadilly-theatre.aspx", eggType: "egg")
//        let lonSixRegion = CLCircularRegion(center: lonSix, radius: 300, identifier: "Piccadilly Circus")
//        locationManager.startMonitoring(for: lonSixRegion)
//        annotationOne.imageName = "Piccadilly Circus"
//        mapView.addAnnotation(annotationSix)
//
//
//        //New York (Manhattan Island)
//
//        let nyOne = CLLocationCoordinate2D(latitude: 40.748151, longitude: -73.985736)
//        let annotationSeven = CustomAnnotation(locationLabel: "Empire State Building", coordinate: nyOne, locationDescription: "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan, New York City. Designed by Shreve, Lamb & Harmon and completed in 1931, the building has a roof height of 1,250 feet and stands a total of 1,454 feet tall, including its antenna.", imageName: "Empire State Building", ticketsButton: "https://www.esbnyc.com", eggType: "egg")
//        let nyOneRegion = CLCircularRegion(center: nyOne, radius: 300, identifier: "Empire State Building")
//        locationManager.startMonitoring(for: nyOneRegion)
//        annotationOne.imageName = "Empire State Building"
//        mapView.addAnnotation(annotationSeven)
//
//
//        let nyTwo = CLLocationCoordinate2D(latitude: 40.751701, longitude: -73.975817)
//        let annotationEight = CustomAnnotation(locationLabel: "Chrysler Building", coordinate: nyTwo, locationDescription: "The Chrysler Building is an Art Deco–style skyscraper located in the Turtle Bay neighbourhood on the East Side of Midtown Manhattan, New York City, at the intersection of 42nd Street and Lexington Avenue.", imageName: "Chrysler Building", ticketsButton: "https://freetoursbyfoot.com/visit-the-chrysler-building/", eggType: "egg")
//        let nyTwoRegion = CLCircularRegion(center: nyTwo, radius: 300, identifier: "Chrysler Building")
//        locationManager.startMonitoring(for: nyTwoRegion)
//        annotationOne.imageName = "Chrysler Building"
//        mapView.addAnnotation(annotationEight)
//
//
//        let nyThree = CLLocationCoordinate2D(latitude: 40.759071, longitude: -73.985007)
//        let annotationNine = CustomAnnotation(locationLabel: "Times Square", coordinate: nyThree, locationDescription: "Times Square is a major commercial intersection, tourist destination, entertainment centre and neighbourhood in the Midtown Manhattan section of New York City at the junction of Broadway and Seventh Avenue. It stretches from West 42nd to West 47th Streets.", imageName: "Times Square", ticketsButton: "https://freetoursbyfoot.com/things-to-do-in-times-square/", eggType: "egg")
//        let nyThreeRegion = CLCircularRegion(center: nyThree, radius: 300, identifier: "Times Square")
//        locationManager.startMonitoring(for: nyThreeRegion)
//        annotationOne.imageName = "Times Square"
//        mapView.addAnnotation(annotationNine)
//
//
//        let nyFour = CLLocationCoordinate2D(latitude: 40.769785, longitude: -73.974567)
//        let annotationTen = CustomAnnotation(locationLabel: "Central Park", coordinate: nyFour, locationDescription: "Central Park is an urban park in Manhattan, New York City. It is located between the Upper West Side and Upper East Side, roughly bounded by Fifth Avenue on the east, Central Park West on the west, Central Park South on the south, and Central Park North on the north.", imageName: "Central Park", ticketsButton: "http://www.centralparknyc.org", eggType: "egg")
//        let nyFourRegion = CLCircularRegion(center: nyFour, radius: 300, identifier: "Central Park")
//        locationManager.startMonitoring(for: nyFourRegion)
//        annotationOne.imageName = "Central Park"
//        mapView.addAnnotation(annotationTen)
//
//
//        let nyFive = CLLocationCoordinate2D(latitude: 40.760099, longitude: -73.980225)
//        let annotationEleven = CustomAnnotation(locationLabel: "Radio City Music Hall", coordinate: nyFive, locationDescription: "Radio City Music Hall is an entertainment venue at 1260 Avenue of the Americas, within Rockefeller Center, in Midtown Manhattan, New York City. Nicknamed the Showplace of the Nation, it is the headquarters for the Rockettes, the precision dance company.", imageName: "Radio City Music Hall", ticketsButton: "https://www.msg.com/radio-city-music-hall?cmp=van_radiocity", eggType: "egg")
//        let nyFiveRegion = CLCircularRegion(center: nyFive, radius: 300, identifier: "Radio City Music Hall")
//        locationManager.startMonitoring(for: nyFiveRegion)
//        annotationOne.imageName = "Radio City Music Hall"
//        mapView.addAnnotation(annotationEleven)
//
//        let nySix = CLLocationCoordinate2D(latitude: 40.765244, longitude: -73.980162)
//        let annotationTwelve = CustomAnnotation(locationLabel: "Carnegie Hall", coordinate: nySix, locationDescription: "Carnegie Hall is a concert venue in Midtown Manhattan in New York City, United States, located at 881 Seventh Avenue, occupying the east side of Seventh Avenue between West 56th Street and West 57th Street, two blocks south of Central Park. Opened: April 1891", imageName: "Carnegie Hall", ticketsButton: "https://www.carnegiehall.org", eggType: "egg")
//        let nySixRegion = CLCircularRegion(center: nySix, radius: 300, identifier: "Carnegie Hall")
//        locationManager.startMonitoring(for: nySixRegion)
//        annotationOne.imageName = "Carnegie Hall"
//        mapView.addAnnotation(annotationTwelve)
//
//
//        //Los Angeles
//
//        let laOne = CLLocationCoordinate2D(latitude: 34.101648, longitude: -118.340583)
//        let annotationThirteen = CustomAnnotation(locationLabel: "Walk of Fame", coordinate: laOne, locationDescription: "The Hollywood Walk of Fame comprises more than 2,600 five-pointed terrazzo and brass stars embedded in the sidewalks along 15 blocks of Hollywood Boulevard and three blocks of Vine Street in Hollywood, California. Established in 1958.", imageName: "Walk of Fame", ticketsButton: "https://www.walkoffame.com", eggType: "egg")
//        let laOneRegion = CLCircularRegion(center: laOne, radius: 300, identifier: "Walk of Fame")
//        locationManager.startMonitoring(for: laOneRegion)
//        annotationOne.imageName = "Walk of Fame"
//        mapView.addAnnotation(annotationThirteen)
//
//        let laTwo = CLLocationCoordinate2D(latitude: 34.103206, longitude: -118.326460)
//        let annotationFourteen = CustomAnnotation(locationLabel: "Capitol Records Building", coordinate: laTwo, locationDescription: "The Capitol Records Building, also known as the Capitol Records Tower, is a Hollywood Boulevard Commercial and Entertainment District building that is located in Hollywood, Los Angeles. The building is a thirteen-story tower that was designed by Louis Naidorf, and is one of the city's landmarks. Opened in 1955.", imageName: "Capitol Records Building", ticketsButton: "https://www.capitolrecords.com", eggType: "egg")
//        let laTwoRegion = CLCircularRegion(center: laTwo, radius: 300, identifier: "Capitol Records Building")
//        locationManager.startMonitoring(for: laTwoRegion)
//        annotationOne.imageName = "Capitol Records Building"
//        mapView.addAnnotation(annotationFourteen)
//
//
//        let laThree = CLLocationCoordinate2D(latitude: 34.010018, longitude: -118.495811)
//        let annotationFifteen = CustomAnnotation(locationLabel: "Santa Monica Pier", coordinate: laThree, locationDescription: "The Santa Monica Pier is a large double-jointed pier at the foot of Colorado Avenue in Santa Monica, California that is over 100 years old. Opened: 9 September 1909", imageName: "Santa Monica Pier", ticketsButton: "https://santamonicapier.org", eggType: "egg")
//        let laThreeRegion = CLCircularRegion(center: laThree, radius: 300, identifier: "Santa Monica Pier")
//        locationManager.startMonitoring(for: laThreeRegion)
//        annotationOne.imageName = "Santa Monica Pier"
//        mapView.addAnnotation(annotationFifteen)
//
//
//        let laFour = CLLocationCoordinate2D(latitude: 34.055320, longitude: -118.249797)
//        let annotationSixteen = CustomAnnotation(locationLabel: "Disney Concert Hall", coordinate: laFour, locationDescription: "The Walt Disney Concert Hall at 111 South Grand Avenue in downtown Los Angeles, California, is the fourth hall of the Los Angeles Music Center and was designed by Frank Gehry. It opened on October 24, 2003.", imageName: "Disney Concert Hall", ticketsButton: "https://www.laphil.com/events/performances/", eggType: "egg")
//        let laFourRegion = CLCircularRegion(center: laFour, radius: 300, identifier: "Disney Concert Hall")
//        locationManager.startMonitoring(for: laFourRegion)
//        annotationOne.imageName = "Disney Concert Hall"
//        mapView.addAnnotation(annotationSixteen)
//
//
//        let laFive = CLLocationCoordinate2D(latitude: 34.118509, longitude: -118.300401)
//        let annotationSeventeen = CustomAnnotation(locationLabel: "Griffith Observatory", coordinate: laFive, locationDescription: "The Griffith Observatory is a facility in Los Angeles, California, sitting on the south-facing slope of Mount Hollywood in Los Angeles' Griffith Park. The art-deco building commands a view of the Los Angeles Basin, including Downtown Los Angeles to the southeast, Hollywood to the south, and the Pacific Ocean to the southwest. The observatory served as the setting for the climactic scene in the James Dean classic ‘Rebel Without A Cause’.", imageName: "Griffith Observatory", ticketsButton: "http://www.griffithobservatory.org", eggType: "egg")
//        let laFiveRegion = CLCircularRegion(center: laFive, radius: 300, identifier: "Griffith Observatory")
//        locationManager.startMonitoring(for: laFiveRegion)
//        annotationOne.imageName = "Griffith Observatory"
//        mapView.addAnnotation(annotationSeventeen)
//
//
//        let laSix = CLLocationCoordinate2D(latitude: 34.056274, longitude: -118.236780)
//        let annotationEighteen = CustomAnnotation(locationLabel: "Union Station", coordinate: laSix, locationDescription: "Opulent train station built in 1939 & still a major rail hub, with shops, eateries & waiting areas. The site of Union Station is on the original location of Los Angeles' Chinatown, which was moved to make way for the station.", imageName: "Union Station", ticketsButton: "https://www.unionstationla.com", eggType: "egg")
//        let laSixRegion = CLCircularRegion(center: laSix, radius: 300, identifier: "Union Station")
//        locationManager.startMonitoring(for: laSixRegion)
//        annotationOne.imageName = "Union Station"
//        mapView.addAnnotation(annotationEighteen)

     
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.annotaions = sender as? CustomAnnotation
        
    }
}

    extension ViewController: MKMapViewDelegate {
        
        // When annotations are clicked, segue is triggered
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            guard let annotation = view.annotation as? CustomAnnotation else { return }
            performSegue(withIdentifier: "Next", sender: annotation)
            mapView.deselectAnnotation(annotation, animated: true)
        }
            
        // Custom annotaions: ISNT WORKING?
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            if !(annotation is MKPointAnnotation) {
                return nil
            }
            
            let annotationIdentifier = "AnnotationIdentifier"
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier)
            
            if annotationView == nil {
                annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
                annotationView!.canShowCallout = true
            }
            else {
                annotationView!.annotation = annotation
            }
            
            let pinImage = UIImage(named: "egg.png")
            annotationView!.image = pinImage
            
            return annotationView
        }
        
    
        
}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion annotationOne: CLRegion) {
        print("Entered: \(annotationOne.identifier) AnnotationOne.")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion annotationOne: CLRegion) {
        print("Left: \(annotationOne.identifier) AnnotationOne.")
        
        loadLocations()
    }

}

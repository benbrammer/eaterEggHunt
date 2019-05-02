import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.register(CustomAnnotationView.self, forAnnotationViewWithReuseIdentifier: "marker")
        
        
        
        //London
        
        let lonOne = CLLocationCoordinate2D(latitude: 51.500717, longitude: -0.124630)
        let annotationOne = CustomAnnotation(locationLabel: "Big Ben", coordinate: lonOne, locationDescription: "Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower. The tower stands at 96 metres tall. Opened: 31 May 1859")
        annotationOne.imageName = "Big Ben"
        mapView.addAnnotation(annotationOne)
        
        let lonTwo = CLLocationCoordinate2D(latitude: 51.503224, longitude: -0.119414)
        let annotationTwo = CustomAnnotation(locationLabel: "London Eye", coordinate: lonTwo, locationDescription: "The London Eye (or The Coca Cola London Eye) is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe's tallest cantilevered observation wheel, is the most popular paid tourist attraction in the United Kingdom with over 3.75 million visitors annually, and has made many appearances in popular culture. Construction was started in 1998 and stands at 135 metres tall.")
        annotationOne.imageName = "London Eye"
        mapView.addAnnotation(annotationTwo)
        
        let lonThree = CLLocationCoordinate2D(latitude: 51.518711, longitude: -0.126124)
        let annotationThree = CustomAnnotation(locationLabel: "The British Museum", coordinate: lonThree, locationDescription: "Founded in 1753, The British Museum, in the Bloomsbury area of London, United Kingdom, is a public institution dedicated to human history, art and culture. Its permanent collection of some eight million works is among the largest and most comprehensive in existence, having been widely sourced during the era of the British Empire.")
        annotationOne.imageName = "British Museum"
        mapView.addAnnotation(annotationThree)

        
        let lonFour = CLLocationCoordinate2D(latitude: 51.502067, longitude: -0.140082)
        let annotationFour = CustomAnnotation(locationLabel: "Buckingham Palace", coordinate: lonFour, locationDescription: "Buckingham Palace is the London residence and administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning. Opened in 1703.")
        annotationOne.imageName = "Buckingham Palace"
        mapView.addAnnotation(annotationFour)

        
        let lonFive = CLLocationCoordinate2D(latitude: 51.513702, longitude: -0.099764)
        let annotationFive = CustomAnnotation(locationLabel: "St Paul's Cathedral", coordinate: lonFive, locationDescription: "St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade I listed building. Construction originally started in June 1675.")
        annotationOne.imageName = "St Paul's Cathedral"
        mapView.addAnnotation(annotationFive)

        
        let lonSix = CLLocationCoordinate2D(latitude: 51.510055, longitude: -0.134896)
        let annotationSix = CustomAnnotation(locationLabel: "Piccadilly Circus", coordinate: lonSix, locationDescription: "Opened in 1819, Piccadilly Circus is a road junction and public space of London's West End in the City of Westminster. It was built in 1819 to connect Regent Street with Piccadilly. In this context, a circus, from the Latin word meaning 'circle', is a round open space at a street junction.")
        annotationOne.imageName = "Piccadilly Circus"
        mapView.addAnnotation(annotationSix)


        
        //New York (Manhattan Island)
        
        let nyOne = CLLocationCoordinate2D(latitude: 40.748151, longitude: -73.985736)
        let annotationSeven = CustomAnnotation(locationLabel: "Empire State Building", coordinate: nyOne, locationDescription: "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan, New York City. Designed by Shreve, Lamb & Harmon and completed in 1931, the building has a roof height of 1,250 feet and stands a total of 1,454 feet tall, including its antenna.")
        annotationOne.imageName = "Empire State Building"
        mapView.addAnnotation(annotationSeven)


        let nyTwo = CLLocationCoordinate2D(latitude: 40.751701, longitude: -73.975817)
        let annotationEight = CustomAnnotation(locationLabel: "Chrysler Building", coordinate: nyTwo, locationDescription: "The Chrysler Building is an Art Deco–style skyscraper located in the Turtle Bay neighbourhood on the East Side of Midtown Manhattan, New York City, at the intersection of 42nd Street and Lexington Avenue.")
        annotationOne.imageName = "Chrysler Building"
        mapView.addAnnotation(annotationEight)

        
        let nyThree = CLLocationCoordinate2D(latitude: 40.759071, longitude: -73.985007)
        let annotationNine = CustomAnnotation(locationLabel: "Times Square", coordinate: nyThree, locationDescription: "Times Square is a major commercial intersection, tourist destination, entertainment centre and neighbourhood in the Midtown Manhattan section of New York City at the junction of Broadway and Seventh Avenue. It stretches from West 42nd to West 47th Streets.")
        annotationOne.imageName = "Times Square"
        mapView.addAnnotation(annotationNine)


        let nyFour = CLLocationCoordinate2D(latitude: 40.769785, longitude: -73.974567)
        let annotationTen = CustomAnnotation(locationLabel: "Central Park", coordinate: nyFour, locationDescription: "Central Park is an urban park in Manhattan, New York City. It is located between the Upper West Side and Upper East Side, roughly bounded by Fifth Avenue on the east, Central Park West on the west, Central Park South on the south, and Central Park North on the north.")
        annotationOne.imageName = "Central Park"
        mapView.addAnnotation(annotationTen)


        let nyFive = CLLocationCoordinate2D(latitude: 40.760099, longitude: -73.980225)
        let annotationEleven = CustomAnnotation(locationLabel: "Radio City Music Hall", coordinate: nyFive, locationDescription: "Radio City Music Hall is an entertainment venue at 1260 Avenue of the Americas, within Rockefeller Center, in Midtown Manhattan, New York City. Nicknamed the Showplace of the Nation, it is the headquarters for the Rockettes, the precision dance company.")
        annotationOne.imageName = "Radio City Music Hall"
        mapView.addAnnotation(annotationEleven)


        let nySix = CLLocationCoordinate2D(latitude: 40.765244, longitude: -73.980162)
        let annotationTwelve = CustomAnnotation(locationLabel: "Carnegie Hall", coordinate: nySix, locationDescription: "Carnegie Hall is a concert venue in Midtown Manhattan in New York City, United States, located at 881 Seventh Avenue, occupying the east side of Seventh Avenue between West 56th Street and West 57th Street, two blocks south of Central Park. Opened: April 1891")
        annotationOne.imageName = "Carnegie Hall"
        mapView.addAnnotation(annotationTwelve)
        
        
        
        //Los Angeles
        
        let laOne = CLLocationCoordinate2D(latitude: 34.101648, longitude: -118.340583)
        let annotationThirteen = CustomAnnotation(locationLabel: "Walk of Fame", coordinate: laOne, locationDescription: "The Hollywood Walk of Fame comprises more than 2,600 five-pointed terrazzo and brass stars embedded in the sidewalks along 15 blocks of Hollywood Boulevard and three blocks of Vine Street in Hollywood, California. Established in 1958.")
        annotationOne.imageName = "Walk of Fame"
        mapView.addAnnotation(annotationThirteen)
        
        let laTwo = CLLocationCoordinate2D(latitude: 34.103206, longitude: -118.326460)
        let annotationFourteen = CustomAnnotation(locationLabel: "Capitol Records Building", coordinate: laTwo, locationDescription: "The Capitol Records Building, also known as the Capitol Records Tower, is a Hollywood Boulevard Commercial and Entertainment District building that is located in Hollywood, Los Angeles. The building is a thirteen-story tower that was designed by Louis Naidorf, and is one of the city's landmarks. Opened in 1955.")
        annotationOne.imageName = "Capitol Records Building"
        mapView.addAnnotation(annotationFourteen)
        
        
        let laThree = CLLocationCoordinate2D(latitude: 34.010018, longitude: -118.495811)
        let annotationFifteen = CustomAnnotation(locationLabel: "Santa Monica Pier", coordinate: laThree, locationDescription: "The Santa Monica Pier is a large double-jointed pier at the foot of Colorado Avenue in Santa Monica, California that is over 100 years old. Opened: 9 September 1909")
        annotationOne.imageName = "Santa Monica Pier"
        mapView.addAnnotation(annotationFifteen)
        
        
        let laFour = CLLocationCoordinate2D(latitude: 34.055320, longitude: -118.249797)
        let annotationSixteen = CustomAnnotation(locationLabel: "Disney Concert Hall", coordinate: laFour, locationDescription: "The Walt Disney Concert Hall at 111 South Grand Avenue in downtown Los Angeles, California, is the fourth hall of the Los Angeles Music Center and was designed by Frank Gehry. It opened on October 24, 2003.")
        annotationOne.imageName = "Disney Concert Hall"
        mapView.addAnnotation(annotationSixteen)
        
        
        let laFive = CLLocationCoordinate2D(latitude: 34.118509, longitude: -118.300401)
        let annotationSeventeen = CustomAnnotation(locationLabel: "Griffith Observatory", coordinate: laFive, locationDescription: "The Griffith Observatory is a facility in Los Angeles, California, sitting on the south-facing slope of Mount Hollywood in Los Angeles' Griffith Park. The art-deco building commands a view of the Los Angeles Basin, including Downtown Los Angeles to the southeast, Hollywood to the south, and the Pacific Ocean to the southwest. The observatory served as the setting for the climactic scene in the James Dean classic ‘Rebel Without A Cause’.")
        annotationOne.imageName = "Griffith Observatory"
        mapView.addAnnotation(annotationSeventeen)
        
        
        let laSix = CLLocationCoordinate2D(latitude: 34.056274, longitude: -118.236780)
        let annotationEighteen = CustomAnnotation(locationLabel: "Union Station", coordinate: laSix, locationDescription: "Opulent train station built in 1939 & still a major rail hub, with shops, eateries & waiting areas. The site of Union Station is on the original location of Los Angeles' Chinatown, which was moved to make way for the station.")
        annotationOne.imageName = "Union Station"
        mapView.addAnnotation(annotationEighteen)
        
    }


}


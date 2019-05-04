//second view controller will pop up when egg is found
import Foundation
import UIKit

class SecondViewController: UIViewController {

    
    var annoations: CustomAnnotation!
    
    @IBOutlet weak var eggImage: UIImageView!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var locationDescription: UITextView!
    @IBOutlet weak var linkWebiste: UIButton!
    

override func viewDidLoad() {
    super.viewDidLoad()
}
}

@IBAction func linkWebsite(_ sender: UIButton) {
    openUrl(urlStr: CustomAnnotation.ticketsButton)
}
func openUrl(urlStr:String!) {
    if let url = NSURL(string:urlStr) {
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
}

//override func viewDidLoad() {
//    super.viewDidLoad()
//    print(annotation.locationLabel!)
//    locationInfo.numberOfLines = 0
//    //If you set the number of lines to 0, it will allow for as many lines as needed - a text box would probably be better instead of using a label - but serves the same function for this.
//    locationLabel.text = CustomAnnotation.locationLabel!
//    imageView.image = UIImage(named: annotation.locationLabel!)
////    filmLabel.text = annotation.filmLabel
//    locationDescription.text = annotation.locationDescription!
//}
//
//

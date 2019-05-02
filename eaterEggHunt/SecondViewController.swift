//second view controller will pop up when egg is found
import Foundation
import UIKit

class SecondViewController: UIViewController {

    
    var annoations: CustomAnnotation!
    
    @IBOutlet weak var eggImage: UIImageView!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var locationInfo: UITextView!
    @IBOutlet weak var linkWebiste: UIButton!
    

override func viewDidLoad() {
    super.viewDidLoad()
}
}

@IBAction func linkWebsite(_ sender: UIButton) {
    openUrl(urlStr: ViewController.ticketsButton)
}
func openUrl(urlStr:String!) {
    if let url = NSURL(string:urlStr) {
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
}

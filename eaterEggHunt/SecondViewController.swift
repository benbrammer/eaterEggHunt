//second view controller will pop up when egg is found
import Foundation
import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    var annoations: CustomAnnotation!
    var imagePicker: UIImagePickerController!
    
    
    @IBOutlet weak var locationDescription: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var eggImage: UIImageView!
    @IBOutlet weak var locationImage: UIImageView!
    
   // @IBOutlet weak var linkWebiste: UIButton!
    

override func viewDidLoad() {
    super.viewDidLoad()
    //    print(annotation.locationLabel!)
    //    locationInfo.numberOfLines = 0
    //    //If you set the number of lines to 0, it will allow for as many lines as needed - a text box would probably be better instead of using a label - but serves the same function for this.
   locationLabel.text = annoations.locationLabel!
    locationImage.image = UIImage(named: annoations.locationLabel!)
    ////    filmLabel.text = annotation.filmLabel
    locationDescription.text = annoations.locationDescription!
    eggImage.image = UIImage(named: annoations.eggType!)
    
    //}
    //
    //

    
}

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func takePicture(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    // The ability to confirm image and set it in Image View
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
        // brings the set image foward
        self.view.bringSubviewToFront(imageView)
    }
    
    
    @IBAction func websiteButton(_ sender: Any) {
        openUrl(urlStr: annoations.ticketsButton)
    }
    func openUrl(urlStr:String!) {
        if let url = URL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }

    }


    


    
   


        
        
        









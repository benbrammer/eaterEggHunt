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
    

override func viewDidLoad() {
    super.viewDidLoad()
    print(annoations.locationLabel!)
    locationImage.image = UIImage (named: annoations.locationLabel!)
    locationLabel.text = annoations.locationLabel
    locationDescription.text = annoations.locationDescription
    eggImage.image = UIImage(named: annoations.eggType!)
    
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


    


    
   


        
        
        









//second view controller will pop up when egg is found
import Foundation
import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    var annoations: CustomAnnotation!
    var imagePicker: UIImagePickerController!
    
    @IBOutlet weak var eggImage: UIImageView!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var locationDescription: UITextView!
    @IBOutlet weak var linkWebiste: UIButton!
    

override func viewDidLoad() {
    super.viewDidLoad()
}


@IBAction func linkWebsite(_ sender: UIButton) {
    openUrl(urlStr: ViewController.ticketsButton)
}
func openUrl(urlStr:String!) {
    if let url = URL(string:urlStr) {
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
}

    
    
    @IBOutlet weak var takeImage: UIImageView!
    
    // Fuction to open camera when button is pressed
    @IBAction func takePic(_ sender: Any) {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
 
    @IBAction func savePhoto(_ sender: UIButton) {
        UIImageWriteToSavedPhotosAlbum(takeImage.image!, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your altered image has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard (info[.originalImage] as? UIImage) != nil else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
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


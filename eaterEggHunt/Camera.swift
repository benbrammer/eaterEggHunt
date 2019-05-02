//COPY THIS 'N PASTE TO MATTS SCREEN

import UIKit

var imagePicker: UIImagePickerController!

class cameraView: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var takenPic: UIImageView!
    
    //Brings up camera view when button is pressed

    @IBAction func takePic(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    
    // The ability to confirm image and set it in Image View
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        takenPic.image = info[.originalImage] as? UIImage
        // brings the set image foward
        self.view.bringSubviewToFront(takenPic)
}
}

//For SECOND VIEW CONTROLLER

//override func viewDidLoad() {
//    super.viewDidLoad()
//    print(annotation.locationLabel!)
//    locationDescription.numberOfLines = 0
//    //If you set the number of lines to 0, it will allow for as many lines as needed - a text box would probably be better instead of using a label - but serves the same function for this.
//    locationLabel.text = annotation.locationLabel!
//    imageView.image = UIImage(named: annotation.locationLabel!)
//    filmLabel.text = annotation.filmLabel
//    locationDescription.text = annotation.locationDescription!
//}
//
//}
//

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

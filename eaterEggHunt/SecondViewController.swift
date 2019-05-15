//second view controller will pop up when egg is found
import Foundation
import UIKit


class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    var annotaions: CustomAnnotation!
    var imagePicker: UIImagePickerController!
    
    
    @IBOutlet weak var locationDescription: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var eggImage: UIImageView!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var eggButton: UIButton!
    
    //score
    var score = 0
   
    
    @IBAction func eggButtonAction(_ sender: UIButton) {
        score += 1
        scoreLabel.text = NSString (format: "score : %i", score) as String
        
    }
    
override func viewDidLoad() {
    super.viewDidLoad()
    
    let confettiView = ConffetiView()
    self.view.addSubView(confettiView)
    
    //score
    
    // Delegates
    print(annotaions.locationLabel!)
    locationImage.image = UIImage (named: annotaions.locationLabel!)
    locationLabel.text = annotaions.locationLabel
    locationDescription.text = annotaions.locationDescription
    }

    //Camera Function
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
    
    
    // Button to add score +1 when clicked
    
    
    
    
    // Button for websites
    @IBAction func websiteButton(_ sender: Any) {
        openUrl(urlStr: annotaions.ticketsButton)
    }
    func openUrl(urlStr:String!) {
        if let url = URL(string:urlStr) { 
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }

    }


    


    
   


        
        
        









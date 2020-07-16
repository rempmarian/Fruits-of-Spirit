//
//  PictureGViewController.swift
//  Fruits of Spirit
//
//  Created by Marian Rempola on 7/16/20.
//  Copyright © 2020 Klossified Koders. All rights reserved.
//

import UIKit

class PictureGViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    var imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       imagePicker.delegate = self
    }
    
    @IBAction func takeSelfieButtonTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
         present(imagePicker, animated: true, completion: nil)
    }
    

    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }

    @IBOutlet weak var displayImage: UIImageView!
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    // Update our photo with the selected photo.
    if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                  displayImage.image = selectedImage
                }
    imagePicker.dismiss(animated: true, completion: nil)

    }
}

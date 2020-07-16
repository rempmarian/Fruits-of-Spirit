//
//  ViewController.swift
//  Fruits of Spirit
//
//  Created by Marian Rempola on 7/14/20.
//  Copyright © 2020 Klossified Koders. All rights reserved.
//

import UIKit
//importAVFoundation

class ViewController: UIViewController {
    
    //var musicEffect: AVAudioPlayer = AVAudioPlayer()
    
    //connect both buttons to action
    //inside @IBAction... {
    //  musicEffect.play() or musicEffect.stop()
    @IBOutlet weak var codeId: UILabel!
    @IBAction func revealButtTapped(_ sender: UIButton) {
         codeId.text = "672020"
    }
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func goButtTapped(_ sender: UIButton) {
        if let name = idTextField.text {
            if name == "672020"{
                performSegue(withIdentifier: "672020", sender: self)
            }
            else{
                errorLabel.text = "Sorry wrong ID"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let musicFile = Bundle.main.path(forResource: "sound2", ofType: ".mp3")
        //do{
        //try musicEffect = AVAuioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        //}
        
        //catch{
        //  print(error)
        //}
    }


}


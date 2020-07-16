//
//  ViewController.swift
//  Fruits of Spirit
//
//  Created by Marian Rempola on 7/14/20.
//  Copyright © 2020 Klossified Koders. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
      override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "river", ofType: "mp3")
        do {
          audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
          try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default, options: [AVAudioSession.CategoryOptions.duckOthers])
        } catch {
          print(error)
        }
      }

    
    @IBAction func playButton(_ sender: UIButton) {
        audioPlayer.play()
    }

    @IBAction func stopButton(_ sender: UIButton) {
         audioPlayer.stop()
    }
    
    @IBOutlet weak var codeId: UILabel!
    @IBAction func revealButtTapped(_ sender: UIButton) {
         codeId.text = "672020"
    }

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    @IBAction func goButtTapped(_ sender: UIButton) {
        let correctID = "ID # 672020"
        if let name = idTextField.text {
            if name == correctID {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "first")
                    self.present(vc!, animated: true)
    } else {
            errorLabel.text = "Wrong ID number!"
                }
            }
        }
    }
    
    






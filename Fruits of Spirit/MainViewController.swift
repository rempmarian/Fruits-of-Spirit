//
//  MainViewController.swift
//  Fruits of Spirit
//
//  Created by Marian Rempola on 7/14/20.
//  Copyright © 2020 Klossified Koders. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var labelO: UILabel!
    @IBOutlet weak var textFieldO: UITextField!
    @IBAction func sendATapped(_ sender: UIButton) {
        if let newLabelO = textFieldO.text{
            labelO.text = newLabelO
        }
    }
    
    
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var textFieldA: UITextField!
    @IBAction func sendBTapped(_ sender: UIButton) {
        if let newLabelA = textFieldA.text{
            labelA.text = newLabelA
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //performSegue(withIdentifier: <#T##String#>, sender: Any?)
        //Identifier=VC; sender=self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

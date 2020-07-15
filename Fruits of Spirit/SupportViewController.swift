//
//  SupportViewController.swift
//  Fruits of Spirit
//
//  Created by Marian Rempola on 7/15/20.
//  Copyright © 2020 Klossified Koders. All rights reserved.
//

import UIKit

class SupportViewController: UIViewController {
    
    @IBAction func callButtTapped(_ sender: UIButton) {
        callLabel.text = "1-800-273-8255"
    }
    @IBOutlet weak var callLabel: UILabel!
    
    @IBAction func textButtTapped(_ sender: UIButton) {
        textLabel.text = "1-800-931-2237"
    }
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

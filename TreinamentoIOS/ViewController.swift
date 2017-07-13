//
//  ViewController.swift
//  TreinamentoIOS
//
//  Created by Solutis on 7/11/17.
//  Copyright © 2017 Solutis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTeste: UILabel!

    @IBAction func click(_ sender: UIButton) {
        performSegue(withIdentifier: "lol", sender: sender)
        
        let constraint = NSLayoutConstraint(item: labelTeste, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        
        self.view.addConstraint(constraint)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTeste.text = "Hello Wold"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("appear!!")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "lol") {
            if let destino = segue.destination as? ViewController2 {
                destino.delegate = self
            }
        } else {
            print("ops")
        }
    }

}

extension ViewController : ViewController2Delegate {
    
    func dismissController() {
        self.dismiss(animated: false, completion: nil)
        self.performSegue(withIdentifier: "teste", sender: nil)
    }
    
}


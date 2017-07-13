//
//  ViewController2.swift
//  TreinamentoIOS
//
//  Created by Solutis on 7/12/17.
//  Copyright © 2017 Solutis. All rights reserved.
//

import UIKit

class ViewController2 : UIViewController {
    
    weak var delegate: ViewController2Delegate?
    
    @IBAction func proximoClick(_ sender: Any) {
        delegate?.dismissController()
    }

}

protocol ViewController2Delegate: class {
    func dismissController()
}

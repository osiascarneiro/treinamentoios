//
//  ItensColecao.swift
//  TreinamentoIOS
//
//  Created by Solutis on 7/13/17.
//  Copyright © 2017 Solutis. All rights reserved.
//

import UIKit


enum ItensColecao: Int {
    
    case cloud = 0
    case attachment
    case document
    case selection
    
    func getImage() -> UIImage? {
        switch self {
        case .cloud:
            return UIImage(named: "cloud")
        case .attachment:
            return UIImage(named: "attachment")
        case .document:
            return UIImage(named: "document")
        case .selection:
            return UIImage(named: "selection")
        }
    }
    
    func getLabel() -> String {
        switch self {
        case .cloud:
            return "Nuvem"
        case .attachment:
            return "Anexo"
        case .document:
            return "Documento"
        case .selection:
            return "Selecao"
        }
    }
    
    static let count: Int = {
        var max: Int = 0
        while let _ = ItensColecao(rawValue: max) { max += 1 }
        return max
    }()
    
}

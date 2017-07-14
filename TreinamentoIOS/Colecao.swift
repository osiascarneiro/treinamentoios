//
//  Colecao.swift
//  TreinamentoIOS
//
//  Created by Solutis on 7/13/17.
//  Copyright © 2017 Solutis. All rights reserved.
//

import UIKit

class Colecao : UIViewController {
    
    @IBOutlet weak var colecoes: UICollectionView!
    
    override func viewDidLoad() {
        colecoes.delegate = self
        colecoes.dataSource = self
    }
    
}

extension Colecao : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ItensColecao.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cellEnum = ItensColecao(rawValue: indexPath.row) else { return UICollectionViewCell() }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemColecao", for: indexPath)
        
        let image = cell.viewWithTag(4) as! UIImageView
        let label = cell.viewWithTag(6) as! UILabel
        
        image.image = cellEnum.getImage()
        label.text = cellEnum.getLabel()
        
        return cell
    }
    
}

extension Colecao : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width/2)-16, height: 100.0)
    }
    
}

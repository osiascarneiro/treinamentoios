//
//  Tabela.swift
//  TreinamentoIOS
//
//  Created by Solutis on 7/12/17.
//  Copyright © 2017 Solutis. All rights reserved.
//

import UIKit

class Tabela : UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let nomes = ["nome1","nome2","nome3","nome4","nome5","nome6"]
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension Tabela : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "linhaDaTabela") as? LinhaDaTabela
        
        celula!.addImage.image = UIImage(named: "add")
        celula!.titulo.text = nomes[indexPath.row]
        
        return celula!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomes.count
    }
    
}

extension Tabela : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select")
    }
    
}

//
//  NewChildViewController.swift
//  schooList
//
//  Created by Ada 2018 on 14/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class NewChildViewController: UIViewController {
    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var escola: UITextField!
    
    @IBOutlet weak var imagemFilho: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        
        self.imagemFilho.layer.cornerRadius = self.imagemFilho.frame.size.width/2
    }

    override func viewWillDisappear(_ animated: Bool) {
        
        self.tabBarController?.tabBar.isHidden = false
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "produtosSegue"){
            let produtosController = segue.destination as! ProdutosViewController
            
            produtosController.filho = Pessoa(nome: nome.text!, pedidos: [], escola: escola.text!, tagColor: .green)
        }
    }
}

//
//  ProdutosViewController.swift
//  schooList
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class ProdutosViewController: UIViewController {
    var filho: Pessoa?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @IBAction func saveFilho(_ sender: Any) {
        BancoDeDados.banco.pessoas.append(filho!)
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func changeProductAmount(_ sender: UIStepper) {
        let cell = sender.superview?.superview as! ProdutoCell
        let indexPath: IndexPath = tableView.indexPath(for: cell)!
        let stepperValue = Int(sender.value)
        cell.contador.text = "(\(stepperValue))"
        
        if (filho?.checkOrder(produtoId: indexPath.section))! {
            filho?.changeAmount(amount: stepperValue, produtoId: indexPath.section)
        }else{
            filho?.pedidos.append(Pedido(requerido_id: indexPath.section, quantidade: stepperValue))
        }
    }
}

extension ProdutosViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "produtoCell", for: indexPath) as! ProdutoCell
        let produto = BancoDeDados.banco.produtos[indexPath.section]
        
        cell.nome.text = produto.nome
        cell.contador.text = "(\(produto.achados.count))"
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return BancoDeDados.banco.produtos.count
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
}


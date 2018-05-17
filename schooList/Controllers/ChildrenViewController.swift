//
//  ChildrenViewController.swift
//  schooList
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class ChildrenViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

}

extension ChildrenViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return BancoDeDados.banco.pessoas.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pessoaCell", for: indexPath) as! PessoaCell

        let pessoa = BancoDeDados.banco.pessoas[indexPath.section]
        cell.nome.text = pessoa.nome
        cell.progressoTexto.text = "5/10"
        cell.progresso.progressTintColor = pessoa.tagColor
        cell.tagColor.backgroundColor = pessoa.tagColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        return view
    }
}

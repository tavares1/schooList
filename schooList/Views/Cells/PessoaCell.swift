//
//  TableViewCell.swift
//  schooList
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class PessoaCell: UITableViewCell {

    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var progresso: UIProgressView!
    @IBOutlet weak var progressoTexto: UILabel!
    @IBOutlet weak var tagColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        progresso.layer.borderWidth = 1
        progresso.layer.borderColor = UIColor(red: 235, green: 235, blue: 235, alpha: 1).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

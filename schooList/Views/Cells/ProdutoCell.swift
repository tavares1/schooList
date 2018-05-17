//
//  ProdutoTableViewCell.swift
//  schooList
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class ProdutoCell: UITableViewCell {
    @IBOutlet weak var nome: UILabel!
    
    @IBOutlet weak var contador: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

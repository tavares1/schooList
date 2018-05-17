//
//  ListaDeProdutos.swift
//  schooList
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class BancoDeDados {
    var produtos: [Produto] = [Produto(nome: "lapiswerewewrwerwerwerwerwerwerwrew werwerwererwrew", achados: []),Produto(nome: "borracha", achados: []),Produto(nome: "copo", achados: [])]
    var pessoas: [Pessoa] = []
    
    static let banco = BancoDeDados()
    private init(){
        
    }
    
    
}

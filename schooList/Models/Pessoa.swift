//
//  Pessoa.swift
//  schooList
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

struct Pessoa {
    var nome: String
    var pedidos: [Pedido]
    var escola: String
    var tagColor: UIColor
    
    func checkOrder(produtoId: Int) -> Bool{
        for pedido in pedidos{
            if pedido.requerido_id == produtoId{
                return true
            }
        }
        return false
    }
    
    mutating func changeAmount(amount: Int, produtoId: Int) {
        self.pedidos = pedidos.map { (pedido) -> Pedido in
            if(pedido.requerido_id == produtoId){
                var newPedido = pedido
                newPedido.quantidade = amount
                return newPedido
            }
            return pedido
        }
    }
}

//
//  DeliveryProtocol.swift
//  Factory Method [Homework]
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation


protocol DeliveryType {
    var name: String { get }
    var typeTrasportDelivery: String { get }
    
    func startDelivery() -> String
    func finishDelivery() -> String
}

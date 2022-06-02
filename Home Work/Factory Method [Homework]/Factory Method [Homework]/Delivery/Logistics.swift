//
//  Logistics.swift
//  Factory Method [Homework]
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation

enum DeliveryTypes {
    case airplane, truck
}

class Logistic {
    
    static let delivery = Logistic()
    
    func createDelivery(delivery type: DeliveryTypes) -> DeliveryType {
        switch type {
        case .airplane:
            return AirplaneDelivery()
        case .truck:
            return RoadDelivery()
        }
    }
    
    private init() { }
    
    
}

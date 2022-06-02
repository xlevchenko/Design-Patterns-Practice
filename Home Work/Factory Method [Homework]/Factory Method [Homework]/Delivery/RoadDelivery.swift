//
//  RoadDelivery.swift
//  Factory Method [Homework]
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation


class RoadDelivery: DeliveryType {
    var name: String = "Road Delivery"
    
    var typeTrasportDelivery: String = "Truck"
    
    func startDelivery() -> String {
        let start = "Starting delivery on truck"
        print(start)
        return start
    }
    
    func finishDelivery() -> String {
        let finish = "Finish delivery on truck"
        print(finish)
        return finish
    }
    
    
}

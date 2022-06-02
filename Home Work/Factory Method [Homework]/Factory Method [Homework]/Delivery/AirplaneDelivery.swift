//
//  AirplaneDelivery.swift
//  Factory Method [Homework]
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation


class AirplaneDelivery: DeliveryType {

    var name: String = "Airplane Delivery"
    
    var typeTrasportDelivery: String = "Airplane"
    
    func startDelivery() -> String {
        let start = "Starting delivery on airplanes"
        print(start)
        return start
    }
    func finishDelivery() -> String {
        let finish = "Finish delivery on airplanes"
        print(finish)
        return finish
    }

}

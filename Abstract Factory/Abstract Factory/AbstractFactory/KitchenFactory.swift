//
//  KitchenFactory.swift
//  Abstract Factory
//
//  Created by Olexsii Levchenko on 6/16/22.
//

import Foundation


class KitchenFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Create chair for kitchen")
        return ChairKitchen()
    }
    
    func createSofa() -> Sofa {
        print("Create sofa for kitchen")
        return SofaKitchen()
    }
    
    func createTable() -> Table {
        print("Create table for kitchen")
        return TableKitchen()
    }
    
    
}

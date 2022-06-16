//
//  BedroomFactory.swift
//  Abstract Factory
//
//  Created by Olexsii Levchenko on 6/16/22.
//

import Foundation


class BedroomFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Created chair for bedroom")
        return ChairBedroom()
    }
    
    func createSofa() -> Sofa {
        print("Created sofa for badroom")
        return SofaBadroom()
    }
    
    func createTable() -> Table {
        print("Created coffe table for badroom")
        return CoffeTable()
    }
    
    
}

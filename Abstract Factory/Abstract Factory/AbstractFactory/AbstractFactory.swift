//
//  AbstractFactory.swift
//  Abstract Factory
//
//  Created by Olexsii Levchenko on 6/16/22.
//

import Foundation


protocol AbstractFactory {
    
    func createChair() -> Chair
    
    func createSofa() -> Sofa
    
    func createTable() -> Table
}

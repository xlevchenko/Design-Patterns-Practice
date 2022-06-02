//
//  Exercise.swift
//  Factory Method
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation

//1. Cтворюємо протокол за технічним завданям
protocol Exercise {
    var name: String { get }
    var type: String { get }
    
    func start()
    func stop()
}

//
//  Jumping.swift
//  Factory Method
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation

//2. Створюємо першу вправу та підписуємося на протокол Exercise
class Jumping: Exercise {
    
    //Реалізовуємо всі вимоги нашого протоколу
    var name: String = "Jumping"
    
    var type: String = "Exercise for legs"
    
    func start() {
        print("Started jumps")
    }
    
    func stop() {
        print("Stopped jumps")
    }
    //Тепер наш користувачь може пригати
}

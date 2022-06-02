//
//  Squats.swift
//  Factory Method
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation

//3. Створюємо третю вправу та підписуємося на протокол Exercise
class Squats: Exercise {
    
    //Реалізовуємо всі вимоги нашого протоколу
    var name: String = "Squats"
    
    var type: String = "Exercise for legs"
    
    func start() {
        print("Started squats")
    }
    
    func stop() {
        print("Stopped squats")
    }
    //Тепер наш користувачь може присідати
}

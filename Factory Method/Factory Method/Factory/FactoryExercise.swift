//
//  FactoryExercise.swift
//  Factory Method
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import Foundation

//4. Створили enum який буде являтися списком наших вправ
enum Exercises {
    case jumping, squats
}

//5. Створили клас який
class FactoryExercise {
    
    //створюємо Фабричний метод викорстаням патерна проектуваня Singleton. Для того щоб у нас був тільки один екземпляр класу і ми мали довтуп до ного у будь якій частина программи. Але зауважу що фабрику можна створювати не використовуючи Singleton.
    static let defaultFactory = FactoryExercise()
    
    //Створюємо Фабричний метод
    //name: вказуємо наш раніше створений enum який буде являтися списком наших вправ
    //-> Exercise повертатиме наша функція якусь вправу із нашого списку вправ
    func createExercise(name: Exercises) -> Exercise {
        switch name {
        case .jumping:
            return Jumping()
        case .squats:
            return Squats()
        }
    }
}

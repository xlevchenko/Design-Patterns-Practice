//
//  ViewController.swift
//  Factory Method
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    //6. Створюємо масив вправ і робимо ініціалізацію
    var arrayExercise = [Exercise]()

    override func viewDidLoad() {
        super.viewDidLoad()
        //8. Ініціалізуємо наш фетод
        createExercise(exercise: .jumping)
        runExercise()
    }
    
    //7. Створюємо метод з параметером нашого списку вправ типу enum
    func createExercise(exercise name: Exercises) {
        //Викликаємо нашу фабрику -> її ініціалізіцію -> її метод по створеню вправ і
        //передаємо наш параметер з списком врав
        let newExercis = FactoryExercise.defaultFactory.createExercise(name: name)
        
        //додаємо нашу нову вправу до нашошо масиву вправ
        arrayExercise.append(newExercis)
    }
    
    //9. Створюємо метод який буде відповідати за виконаная ношої вправи
    func runExercise() {
        //проходимо циклом по нашуму масиву вправ и виконуємо ці вправи
        for exercise in arrayExercise {
            exercise.start()
            exercise.stop()
        }
    }
}


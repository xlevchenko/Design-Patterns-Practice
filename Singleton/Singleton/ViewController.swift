//
//  ViewController.swift
//  Singleton
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //отримали посилання на наш створений об'єкт (Singleton)
        print(Settings.shared.volumeLevel)
        
        //можемо змінити якісь налаштування в нашому об'єкті (Singleton)
        Settings.shared.volumeLevel = 2.0
        
        print(Settings.shared.volumeLevel)
        //ось так тепер ми можемо мати доступ в різних ViewControllers до даного екземпляру класа и можемо виконувати якісь маніпуляції з обєʼктами цього классу
        
        //Мінуси цого підходу
        //Все що позначено приставкою static залишаєтся в памяті додату протягом всього життєвого циклу додату и наприклад якщо конкретний ViewController відпрацював і вигружаєтся з памʼяті то наш Singleton продовжує жити.
        
        //Swift також використовую цей патерн
        UIApplication.shared.applicationIconBadgeNumber = 1
        UserDefaults.standard
        URLSession.shared
        
    }


}


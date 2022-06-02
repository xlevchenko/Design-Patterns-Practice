//
//  Settings.swift
//  Singleton
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import UIKit


class Settings {
    
    //створюємо екземпляр класу для використання його у нашому проекті
    static let shared = Settings()
    
    var colorStyle = UIColor.white
    var volumeLevel: CGFloat = 1.0
    
    //створюємо приватний init для того щоб цей класс на можливо було переназначити
    private init() { }
}

//
//  WeaponsJedi.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class Bomb: Weapons {    //
    var name: String = "Bomb"
    var damage: Int = 100
    var rateOfFire: Int = 2
    var ammunition: Int = 4
    var distance: Int = 1
    
}

class LazerBlaster: Weapons {
    var name: String = "Lazer Blaster"
    var damage: Int = 40
    var rateOfFire: Int = 60
    var ammunition: Int = 30
    var distance: Int = 3
    
}


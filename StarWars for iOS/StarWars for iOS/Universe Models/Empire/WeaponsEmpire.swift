//
//  StartshipsWeapons.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class SuperLazer: Weapons {

    var name: String = "Ultimate super lazer"
    var damage: Int = 1000
    var rateOfFire: Int = 1
    var ammunition: Int = 5
    var distance: Int = 8
}

class PlazmaBlaster: Weapons {
    
    var name: String = "Plazma Blaster"
    var damage: Int = 30
    var rateOfFire: Int = 60
    var ammunition: Int = 40
    var distance: Int = 4
    
}

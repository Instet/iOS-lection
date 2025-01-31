//
//  StarshipsEmpire.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class DeathStar: StarshipImp {
        
    // MARK: - Constants
    
    private enum Constants {
        static let health = 1000
    }
    
    var superLazer = SuperLazer()

    // MARK: - Lifecycle
    
    init(coordinate: Point) {
        super.init(name: "Death Star",
                   fraction: .empare,
                   coordinate: coordinate,
                   weapons: [superLazer])
        health = Constants.health
    }
    
    deinit {
        print("Люк, я твой отец!")
    }
}



class TIEFighter: StarshipImp {
    
    private enum Constants {
        static let health = 100
    }
    
    let plazma = PlazmaBlaster()
    
    init(coordinate: Point, name: String) {
        super.init(name: name,
                   fraction: .empare,
                   coordinate: coordinate,
                   weapons: [plazma])
        health = Constants.health
    }
    
    deinit {
        print("Объект \(name) - уничтожен")
    }
    
}


extension DeathStar: RadarObserver {
    func detected(object: any SpaceObject) {
        do {
            try fire(to: object.coordinate)
        } catch WeaponsError.isEmpty {
            print("Нет патронов!")
        } catch {
            print("Ошибка не известна")
        }
    }

    
}


extension TIEFighter: RadarObserver {
    func detected(object: any SpaceObject) {
        do {
            try fire(to: object.coordinate)
        } catch WeaponsError.isEmpty {
            print("Нет патронов!")
        } catch {
            print("Ошибка не известна")
        }
    }

    
}

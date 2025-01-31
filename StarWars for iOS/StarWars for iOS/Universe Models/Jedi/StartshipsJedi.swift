//
//  StartshipsJedi.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class XWing: StarshipImp {
        
    // MARK: - Constants
    
    private enum Constants {
        static let health = 100
    }
   
    var lazer = LazerBlaster()
    var bomb = Bomb()
        
    // MARK: - Lifecycle
    
    init(coordinate: Point, name: String) {
        super.init(name: name,
                   fraction: .jedi,
                   coordinate: coordinate,
                   weapons: [lazer, bomb])
        health = Constants.health
        
    }
    
    deinit {
        print("\(name) ты должен был бороться со злом ...")
    }
}

extension XWing: RadarObserver {
    func detected(object: SpaceObject) {
        do {
            try fire(to: object.coordinate)
        } catch WeaponsError.isEmpty {
            print("Нет патронов!")
        } catch {
            print("Ошибка не известна")
        }
    }
}

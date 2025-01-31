//
//  Starships.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

// MARK: - Starship

protocol Starship: CustomStringConvertible, SpaceObject {
    var name: String  { get }
    var fraction: Fraction { get }
    var canShoot: Bool { get }
}

extension Starship {
    var description: String {
        return self.name + " \(self.fraction) fraction"
    }
}

extension Starship where Self: Armed {
    var canShoot: Bool {
        return self.weapons.first(where: { $0.ammunition > 0 }) == nil ? false : true
    }
}

// MARK: - Starship Base

class StarshipImp: Starship, Shooting {
    
    // MARK: - Properties
    
    private(set) var name = ""
    private(set) var fraction = Fraction.empare
    private(set) var weapons: [Weapons]
    
    var coordinate: Point
    var health: Int = 0 {
        didSet {
            if oldValue > health {
                print("Ай больно же!")
            }
        }
    }
    
    weak var shootHandler: ShootHandler?
    
    // MARK: - Lifecycle
    
    init(name: String,
         fraction: Fraction,
         coordinate: Point,
         weapons: [Weapons]) {
        self.name = name
        self.fraction = fraction
        self.coordinate = coordinate
        self.weapons = weapons
    }
        
    // MARK: - Properties
    
    func fire(to coordinate: Point) throws {
        
        let distanceToTarget = Int(getDist(from: self.coordinate, to: coordinate))
        
        guard distanceToTarget <= weapons.first?.distance ?? 0 else {
            print("Объект не в зоне поражения")
            self.coordinate = Point.generate()
            return
        }
        
        guard
            canShoot,
            var weapon = weapons.first(where: { $0.ammunition > 0 } )

        else {
            print("Нет патронов")
            return
        }
        
        try weapon.fire()
        shootHandler?.fire(from: weapon, to: coordinate)
    }
    
    
    private func getDist(from: Point, to: Point) -> Float {
        
        let dx = Float(from.x - to.x)
        let dy = Float(from.y - to.y)
        let x = powf(dx, 2)
        let y = powf(dy, 2)
        return sqrtf( x + y )
        
    }
}

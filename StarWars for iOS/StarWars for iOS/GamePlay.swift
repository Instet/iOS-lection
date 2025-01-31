//
//  GamePlay.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class GamePlay {
    
    //MARK: - Properties
    
    private let space = Space()
    
    func play() {
        
        print("Давным давно в далекой галактике")
        
        // Empire
        let deathStarPoint = Point.generate()
        let deathStar = DeathStar(coordinate: deathStarPoint)
        deathStar.shootHandler = space

        
        let tieFighterPoint = Point.generate()
        let tieFighter = TIEFighter(coordinate: tieFighterPoint, name: "TIE Fighter")
        tieFighter.shootHandler = space
        
        let tieFighter2Point = Point.generate()
        let tieFighter2 = TIEFighter(coordinate: tieFighter2Point, name: "TIE Fighter 2")
        tieFighter2.shootHandler = space

        space.add(objects: [deathStar, tieFighter, tieFighter2])
        
        
        
        
        
    
        // Jedi
        let xWingPoint = Point.generate()
        let xWing = XWing(coordinate: xWingPoint, name: "X Wing")
        xWing.shootHandler = space
        
        let xWing2Point = Point.generate()
        let xWing2 = XWing(coordinate: xWing2Point, name: "X Wing 2")
        xWing2.shootHandler = space
        
        let xWing3Point = Point.generate()
        let xWing3 = XWing(coordinate: xWing3Point, name: "X Wing 3")
        xWing3.shootHandler = space
    
        space.add(objects: [xWing, xWing2, xWing3])
        
        // Radar
        let radarPoint = Point.generate()
        let radar = Radar(coordinate: radarPoint)
        radar.datasource = space
        radar.observers = [deathStar, tieFighter, tieFighter2, xWing, xWing2, xWing3]
        radar.toggle()
        space.add(object: radar)
    }
    
    deinit {
        print("Game Over")
    }
}

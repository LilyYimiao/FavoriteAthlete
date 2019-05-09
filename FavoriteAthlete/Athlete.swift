//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Soft Dev on 4/30/19.
//

import Foundation


struct Athlete {
    var name: String
    var age: Int?
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(String(describing: age)) years old and plays for the \(team) in the \(league)"
    }
}

//
//  User.swift
//  ManziAppetizers
//
//  Created by Christian Manzaraz on 24/07/2024.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    
    
}

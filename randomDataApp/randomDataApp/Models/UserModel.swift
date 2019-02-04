//
//  UserModel.swift
//  randomDataApp
//
//  Created by Felipe Figueirôa on 04/02/19.
//  Copyright © 2019 Felipe Figueirôa. All rights reserved.
//

import Foundation

struct Address {
    
    var street: String = ""
    var suite: String = ""
    var city: String = ""
    var zipcode: String = ""
    
}

class UserModel {
    
    var userId: Int = 0
    var name: String =  ""
    var username: String = ""
    var addressUser = Address(street: "", suite: "", city: "", zipcode: "")
    var phone: String = ""
    var website: String = ""
    
    init(_ userid: Int, _ name: String, _ username: String, _ addressComplete: Address, _ phone: String, _ website: String) {
        
        self.userId = userid
        self.name = name
        self.username = username
        self.addressUser.street = addressComplete.street
        self.addressUser.suite = addressComplete.suite
        self.addressUser.city = addressComplete.city
        self.addressUser.zipcode = addressComplete.zipcode
        self.phone = phone
        self.website = website
        
        
    }
    
    
}

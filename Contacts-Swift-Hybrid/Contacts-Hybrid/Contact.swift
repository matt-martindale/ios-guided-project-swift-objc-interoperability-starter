//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Matthew Martindale on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

class Contact {
    var name: String
    var relationships: String?
    
    init(name: String, relationships: String? = nil) {
        self.name = name
        self.relationships = relationships
    }
}

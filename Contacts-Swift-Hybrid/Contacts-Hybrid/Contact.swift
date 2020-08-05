//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Matthew Martindale on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

@objc
class Contact: NSObject {
    @objc var name: String
    @objc var relationships: String?
    
    @objc init(name: String, relationships: String? = nil) {
        self.name = name
        self.relationships = relationships
    }
}

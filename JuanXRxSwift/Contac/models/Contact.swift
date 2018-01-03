//
//  Contact.swift
//  JuanXRxSwift
//
//  Created by JUAN on 3/01/18.
//  Copyright © 2018 net.juanfrancisco.blog. All rights reserved.
//

import Foundation
import UIKit
struct Contact {
    let name: String
    let phone: String
    let image: UIImage?
    
    init(name: String, phone: String, image: UIImage? = nil) {
        self.name = name
        self.phone = phone
        self.image = image
    }
}

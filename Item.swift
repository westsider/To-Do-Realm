//
//  Item.swift
//  Realm TooDo
//
//  Created by Warren Hansen on 8/29/17.
//  Copyright © 2017 Warren Hansen. All rights reserved.
//

import Foundation
import RealmSwift

import RealmSwift
class TodoItem: Object {
    dynamic var detail = ""
    dynamic var status = 0
}

//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Danut Popa on 11.01.2025.
//

import SwiftUI

@Observable
class Favorites {
    // the actual resorts the user has favorited
    private var resorts: Set<String>
    
    //the key we're using to read/write in UserDefaults
    private let key = "Favorites"
    
    init() {
        // load our saved data
        
        // still here ? Use an empty array
        resorts = []
    }
    
    // return true if your set contains this resort
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    // adds the resort to our set and saves the change
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }
    
    // removes the resort from our set and saves the change
    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        // write out all data
    }
}


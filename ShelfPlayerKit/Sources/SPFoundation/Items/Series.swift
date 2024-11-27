//
//  Series.swift
//  Audiobooks
//
//  Created by Rasmus Krämer on 04.10.23.
//

import Foundation

public final class Series: Item, @unchecked Sendable {
    public let covers: [Cover]
    
    public init(id: ItemIdentifier, name: String, authors: [String], description: String?, addedAt: Date, covers: [Cover]) {
        self.covers = covers
        
        super.init(id: id, name: name, authors: authors, description: description, genres: [], addedAt: addedAt, released: nil)
    }
}
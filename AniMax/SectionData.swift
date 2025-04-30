//
//  SectionData.swift
//  AniMax
//
//  Created by Hector Adame on 10/23/24.
//

import UIKit
class SectionData{
    let sectioName: String!
    var animes: [Anime]
    
    init(sectioName: String!, animes: [Anime]) {
        self.sectioName = sectioName
        self.animes = animes
    }
    
}

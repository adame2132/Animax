//
//  SectionDataCollection.swift
//  AniMax
//
//  Created by Hector Adame on 10/23/24.
//

import UIKit
class SectionDataCollection {
    var animeCollection: AnimeCollection!
    var data: [SectionData] = [] // Initialize the array

    init(animeCollection: AnimeCollection) {
        self.animeCollection = animeCollection
        
        // Populate the data array
        for anime in animeCollection.allAnime {
            if let index = self.data.firstIndex(where: { $0.sectioName == anime.genre }) {
                // Append to existing section
                self.data[index].animes.append(anime)
            } else {
                // Create a new section
                let newSection = SectionData(sectioName: anime.genre, animes: [anime])
                self.data.append(newSection)
            }
        }
    }
}

//        for anime in animeCollection.allAnime {
//            if let index = animeCollectionSections.firstIndex(where: { $0.sectionName == anime.genre}) {
//                        // If the section exists, append the anime
//                animeCollectionSections[index].animes.append(anime)
//            } else {
//                        // If the section doesn't exist, create a new section
//                let newSection = sectionedData(sectionName: anime.genre, animes: [anime])
//                animeCollectionSections.append(newSection)
//            }
//        }
        


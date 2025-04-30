//
//  Anime.swift
//  AniMax
//
//  Created by Hector Adame on 10/9/24.
//

import UIKit
class Anime: Equatable, Codable{
    let name: String
    let desc: String
    let episodes: Int
    let status: String
    let cover: String
    let genre: String
    var rank: Int? // telling it its an optianal but the type is int
    //creating a initalizer of the class to create Animes when i want to/ my Anime creater should call this or when i start creating the anime.
    init(name: String, desc: String, episodes: Int, status: String, cover: String, genre: String){
        self.name = name
        self.desc = desc
        self.episodes = episodes
        self.status = status
        self.cover = cover
        self.genre = genre
    }
    static func ==(lhs: Anime, rhs:Anime) -> Bool{
        return lhs.name == rhs.name && lhs.episodes == rhs.episodes && rhs.status == lhs.status && rhs.desc == lhs.desc
    }
}

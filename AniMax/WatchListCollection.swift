//
//  WatchListCollection.swift
//  AniMax
//
//  Created by Hector Adame on 10/20/24.
//

import UIKit
class WatchListCollection{
    var animeCollection: AnimeCollection!
    var watchList = [Anime]()
    let animeArchiveURL:URL = {
        let documentDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentDirectories.first!
        return documentDirectory.appendingPathComponent("anime.plist")
    }()
    init(){
        do{
            let data = try Data(contentsOf: animeArchiveURL)
            let unarchiver = PropertyListDecoder()
            let animes = try unarchiver.decode([Anime].self, from: data)
            watchList = animes
            print("watchlist data loaded.")
        }
        catch{
            print("Error reading in data: \(error)")
        }
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(saveChanges), name: UIScene.didEnterBackgroundNotification, object: nil)
    }
    @discardableResult func createAnime() -> Anime{
        let ranIndex = Int.random(in: 0..<animeCollection.allAnime.count)
        let newAnime = animeCollection.allAnime[ranIndex]
        watchList.append(newAnime)
        return newAnime
    }
    func removeItem(_ item: Anime){
        if let index = watchList.firstIndex(of:item){
            watchList.remove(at: index)
        }
    }
    func moveAnime(from fromIndex: Int, to toIndex: Int){
        if fromIndex == toIndex{
            return
        }
        let movedAnime = watchList[fromIndex]
        watchList.remove(at: fromIndex)
        watchList.insert(movedAnime, at: toIndex)
            
    }
    @objc func saveChanges() -> Bool{
        print("Saving dat to: \(animeArchiveURL)")
        do{
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(watchList)
            try data.write(to: animeArchiveURL, options: [.atomic])
            print("saved data to anime.plist")
            return true
        }
        catch{
            print("Error encoding allAnimes: \(error)")
            return false
        }
    }
    
    
}

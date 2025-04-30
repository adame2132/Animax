//
//  AnimeCollection.swift
//  AniMax
//
//  Created by Hector Adame on 10/9/24.
//

import UIKit
class AnimeCollection{
    var allAnime = [Anime]()
//    let animeArchiveURL:URL = {
//        let documentDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//        let documentDirectory = documentDirectories.first!
//        return documentDirectory.appendingPathComponent("anime.plist")
//    }()
    init(){
        //        createAnime()
        allAnime = [Anime(name: "DanDan", desc: "Momo Ayase, a high school student obsessed with actor Ken Takakura, befriends a nerdy boy she nicknames Okarun (instead of his actual name, Ken Takakura) who mistakes her kindness for a shared obsession with paranormal phenomena; while she believes in spirits, he believes in aliens, and they send each other to notorious places to prove their respective interests.", episodes: 1024, status: "Ongoing", cover: "dandaddan", genre: "Comedy"),
                    Anime(name: "FairyTale", desc: "Natsu Dragneel, a Dragon Slayer wizard from the Fairy Tail guild, explores the Kingdom of Fiore in search of his missing adoptive father, the dragon Igneel. During his journey, he befriends a young celestial wizard named Lucy Heartfilia and invites her to join Fairy Tail.", episodes: 124, status: "Finished", cover:"fairyTale", genre: "Action"),
                    Anime(name: "One Piece", desc: "ONE PIECE is a legendary high-seas quest unlike any other. Luffy is a young adventurer who has longed for a life of freedom ever since he can remember. He sets off from his small village on a perilous journey to find the legendary fabled treasure, ONE PIECE, to become King of the Pirates!", episodes: 1124, status: "Ongoing", cover: "onePiece", genre: "Action"),
                    Anime(name: "Black Clover", desc:"Set in a world where people are born with the ability to use magic, the story follows Asta, a young boy without any magic power who is given a rare grimoire that grants him anti-magic abilities. With his fellow mages from the Black Bulls, Asta plans to become the next Wizard King." , episodes: 172, status: "Ongoing", cover: "blackClover", genre: "Action"),
                    Anime(name: "DragonBall Z", desc: "Dragon Ball Z continues the adventures of Son Goku in his adult life as he and his companions defend the Earth against villains including aliens (Vegeta, Frieza), androids (Cell), and magical creatures (Majin Buu).", episodes: 200, status: "Finished", cover:"dragonBall" , genre: "Action"),
                    Anime(name: "Demon Slayer", desc: "It follows teenage Tanjiro Kamado, who strives to become a Demon Slayer after his family was slaughtered and his younger sister, Nezuko, is turned into a demon.", episodes: 26, status: "Finished", cover: "demonSlayer", genre: "Action"),
                    Anime(name: "ReZero", desc: "Subaru Natsuki is a NEET who is suddenly summoned to a fantasy-like world. Just after arriving, he is killed while trying to help a young half-elf he befriends, Emilia, who is a candidate to become the next ruler of the Kingdom of Lugunica, only to revive some hours in the past.", episodes: 25, status: "Ongoing", cover:"reZero" , genre: "Isiaki"),
                    Anime(name: "Solo Leveling", desc: "n a world where hunters — human warriors who possess supernatural abilities — must battle deadly monsters to protect mankind from certain annihilation, a notoriously weak hunter named Sung Jinwoo finds himself in a seemingly endless struggle for survival.", episodes: 12, status: "Finished", cover: "soloLeveling", genre: "Isiaki"),
                    Anime(name: "Sword Art Online", desc: "idk", episodes: 50, status: "Finished", cover: "swordArt", genre: "Isiaki"),
                    Anime(name: "Shadow Eminance" , desc: "Premise. In modern-day Japan, a boy named Minoru Kageno aspires to be a mastermind, exerting power from the shadows. During his clandestine training, an unforeseen accident occurs when he gets hit by a truck, leading to his untimely demise. To his surprise, he finds himself reborn in a fantastical realm as Cid Kagenou.", episodes: 24, status: "Ongoing", cover: "shadowEm", genre: "Isiaki"),
                    Anime(name: "Jobless Reincarnation", desc: "After being hit by a truck and dying, a hopeless and jobless Japanese man reincarnates into a fantasy-like world as Rudeus, son of the swordsman Paul Greyrat and his wife, the healer Zenith. Keeping his memories of his previous life, Rudeus quickly learns to read and eventually starts practicing magic.", episodes: 24, status: "Ongoing", cover: "joblessRe", genre: "Isiaki"),
                    Anime(name: "KonoSuba", desc: "A goddess intervenes and offers him a second chance in a magical land. Kazuma Satou, a high school student, gamer and shut-in, died on an average day walking home from school, performing the one heroic act of his life.", episodes: 36, status: "Finished", cover: "konosuba", genre: "Comedy"),
                    Anime(name: "Gintama", desc: "he series focuses on an eccentric samurai, Gintoki Sakata who works as an odd-jobs freelancer. He helps a teenager named Shinpachi Shimura save his sister Tae from an alien group that wants to send her to a brothel.", episodes: 142, status: "Finished", cover: "gintama", genre: "Comedy")]
        
        
        
    }
//        do{
//            let data = try Data(contentsOf: animeArchiveURL)
//            let unarchiver = PropertyListDecoder()
//            let animes = try unarchiver.decode([Anime].self, from: data)
//            allAnime = animes
//        }
//        catch{
//            print("Error reading in data: \(error)")
//        }
//        let notificationCenter = NotificationCenter.default
//        notificationCenter.addObserver(self, selector: #selector(saveChanges), name: UIScene.didEnterBackgroundNotification, object: nil)
//    }
    
//    @discardableResult func createAnime() -> Anime{
//        let newAnime = Anime(name: "bleach", desc: "pree cool or whatever ", episodes: 5, status: "ongoing", cover:"bleach", genre: "Action")
//        allAnime.append(newAnime)
//        return newAnime
//    }
//    func removeItem(_ item: Anime){
//        if let index = allAnime.firstIndex(of:item){
//            allAnime.remove(at: index)
//        }
//    }
//    func moveAnime(from fromIndex: Int, to toIndex: Int){
//        if fromIndex == toIndex{
//            return
//        }
//        let movedAnime = allAnime[fromIndex]
//        allAnime.remove(at: fromIndex)
//        allAnime.insert(movedAnime, at: toIndex)
//            
//    }
//    @objc func saveChanges() -> Bool{
//        print("Saving dat to: \(animeArchiveURL)")
//        do{
//            let encoder = PropertyListEncoder()
//            let data = try encoder.encode(allAnime)
//            try data.write(to: animeArchiveURL, options: [.atomic])
//            print("saved data to anime.plist")
//            return true
//        }
//        catch{
//            print("Error encoding allAnimes: \(error)")
//            return false
//        }
//    }
}

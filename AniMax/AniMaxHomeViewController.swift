//
//  AniMaxHomeViewController.swift
//  AniMax
//
//  Created by Hector Adame on 10/7/24.
//

import UIKit
class AniMaxHomeViewController: UITableViewController, AnimeCollectionCellDisplayDelegate {
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return animeCollection.allAnime.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let anime = animeCollection.allAnime[indexPath.row]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimeCollection", for: indexPath) as! AnimeCollectionCellDisplay
//        cell.animeHero.image = UIImage(named: anime.cover)
//        return cell
//    }
    
    var animeCollection:  AnimeCollection! // this gives the view controller access to the anime collection
    var sectionedData: SectionDataCollection!
    
//    struct sectionedData{
//        let sectionName: String!
//        var animes: [Anime]
//    }
//    var animeCollectionSections: [sectionedData] = []
//    func createSectionData(collection: AnimeCollection) {
//            for anime in collection.allAnime {
//                if let index = animeCollectionSections.firstIndex(where: { $0.sectionName == anime.genre }) {
//                    // If the section exists, append the anime
//                    animeCollectionSections[index].animes.append(anime)
//                } else {
//                    // If the section doesn't exist, create a new section
//                    let newSection = sectionedData(sectionName: anime.genre, animes: [anime])
//                    animeCollectionSections.append(newSection)
//                }
//            }
//            print(animeCollectionSections)
//        }
    @IBOutlet weak var homeHeroImg: UIImageView!
    var ranAniHero: Anime!
    var randomIndex: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("aniHome page loaded")
        print("this is anime collection: \(String(describing: animeCollection))")
        randomIndex = Int.random(in: 0..<animeCollection.allAnime.count)
        ranAniHero = animeCollection.allAnime[randomIndex]
        homeHero.image = UIImage(named: ranAniHero.cover)
        heroDesc.text = ranAniHero.desc
        heroName.text = ranAniHero.name
//        createSectionData(collection: animeCollection)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionedData.data.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionedData.data[section].sectioName
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimeTable", for: indexPath) as! AnimeTableCellDisplay
//        cell.testName.text = anime.name
        cell.animeCollection = sectionedData.data[indexPath.section]
//        cell.animeCollection = animeCollection[indexPath.section]
        cell.sectionIndex = indexPath.section
        cell.delegate = self
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
        case "animeInfo":
            let anime = sectionedData.data[selectedSectionIndex].animes[selectedAnimeIndex]
            let detailView = segue.destination as! AnimeDetailViewController
            detailView.anime = anime
            print("section: \(selectedSectionIndex) anime: \(selectedAnimeIndex)")

        case "heroInfo":
            let anime = animeCollection.allAnime[randomIndex]
            let detailView = segue.destination as! AnimeDetailViewController
            detailView.anime = anime
        default:
            preconditionFailure("unexpected segue identifier")
            
        }
    }
    
    func animeSelected(sectionIndex: Int, animeIndex: Int) {
        self.selectedSectionIndex = sectionIndex
        self.selectedAnimeIndex = animeIndex
        // segue id: animeInfo
        self.performSegue(withIdentifier: "animeInfo", sender: self)
    }
    
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var homeHero: UIImageView!
    @IBOutlet weak var heroDesc: UILabel!
    
    var selectedSectionIndex = -1
    var selectedAnimeIndex = -1
    
}

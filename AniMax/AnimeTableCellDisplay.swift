//
//  AnimeTableCellDisplay.swift
//  AniMax
//
//  Created by Hector Adame on 10/19/24.
//

import UIKit
class AnimeTableCellDisplay: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate{
    var animeCollection: SectionData!
    
    var sectionIndex = -1
    var delegate: AnimeCollectionCellDisplayDelegate?
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("collection count is: \(animeCollection.animes.count)")
        return animeCollection.animes.count
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let anime = animeCollection.animes[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimeCollection", for: indexPath) as! AnimeCollectionCellDisplay
        cell.animeHero.image = UIImage(named: anime.cover)
        cell.sectionIndex = sectionIndex
        cell.animeIndex = indexPath.row
        cell.delegate = delegate
        print("anime in collection is: \(anime.name)")
        return cell
    }
    
    
}

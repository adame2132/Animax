//
//  AnimeDetailViewController.swift
//  AniMax
//
//  Created by Hector Adame on 10/7/24.
//

import UIKit
class AnimeDetailViewController:  UIViewController, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return anime.episodes
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "episodeCell", for: indexPath) as! EpisodeCollectionCell
        cell.episodeLabel.text = "\(indexPath.row + 1)"
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var coverImg: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    var anime: Anime!{
        didSet{
            navigationItem.title = anime.name
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        print("anime is: \(anime.name), \(anime.desc), \(anime.status) ")
        coverImg.image = UIImage(named:anime.cover)
        summaryLabel.text = anime.desc
        statusLabel.text = anime.status
    }
}

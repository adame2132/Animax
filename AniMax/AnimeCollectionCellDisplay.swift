//
//  AnimeCollectionCellDisplay.swift
//  AniMax
//
//  Created by Hector Adame on 10/19/24.
//

import UIKit
class AnimeCollectionCellDisplay: UICollectionViewCell{
    
    @IBOutlet weak var animeHero: UIImageView!
    @IBOutlet weak var moreInfoButton: UIButton!
    
    var delegate: AnimeCollectionCellDisplayDelegate?
    var sectionIndex = -1
    var animeIndex = -1
    
    @IBAction func moreInfoButtonPressed(_ sender: UIButton) {
        if let d = delegate {
            d.animeSelected(sectionIndex: sectionIndex, animeIndex: animeIndex)
        }
    }
}

protocol AnimeCollectionCellDisplayDelegate {
    func animeSelected(sectionIndex: Int, animeIndex: Int)
}

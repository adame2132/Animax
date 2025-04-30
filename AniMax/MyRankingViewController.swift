//
//  MyRankingViewController.swift
//  AniMax
//
//  Created by Hector Adame on 10/7/24.
//

import UIKit
class MyRankingViewController: UITableViewController{
    var animeCollection:  WatchListCollection!
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animeCollection.watchList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let anime = animeCollection.watchList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "RankCell", for: indexPath) as! RankCellPrototype
        cell.name.text = anime.name
        cell.status.text = anime.status
        cell.episodes.text = "\(anime.episodes)"
        cell.coverImg.image = UIImage(named: anime.cover)
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is anime collection: \(String(describing: animeCollection))")
    }
    
    @IBAction func editToggled(_ sender: UIButton) {
        print("Edit btn was clicked")
        if isEditing{
            sender.setTitle("Edit", for: .normal)
            setEditing(false, animated: true)
        }
        else{
            sender.setTitle("Done", for:.normal)
            setEditing(true, animated: true)
        }
        
    }
    @IBAction func addToggled(_ sender: Any) {
        print("Add btn was clicked")
        //create my item usung the anime collection
        let anime = animeCollection.createAnime()
        print("new anime looks like \(anime)")
        print(animeCollection ?? "none")
        let indexPath = IndexPath(row: animeCollection.watchList.count-1, section:0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            let anime = animeCollection.watchList[indexPath.row]
            animeCollection.removeItem(anime)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndex: IndexPath){
        animeCollection.moveAnime(from: sourceIndexPath.row, to: destinationIndex.row)
    }
}

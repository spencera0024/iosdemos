//
//  ViewController.swift
//  CollectionDemo
//
//  Created by Spencer Anderson on 4/2/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "reusableCell", for: indexPath) as! MovieCollectionViewCell
        
        //populate a cell
        cell.assignMovie(with: movies[indexPath.row])
        
        //return cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Assign movie details (Title, BoxOffice, Year Released, Rating).
        assignMovieDetails(index: indexPath)
    }
    
    func assignMovieDetails(index: IndexPath) {
        titleOL.text = movies[index.row].title
        ratingOL.text = movies[index.row].movieRating
        boxOfficeOL.text = movies[index.row].boxOffice
        yearReleasedOL.text = movies[index.row].releasedYear
    }
    
    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    @IBOutlet weak var boxOfficeOL: UILabel!
    
    @IBOutlet weak var ratingOL: UILabel!
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOL.dataSource = self
        collectionViewOL.delegate = self
        
    }


}


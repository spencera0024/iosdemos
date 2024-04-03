//
//  MovieCollectionViewCell.swift
//  CollectionDemo
//
//  Created by Spencer Anderson on 4/2/24.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    func assignMovie(with movie:Movie) {
        imageOL.image = movie.image
    }
}

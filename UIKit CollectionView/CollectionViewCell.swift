//
//  CollectionViewCell.swift
//  UIKit CollectionView
//
//  Created by Timothy Sonner on 10/31/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelForItemEmoji: UILabel!
    
    @IBOutlet weak var labelForItemName: UILabel!
    
    func setup(with item: Item){
        labelForItemEmoji.text = item.emoji
        labelForItemName.text = item.name
    }
    
}

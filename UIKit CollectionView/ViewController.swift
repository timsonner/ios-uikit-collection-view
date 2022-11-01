//
//  ViewController.swift
//  UIKit CollectionView
//
//  Created by Timothy Sonner on 10/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self // Sets the view in UI to be updated.
        collectionView.delegate = self // Which actions a cell can perform.
        collectionView.collectionViewLayout = UICollectionViewFlowLayout() // How tbe cell looks.
    }
}

extension ViewController: UICollectionViewDataSource {
    // Sets number of items in the collection view.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count // items: [Item]
    }
    
    // Create the cell for the collection view, connect views to the view controller.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Configures the index paths.
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        // Passes an Item object to the collection view cell
        cell.setup(with: items[indexPath.row])
        // Cell is populated with data from the array element specified by cell.setup().
        return cell
    }
}

// Sets the frame size for the collection view cell.
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 200, height: 300)
    }
}

// Action for when an item is selected.
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Item selected: \(items[indexPath.row].name)")
    }
}

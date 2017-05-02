//
//  ViewController.swift
//  Collect
//
//  Created by Shilp_m on 1/11/17.
//  Copyright © 2017 Shilp_mphoton pho. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var myCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myCollection.isPagingEnabled = true
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if let layout = myCollection.collectionViewLayout as? UICollectionViewFlowLayout {
            let itemWidth = myCollection.frame.width
            let itemHeight = myCollection.frame.height
            layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
            layout.invalidateLayout()
        }
    }
    
     func numberOfSections(
        in collectionView: UICollectionView) -> Int {
        let layout = myCollection.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal
        myCollection.collectionViewLayout = layout
        return 1
    }
    
     func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        // Use 3 for demonstration.
        return 10
    }
    
    
     func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Get reusable cell.
        // ... Use identifier "Example."
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                                         for: indexPath)
        // Make the cell blue.
        cell.backgroundColor = UIColor.clear
        // Return the cell.
        return cell
    }

}


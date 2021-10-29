//
//  SpecificTweetVCViewController.swift
//  Table&CollectionViews
//
//  Created by Rayan Taj on 28/10/2021.
//

import UIKit

class SpecificTweetVCViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet weak var collectionTable: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return localTweet.images.count
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
      {
         return CGSize(width: 140.0, height: 115.0)
      }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCellID", for: indexPath as IndexPath) as! imageCustomCell
        
        
        customCell.imageUI.image = UIImage(named: localTweet.images[indexPath.row])
    
    return customCell
    }
    

    @IBOutlet weak var nameLable: UILabel!
   
    @IBOutlet weak var descTable: UILabel!
    var localTweet = tweet()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = localTweet.user
        descTable.text = localTweet.tweetContent

        
        collectionTable.dataSource = self
        collectionTable.delegate = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Table&CollectionViews
//
//  Created by Rayan Taj on 28/10/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var customTweets = [
    
    tweet(user: "@rayanTaj", tweetContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting", images: ["jed1", "jed2", "jed3",  "rud1" , "rud2", "rud3"]),
    
    tweet(
    user: "@ahmedsfs", tweetContent: "ver since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting",images: ["jed1", "jed2", "jed3",  "rud1" , "rud2", "rud3"])
    
    
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customTweets.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cells = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customTableViewCell
        
        cells.nameLable.text =  customTweets[indexPath.row].user
        cells.descLable.text =  customTweets[indexPath.row].tweetContent
        return cells
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc  = storyboard!.instantiateViewController(withIdentifier: "tweetID") as! SpecificTweetVCViewController
        
        
       
        
        vc.localTweet = customTweets[indexPath.row]
        
       present(vc, animated: true)
        
        
        
        
        print("Hello")
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    

}


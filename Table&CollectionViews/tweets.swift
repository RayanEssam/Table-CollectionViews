//
//  tweets.swift
//  Table&CollectionViews
//
//  Created by Rayan Taj on 28/10/2021.
//

import Foundation


class tweet {
    
    var user : String
    var tweetContent : String
    var images : [String]

    init(user : String , tweetContent : String , images : [String] ) {
        self.user = user
        self.tweetContent = tweetContent
        self.images = images
    }
    
    init(){
        self.user = ""
        self.tweetContent = ""
        self.images = []
    }
    
}

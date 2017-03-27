//
//  PartyRock.swift
//  Party Rock
//
//  Created by Chetwyn on 3/27/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

class PartyRock {
    
    //Need an imageURL, then a song title, and then a video to show.
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
}

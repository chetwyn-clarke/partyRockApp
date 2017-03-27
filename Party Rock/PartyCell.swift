//
//  PartyCell.swift
//  Party Rock
//
//  Created by Chetwyn on 3/27/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    //Create a custom model to house the variables that you will use to update the above.
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateCell(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: Set image from URL
    }



}

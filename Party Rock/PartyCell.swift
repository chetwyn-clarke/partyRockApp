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
        
        //TODO: Set image from URL.  Have to download this from the Internet and then display on the app.  We need to put the downloads on an asynchrounous thread so that it does not hold up the app!
        
        let url = URL(string: partyRock.imageURL)
        
        //Create a background thread.  The background thread can't handle updating UI, etc., so once we are finished we have to come back to the main thread to do that.
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url!)
                
                //In the video, Mark uses Dispatch.global().sync, but this was giving me an error.  Further research online suggests that you should only update UI elements from the main thread, not the global.  Now, it throws no errors.
                DispatchQueue.main.sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // Handle the error
            }
        }
    }



}

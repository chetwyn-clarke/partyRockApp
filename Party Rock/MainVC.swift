//
//  ViewController.swift
//  Party Rock
//
//  Created by Chetwyn on 3/26/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Create an array of the custom data model, so that you can update the table views from it.
    
    var partyRocks = [PartyRock]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //URL Test to see how it needs to be formatted.
        
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>"
        
        // Create some test data
        
        let p1 = PartyRock(imageURL: "https://i1.sndcdn.com/artworks-000123658834-lse7tb-t500x500.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        let p2 = PartyRock(imageURL: "https://i1.sndcdn.com/artworks-000097667596-5iuvpu-t500x500.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c_3xZgvy6fo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        let p3 = PartyRock(imageURL: "http://www.josepvinaixa.com/blog/wp-content/uploads/2015/07/Redfoo-Where-the-Sun-Goes-2015-1200x1200-Single.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TrVLu9p65a0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where the Sun Goes")
        let p4 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/b/b7/Redfoo-Let%27s-Get-Ridiculous.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/SjmTFIHX1yo/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SjmTFIHX1yo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateCell(partyRock: partyRock)
            return cell

        } else {
            
            return UITableViewCell()
        }

    }

}


//
//  DetailViewController.swift
//  WorkOutApp
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit
import AVFoundation

class DetailViewController: UITableViewController {
    @IBOutlet weak var playerView: YTPlayerView!
    @IBOutlet weak var detailText: UILabel!
    var workOut: WorkOut!
    let playerVars = ["playsinline":"1"]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.playerView.loadWithVideoId(workOut.videoId, playerVars: playerVars)
        self.view.backgroundColor = workOut.color
        self.detailText.text = workOut.workOutText
        self.title = workOut.title
        self.navigationController?.navigationBar.barTintColor = workOut.color
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
    
    

}

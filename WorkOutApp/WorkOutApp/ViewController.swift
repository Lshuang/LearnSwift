//
//  ViewController.swift
//  WorkOutApp
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let manager = WorkOutDataSource()
    var workOuts = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.workOuts = manager.getWorkOuts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.workOuts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let workOut = self.workOuts[indexPath.row] as? WorkOut
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? WorkOutCell
        cell?.textCellLabel.text = workOut?.title
        cell?.backgroundColor = workOut?.color
        cell?.countLabel.text = "\(indexPath.row)"
        cell?.selectionStyle = UITableViewCellSelectionStyle.None
        return cell!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "detailView") {
            let cell = sender as? WorkOutCell
            let indexPath = tableView.indexPathForCell(cell!)
            let nvc = segue.destinationViewController as? UINavigationController
            if let tmp = workOuts[indexPath!.row] as? WorkOut {
                let dvc = nvc?.topViewController as! DetailViewController
                dvc.workOut = tmp
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 55, 0)
    }
}


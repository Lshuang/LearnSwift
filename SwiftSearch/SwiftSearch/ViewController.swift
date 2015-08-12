//
//  ViewController.swift
//  SwiftSearch
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    var tableView: UITableView!
    var searchBar: UISearchBar!
    /// 是否正在输入或活动中
    var searchActive: Bool = false
    /// 模拟数据
    var data = ["San Francisco","New York","San Jose","Chicago","China","Japan","Los Angeles","Austin","Seattle","Koera"]
    var filtered: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64), style: UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        searchBar = UISearchBar(frame: CGRectMake(10, 0, self.view.frame.size.width - 20, 30))
        searchBar.placeholder = "请输入关键字"
        searchBar.delegate = self
        tableView.tableHeaderView = searchBar
    }
    
    //MARK:搜索框的代理方法
    //开始输入
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchActive = true
    }
    
    //输入完成
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchActive = false
    }

    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchActive = false
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchActive = false
    }
    
    //文字改变，动态搜索，模糊查询
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        filtered = data.filter({ (text) -> Bool in
            let tmp: NSString = text
            let range = tmp.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            return range.location != NSNotFound
        })
        if (filtered.count == 0) {
            searchActive = false
        } else {
            searchActive = true
        }
        self.tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:tableview代理
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (searchActive) {
            return filtered.count
        }
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        }
        if (searchActive){
            cell!.textLabel?.text = filtered[indexPath.row]
        } else {
            cell!.textLabel?.text = data[indexPath.row]
        }
        
        return cell!
    }


}


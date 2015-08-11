//
//  ViewController.swift
//  SwiftUISearchBarTest
//
//  Created by Shawn Li on 15/8/11.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    var searchBar: UISearchBar?
    var DataTableView: UITableView?
    var searchData = ["View","Label","Button","ImageView","TextField","DataPicker","Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DataTableView = UITableView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height), style: UITableViewStyle.Plain)
        DataTableView?.dataSource = self
        DataTableView?.delegate = self
        DataTableView?.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(DataTableView!)
        
        searchBar = UISearchBar(frame: CGRectMake(0, 0, 200, 40))
        searchBar?.delegate = self
        searchBar?.barStyle = UIBarStyle.Default
        searchBar?.barTintColor = UIColor.redColor()
        searchBar?.placeholder = "请输入关键字"
        searchBar?.showsBookmarkButton = true
        searchBar?.showsCancelButton = true
        
        /*! 把searchBar放在table的headview上*/
        DataTableView?.tableHeaderView = searchBar
        //
//        let rightBar = UIBarButtonItem(customView: searchBar!)
//        self.navigationItem.rightBarButtonItem = rightBar;
    }

    //MARK:点击取消按钮
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        println("点击取消按钮")
        searchBar.showsCancelButton = false
        searchBar.resignFirstResponder()
    }
    
    //MARK:点击搜索按钮
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        println("开始搜索")
        searchBar.resignFirstResponder() //隐藏键盘
        var tempArray = searchData
        searchData.removeAll()
        for temp in tempArray {
            if temp == searchBar.text {
                searchData.append(temp)
                DataTableView?.reloadData()
                println("开始搜索参数：\(temp)")
            }
        }
    }
    
    //bookmark
    func searchBarBookmarkButtonClicked(searchBar: UISearchBar) {
        println("点击搜索记录按钮，显示搜索历史，iphone可弹出新页面显示历史记录，ipad可用popover")
        //弹出历史记录页面
    }
    
    //即将输入内容
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        println("开始输入")
        searchBar.showsCancelButton = true
        searchBar.showsScopeBar = true
        return true
    }
    
    
    //tableview
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchData.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = String(format: "%d %@", indexPath.row,searchData[indexPath.row])
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


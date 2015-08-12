//
//  WorkOut.swift
//  WorkOutApp
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//  数据模型

import Foundation
import UIKit

class WorkOut {
    var videoId: String!
    var title: String!
    var workOutText: String!
    var color: UIColor!
    
    //初始化数据模型
    init(title: String, videoId: String, workOutText: String, color: UIColor) {
        self.title = title
        self.videoId = videoId
        
        self.workOutText = workOutText
        self.color = color
    }

}
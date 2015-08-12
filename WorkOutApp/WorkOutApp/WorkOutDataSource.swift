//
//  WorkOutDataSource.swift
//  WorkOutApp
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//  模拟数据源，你可以从web取得数据在解析

import Foundation

class WorkOutDataSource {
    var workOuts: [WorkOut] = []
    
    init() {
        let wk1 = WorkOut(title: "Jumping Jacks", videoId: "UpH7rm0cYbM", workOutText: "A calisthenic jump done from a standing position with legs together and arms at the sides to a position with the legs apart and the arms over the head.",color:  UIColor.flatRedColor())
        workOuts.append(wk1)
        
        let wk2 = WorkOut(title: "Wall Sits", videoId: "y-wV4Venusw", workOutText: "A wall sit, also known as a Roman Chair, is an exercise done to strengthen the quadriceps muscles. It is characterized by the two right angles formed by the body, one at the hips and one at the knees.", color: UIColor.flatTealColor())
        workOuts.append(wk2)
        
        
        let wk4 = WorkOut(title: "Abdominal Crunches", videoId: "2yOFvV-NSeY", workOutText: "A crunch begins with lying face up on the floor with knees bent. The movement begins by curling the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest. Injury can be caused by pushing against the head or neck with hands.", color: UIColor.flatPurpleColor())
        workOuts.append(wk4)
        
        let wk3 = WorkOut(title: "Push Ups", videoId: "Eh00_rniF8E", workOutText: "An exercise in which a person lies facing the floor and, keeping their back straight, raises their body by pressing down on their hands.", color: UIColor.flatBlueColor())
        workOuts.append(wk3)
        
        
        let wk5 = WorkOut(title: "Step-ups onto a chair", videoId: "kM2FfDIwsao", workOutText: "To do a step-up, position your chair in front of your body. Stand with your feet about hip-width apart, arms at your sides. Step up onto the seat with one foot, pressing down while bringing your other foot up next to it. ", color: UIColor.flatGreenColor())
        workOuts.append(wk5)
        
        let wk6 = WorkOut(title: "Squats", videoId: "mGvzVjuY8SY", workOutText: "Crouch or sit with one's knees bent and one's heels close to or touching one's buttocks or the back of one's thighs.", color: UIColor.flatNavyBlueColor())
        workOuts.append(wk6)
        
        let wk7 = WorkOut(title: "Triceps dips on a chair", videoId: "0326dy_-CzM", workOutText: "Triceps dips on a chair", color: UIColor.flatWatermelonColor())
        workOuts.append(wk7)
        
    }
    
    func getWorkOuts() -> [WorkOut]{
        return workOuts
    }
}
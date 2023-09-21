//
//  Foods.swift
//  FooodApp
//
//  Created by Şükrü Şimşek on 12.04.2023.
//

import Foundation

class Foods {
    var foodId:Int?
    var foodName:String?
    var foodImageName:String?
    var foodPrice:Double?
    
    init(){
    
    }
    init(foodId:Int,foodName:String,foodImageName:String,foodPrice:Double){
        self.foodId = foodId
        self.foodName = foodName
        self.foodImageName = foodImageName
        self.foodPrice = foodPrice
        
    }
}

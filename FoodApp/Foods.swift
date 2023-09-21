//
//  Foods.swift
//  FoodApp
//
//  Created by Şükrü Şimşek on 12.04.2023.
//

import Foundation

class Foods {
    var foodName:String?
    var foodId:Int?
    var foodImage:String?
    var foodPrice:Double?

    init() {

    }
    init(foodName:String,foodId:Int,foodImage:String,foodPrice:Double){
        self.foodId = foodId
        self.foodImage = foodImage
        self.foodName = foodName
        self.foodPrice = foodPrice
    }
}

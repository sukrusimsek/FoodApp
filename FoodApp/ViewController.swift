//
//  ViewController.swift
//  FoodApp
//
//  Created by Şükrü Şimşek on 12.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodsTableView: UITableView!
    
    var foodsList = [Foods]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsTableView.delegate = self
        foodsTableView.dataSource = self
        
        let f1 = Foods(foodName: "Pizza", foodId: 1, foodImage: "pizza", foodPrice: 129.90)
        let f2 = Foods(foodName: "Beef Steak", foodId: 1, foodImage: "beefsteak", foodPrice: 219.90)
        let f3 = Foods(foodName: "Pasta", foodId: 1, foodImage: "pasta", foodPrice: 49.90)
        let f4 = Foods(foodName: "Hamburger", foodId: 1, foodImage: "hamburger", foodPrice: 99.90)
        let f5 = Foods(foodName: "Chicken", foodId: 1, foodImage: "chicken", foodPrice: 89.90)
        
        foodsList.append(f1)
        foodsList.append(f2)
        foodsList.append(f3)
        foodsList.append(f4)
        foodsList.append(f5)
        
    }
    

}

extension ViewController:UITableViewDelegate,UITableViewDataSource,FoodTableViewCellProtocol{
    func buyFoodpro(indexPath: IndexPath) {
        let inputFood = foodsList[indexPath.row]
        print("\(inputFood.foodName!) sipariş verildi.")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodsList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let inputFood = foodsList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodId", for: indexPath) as! FoodTableViewCell
        cell.foodLabel.text = inputFood.foodName
        cell.foodPrice.text = "\(inputFood.foodPrice!) TL"
        cell.foodPicture.image = UIImage(named: inputFood.foodImage!)
        cell.foodId = self
        cell.indexPath = indexPath
        return cell
    }
}

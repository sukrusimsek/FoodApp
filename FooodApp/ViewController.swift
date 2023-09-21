//
//  ViewController.swift
//  FooodApp
//
//  Created by Şükrü Şimşek on 12.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodsTableView: UITableView!
    
    var foodsList = [Foods]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsTableView.dataSource = self
        foodsTableView.delegate = self
        
        let f1 = Foods(foodId: 1, foodName: "Pizza", foodImageName: "pizza", foodPrice: 129.90)
        let f2 = Foods(foodId: 2, foodName: "Beef Steak", foodImageName: "beefsteak", foodPrice: 219.90)
        let f3 = Foods(foodId: 3, foodName: "Pasta", foodImageName: "pasta", foodPrice: 49.90)
        let f4 = Foods(foodId: 4, foodName: "Hamburger", foodImageName: "hamburger", foodPrice: 99.90)
        let f5 = Foods(foodId: 5, foodName: "Chicken", foodImageName: "chicken", foodPrice: 89.90)
        
        foodsList.append(f1)
        foodsList.append(f2)
        foodsList.append(f3)
        foodsList.append(f4)
        foodsList.append(f5)
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource,FoodTableViewCellProtocol{
    func buyFoodPro(indexPath: IndexPath) {
        let inputFood = foodsList[indexPath.row]
        alertWork(indexPath: indexPath)
        
    }
    func alertWork(indexPath: IndexPath){
        let inputFood = foodsList[indexPath.row]
        let alertController = UIAlertController(title: "Sipariş Verildi", message: "\(inputFood.foodName!) 1 adet sipariş verildi.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
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
        cell.foodLabelName.text = inputFood.foodName
        cell.foodPriceLabel.text = "\(inputFood.foodPrice!) TL"
        cell.foodImageView.image = UIImage(named: inputFood.foodImageName!)
        
        cell.foodId = self
        cell.indexPath = indexPath
        
        return cell
    }
}

//
//  FoodTableViewCell.swift
//  FooodApp
//
//  Created by Şükrü Şimşek on 12.04.2023.
//

import UIKit

protocol FoodTableViewCellProtocol{
    func buyFoodPro(indexPath:IndexPath)
    
}

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodLabelName: UILabel!
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    var foodId:FoodTableViewCellProtocol?
    var indexPath:IndexPath?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buyFood(_ sender: Any) {
        foodId?.buyFoodPro(indexPath: indexPath!)
    }
}

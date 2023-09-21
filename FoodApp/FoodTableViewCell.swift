//
//  FoodTableViewCell.swift
//  FoodApp
//
//  Created by Şükrü Şimşek on 12.04.2023.
//

import UIKit

protocol FoodTableViewCellProtocol {
    func buyFoodpro(indexPath:IndexPath)
}

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodPicture: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodPrice: UILabel!
    
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
        foodId?.buyFoodpro(indexPath: indexPath!)
    }
}

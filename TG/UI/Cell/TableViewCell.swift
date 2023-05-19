//
//  TableViewCell.swift
//  TG
//
//  Created by Xiaodan Wang on 5/19/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    enum Const {
        static let cornerRadius:CGFloat = 20
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        blurView.layer.cornerRadius = Const.cornerRadius
        blurView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

//
//  seTableViewCell.swift
//  mvcEmployee
//
//  Created by STC on 08/11/22.
//

import UIKit

class seTableViewCell: UITableViewCell {

    @IBOutlet weak var empIdLabel: UILabel!
    
    @IBOutlet weak var empFirstNameLabel: UILabel!
    
    
    @IBOutlet weak var empLastNameLabel: UILabel!
    
    
    @IBOutlet weak var empSalaryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}

//
//  TableViewCell.swift
//  tableView2019_5
//
//  Created by Nosferatu on 30/01/2019.
//  Copyright © 2019 luissancar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var textoCelda: UILabel!
    @IBOutlet weak var buton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func pulsado(_ sender: Any) {
        textoCelda.text="pulsado"
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
   

}

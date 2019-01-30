//
//  ViewController.swift
//  tableView2019_5
//
//  Created by Nosferatu on 30/01/2019.
//  Copyright © 2019 luissancar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
     var color=0
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.textoCelda.text="Texto a"+String(color)
        
        
        let num:Int = Int(arc4random_uniform(6))
        
        
            
        
        var urlImagen=""
        switch num {
        case 0:
            cell.backgroundColor=UIColor.brown
            cell.buton.layer.cornerRadius = 10
            urlImagen="https://myzone-26ex1sw6hijbg4oa.netdna-ssl.com/wp-content/uploads/2018/05/nutricion-pollo-300x300.jpg"
        case 1:
            cell.backgroundColor=UIColor.gray
            cell.buton.layer.cornerRadius = 30
            urlImagen="https://mobile-cdn.123rf.com/300wm/blueringmedia/blueringmedia1504/blueringmedia150400211/39163502-pollo-saludable-en-el-fondo-blanco.jpg?ver=6"
        case 2:
            cell.backgroundColor=UIColor.green
            cell.buton.layer.cornerRadius = 60
            urlImagen="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWVoS5bXaaEiJmdRaE3bZo1SzEf5JiTY_0ot9G3BSOS5c_4C7x"
        case 3:
            cell.backgroundColor=UIColor.yellow
            cell.buton.layer.cornerRadius = 90
            urlImagen="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjpDYQIkGV5NrNWtd8HZQThDsVIwQ-nCe2lLO7xZloyuT9fcyx"
        case 4:
            cell.backgroundColor=UIColor.blue
            cell.buton.layer.cornerRadius = 100
            urlImagen="https://electronicaymas.com/7074-thickbox_default/resistencia-47-ohm-2w-10-unidades.jpg"
        default:
            cell.backgroundColor=UIColor.white
            cell.buton.layer.cornerRadius = 110
            urlImagen="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQttFfQk0J4T2sTwHYHG69mb4lWXq9X1Zirj8Wo_C-P44UUvS7I"
        }
       color=color+1
        let url = URL(string: urlImagen)
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        cell.imagen.image=UIImage(data: data!)
        
     
        cell.buton.clipsToBounds = true
       
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func mostrarAlerta() {
        let alert = UIAlertController(title: "Celda", message: "ggg", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Celda pulsada"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        
        
    }

}


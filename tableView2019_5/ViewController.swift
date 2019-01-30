//
//  ViewController.swift
//  tableView2019_5
//
//  Created by Nosferatu on 30/01/2019.
//  Copyright © 2019 luissancar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.textoCelda.text="Texto a"
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


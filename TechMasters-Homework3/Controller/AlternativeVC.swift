//
//  ViewController.swift
//  TechMasters-Homework3
//
//  Created by admin on 13.01.2023.
//

import UIKit

class AlternativeVC: UIViewController, UITableViewDataSource {
    
    let reuseIdentifier = "cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    let products = [ Product(name: "Valentine Frappuccino"), Product(name: "Java Berry Frappuccino"),Product(name: "Love Bean Frappuccino")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifier)
        tableView.layer.cornerRadius = 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! CustomTableViewCell
        cell.productNameLabel.text = products[indexPath.row].name
        guard let image = products[indexPath.row].image else{ return cell}
        cell.productImageView.image = image
        return cell
    }
}


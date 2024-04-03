//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Spencer Anderson on 3/28/24.
//

import UIKit

class Product {
    var productName:String?
    var productCategory:String?
    
    init(productName: String? = nil, productCategory: String? = nil) {
        self.productName = productName
        self.productCategory = productCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return number of products
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //populate a cell
        cell.textLabel?.text = products[indexPath.row].productName
        //return a cell
        return cell
    }
    
    
    @IBOutlet weak var tableViewOL: UITableView!
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
        
        let p1 = Product(productName: "iPhone", productCategory: "Mobile Phone")
        products.append(p1)
        
        let p2 = Product(productName: "iPad", productCategory: "Tablet")
        products.append(p2)
        
        let p3 = Product(productName: "Apple Watch", productCategory: "Watch")
        products.append(p3)
        
        let p4 = Product(productName: "MacBook", productCategory: "Laptop")
        products.append(p4)
        
        let p5 = Product(productName: "Apple Vision Pro", productCategory: "Augmented Reality")
        products.append(p5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if (segue.identifier == "prodDescriptionSegue") {
            let destination = segue.destination as! DescriptionViewController
            destination.product = products[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
            
    }

}


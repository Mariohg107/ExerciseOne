//
//  MyTableView.swift
//  asdf
//
//  Created by Alumnos on 30/9/22.
//

import Foundation
import UIKit

class MyTableView: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let arrayValues = ["asdf", "asdf2","asdf3","asdf4","asdf5","asdf6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MyCell
        cell.label.text = arrayValues[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    
    

}

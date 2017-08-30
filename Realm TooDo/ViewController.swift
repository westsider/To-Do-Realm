//
//  ViewController.swift
//  Realm TooDo
//
//  Created by Warren Hansen on 8/29/17.
//  Copyright © 2017 Warren Hansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addNew(_ sender: Any) {
        
        let alertController : UIAlertController = UIAlertController(title: "New Todo", message: "What do you plan to do?", preferredStyle: .alert)
        
        alertController.addTextField { (UITextField) in
            
        }
        
        let action_cancel = UIAlertAction.init(title: "Cancel", style: .cancel) { (UIAlertAction) -> Void in
            
        }
        alertController.addAction(action_cancel)
        
        let action_add = UIAlertAction.init(title: "Add", style: .default) { (UIAlertAction) -> Void in
            
        }
        alertController.addAction(action_add)
        
        present(alertController, animated: true, completion: nil)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = "it works"
        cell.detailTextLabel!.text = "on going"
        return cell
    }
    
    // [3]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // [4]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}


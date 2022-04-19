//
//  ViewController.swift
//  ContactListApp
//
//  Created by Pentyala,Lokesh on 4/19/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        //populate a cell
        cell.textLabel?.text = contactNames[indexPath.row]
        //return a cell
        return cell
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
    var contactNames : [String]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
        fetchData()
        
    }
    
    func fetchData(){
        //create a reference
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value){
        snapshot in
            let contacts = snapshot.value as! NSDictionary
            
            self.contactNames = contacts.allKeys as!
            [String]
            
            //reload the data
            self.TableViewOutlet.reloadData()
        }
        
        
    }


}


//
//  Items.swift
//  DataApp
//
//  Created by Student Account on 5/10/22.
//

import UIKit

class ICEViewController: UITableViewController{
    
    var ds:DataStore = DataStore()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(newCustomCell.self, forCellReuseIdentifier: "CustomCell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ds.persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        
        let cellInfo = ds.persons[indexPath.row]
        
        newCell.textLabel?.text = "\(cellInfo.NewName) \(cellInfo.NewAge)"
        return newCell

    }
}

class person {
    var NewName: String
    var NewAge: Int
    
    init(NewName: String, NewAge: Int){
        self.NewName = NewName
        self.NewAge = NewAge
    }
    
    convenience init(){
        self.init(NewName: "[Unnamed]", NewAge: 1)
    }
}

class DataStore {
    var persons: [person]
    init(){
    let person1 = person(NewName: "Fab", NewAge: 31)
    let person2 = person(NewName: "Shahin", NewAge: 36)
    let person3 = person(NewName: "Andrea", NewAge: 37)
    
    persons = [person1, person2, person3]
    }
    
}

class newCustomCell: UITableViewCell{
    
}

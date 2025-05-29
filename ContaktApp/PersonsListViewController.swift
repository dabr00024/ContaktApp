//
//  PersonsListViewController.swift
//  ContaktApp
//
//  Created by ДОБРО on 22.05.2025.
//

import UIKit

class PersonsListViewController: UITableViewController {
    private var personList = Person.getPersonList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()            
        tableView.rowHeight = 100
        tableView.backgroundColor = .cyan
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
    }
    
    override func tableView( _ tableView:UITableView, numberOfRowsInSection section: Int) -> Int{
        personList.count
    }
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
                var content = cell.defaultContentConfiguration()
                let person = personList[indexPath.row]
       
        content.text = person.lastName.randomElement()
        content.secondaryText = person.firstName.randomElement()
        content.image = UIImage(named: person.numberImage.randomElement() ?? "1")
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let detailsVC = segue.destination as? PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailsVC?.person = personList[indexPath.row]
    }
       
    }


    

    

    

     
   
 



//
//  PersonDetailsViewController.swift
//  ContaktApp
//
//  Created by ДОБРО on 28.05.2025.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var nameLabels: UILabel!
    @IBOutlet var phoneLabels: UILabel!
    @IBOutlet var emailLabels: UILabel!
    
   
    
    
    var person: Person!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        avatarImageView.image = UIImage(named: person.numberImage)
        
        nameLabels.text = person.title
        phoneLabels.text = person.numberPhone
        emailLabels.text = person.email
        
    }
    

    

}

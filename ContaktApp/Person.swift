//
//  Person.swift
//  ContaktApp
//
//  Created by ДОБРО on 22.05.2025.
//

struct Person{
    let firstName = ["Ivan", "John", "David", "Tim",
                     "Vasya", "Mahmyd", "Abram",
                     "Ben", "Alex", "Bruse"]
    
    let lastName = ["Johnson", "Ivanov", "Abrams", "Cook",
                    "Petrov", "Maxudov", "Chen",
                    "Kats", "Chaplin","Libman"]
    
    let numberImage = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    let numberPhone = ["80951112323", "80952223443",
                       "80953332445", "8095556677",
                       "80956578896", "80954445678",
                       "80958789905", "80957869098",
                       "80959097732", "80957770987"]
    
    let email = ["aaazzz@gmail.com", "pervy@gmail.com",
                 "winter25@gmail.com", "spring23@gmail.com",
                 "summer24@gmail.com", "yellow21@gmail.com",
                 "green99@gmail.com", "red37@gmail.com",
                 "yalta87@gmail.com", "blue69@gmail.com"]
        
    
    var title: String{
        "\(String(_: firstName.randomElement() ?? "1"))  \(String(_: lastName.randomElement() ?? "1"))"
    }

    static func getPersonList() -> [Person]
    {
    [ Person(),
      Person(),
      Person(),
      Person(),
      Person(),
      Person(),
      Person(),
      Person(),
      Person(),
      Person()      
    ]
   }
 
}

//
//  Person.swift
//  ContaktApp
//
//  Created by ДОБРО on 22.05.2025.
//

struct Person{
    let firstName: String
    let lastName: String
    let numberImage: String
    let numberPhone: String
    let email: String
    
    
    
    
    let firstNames = ["Ivan",
                      "John",
                      "David",
                      "Tim",
                      "Vasya",
                      "Mahmyd",
                      "Abram",
                      "Ben",
                      "Alex",
                      "Bruse"]
    
    let lastNames = ["Johnson",
                     "Ivanov",
                     "Abrams",
                     "Cook",
                     "Petrov",
                     "Maxudov",
                     "Chen",
                     "Kats",
                     "Chaplin",
                     "Libman"]
    
    let numberImages = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    let numberPhones = ["80951112323",
                        "80952223443",
                        "80953332445",
                        "8095556677",
                        "80956578896",
                        "80954445678",
                        "80958789905",
                        "80957869098",
                        "80959097732",
                        "80957770987"]
    
    let emails = ["aaazzz@gmail.com",
                  "pervy@gmail.com",
                  "winter25@gmail.com",
                  "spring23@gmail.com",
                  "summer24@gmail.com",
                  "yellow21@gmail.com",
                  "green99@gmail.com",
                  "red37@gmail.com",
                  "yalta87@gmail.com",
                  "blue69@gmail.com"]
    
    
    var title: String{
        "\( firstName)  \(lastName)"
    }
    static let shared = Person(firstName: "",
                               lastName: "",
                               numberImage: "",
                               numberPhone: "",
                               email: "")
    
        static func getPersonList() -> [Person]
        {   var persons: [Person] = []
          
            let firstNames = Person.shared.firstNames.shuffled()
            let lastNames = Person.shared.lastNames.shuffled()
            let numberImages = Person.shared.numberImages.shuffled()
            let numberPhones = Person.shared.numberPhones.shuffled()
            let emails = Person.shared.emails.shuffled()
         
            for index in 0...9{
                let person = Person(
                    firstName: firstNames[index],
                    lastName: lastNames[index],
                    numberImage: numberImages[index],
                    numberPhone: numberPhones[index],
                    email: emails[index])
                persons.append(person)
            }
            return persons
        }
    }


    
  
        
   

    


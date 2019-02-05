//
//  Manager.swift
//  randomDataApp
//
//  Created by Felipe Figueirôa on 04/02/19.
//  Copyright © 2019 Felipe Figueirôa. All rights reserved.
//

import Foundation

class Manager {
    
    var apiURL: String = "https://jsonplaceholder.typicode.com"
    var endpointUser: String = "/users"
    
    
    
    func requestUsers(_ completion: @escaping ( (_ response: [UserModel], _ error: Any) -> Void) )  {
        
        var users = [UserModel]()
        if let urlRequest = URL(string: apiURL + endpointUser){
            
            let requestUsersFromAPI = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                
                if error == nil {
                    
                    if let dataRequest = data {
                        
                        do{
                            
                            if let dataFormated = try JSONSerialization.jsonObject(with: dataRequest, options: []) as? [[String: Any]] {
//                                print(dataFormated)
                                
                                for doc in dataFormated {
                                    users.append(UserModel(doc))
                                    guard var name = doc["name"] as? String else {return}
                                    guard var username = doc["username"] as? String else {return}
                                    guard var email = doc["emial"] as? String else {return}
//                                    guard var address = doc["address"] as? [String:Any] else {return}
                                    guard var phone = doc["phone"] as? String else {return}
                                    guard var website = doc["website"] as? String else {return}
                                    
                                    print(phone)
                                }
                            }
                            
                        }catch{
                            print("Deu Erro 1")
                        }
                        
                    }
                    
                }else {
                    print(error)
                }
                
            }
            requestUsersFromAPI.resume()
        }else {
            return
        }
        completion(users, "")
        
    }
}

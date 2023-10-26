//
//  ViewController.swift
//  CountriesApp
//
//  Created by Arturs Olekss on 25/10/2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello world")
        loadCountries()
        
        
    }
    
    func loadCountries(){
        let url_val = URL(string:"https://restcountries.com/v3.1/all")
        let task = URLSession.shared.dataTask(with: url_val!,completionHandler:{
            (data,response,error) in
            
            if let error = error{
                print(error)
                return
            }
            print("Result:")
            print(data)
         
        })
        task.resume()
    }
    
    
}


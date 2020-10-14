//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Tunahan Çelik on 11.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDay: UILabel!
    @IBOutlet weak var textDay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedDay=UserDefaults.standard.object(forKey: "birtday")
        
        if let myName = storedName as? String{
            labelName.text=myName
        }
        if let myDay = storedDay as? String{
            labelDay.text=myDay
        }
    
        
    }
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedDay=UserDefaults.standard.object(forKey: "birtday")
        
        if  (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
        }
        
        if (storedDay as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birtday")
        }
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        
        UserDefaults.standard.set(textName.text!, forKey: "name")
        UserDefaults.standard.set(textDay.text!, forKey: "birtday")
        labelName.text="Name: \(textName.text!)"
        labelDay.text=textDay.text
    }
    
        
      
        
    }
    
   


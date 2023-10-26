//
//  AppearenceViewController.swift
//  CalendarDayFinderApp
//
//  Created by Arkadijs Makarenko on 23/10/2023.
//

import UIKit

class AppearenceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeItemTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openSettings(_ sender: Any) {
        #warning("open ios simulator settings app, UIApplication")
    }
  
    func setLabelText(){
        var labelText = "Unable to specify UI style"
        #warning("from Light Mode is On to Dark Mode is On")
        
        textLabel.text = labelText
    }
    

}


extension AppearenceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}

//
//  ViewController.swift
//  CalendarDayFinderApp
//
//  Created by Arkadijs Makarenko on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTexfiled: UITextField!
    @IBOutlet weak var monthTexfiled: UITextField!
    @IBOutlet weak var yearTexfiled: UITextField!
    
    let alertController = UIAlertController(
        title: "Wrong date",
        message: "This is a wrong date",
        preferredStyle: .alert)
    
    // Handling OK action
    let okAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
        print("Clicked OK")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alertController.addAction(okAction)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func findWeekDay(){
#warning("find day of the year on Find tap")
        guard let day = Int(dayTexfiled.text ?? "") else{
            self.present(alertController, animated: true, completion:nil)
            return
        }
        let month = Int(monthTexfiled.text ?? "")
        let year = Int(yearTexfiled.text ?? "")
        
        
    }
    
    @IBAction func findButtonTapped(_ sender: Any) {
        findWeekDay()
    }
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "info" {
            // Get the new view controller using segue.destination.
            guard let vc = segue.destination as? InfoViewController else { return }
            
            // Pass the selected object to the new view controller.
        }
    }
    
    
    
}


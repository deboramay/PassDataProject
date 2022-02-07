//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Anastasia on 06.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
  
  var login: String?
  @IBOutlet weak var label: UILabel!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let login = self.login else { return }
    label.text = "Hello, \(login)"
  }
  
  @IBAction func goBackTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "unwindSegue", sender: nil)
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}

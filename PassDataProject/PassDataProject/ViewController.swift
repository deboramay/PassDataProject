//
//  ViewController.swift
//  PassDataProject
//
//  Created by Anastasia on 06.02.2022.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var loginTF: UITextField!
  
  @IBOutlet weak var passwordTF: UITextField!
  
  @IBOutlet weak var resultLabel: UITextField!
  
  
  @IBAction func loginTapped(_ sender: UIButton) {
    //если сегвей сделали от вью к вью (а если по кнопке - то эта строка не нужна)
    performSegue(withIdentifier: "detailSegue", sender: nil)
  }
  
  @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
    //первый гуард нужен, если сделали анвинд от вью, а не от кнопки
    guard segue.identifier == "unwindSegue" else { return }
    guard let svc = segue.source as? SecondViewController else { return }
    self.resultLabel.text = svc.label.text
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let dvc = segue.destination as? SecondViewController else { return }
    dvc.login = loginTF.text
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
}


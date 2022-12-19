//
//  secondViewController.swift
//  mvcEmployee
//
//  Created by STC on 08/11/22.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var empIdTextField: UITextField!
    
    @IBOutlet weak var empFirstNameTextField: UITextField!
    
    @IBOutlet weak var empLastNameTextField: UITextField!
    
    
    @IBOutlet weak var empSalaryTextField: UITextField!
    var delegateFirstViewController : backDataPassing?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
   
    @IBAction func clickButton(_ sender: UIButton) {
        guard let delegate = delegateFirstViewController else
        {
            print("delegate not Found")
            return
        }
        let id = self.empIdTextField.text
        let IntId = Int(id!) ?? 0
        let empFirstName = self.empFirstNameTextField.text ?? "default"
        let empLastName = self.empLastNameTextField.text ?? "default"
        let empSalary = self.empSalaryTextField.text
        let empSalaryFloat = Float(empSalary!) ?? 0.0
        delegate.passToFirstViewController(employee: Employee(empId: IntId, empFirstName: empFirstName, empLastName: empLastName, empSalary: empSalaryFloat))
        navigationController?.popViewController(animated: true)
        
    }
    
}

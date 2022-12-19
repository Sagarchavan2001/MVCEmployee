//
//  ViewController.swift
//  mvcEmployee
//
//  Created by STC on 08/11/22.
//

import UIKit

class ViewController: UIViewController{
    var employees  : [Employee] = []
    var SecondViewController  : secondViewController = secondViewController()
    
    @IBOutlet weak var empoyeeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        empoyeeTableView.delegate = self
        empoyeeTableView.dataSource = self
        let nibname = UINib(nibName: "seTableViewCell", bundle: nil)
        self.empoyeeTableView.register(nibname, forCellReuseIdentifier: "seTableViewCell")
    }
    
    @IBAction func addNewEmp(_ sender: Any) {
        SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        SecondViewController.delegateFirstViewController = self
        navigationController?.pushViewController(SecondViewController, animated: true)
    }
    
}





extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let employeeCell = self.empoyeeTableView.dequeueReusableCell(withIdentifier: "seTableViewCell", for: indexPath)as! seTableViewCell
        let eachEmployee = employees[indexPath.row]
        employeeCell.empIdLabel.text = String(eachEmployee.empId)
        employeeCell.empFirstNameLabel.text = eachEmployee.empFirstName
        employeeCell.empLastNameLabel.text = eachEmployee.empLastName
        employeeCell.empSalaryLabel.text = String(eachEmployee.empSalary)
        return employeeCell
    }
}



extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
extension ViewController : backDataPassing{
    func passToFirstViewController(employee: Employee) {
        let empObject = Employee(empId: employee.empId, empFirstName: employee.empFirstName, empLastName: employee.empLastName, empSalary: employee.empSalary)
        employees.append(empObject)
        empoyeeTableView.reloadData()
    }
    
    
    
    
}

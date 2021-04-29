//
//  AddViewController.swift
//  swift_todo_list
//
//  Created by João Henrique Camargo on 28/04/21.
//

import UIKit

class AddViewController: UIViewController {
    
    
    @IBOutlet weak var todoNameTxt: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    var todoTableVC : TodoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addFunction(_ sender: Any) {
        let newTodo = TodoModel()
        
        if let name = todoNameTxt.text {
            newTodo.name = name
            newTodo.important = importantSwitch.isOn
            
            todoTableVC?.todoList.append(newTodo)
            todoTableVC?.tableView.reloadData()
            
            navigationController?.popViewController(animated: true)
        }
    }
    
}

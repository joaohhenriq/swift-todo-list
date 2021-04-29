//
//  CompleteViewController.swift
//  swift_todo_list
//
//  Created by João Henrique Camargo on 28/04/21.
//

import UIKit

class CompleteViewController: UIViewController {

    @IBOutlet weak var todoLabel: UILabel!
    var todoModel = TodoModel()
    var todoTableVC : TodoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todoLabel.text = (todoModel.important ? " ‼️ ": "") + todoModel.name
    }

    @IBAction func completeTodo(_ sender: Any) {
        todoTableVC?.todoList.removeAll(where: {$0.name == todoModel.name})
        todoTableVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
}

//
//  TodoTableViewController.swift
//  swift_todo_list
//
//  Created by João Henrique Camargo on 28/04/21.
//

import UIKit

class TodoTableViewController: UITableViewController {
    
    var todoList : [TodoModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initData()
    }
    
    private func initData() {
        let todo1 = TodoModel()
        todo1.name = "Go to the supermarket"
        todo1.important = true
        
        let todo2 = TodoModel()
        todo2.name = "Go to the gym"
        todo2.important = false
        
        let todo3 = TodoModel()
        todo3.name = "Do homework"
        todo3.important = true
        
        todoList = [todo1, todo2, todo3]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todoList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let todoAux = todoList[indexPath.row]
        
        cell.textLabel?.text = (todoAux.important ? " ‼️ " : "") + todoAux.name

        return cell
    }
}

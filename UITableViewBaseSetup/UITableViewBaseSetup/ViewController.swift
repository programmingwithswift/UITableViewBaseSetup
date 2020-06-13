//
//  ViewController.swift
//  UITableViewBaseSetup
//
//  Created by ProgrammingWithSwift on 2020/06/13.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    // MARK: Variables/Properties
    let tableViewData = Array(repeating: "Item", count: 5)
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
    }
    
    // MARK: UITableViewDataSource Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",
                                                 for: indexPath)
        cell.textLabel?.text = self.tableViewData[indexPath.row]
        return cell
    }
}

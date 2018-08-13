//
//  mainViewController.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/13/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension mainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "branchDefaultCell", for: indexPath) as! BranchDefaultCell
        cell.branchNameLabel.text = "PRE"
        cell.sideworkUsersLabel.text = "Quantity Of Active Users: 250"
        return cell
    }
    
}

extension mainViewController: UITableViewDelegate {
    
}

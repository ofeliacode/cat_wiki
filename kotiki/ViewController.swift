//
//  ViewController.swift
//  kotiki
//
//  Created by Офелия Баширова on 17.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var cat = [Cats]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let british = Cats(kind: "british")
        cat.append(british)
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cat.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = cat[indexPath.row].kind.capitalized
        return cell!
    }
}


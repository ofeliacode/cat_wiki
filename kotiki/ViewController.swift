//
//  ViewController.swift
//  kotiki
//
//  Created by Офелия Баширова on 17.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var cats: [Cat] = [Cat(kind: "british", description: "Description about the british cat")]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails", let vc = segue.destination as? CatViewController {
            if let selectedIndexPath = self.tableView.indexPathForSelectedRow {
                let cat = self.cats[selectedIndexPath.row]
                vc.cat = cat
            }
        }
    }
}

extension ViewController: UITableViewDelegate {

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showDetails", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cats.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.cats[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = item.kind.capitalized
        cell?.imageView?.image = UIImage(named: item.kind)
        cell?.accessoryType = .disclosureIndicator

        return cell!
    }
}


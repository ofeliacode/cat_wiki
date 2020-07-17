//
//  CatViewController.swift
//  kotiki
//
//  Created by Офелия Баширова on 17.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class CatViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!

    var cat: Cat?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let cat = self.cat {
            self.title = cat.kind.capitalized
            self.imageView.image = UIImage(named: cat.kind)
            self.descriptionLabel.text = cat.description
        }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

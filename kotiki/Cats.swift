//
//  Cats.swift
//  kotiki
//
//  Created by Офелия Баширова on 17.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class Cats {
    var image: UIImage
    var kind: String
    
    init(kind:  String) {
        self.kind = kind
        image = UIImage(named: self.kind)!
    }
}

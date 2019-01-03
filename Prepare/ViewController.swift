//
//  ViewController.swift
//  Prepare
//
//  Created by User21 on 2019/1/3.
//  Copyright © 2019 User21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var attributeView: UIImageView!
    @IBOutlet weak var descriptionField: UITextView!
    
    var role: Role?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let role = role {
            imageView.image = UIImage(named: role.image)
            attributeView.image = UIImage(named: role.attribute)
            descriptionField.text = role.description
        }
    }

    

}


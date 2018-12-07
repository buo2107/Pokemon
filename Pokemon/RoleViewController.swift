//
//  RoleViewController.swift
//  Prepare
//
//  Created by SHIH-YING PAN on 2018/12/5.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class RoleViewController: UIViewController {

    @IBOutlet var genderSegmentControl: UISegmentedControl!
    var pokemon: Pokemon?
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var attributeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pokemon = pokemon {
            imageView.image = UIImage(named: pokemon.image)
            if pokemon.gender == "M" {
                genderSegmentControl.selectedSegmentIndex = 0
            } else {
                genderSegmentControl.selectedSegmentIndex = 1

            }
        }
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

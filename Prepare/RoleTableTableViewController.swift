//
//  RoleTableTableViewController.swift
//  Prepare
//
//  Created by User21 on 2019/1/3.
//  Copyright © 2019 User21. All rights reserved.
//

import UIKit

class RoleTableTableViewController: UITableViewController {

    
    @IBOutlet var roleLabel: [UILabel]!
    
    var roles = [Role(name: "火焰鳥", image:"火焰鳥", attribute:"火焰鳥屬性", description:"操縱電的傳說的鳥寶可夢。\n平時生活在雷雲之中。\n被雷電擊中時體內會湧現出力量。" ), Role(name: "急凍鳥", image: "急凍鳥", attribute: "急凍鳥屬性", description: "操縱冰的傳說的鳥寶可夢。\n因為拍動翅膀就能冷卻空氣，所以據說急凍鳥飛過的地方就會下雪。"), Role(name: "閃電鳥", image: "閃電鳥", attribute: "閃電鳥屬性", description: "操縱電的傳說的鳥寶可夢。\n平時生活在雷雲之中。\n被雷電擊中時體內會湧現出力量。")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var i = 0
        for label in roleLabel {
            label.text = roles[i].name
            i += 1
        }
 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? ViewController
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.role = roles[row]
        }
    }
    
}

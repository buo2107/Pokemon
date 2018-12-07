//
//  RolesTableViewController.swift
//  Prepare
//
//  Created by SHIH-YING PAN on 2018/12/5.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class RolesTableViewController: UITableViewController {
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet var imageView: UIImageView!
    var pokemons = [
        Pokemon(name: "急凍鳥", image: "急凍鳥", attribute: "急凍鳥屬性", description: "操縱冰的傳說的鳥寶可夢。因為拍動翅膀就能冷卻空氣，所以據說急凍鳥飛過的地方就會下雪。"),
        Pokemon(name: "閃電鳥", image: "閃電鳥", attribute: "閃電鳥屬性", description: "操縱電的傳說的鳥寶可夢。平時生活在雷雲之中。被雷電擊中時體內會湧現出力量。"),
        Pokemon(name: "火焰鳥", image: "火焰鳥", attribute: "火焰鳥屬性", description: "操縱電的傳說的鳥寶可夢。平時生活在雷雲之中。被雷電擊中時體內會湧現出力量。")
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        for (i, label) in labels.enumerated() {
            label.text = pokemons[i].name
            imageView.image = UIImage(named: pokemons[i].image)
        }
    }

    // MARK: - Table view data source

    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as? RoleViewController
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.pokemon = pokemons[row]

        }
    }
    

}

//
//  ColorTableViewController.swift
//  ColorTableView
//
//  Created by Travis Agne on 10/4/19.
//  Copyright © 2019 Travis Agne. All rights reserved.
//

import UIKit

class ColorTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorTableView: UITableView!
    
    var colors: [(String, UIColor)] = [("red",UIColor.red),
                  ("orange",UIColor.orange),
                  ("yellow",UIColor.yellow),
                  ("green",UIColor.green),
                  ("blue",UIColor.blue),
                  ("purple",UIColor.purple),
                  ("brown",UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        let title = colors[indexPath.row].0
        let color = colors[indexPath.row].1
        cell.textLabel?.text = title
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? ColorDetailViewController,
                let row = colorTableView.indexPathForSelectedRow?.row {
                 destination.color = colors[row]
                }
                }
        }


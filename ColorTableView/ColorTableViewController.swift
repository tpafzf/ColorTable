//
//  ColorTableViewController.swift
//  ColorTableView
//
//  Created by Travis Agne on 10/4/19.
//  Copyright © 2019 Travis Agne. All rights reserved.
//

import UIKit

class ColorTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors: [String: UIColor] = ["red":UIColor.red,
                  "orange":UIColor.orange,
                  "yellow":UIColor.yellow,
                  "green":UIColor.green,
                  "blue":UIColor.blue,
                  "purple":UIColor.purple,
                  "brown":UIColor.brown]
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
        let title = Array(colors.keys)[indexPath.row]
        let color = Array(colors.values)[indexPath.row]
        cell.textLabel?.text = title
        cell.backgroundColor = color
        return cell
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

//
//  ColorDetailViewController.swift
//  ColorTableView
//
//  Created by Travis Agne on 10/25/19.
//  Copyright © 2019 Travis Agne. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: (String, UIColor)?
    
    @IBOutlet weak var colorName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = color?.0
        colorName.text = color?.0
        self.view.backgroundColor = color?.1
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

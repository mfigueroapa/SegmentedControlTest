//
//  ViewController.swift
//  SegmentedControlTest
//
//  Created by Mauricio Figueroa on 4/8/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var page : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomCell")
        
        tableView.backgroundColor = UIColor.darkGray
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.data[page].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        let str = Model.data[page][indexPath.row].components(separatedBy: " ")
        cell.initCell(text: str[1], emoji: str[0])
        return cell
    }

    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        page = sender.selectedSegmentIndex
        tableView.reloadData()
    }
    
}


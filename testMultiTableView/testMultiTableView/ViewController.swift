
//
//  ViewController.swift
//  testMultiTableView
//
//  Created by mr Jean on 8/12/15.
//  Copyright (c) 2015 letDesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    let numberRowOfTableView_1 = 4
    let numberRowOfTableView_2 = 5
    
    @IBOutlet weak var tableView_1: UITableView!
    
    @IBOutlet weak var tableView_2: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView_1.delegate = self
        self.tableView_1.dataSource = self
        self.tableView_2.delegate = self
        self.tableView_2.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tableView == self.tableView_1) ? self.numberRowOfTableView_1 : self.numberRowOfTableView_2
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if(tableView == self.tableView_1){
            var cell: classTableView_1 = tableView.dequeueReusableCellWithIdentifier("cellTableView_1") as! classTableView_1
            cell.label_text.text = "Table View 1, row: \(indexPath.row)"
            return cell
        }else{
            var cell: classTableView_2 = tableView.dequeueReusableCellWithIdentifier("cellTableView_2") as! classTableView_2
            cell.label_text.text = "Table View 1, row: \(indexPath.row)"
            return cell
        }
    }

}


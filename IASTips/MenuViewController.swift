//
//  MenuViewController.swift
//  IASTips
//
//  Created by S@nchit on 12/21/16.
//  Copyright © 2016 S@nchit. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var menuTableView: UITableView!
    let dataArray = ["Header","Syllabus","Previous papers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuTableView.dataSource = self
        self.menuTableView.delegate = self
        self.registerTableCells()
        self.menuTableView.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    func registerTableCells(){
        self.menuTableView.register(UINib.init(nibName: "MenuHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuHeaderTableViewCell")
        self.menuTableView.register(UINib.init(nibName: "MenuTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let headerCell : MenuHeaderTableViewCell = self.menuTableView.dequeueReusableCell(withIdentifier: "MenuHeaderTableViewCell", for: indexPath) as! MenuHeaderTableViewCell
            headerCell.selectionStyle = .none
            return headerCell
        }else{
            let cell : MenuTableViewCell = self.menuTableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
            cell.bindData(content: dataArray[indexPath.row])
            //cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0{
            if self.revealViewController() != nil{
                self.revealViewController().revealToggle(animated: true)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

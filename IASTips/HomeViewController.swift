//
//  HomeViewController.swift
//  IASTips
//
//  Created by S@nchit on 12/21/16.
//  Copyright © 2016 S@nchit. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let menuButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        menuButton.setImage(UIImage.init(named: "Menu"), for: .normal)
        let menuBtn : UIBarButtonItem = UIBarButtonItem.init(customView: menuButton)
        self.navigationItem.leftBarButtonItem = menuBtn
        if self.revealViewController() != nil{
            menuButton.addTarget(self, action: #selector(HomeViewController.menuTapped), for: .touchUpInside)
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
    }
    
    func menuTapped(){
        if self.revealViewController() != nil{
            self.revealViewController().revealToggle(animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//
//  MainViewController.swift
//  Address1
//
//  Created by 503-46 on 2018/5/11.
//  Copyright © 2018年 503-46. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDataSource {
    
    var dataArray:Array<addressClass>?=[]

    @IBOutlet weak var tvAdress: UITableView!

    @IBOutlet weak var lblInfo: UILabel!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let arrayCount = dataArray?.count
        {
            return arrayCount
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "AddressCell",for:indexPath)
        //cell.textLabel?.text=dataArray?[indexPath.row]
        cell.textLabel?.text=dataArray?[indexPath.row].name
        cell.imageView?.image=dataArray?[indexPath.row].photo
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tvAdress.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "AddressCell")
    }
    
    @IBAction func click(_ sender: Any) {
//        lblInfo.text = "16soft1"
//        let btn:UIButton = sender as! UIButton
//        btn.setTitle("haha", for: UIControlState())
        
        let address=addressClass()
        address.name="Steve Zheng"
        address.photo=UIImage(named: "logo.jpg")
        self.dataArray?.append(address)
        
//        address=addressClass()
//        address.name="girl"
//        address.photo=UIImage(named: "girl.jpg")
//        self.dataArray?.append(address)
        
        self.tvAdress.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

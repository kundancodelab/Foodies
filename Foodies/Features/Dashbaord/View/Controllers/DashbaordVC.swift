//
//  DashbaordVC.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import UIKit

class DashbaordVC: UIViewController {
    @IBOutlet weak var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    // MARK: Setup tableView
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        
        // Registers nibs
        
        tableView.register(UINib(nibName: "SearchTblCell", bundle: nil), forCellReuseIdentifier: "SearchTblCell")
        
        tableView.register(UINib(nibName: "CategoryTblCell", bundle: nil), forCellReuseIdentifier: "CategoryTblCell")
        
        tableView.register(UINib(nibName: "RestaurantCell", bundle: nil), forCellReuseIdentifier: "RestaurantCell")
        tableView.reloadData()
        
    }
    
    
    

}

//MARK: UITableView Delegates & Datasource Methods.
extension DashbaordVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 :
            return 1
        case 1 :
            return 1
        default :
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section  == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "SearchTblCell", for: indexPath) as! SearchTblCell
            cell = cell1
        }else if indexPath.section == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "CategoryTblCell", for: indexPath) as! CategoryTblCell
            cell = cell2
        }else {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestaurantCell
            print(indexPath.row)
            if indexPath.row != 0 {
                cell3.seeAllUpperHeadingsection.isHidden = true
                cell3.uppoerStackHeight.constant = 0
               
                
            }else {
                cell3.seeAllUpperHeadingsection.isHidden = false
                cell3.uppoerStackHeight.constant = 35
            }
         
            cell = cell3
        }
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var cellSize : CGFloat = 0
       
        switch indexPath.section {
        case 0: // First section
            // Scale based on device type
             return 44
        case 1: // Second section
            return 120
        default: // Third section
            if indexPath.row == 0 {
                return 320
            }else {
                return 300
            }
           
            
        }
    }
    
    
}

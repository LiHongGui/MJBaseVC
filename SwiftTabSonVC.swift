//
//  SwiftTabSonVC.swift
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/17.
//

import UIKit

class SwiftTabSonVC: SwiftTabVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

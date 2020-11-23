//
//  SwiftTabSonSubVC.swift
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/23.
//

import UIKit
let xibID = "SwiftXibCell"
class SwiftTabSonSubVC: SwiftTabSonVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.customNavBar.title = "SwiftTabSonSubVC"
        tableView?.register(UINib.init(nibName: "SwiftXibCell", bundle: nil), forCellReuseIdentifier: xibID)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: xibID, for: indexPath)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44;
    }

}

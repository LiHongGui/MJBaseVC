//
//  SwiftTabSonVC.swift
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/17.
//

import UIKit

class SwiftTabSonVC: SwiftBaseTabVC {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView?.frame = C
//        SwiftBaseTabVC.isKindOfClassObj("ss")
        self.customNavBar.title = "SwiftTabSonVC"
        print("isKindOfVC:\(isKindOfVC(vc: self))")
        tableView?.frame = CGRect(x: 0, y: MJMichaelSW.mjNavBarHeight, width: KUI_W, height: KUI_H-MJMichaelSW.mjNavBarHeight)
        self.customNavBar.wr_setBackgroundAlpha(1)
    }
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {

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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SwiftTabSonSubVC.init()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
   
}

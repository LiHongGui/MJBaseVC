//
//  MJSWBaseVC.swift
//  MJSWBaseVC
//
//  Created by MichaelLi on 2020/11/19.
//

import UIKit
import MJBaseVC
let cellID = "cellID"
class SwiftBaseTabVC: MJBaseVC, UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = String(format: "SwiftBaseTabVC-DefauleCell %d",indexPath.row)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.navigationController?.dismiss(animated: true, completion: nil)
        let vc = SwiftTabSonVC.init()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        colorOffset =  scrollView.contentOffset.y / MJMichaelSW.mjNavBarHeight
        self.customNavBar.wr_setBackgroundAlpha(colorOffset)
    }
    // MARK: 懒加载
//    lazy var tableView : UITableView = UITableView()
    lazy var tableView : UITableView? = {
        let tempTableView = UITableView (frame: self.view.bounds, style:.plain)
        tempTableView.delegate = self
        tempTableView.dataSource = self
        tempTableView.backgroundColor = UIColor.white
        tempTableView.separatorStyle = .singleLine
        return tempTableView
    }()
    var colorOffset  = CGFloat()
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        self.customNavBar.wr_setBackgroundAlpha(1)
//        backgroundAlpha(show: <#T##Bool#>)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        self.view.addSubview(tableView!)
        self.view.insertSubview(customNavBar, aboveSubview: tableView!)
        self.customNavBar.wr_setBackgroundAlpha(0)
        print("mjNavBarHeight:%d\(MJMichaelSW.mjNavBarHeight)")
        
//        backgroundAlpha(show: <#T##Bool#>)
//        showNaviBar()
    }
    
}

extension SwiftBaseTabVC {
    func isKindOfVC(vc : UIViewController) -> Bool {
//
        if vc .isKind(of: SwiftBaseTabVC.self)  {
            return true
        }
        return false
    }
    
    func backgroundAlpha(show: Bool) -> Bool {
        return show ?true :false
    }
//    func showNaviBar() -> (Bool) {
//
//    }
}


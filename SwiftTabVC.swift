//
//  SwiftTabVC.swift
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/16.
//

import UIKit

//import Alamofire
let reuseIdentifierXib = "reuseIdentifierXib"
class SwiftTabVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView .register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        self.tableView.register(UINib.init(nibName: "SwiftXibCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierXib)
        loadInternet()
    }
    func loadInternet() {
//        Alamofire.request("", method: .post, parameters: nil, encoding: URLEncoding.default, headers: nil)
        /*
        筑梦裕安 https://itunes.apple.com/cn/lookup?id=1534470795
        */
        
//        Alamofire.request("https://itunes.apple.com/cn/lookup?id=1534470795").responseJSON { (response) in
//            print("response:\(response)")
//        }
//        Alamofire.request("https://itunes.apple.com/cn/lookup?id=1534470795",method: .post,parameters: nil).responseJSON { (responseJSON) in
//            print("responseJSON:\(responseJSON)")
//        }
//        MJHttpPost(headers: "", UrlString: "https://itunes.apple.com/cn/lookup?id=1534470795", params: nil) { (result) in
//            print("result:\(result)")
//        } failure: { (error) in
//
//        }

    }
//    func postAlamofire(url:String,parameters:[String: Any]?){
//        Alamofire.request(url,method: .post,parameters: parameters).responseJSON { (responseJSON) in
//            print("responseJSON:\(responseJSON)")
//        }
//    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//        cell.textLabel?.text = String(format: "%d", indexPath.row) + "sdsd"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierXib, for: indexPath)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(String(format: "%d", indexPath.row) + "didSelectRowAt")
        let vc = SwiftTabSonVC.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

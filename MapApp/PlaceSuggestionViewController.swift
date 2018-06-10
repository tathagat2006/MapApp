//
//  PlaceSuggestionViewController.swift
//  MapApp
//
//  Created by Tathagat Thapliyal on 09/06/18.
//  Copyright © 2018 Tathagat Thapliyal. All rights reserved.
//

import UIKit

class PlaceSuggestionViewController: UIViewController {
    @IBOutlet weak var SearchTF: UITextField!
    @IBOutlet weak var ActivityLoader: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

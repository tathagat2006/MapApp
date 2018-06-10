//
//  PlaceSuggestionViewController.swift
//  MapApp
//
//  Created by Tathagat Thapliyal on 09/06/18.
//  Copyright © 2018 Tathagat Thapliyal. All rights reserved.
//

import UIKit
import GooglePlaces

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
    
    @IBAction func TFEdittingChange(_ sender: UITextField) {
        if(sender.text==""){
            return;
        }else{
            PlaceAutoComplete(text: "\((sender.text!))")
        }
    }
    
    func PlaceAutoComplete(text:String){
        let PlacesClient = GMSPlacesClient.shared()
        let filter = GMSAutocompleteFilter()
        filter.type = .address
        filter.country = "IND"
        PlacesClient.autocompleteQuery(text, bounds: nil, filter: filter, callback: {(results , error) -> Void in
            if error != nil{
                let alert = UIAlertController.init(title: "Error", message: "Something went wrong", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction.init(title: "OK", style: .cancel, handler: nil))
                print("Autocomplete error \(error)")
                return
            }
            if results != nil{
                for result in results!{
                    print("Result \(result.attributedFullText) with PlaceID \(result.placeID)")
                }
            }
            
        })
        
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

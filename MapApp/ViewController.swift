//
//  ViewController.swift
//  MapApp
//
//  Created by Tathagat Thapliyal on 09/06/18.
//  Copyright © 2018 Tathagat Thapliyal. All rights reserved.
//

import UIKit

//USE GESTURERECOGNIZERDELEGATE....
class ViewController: UIViewController,UIGestureRecognizerDelegate {
    
    //PickLabel and DropLabel Added....
    @IBOutlet weak var PickLabel: UILabel!
    @IBOutlet weak var DropLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PickLabel.isUserInteractionEnabled = true
        let PickTap = UITapGestureRecognizer.init(target: self, action: #selector(PickTapped(_sender:)))
        PickTap.delegate = self
        
        //GESTURE IMPLEMENTED ON THE AREA OF PICKLABEL.. (SETTING BOUND OF THE GESTURE) PARENT KA GESTURE IS AUTO APPLICABLE TO CHILD. IF IT DOES NOT HAS IT'S OWN...
        PickLabel.addGestureRecognizer(PickTap)
        
        //PickLabel.text = "Tathagat"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //@objc to make swift wala func change to objc... coz in action above we need to pass abjc func...
    //sender tells tht tap ke throough trigger krna hai...
    @objc func PickTapped(_sender:UITapGestureRecognizer){
        print("**************")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


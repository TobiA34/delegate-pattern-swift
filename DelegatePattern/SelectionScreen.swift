//
//  ViewController.swift
//  DelegatePattern
//
//  Created by tobi adegoroye on 03/04/2022.
//

import UIKit

class SelectionScreen: UIViewController {
    
    var albumSelectionDelegate: AlbumSelectionDelegate!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AfterHourBtn(_ sender: Any) {
        
        albumSelectionDelegate.didTapChoice(image: UIImage(named: "afterHour")!, name: "AfterHour")
        dismiss(animated: true)
        print("working")

    }
    
    
    @IBAction func StarboyBtn(_ sender: Any) {
        albumSelectionDelegate.didTapChoice(image: UIImage(named: "starboy")! , name: "Starboy")
        dismiss(animated: true)
        print("working")
    }
    

}


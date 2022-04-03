//
//  MainScreen.swift
//  DelegatePattern
//
//  Created by tobi adegoroye on 03/04/2022.
//

import UIKit

class MainScreen: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var imageVw: UIImageView!
    
    @IBOutlet weak var chooseBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func chooseBtn(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.albumSelectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    
    
}

extension MainScreen: AlbumSelectionDelegate {
    func didTapChoice(image: UIImage, name: String) {
        imageVw.image = image
        nameLbl.text = name
    }
    
    
}

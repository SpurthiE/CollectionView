//
//  WelcomeViewController.swift
//  CollectionView
//
//  Created by spurthi.eshwarappa on 14/06/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var collectionBtn: UIButton!
    @IBOutlet weak var tableViewBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func collectionPressed(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "CollectionViewController") as? CollectionViewController else {return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tableViewPressed(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else {return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

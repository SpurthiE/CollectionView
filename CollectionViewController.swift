//
//  ViewController.swift
//  CollectionView
//
//  Created by spurthi.eshwarappa on 02/06/23.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    var imageName: [String] = ["cloud.bolt", "cloud.drizzle", "cloud.rain", "cloud.snow", "cloud.fog", "sun.max", "cloud.bolt", "cloud"]
    var labelname: [String] = ["cloud.bolt", "cloud.drizzle", "cloud.rain", "cloud.snow", "cloud.fog", "sun.max", "cloud.bolt", "cloud"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelname.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.image.image = UIImage(systemName: imageName[indexPath.row])
        cell.imageName.text = labelname[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        cell.layer.cornerRadius = 20
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-30)/2
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        ///lines between rows
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
/// since we have given (collectionView.frame.size.width-30) so we have 30 gap b/w each collection view cell
        /// so if u give 0, 10,20,30 it will be same bcz already that space exists, if u give more than 30 like 40 50, u can see the difference
        return 20
    }
}

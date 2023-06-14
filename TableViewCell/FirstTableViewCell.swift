//
//  FirstTableViewCell.swift
//  CollectionView
//
//  Created by spurthi.eshwarappa on 14/06/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    var imageName: [String] = ["cloud.bolt", "cloud.drizzle", "cloud.rain", "cloud.snow", "cloud.fog", "sun.max", "cloud.bolt", "cloud"]
    var labelname: [String] = ["cloud.bolt", "cloud.drizzle", "cloud.rain", "cloud.snow", "cloud.fog", "sun.max", "cloud.bolt", "cloud"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "FirstCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FirstCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
extension FirstTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageName.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath) as! FirstCollectionViewCell
        cell.imageView?.image = UIImage(systemName: imageName[indexPath.row])
        cell.imageName.text = labelname[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        cell.layer.cornerRadius = 20
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.height)
        return CGSize(width: size, height: size)
    }


}

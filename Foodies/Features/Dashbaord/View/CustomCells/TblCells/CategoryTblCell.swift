//
//  CategoryTblCell.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import UIKit

class CategoryTblCell: UITableViewCell {

    
    @IBOutlet weak var containerViewOfAllButton: UIView! {
        didSet {
            containerViewOfAllButton.layer.cornerRadius = 20
            containerViewOfAllButton.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var  containerViewFire: UIView! {
        didSet {
            containerViewFire.layer.cornerRadius = containerViewFire.frame.height / 2
            containerViewFire.layer.masksToBounds = true
            
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView(collectionView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        DispatchQueue.main.async {
            self.setupCollectionViewLayout(self.collectionView)
            self.collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: false)
        }
      
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: false)
    }
    
    
    func setupCollectionView(_ collectionView : UICollectionView) {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isScrollEnabled = true
      //collectionView.isScrollEnabled = false
        let nib = UINib(nibName: "FoodCategoryCollCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "FoodCategoryCollCell")
        collectionView.reloadData()
    }
    
    func setupCollectionViewLayout(_ collectionView: UICollectionView) {
       let numberOfItemPerRow = 2
       let padding: CGFloat =  5
       let collectionViewWidth = collectionView.bounds.width
       let availablewidth = collectionViewWidth - (padding * CGFloat(numberOfItemPerRow + 1  ))
       let itemWidth = availablewidth / CGFloat(numberOfItemPerRow)
       let myLayout = UICollectionViewFlowLayout()
       myLayout.scrollDirection = .horizontal
        myLayout.itemSize = CGSize(width: itemWidth , height: 60)
       myLayout.minimumLineSpacing = padding
       myLayout.minimumInteritemSpacing = padding
       myLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
       collectionView.collectionViewLayout = myLayout
       collectionView.reloadData()
   }
    
}

extension CategoryTblCell : UICollectionViewDelegate , UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCategoryCollCell", for: indexPath) as! FoodCategoryCollCell
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    
}

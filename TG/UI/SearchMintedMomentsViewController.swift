//
//  GetMomentsViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 8/1/23.
//

import UIKit
import RxSwift
/**
 Using your existing project, can we add a new tab to fetch list of moments using "searchMintedMoments" query for user ("0x63e0a50d19e02110") and display the following properties in a grid layout:

 * play.stats.title
 * tier
 * flowSerialNumber
 * thumbnail : assetPathPrefix + "Hero_2880_2880_Black.jpg?quality=60&width=480"
 */


class SearchMintedMomentsViewController: UIViewController {
    enum Const {
        static let CellId = "CollectionViewCell"
    }
    
    let viewModel = SearchMintedMomentsViewControllerViewModel()
    let disposableBag = DisposeBag()
    let cache = [String:UIImage]()
    var moments = [MomentModel]()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 100)
        
        collectionView.collectionViewLayout = layout
        
//        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: Const.CellId)

        
        viewModel.observe(userId: "63e0a50d19e02110")
            .observe(on: MainScheduler())
            .subscribe { [weak self] momentModels in
                self?.moments = momentModels
                self?.collectionView.reloadData()
        }.disposed(by: disposableBag)
        // Do any additional setup after loading the view.
    }
}

extension SearchMintedMomentsViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Const.CellId, for: indexPath)
        
        let moment = moments[indexPath.item]
        
        if let cell = cell as? CollectionViewCell {
            cell.playerNameLabel.text = moment.playerName
            
            ImageDownloader.shared.downloadImage(with: moment.thumbnail) { <#UIImage?#> in
                DispatchQueue.main.async {
                    cell.image
                }
            }
            
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        moments.count
    }
    
}

extension SearchMintedMomentsViewController : UICollectionViewDelegate {
    
}

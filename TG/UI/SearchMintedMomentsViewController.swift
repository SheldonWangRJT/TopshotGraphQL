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

    let viewModel = SearchMintedMomentsViewControllerViewModel()
    let disposableBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.observe(userId: "63e0a50d19e02110").subscribe { momentModels in
            
        }.disposed(by: disposableBag)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

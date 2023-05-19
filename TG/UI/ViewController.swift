//
//  ViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 5/14/23.
//

import UIKit
import Apollo
import RxSwift

enum TabType {
    case none
    case nba
    case wnba
    case allTeam
}

class ViewController: UIViewController {

    var type: TabType = .none
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ViewControllerViewModel()
    let disposableBag = DisposeBag()
    var teamModels = [TeamModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        viewModel.observe(tabType: type).observe(on:MainScheduler()).subscribe { [weak self] teamModels in
            self?.teamModels = teamModels
            self?.tableView.reloadData()
        }.disposed(by: disposableBag)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teamMode = teamModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VCCell")
        cell?.textLabel?.text = teamMode.name
        cell?.detailTextLabel?.text = teamMode.id
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    
}

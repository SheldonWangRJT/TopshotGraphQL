//
//  ViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 5/14/23.
//

import UIKit
import Apollo
import RxSwift

enum TabType : String {
    case none
    case nba
    case wnba
    case all
}

class ViewController: UIViewController {

    var type: TabType = .none
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ViewControllerViewModel()
    let disposableBag = DisposeBag()
    var teamModels = [TeamModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (type == .none) {
            assertionFailure("make sure type is overriden")
        }
        self.title = type.rawValue.capitalized + " Teams"
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
        tableView.delegate = self
        
        // on purposely delay to show loading indicator for demo purposes
        DispatchQueue.global().asyncAfter(deadline: .now() + 3) { [weak self] in
            guard let self else { return }
            self.viewModel.observe(tabType: self.type).observe(on:MainScheduler()).subscribe { [weak self] teamModels in
                self?.teamModels = teamModels
                self?.tableView.reloadData()
            }.disposed(by: self.disposableBag)
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teamMode = teamModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VCCell") as! TableViewCell
        cell.mainLabel.text = teamMode.name
        cell.idLabel.text = teamMode.id
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

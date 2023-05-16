//
//  ViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 5/14/23.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
//        let query1 = TG.AllTeamsQuery()
        let input = TG.AllTeamsByLeaguesInput(leagues: [GraphQLEnum<TG.League>.case(.nba)])
        let query2 = TG.AllTeamsByLeaguesQuery(input: input)
        NetworManager.shared.client?.fetch(query: query2, resultHandler: { result in
            switch result {
            case .success(let results):
                let allTeams = results.data?.allTeamsByLeagues
                let allTeamsData = allTeams?.data.compactMap { $0 }
                let allTeamsDataNames = allTeamsData?.map { $0.name }.compactMap { $0 } ?? []
                debugPrint(allTeamsDataNames)
            case .failure(let error):
                debugPrint(error)
            }
        })
    }

    
}


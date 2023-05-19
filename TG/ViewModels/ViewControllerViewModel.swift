//
//  ViewControllerViewModel.swift
//  TG
//
//  Created by Xiaodan Wang on 5/18/23.
//

import UIKit
import RxSwift

class ViewControllerViewModel {
    
    func observe(tabType:TabType) -> Single<[TeamModel]> {
        let subject = PublishSubject<[TeamModel]>()
        
        switch tabType {
        case .none:
            assertionFailure("should not reach here")
            break
        case .nba:
            let input = TG.AllTeamsByLeaguesInput(leagues: [GraphQLEnum<TG.League>.case(.nba)])
            let query = TG.AllTeamsByLeaguesQuery(input: input)
            NetworManager.shared.client?.fetch(query: query, resultHandler: { result in
                switch result {
                case .success(let results):
                    let allTeams = results.data?.allTeamsByLeagues
                    let allTeamsData = allTeams?.data.compactMap { $0 }
                    let allTeamsDataModels = allTeamsData?.map { TeamModel(id: $0.id, name: $0.name ?? "") } ?? []
                    subject.onNext(allTeamsDataModels)
                    debugPrint(allTeamsDataModels)
                case .failure(let error):
                    subject.onError(error)
                    debugPrint(error)
                }
                subject.onCompleted()
            })
        case .wnba:
            let input = TG.AllTeamsByLeaguesInput(leagues: [GraphQLEnum<TG.League>.case(.wnba)])
            let query2 = TG.AllTeamsByLeaguesQuery(input: input)
            NetworManager.shared.client?.fetch(query: query2, resultHandler: { result in
                switch result {
                case .success(let results):
                    let allTeams = results.data?.allTeamsByLeagues
                    let allTeamsData = allTeams?.data.compactMap { $0 }
                    let allTeamsDataModels = allTeamsData?.map { TeamModel(id: $0.id, name: $0.name ?? "") } ?? []
                    subject.onNext(allTeamsDataModels)
                    debugPrint(allTeamsDataModels)
                case .failure(let error):
                    subject.onError(error)
                    debugPrint(error)
                }
                subject.onCompleted()
            })
        case .all:
            let query = TG.AllTeamsQuery()
            NetworManager.shared.client?.fetch(query: query, resultHandler: { result in
                switch result {
                case .success(let results):
                    let allTeams = results.data?.allTeams
                    let allTeamsData = allTeams?.data.compactMap { $0 }
                    let allTeamsDataModels = allTeamsData?.map { TeamModel(id: $0.id, name: $0.name ?? "") } ?? []
                    subject.onNext(allTeamsDataModels)
                    debugPrint(allTeamsDataModels)
                case .failure(let error):
                    subject.onError(error)
                    debugPrint(error)
                }
                subject.onCompleted()
            })
        }
        
        return subject.asSingle()
    }
}

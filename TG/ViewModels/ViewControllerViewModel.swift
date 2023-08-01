//
//  ViewControllerViewModel.swift
//  TG
//
//  Created by Xiaodan Wang on 5/18/23.
//

import UIKit
import RxSwift
import OSLog

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

class SearchMintedMomentsViewControllerViewModel {
        
    enum SearchMintedMomentsError: Error {
        case emptyUserId
    }
     
    func observe(userId:String) -> Single<[MomentModel]> {
        
        let subject = PublishSubject<[MomentModel]>()
        guard !userId.isEmpty else {
            subject.onError(SearchMintedMomentsError.emptyUserId)
            subject.onCompleted()
            return subject.asSingle()
        }

        let filtersInput = GraphQLNullable.some(TG.MintedMomentFilterInput(byOwnerFlowAddress:[userId]))
        let cursor = TG.Cursor()
        let direction = GraphQLEnum<TG.CursorDirection>.case(.right)
        let paginationInput = TG.PaginationInput(cursor: cursor, direction: direction, limit: 24)
        let searchInput = TG.BaseSearchInput(pagination: paginationInput)
        let input = TG.SearchMintedMomentsInput(filters: filtersInput, searchInput: searchInput)
        
        let query = TG.SearchMintedMomentsQuery(input: input)
        NetworManager.shared.client?.fetch(query: query, resultHandler: { result in
            
            switch result {
            case .success(let res):
                let searchSummary = res.data?.searchMintedMoments?.data?.searchSummary
                let moments:[MomentModel]? = searchSummary?.data?.asMintedMoments?.data.compactMap { mintedMoment -> MomentModel? in
                    guard let thumbnailPrex = mintedMoment.assetPathPrefix else { return nil }
                    return MomentModel(playerName: mintedMoment.play?.stats?.playerName,
                                tier: mintedMoment.tier?.rawValue,
                                flowSerialNumber: mintedMoment.flowSerialNumber,
                                thumbnail: thumbnailPrex + "Hero_2880_2880_Black.jpg?quality=60&width=480")
                }
                subject.onNext(moments ?? [])
                
            case .failure(let error):
                subject.onError(error)
            }
            subject.onCompleted()
        })
        
        
        return subject.asSingle()
    }
}

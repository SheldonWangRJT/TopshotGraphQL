//
//  NetworkManager.swift
//  TG
//
//  Created by Xiaodan Wang on 5/15/23.
//

import Foundation
import Apollo

struct Team {
    let id:String
    let name:String
}

class NetworManager {
    static let shared = NetworManager()
    
    lazy var queue = OperationQueue()
    lazy var client: ApolloClient? = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let payloads = ["User-Agent":"iOS 15"] // better implement real user agent
        let urlConfiguration = URLSessionConfiguration.default
        urlConfiguration.httpAdditionalHeaders = payloads // required by topshot API
        
        let urlSessionClient = URLSessionClient(sessionConfiguration: urlConfiguration, callbackQueue:queue)
        let provider = DefaultInterceptorProvider(client: urlSessionClient, shouldInvalidateClientOnDeinit: true, store: store)
        
        let url = URL(string: "https://public-api.nbatopshot.com/graphql")
        
        if let url {
            let networkTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url)
            return ApolloClient(networkTransport: networkTransport, store: store)
        }
        
        return nil
    }()
}

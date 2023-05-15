//
//  NetworkManager.swift
//  TG
//
//  Created by Xiaodan Wang on 5/15/23.
//

import Foundation
import Apollo

class NetworManager {
    static let shared = NetworManager()
    
    lazy var queue = OperationQueue()
    lazy var client: ApolloClient? = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let payloads = ["User-Agent":"iOS"]
        let urlConfiguration = URLSessionConfiguration.default
        urlConfiguration.httpAdditionalHeaders = payloads // required by topshot API
        
        let client = URLSessionClient(sessionConfiguration: urlConfiguration, callbackQueue:queue)
        let provider = DefaultInterceptorProvider(client: client, shouldInvalidateClientOnDeinit: true, store: store)
        
        let url = URL(string: "https://public-api.nbatopshot.com/graphql")
        
        // production code need NOT to use force unwrapping
        let networkTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url!)
        
        return ApolloClient(networkTransport: networkTransport, store: store)
    }()
}

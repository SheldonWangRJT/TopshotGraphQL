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
        
        let url = URL(string: "https://public-api.nbatopshot.com/graphql")
        guard let url else { return }
        let apolloClient = ApolloClient(url: url)
        
        let query = AllTeamsQuery()
        apolloClient.fetch(query: query, cachePolicy: .returnCacheDataAndFetch) { result in
            
        }
    }

    
}


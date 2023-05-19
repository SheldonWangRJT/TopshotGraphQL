//
//  WNBAViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 5/18/23.
//

import UIKit

class WNBAViewController: ViewController {

    override var type: TabType {
        get {
            .wnba
        }
        set {
            super.type = newValue
        }
    }
    
}

//
//  NBAViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 5/18/23.
//

import Foundation
import UIKit

class NBAViewControll: ViewController {
    
    override var type: TabType {
        get {
            .nba
        }
        set {
            super.type = newValue
        }
    }
}

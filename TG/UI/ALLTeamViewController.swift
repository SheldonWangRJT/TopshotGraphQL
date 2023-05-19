//
//  ALLTeamViewController.swift
//  TG
//
//  Created by Xiaodan Wang on 5/18/23.
//

import UIKit

class ALLTeamViewController: ViewController {

    override var type: TabType {
        get {
            .all
        }
        set {
            super.type = newValue
        }
    }
}

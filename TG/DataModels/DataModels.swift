//
//  DataModels.swift
//  TG
//
//  Created by Xiaodan Wang on 5/18/23.
//

import UIKit

struct TeamModel {
    let id:String
    let name:String
}

struct MomentModel {
    let playTitle:String?         //* play.stats.title
    let tier:String?              //* tier
    let flowSerialNumber:String?  //* flowSerialNumber
    let thumbnail:String?         //* thumbnail
}

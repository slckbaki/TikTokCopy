//
//  Video.swift
//  Tiktok
//
//  Created by Selcuk Baki on 19/6/22.
//

import SwiftUI
import AVKit

struct Video : Identifiable{
    var id : Int
    var player : AVPlayer
    var replay : Bool
}

//
//  Constants.swift
//  mytube
//
//  Created by Bogdan Kornievski on 08.04.2022.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyDjtZpgXGp4ceitDq56FG91RVxkeqMTvMw"
    static var PLAYLIST_ID = "PLIBsKu92G5oocxwo4_k8fqwHExOp6sOdZ"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
}

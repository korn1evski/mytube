//
//  ConstantsTemplate.swift
//  mytube
//
//  Created by Bogdan Kornievski on 09.04.2022.
//

/*
    Add your own code, uncomment and rename ConstantsTemplate to Constants
 */

import Foundation

struct Constants {
    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
static var VIDEOCELL_ID = "VideoCell"
}

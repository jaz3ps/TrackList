//
//  Song.swift
//  TrackList
//
//  Created by jazeps.ivulis on 16/11/2021.
//

import Foundation

struct Song {
    let track: String
    let album: String
    let cover: String
    
    static func createSong() -> [Song] {
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for index in 0..<tracks.count {
            let song = Song(track: tracks[index], album: albums[index], cover: covers[index])
            songs.append(song)
        }
        
        return songs
    }
}

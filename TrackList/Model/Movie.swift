//
//  Movie.swift
//  TrackList
//
//  Created by jazeps.ivulis on 16/11/2021.
//

import Foundation

struct Movie {
    let title: String
    let year: String
    let poster: String
    let genre: String
    let duration: String
    
    static func createMovie() -> [Movie] {
        var arrayOfMovies: [Movie] = []
        
        let titles = DataManager.shared.title
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        let genres = DataManager.shared.genre
        let durations = DataManager.shared.duration
        
        for index in 0..<titles.count {
            let movie = Movie(title: titles[index], year: years[index], poster: posters[index], genre: genres[index], duration: durations[index])
            arrayOfMovies.append(movie)
        }
        
        return arrayOfMovies
    }
}

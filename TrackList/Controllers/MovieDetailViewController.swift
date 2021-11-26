//
//  MovieDetailViewController.swift
//  TrackList
//
//  Created by jazeps.ivulis on 16/11/2021.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie!
    var webView = WKWebView()

    @IBOutlet weak var moviePosterView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieInfoLabel: UILabel!
    @IBOutlet weak var watchTrailerButton: UIButton!
    @IBOutlet weak var movieWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if movie != nil {
            moviePosterView.image = UIImage(named: movie.poster)
            movieTitleLabel.text = movie.title
            movieInfoLabel.text = movie.genre + "\n" + movie.duration + "\n" + movie.year
            
            movieWebView.isHidden = true
        }
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        movieWebView.isHidden = false
        loadVideoToWebView()
        watchTrailerButton.isHidden = true
    }
    
    func loadVideoToWebView() {
        let urlString = movie.trailer
        guard let movieUrl = URL(string: urlString) else {return}
        movieWebView.load(URLRequest(url: movieUrl))
    }
    
}

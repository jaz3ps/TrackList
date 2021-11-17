//
//  MovieDetailViewController.swift
//  TrackList
//
//  Created by jazeps.ivulis on 16/11/2021.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var moviePosterView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieInfoLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if movie != nil {
            moviePosterView.image = UIImage(named: movie.poster)
            movieTitleLabel.text = movie.title
            movieInfoLabel.text = movie.genre + "\n" + movie.duration + "\n" + movie.year
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

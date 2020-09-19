//
//  ViewController.swift
//  AnimeStarts
//
//  Created by Talmage Hassell on 8/3/20.
//  Copyright © 2020 Talmage Hassell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    
    @IBOutlet weak var selecterOutlet: UISegmentedControl!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearOutlet: UILabel!
    
    @IBOutlet weak var descriptionOutlet: UILabel!
    @IBOutlet weak var nextAnimeOutlet: UIBarButtonItem!
    
    @IBOutlet weak var previousAnimeOutlet: UIBarButtonItem!
    
    var listAnime = [Anime]()
    var listAnimeItem = 0
    
    
    
    
    @IBOutlet weak var uiBarOutlet: UINavigationItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildList()
        
        listAnime = actionAnime
        var animeID = listAnime[listAnimeItem].id
        
        struct bigDumbApiImplimentation: Decodable{
            let resourceURL:URL
            let API_KEY = "5cab53b2bf9ec01d1123e0897a7d365f"
            
            
        }
        
        navigationController?.navigationBar.barTintColor = UIColor.yellow
        if let urlString = URL(string: listAnime[listAnimeItem].posterPath) {
         imageOutlet.load(url:urlString)
       }
        
        
        yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        titleOutlet.text = actionAnime[listAnimeItem].title
        yearOutlet.text = String(actionAnime[listAnimeItem].year)
        uiBarOutlet.title = actionAnime[listAnimeItem].title

        
        // Do any additional setup after loading the view.
    }
    



}

extension ViewController:UITableViewDelegate{
    
}

    
    
    
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

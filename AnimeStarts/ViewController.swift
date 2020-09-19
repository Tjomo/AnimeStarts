//
//  ViewController.swift
//  AnimeStarts
//
//  Created by Talmage Hassell on 8/3/20.
//  Copyright © 2020 Talmage Hassell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var listAnimeItem:Int = 0



    
    @IBOutlet weak var selecterOutlet: UISegmentedControl!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearOutlet: UILabel!
    
    @IBOutlet weak var descriptionOutlet: UILabel!
    @IBOutlet weak var nextAnimeOutlet: UIBarButtonItem!
    
    @IBOutlet weak var previousAnimeOutlet: UIBarButtonItem!
    @IBOutlet weak var uiBarOutlet: UINavigationItem!
    
//BUTTONS DO THINGS
    
    
    
    func REFRESHU() {
        //make sure no crash
        if listAnimeItem > (AnimeController.sharedController.animes.count - 1)  {
            listAnimeItem = 0
        }
        if listAnimeItem < 0  {
            listAnimeItem = AnimeController.sharedController.animes.count - 1
        }
        
        
            //reload data
             if let urlString = URL(string: AnimeController.sharedController.animes[listAnimeItem].posterPath) {
              imageOutlet.load(url:urlString)
            }
            titleOutlet.text = AnimeController.sharedController.animes[listAnimeItem].title
            yearOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].year)
            uiBarOutlet.title = AnimeController.sharedController.animes[listAnimeItem].title
            
        
    }
    
    
    @IBAction func rightButtonCommit(_ sender: Any) {

        
        
                listAnimeItem += 1

        
        
        REFRESHU()
    }
    
    
    @IBAction func leftButtonCommit(_ sender: Any) {
                listAnimeItem -= 1

        
        
        REFRESHU()
    }

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
navigationController?.navigationBar.barTintColor = UIColor.yellow

        if let urlString = URL(string: AnimeController.sharedController.animes[listAnimeItem].posterPath) {
         imageOutlet.load(url:urlString)
       }
        
        
        yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        titleOutlet.text = AnimeController.sharedController.animes[listAnimeItem].title
        yearOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].year)
        uiBarOutlet.title = AnimeController.sharedController.animes[listAnimeItem].title

        
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

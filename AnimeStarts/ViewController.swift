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

    var lastViewAnime = AnimeController.sharedController.animes[9]
    
    

    
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
        if listAnimeItem > (AnimeController.sharedController.animes.count - 2)  {
            listAnimeItem = 0
        }
        if listAnimeItem < 0  {
            listAnimeItem = AnimeController.sharedController.animes.count - 2
        }
        
        
            //reload data
             if let urlString = URL(string: AnimeController.sharedController.animes[listAnimeItem].posterPath) {
              imageOutlet.load(url:urlString)
            }
            titleOutlet.text = AnimeController.sharedController.animes[listAnimeItem].title
            yearOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].year)
            uiBarOutlet.title = AnimeController.sharedController.animes[listAnimeItem].title
        descriptionOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].description)
        
        //LOADDDDDDDDDDDD
        //AnimeController.sharedController.saveAnime()
        
        //ANIMATE
        selecterOutlet.selectedSegmentIndex = 0
        
        
        
        UIView.animate(withDuration: 0.7) {
           // self.yearOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            //self.yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            self.yearOutlet.alpha = 1
            self.titleOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.titleOutlet.alpha = 1
            self.imageOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.imageOutlet.transform = CGAffineTransform(rotationAngle: 0)
            self.imageOutlet.alpha = 1
            self.descriptionOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.descriptionOutlet.alpha = 1
            
        }
        UIView.animate(withDuration: 1.2) {
            self.selecterOutlet.alpha = 1
            
        }
        UIView.animate(withDuration: 3) {
            self.yearOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        }
        

 
    }
    
       func REFRESHU2() {
        while AnimeController.sharedController.animes.count > 0 {
            AnimeController.sharedController.animes.remove(at: 0)
        }
        AnimeController.sharedController.buildList()
        listAnimeItem = 0
        
        //make sure no crash
        if listAnimeItem > (AnimeController.sharedController.animes.count - 2)  {
            listAnimeItem = 0
        }
        if listAnimeItem < 0  {
            listAnimeItem = AnimeController.sharedController.animes.count - 2
        }
        
        
            //reload data
             if let urlString = URL(string: AnimeController.sharedController.animes[listAnimeItem].posterPath) {
              imageOutlet.load(url:urlString)
            }
            titleOutlet.text = AnimeController.sharedController.animes[listAnimeItem].title
            yearOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].year)
            uiBarOutlet.title = AnimeController.sharedController.animes[listAnimeItem].title
        descriptionOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].description)
        
        selecterOutlet.selectedSegmentIndex = 0
        
        UIView.animate(withDuration: 1) {
           // self.yearOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            //self.yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            self.yearOutlet.alpha = 1
            self.titleOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.titleOutlet.alpha = 1
            self.imageOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.imageOutlet.transform = CGAffineTransform(rotationAngle: 0)
            self.imageOutlet.alpha = 1
            self.descriptionOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.descriptionOutlet.alpha = 1
            
        }
        UIView.animate(withDuration: 1.2) {
            self.selecterOutlet.alpha = 1
            
        }
        UIView.animate(withDuration: 3) {
            self.yearOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        }
        

    
       }
    
    @IBAction func rightButtonCommit(_ sender: Any) {
        UIView.animate(withDuration: 0.7, animations:{
            self.yearOutlet.transform = CGAffineTransform(scaleX: 10000, y: 10000)
            self.yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            self.yearOutlet.alpha = 0
            self.titleOutlet.transform = CGAffineTransform(scaleX: 10000, y: 1)
            self.titleOutlet.alpha = 0
            self.imageOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.imageOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            self.imageOutlet.alpha = -30
            self.descriptionOutlet.transform = CGAffineTransform(scaleX: 1, y: 10000)
            self.descriptionOutlet.alpha = 0
            self.selecterOutlet.alpha = 0
            
        })
        lastViewAnime = AnimeController.sharedController.animes[listAnimeItem]
        if AnimeController.sharedController.animes[listAnimeItem].type != .lewd {
        if selecterOutlet.selectedSegmentIndex == 0 {
            listAnimeItem += 3
        }
        if selecterOutlet.selectedSegmentIndex == 1 {
            AnimeController.sharedController.animes.remove(at: listAnimeItem)
        }
        if selecterOutlet.selectedSegmentIndex == 2 {
            AnimeController.sharedController.animes.remove(at: listAnimeItem)
            listAnimeItem += 1
        }
        }


        REFRESHU()
    }
    
    
    @IBAction func leftButtonCommit(_ sender: Any) {
        listAnimeItem = lastViewAnime.id

        UIView.animate(withDuration: 0.9, animations:{
            self.yearOutlet.transform = CGAffineTransform(scaleX: 250, y: 250)
            self.yearOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            self.yearOutlet.alpha = 0
            self.titleOutlet.transform = CGAffineTransform(scaleX: 250, y: 1)
            self.titleOutlet.alpha = 0
            self.imageOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.imageOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
            self.imageOutlet.alpha = -30
            self.descriptionOutlet.transform = CGAffineTransform(scaleX: 1, y: 250)
            self.descriptionOutlet.alpha = 0
            self.selecterOutlet.alpha = 0
            
        })
        
        REFRESHU2()
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
        descriptionOutlet.text = String(AnimeController.sharedController.animes[listAnimeItem].description)
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

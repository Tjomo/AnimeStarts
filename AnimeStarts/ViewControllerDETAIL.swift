//
//  ViewControllerDETAIL.swift
//  AnimeStarts
//
//  Created by Talmage Hassell on 9/21/20.
//  Copyright © 2020 Talmage Hassell. All rights reserved.
//

import UIKit




class ViewControllerDETAIL: UIViewController {

    @IBOutlet weak var yearOutlet2: UILabel!
    
    @IBOutlet weak var imageOutlet2: UIImageView!
    
    @IBOutlet weak var titleOutlet2: UILabel!
    
    @IBOutlet weak var descriptionOutlet2: UILabel!
    
    

    var sentID = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let urlString = URL(string: AnimeController2.sharedController.animeList[sentID].posterPath) {
            imageOutlet2.load(url:urlString)
              }

        yearOutlet2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        titleOutlet2.text = AnimeController2.sharedController.animeList[sentID].title
        yearOutlet2.text = String(AnimeController2.sharedController.animeList[sentID].year)
        descriptionOutlet2.text = String(AnimeController2.sharedController.animeList[sentID].description)
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

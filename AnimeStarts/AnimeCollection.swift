//
//  AnimeCollection.swift
//  AnimeStarts
//
//  Created by Talmage Hassell on 9/14/20.
//  Copyright © 2020 Talmage Hassell. All rights reserved.
//

import Foundation
import UIKit


enum AnimeType {
    case action
    case romance
    case comedy
    case horror
    case psychological
    case artsy
    case lewd
}
  


struct Anime {
    var id: Int
    var title:String
    var year:Int
    var type:AnimeType
    var posterPath:String
}



    var animes = [Anime]()


    var actionAnime = [Anime]()
    var actionAnimeIndex = 0
    var romanceAnime = [Anime]()
    var romanceAnimeIndex = 0
    var comedyAnime = [Anime]()
    var comedyAnimeIndex = 0
    var horrorAnime = [Anime]()
    var horrorAnimeIndex = 0


    

    var resultsAnime = [Anime]()
    var resultsAnimeIndex = 0
    
func buildList() {
    //ACTOIN ANIME
    actionAnime.append(Anime(id: 45782, title: "Sword Art Online", year: 2012, type: .action, posterPath: "https://manga.tokyo/wp-content/uploads/2018/03/5aba912496736.jpg"))
    actionAnime.append(Anime(id: 0, title: "Kill La Kill", year: 2013, type: .action, posterPath: ""))
    actionAnime.append(Anime(id: 0, title: "Hellsing Ultimate", year: 2006, type: .action, posterPath: ""))
    
    
    
    //ROMANCE ANIME
    romanceAnime.append(Anime(id: 0, title: "ToraDora", year: 2008, type: .romance, posterPath: ""))
    romanceAnime.append(Anime(id: 0, title: "Plastic Memories", year: 2015, type: .romance, posterPath: ""))
    actionAnime.append(Anime(id: 0, title: "Angel Beats", year: 2010, type: .romance, posterPath: ""))
    
    //COMEDY ANIME
    comedyAnime.append(Anime(id: 0, title: "Konosuba", year: 2016, type: .comedy, posterPath: ""))
    comedyAnime.append(Anime(id: 0, title: "Nichijou", year: 2011, type: .comedy, posterPath: ""))
    comedyAnime.append(Anime(id: 0, title: "Panty and Stocking with Garterbelt", year: 2011, type: .comedy, posterPath: ""))
    
    
    
    //HORROR ANIME
    horrorAnime.append(Anime(id: 0, title: "Another", year: 2012, type: .horror, posterPath: ""))
    horrorAnime.append(Anime(id: 0, title: "Higurashi", year: 2006, type: .horror, posterPath: ""))
    horrorAnime.append(Anime(id: 0, title: "Shiki", year: 2010, type: .horror, posterPath: ""))
}
var bigList = {actionAnime + comedyAnime + horrorAnime + romanceAnime}

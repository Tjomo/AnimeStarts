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
    actionAnime.append(Anime(id: 0, title: "Kill La Kill", year: 2013, type: .action, posterPath: "https://static.wikia.nocookie.net/toonami/images/b/b8/Kill_la_Kill_DVD.jpg/revision/latest?cb=20150117020832"))
    actionAnime.append(Anime(id: 0, title: "Hellsing Ultimate", year: 2006, type: .action, posterPath: "https://m.media-amazon.com/images/M/MV5BYTU5ZWExZjktMmI5MC00MjUwLTk0MjAtNDExMDk1ZDUzZWY3XkEyXkFqcGdeQXVyNjc3OTE4Nzk@._V1_.jpg"))
    
    
    
    //ROMANCE ANIME
    romanceAnime.append(Anime(id: 0, title: "ToraDora", year: 2008, type: .romance, posterPath: "https://i.pinimg.com/originals/a9/72/d6/a972d6cb8165ac43a58daf2ac42965a7.jpg"))
    romanceAnime.append(Anime(id: 0, title: "Plastic Memories", year: 2015, type: .romance, posterPath: "https://vignette.wikia.nocookie.net/plastic-memories/images/8/83/Plastic_Memories_Poster.png/revision/latest?cb=20190730003248"))
    actionAnime.append(Anime(id: 0, title: "Angel Beats", year: 2010, type: .romance, posterPath: "https://i2.wp.com/doublesama.com/wp-content/uploads/2020/08/Angel-Beats-cover.jpg?fit=640%2C960"))
    
    //COMEDY ANIME
    comedyAnime.append(Anime(id: 0, title: "Konosuba", year: 2016, type: .comedy, posterPath: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a94bc94e-9670-4c1e-a0da-77505ad13d73/d9ycmln-ead8800f-0b98-4bda-864a-a88da3041576.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYTk0YmM5NGUtOTY3MC00YzFlLWEwZGEtNzc1MDVhZDEzZDczXC9kOXljbWxuLWVhZDg4MDBmLTBiOTgtNGJkYS04NjRhLWE4OGRhMzA0MTU3Ni5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.KUBgWHnJnGAqE0SwUcNU68WIjOJ5RY5rWdOED67w_HI"))
    comedyAnime.append(Anime(id: 0, title: "Nichijou", year: 2011, type: .comedy, posterPath: "https://vignette.wikia.nocookie.net/nichijou/images/9/96/Nichijou_DVD_BD_13_Special_Edition_Bonus_CD_%282012%29.jpg/revision/latest?cb=20140416080628"))
    comedyAnime.append(Anime(id: 0, title: "Panty and Stocking with Garterbelt", year: 2011, type: .comedy, posterPath: "https://images-na.ssl-images-amazon.com/images/I/817-qOGMZML._SL1279_.jpg"))
    
    
    
    //HORROR ANIME
    horrorAnime.append(Anime(id: 0, title: "Another", year: 2012, type: .horror, posterPath: "https://images-na.ssl-images-amazon.com/images/I/71ygYDim6-L._SL1280_.jpg"))
    horrorAnime.append(Anime(id: 0, title: "Higurashi", year: 2006, type: .horror, posterPath: "https://images-na.ssl-images-amazon.com/images/I/510Q8puAkiL._SY445_.jpg"))
    horrorAnime.append(Anime(id: 0, title: "Shiki", year: 2010, type: .horror, posterPath: "https://images-na.ssl-images-amazon.com/images/I/71I%2BDRvgdVL._SL1500_.jpg"))
}
var bigList = {actionAnime + comedyAnime + horrorAnime + romanceAnime}

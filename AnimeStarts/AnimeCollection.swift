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
    var description:String
}


class AnimeController {
    static let sharedController = AnimeController()
    var animes: [Anime] = []
    //    var actionAnime: [Anime] = []
    //    var actionAnimeIndex = 0
    //    var romanceAnime: [Anime] = []
    //    var romanceAnimeIndex = 0
    //    var comedyAnime: [Anime] = []
    //    var comedyAnimeIndex = 0
    //    var horrorAnime: [Anime] = []
    //    var horrorAnimeIndex = 0
    //    var resultsAnime: [Anime] = []
    //   var resultsAnimeIndex = 0
    func saveAnime() {
        let savedArray = [AnimeController.sharedController.animes]
        UserDefaults.standard.set(savedArray, forKey: "SavedAnimeArray")
    }
    
    func loadAnime() {
        let animes2 = UserDefaults.standard.object(forKey: "SavedAnimeArray") as? [Anime] ?? [Anime]()
    }
    
    
    
    func buildList() {
        //ACTOIN ANIME
        animes.append(Anime(id: 0, title: "Sword Art Online", year: 2012, type: .action, posterPath: "https://image.tmdb.org/t/p/w1280/zLdXxodgz0UN0RCca8uxBq3EGTg.jpg", description: "In the near future, a Virtual Reality Massive Multiplayer Online Role-Playing Game (VRMMORPG) called Sword Art Online has been released where players control their avatars with their bodies using a piece of technology called Nerve Gear. One day, players discover they cannot log out, as the game creator is holding them captive unless they reach the 100th floor of the game's tower and defeat the final boss. However, if they die in the game, they die in real life. Their struggle for survival starts now..."))
        animes.append(Anime(id: 1, title: "Kill La Kill", year: 2013, type: .action, posterPath: "https://image.tmdb.org/t/p/w1280/4F1WtP3dFIwLPOfa3u29VEVnNkf.jpg", description: "In a high school ruled by force, a transfer student wielding a scissor blade sword brings about upheaval."))
        animes.append(Anime(id: 2, title: "Hellsing Ultimate", year: 2006, type: .action, posterPath: "https://image.tmdb.org/t/p/w1280/evZtiZzMX9VFoM1zzvRUmPoLPBg.jpg", description: "For over a century, the mysterious Hellsing Organization has been secretly protecting the British Empire from undead 'freaks.' When Sir Integra Hellsing succeeded as the head of the organization, she also inherited the ultimate weapon against these undead enemies, Alucard, a rogue vampire possessing mysterious and frightening powers.But now, Hellsing must deal with a more dangerous threat than vampires. Millennium. An organization of Nazi vampires of a long dead era. Will it be an all out war, or an all out blood bath?"))
        //ROMANCE ANIME
        animes.append(Anime(id: 3, title: "ToraDora", year: 2008, type: .romance, posterPath: "https://image.tmdb.org/t/p/w1280/2Z52nZaAQt1P7XJtu8fNlMXgdps.jpg", description: "It’s Ryuji’s first day as a junior in high school and it seems as if things are looking up. He gets to sit in between his only friend, Yusaku, and, more importantly, the girl he’s secretly crushing on, Minori Kushieda. But just when he thinks the stars are aligned in his favor, he unwittingly crosses the most feared girl in school, Taiga Aisaku, making her onto his arch enemy. To top it off, Taiga has moved in right next door to Ryuji and happens to be Minori’s best friend! Can this school year possibly get any worse?!"))
        animes.append(Anime(id: 4, title: "Plastic Memories", year: 2015, type: .romance, posterPath: "https://vignette.wikia.nocookie.net/plastic-memories/images/8/83/Plastic_Memories_Poster.png/revision/latest?cb=20190730003248", description: "After failing his college entrance exams, 18 year-old Tsukasa Mizugaki is offered a position at the renowned SAI Corporation, known for its production and management of Giftia, androids that possess human emotions. Tsukasa’s position is in the terminal service department where the main job is to recover Giftias that are close to their expiration, a graveyard department in every sense. To make matters worse, Tsukasa is ordered to work with Isla, a female Giftia who is never given any responsibility other than serving tea to co-workers."))
        animes.append(Anime(id: 5, title: "Angel Beats", year: 2010, type: .romance, posterPath: "https://image.tmdb.org/t/p/w1280/wz1PuXrg5ERQvyXKex3cGDie2hj.jpg", description: "Angel Beats takes place in the afterlife and focuses on Otonashi, a boy who lost his memories of his life after dying. He is enrolled into the afterlife school and meets a girl named Yuri who invites him to join the Afterlife Battlefront — an organization she leads which fights against God. The Battlefront fight against the student council president Angel, a girl with supernatural powers."))
        //COMEDY ANIME
        animes.append(Anime(id: 6, title: "Konosuba", year: 2016, type: .comedy, posterPath: "https://image.tmdb.org/t/p/w1280/oRaOeQlwktbGSd2T31FYAcgHZlh.jpg", description: "After a traffic accident, Kazuma Sato’s disappointingly brief life was supposed to be over, but he wakes up to see a beautiful girl before him. She claims to be a goddess, Aqua, and asks if he would like to go to another world and bring only one thing with him. Kazuma decides to bring the goddess herself, and they are transported to a fantasy world filled with adventure, ruled by a demon king. Now Kazuma only wants to live in peace, but Aqua wants to solve many of this world’s problems, and the demon king will only turn a blind eye for so long…"))
        animes.append(Anime(id: 7, title: "Nichijou", year: 2011, type: .comedy, posterPath: "https://image.tmdb.org/t/p/w1280/qmi1VpOvPFRHg02fbLuc3pVrMbt.jpg", description: "Follow the adventures of three ordinary girls as they make life’s awkward moments a thousand times worse. Along with a colorful bunch of classmates, they learn their most important lessons the hard way. Meanwhile down the street, a pocket-sized professor makes life difficult for a robot who just wants to be normal. But normal is the last thing you can expect in a town where salmon falls from the sky. In fact, the only thing you can count on is your friends, but even they are totally weird."))
        animes.append(Anime(id: 8, title: "Panty and Stocking", year: 2011, type: .comedy, posterPath: "https://image.tmdb.org/t/p/w1280/620mZ7Lo8B1681F2ts4HeBIkLRz.jpg", description: "Panty and Stocking are nasty angels who were banished from the pearly gates for being foul-mouthed bad girls! Now they spend their days hunting ghosts in the lecherous abyss between Heaven and Earth. Panty likes sex, Stocking likes sweets, and their afro-sporting main man Garter Belt has a fetish we can't mention."))
        //HORROR ANIME
        animes.append(Anime(id: 9, title: "Another", year: 2012, type: .horror, posterPath: "https://image.tmdb.org/t/p/w1280/cwaEn7Gg11avVtn1BZ5qaFV1aEd.jpg", description: "When Kouichi Sasakibara transfers to his new school, he can sense something frightening in the atmosphere of his new class, a secret none of them will talk about. At the center is the beautiful girl Mei Misaki. Kouichi is immediately drawn to her mysterious aura, but then he begins to realize that no one else in the class is aware of her presence."))
        animes.append(Anime(id: 10, title: "Higurashi", year: 2006, type: .horror, posterPath: "https://images-na.ssl-images-amazon.com/images/I/510Q8puAkiL._SY445_.jpg", description: "After moving into the quiet town of Hinamizawa, Maebara Keiichi spends his days blissfully in school often playing games with his local friends. However, appearances can be deceiving. One fateful day, Keiichi stumbles upon news of a murder that had occurred in Hinamizawa. From this point on, horrific events unfold in front of Keiichi, as he soon learns his close friends may not be all that they seem. Based on the amateur mystery game by 07th Expansion, the story is told in a series of different scenarios."))
        animes.append(Anime(id: 11, title: "Shiki", year: 2010, type: .horror, posterPath: "https://image.tmdb.org/t/p/w1280/zsWbTnNwNjqWvgZ9gqTcK9WLoWy.jpg", description: "Sotobamura is a small village with around 1300 residents; so small the village isn't even connected to a single highway. An isolated village in which old customs, such as the burial of the dead, are still practiced. One day, the bodies of three people are found dead. Although Ozaki Toshio, the village's lone doctor, feels uncertain, he treats the deaths as a normal occurrence. However, in the days following, the villagers start to die one after the other."))
        animes.append(Anime(id: 12, title: "BLANK", year: 0000, type: .lewd, posterPath: "https://image.tmdb.org/t/p/w1280/qpKGtHATF326zuC1jh7WCrY7u5g.jpg", description: "ALL OUTTA SHOWS"))
    }
}


class AnimeController2 {
static let sharedController = AnimeController2()


var animeList: [Anime] = []


func buildListList() {
animeList.append(Anime(id: 0, title: "Sword Art Online", year: 2012, type: .action, posterPath: "https://image.tmdb.org/t/p/w1280/zLdXxodgz0UN0RCca8uxBq3EGTg.jpg", description: "In the near future, a Virtual Reality Massive Multiplayer Online Role-Playing Game (VRMMORPG) called Sword Art Online has been released where players control their avatars with their bodies using a piece of technology called Nerve Gear. One day, players discover they cannot log out, as the game creator is holding them captive unless they reach the 100th floor of the game's tower and defeat the final boss. However, if they die in the game, they die in real life. Their struggle for survival starts now..."))
animeList.append(Anime(id: 1, title: "Kill La Kill", year: 2013, type: .action, posterPath: "https://image.tmdb.org/t/p/w1280/4F1WtP3dFIwLPOfa3u29VEVnNkf.jpg", description: "In a high school ruled by force, a transfer student wielding a scissor blade sword brings about upheaval."))
animeList.append(Anime(id: 2, title: "Hellsing Ultimate", year: 2006, type: .action, posterPath: "https://image.tmdb.org/t/p/w1280/evZtiZzMX9VFoM1zzvRUmPoLPBg.jpg", description: "For over a century, the mysterious Hellsing Organization has been secretly protecting the British Empire from undead 'freaks.' When Sir Integra Hellsing succeeded as the head of the organization, she also inherited the ultimate weapon against these undead enemies, Alucard, a rogue vampire possessing mysterious and frightening powers.But now, Hellsing must deal with a more dangerous threat than vampires. Millennium. An organization of Nazi vampires of a long dead era. Will it be an all out war, or an all out blood bath?"))
//ROMANCE ANIME
animeList.append(Anime(id: 3, title: "ToraDora", year: 2008, type: .romance, posterPath: "https://image.tmdb.org/t/p/w1280/2Z52nZaAQt1P7XJtu8fNlMXgdps.jpg", description: "It’s Ryuji’s first day as a junior in high school and it seems as if things are looking up. He gets to sit in between his only friend, Yusaku, and, more importantly, the girl he’s secretly crushing on, Minori Kushieda. But just when he thinks the stars are aligned in his favor, he unwittingly crosses the most feared girl in school, Taiga Aisaku, making her onto his arch enemy. To top it off, Taiga has moved in right next door to Ryuji and happens to be Minori’s best friend! Can this school year possibly get any worse?!"))
animeList.append(Anime(id: 4, title: "Plastic Memories", year: 2015, type: .romance, posterPath: "https://vignette.wikia.nocookie.net/plastic-memories/images/8/83/Plastic_Memories_Poster.png/revision/latest?cb=20190730003248", description: "After failing his college entrance exams, 18 year-old Tsukasa Mizugaki is offered a position at the renowned SAI Corporation, known for its production and management of Giftia, androids that possess human emotions. Tsukasa’s position is in the terminal service department where the main job is to recover Giftias that are close to their expiration, a graveyard department in every sense. To make matters worse, Tsukasa is ordered to work with Isla, a female Giftia who is never given any responsibility other than serving tea to co-workers."))
animeList.append(Anime(id: 5, title: "Angel Beats", year: 2010, type: .romance, posterPath: "https://image.tmdb.org/t/p/w1280/wz1PuXrg5ERQvyXKex3cGDie2hj.jpg", description: "Angel Beats takes place in the afterlife and focuses on Otonashi, a boy who lost his memories of his life after dying. He is enrolled into the afterlife school and meets a girl named Yuri who invites him to join the Afterlife Battlefront — an organization she leads which fights against God. The Battlefront fight against the student council president Angel, a girl with supernatural powers."))
//COMEDY ANIME
animeList.append(Anime(id: 6, title: "Konosuba", year: 2016, type: .comedy, posterPath: "https://image.tmdb.org/t/p/w1280/oRaOeQlwktbGSd2T31FYAcgHZlh.jpg", description: "After a traffic accident, Kazuma Sato’s disappointingly brief life was supposed to be over, but he wakes up to see a beautiful girl before him. She claims to be a goddess, Aqua, and asks if he would like to go to another world and bring only one thing with him. Kazuma decides to bring the goddess herself, and they are transported to a fantasy world filled with adventure, ruled by a demon king. Now Kazuma only wants to live in peace, but Aqua wants to solve many of this world’s problems, and the demon king will only turn a blind eye for so long…"))
animeList.append(Anime(id: 7, title: "Nichijou", year: 2011, type: .comedy, posterPath: "https://image.tmdb.org/t/p/w1280/qmi1VpOvPFRHg02fbLuc3pVrMbt.jpg", description: "Follow the adventures of three ordinary girls as they make life’s awkward moments a thousand times worse. Along with a colorful bunch of classmates, they learn their most important lessons the hard way. Meanwhile down the street, a pocket-sized professor makes life difficult for a robot who just wants to be normal. But normal is the last thing you can expect in a town where salmon falls from the sky. In fact, the only thing you can count on is your friends, but even they are totally weird."))
animeList.append(Anime(id: 8, title: "Panty and Stocking", year: 2011, type: .comedy, posterPath: "https://image.tmdb.org/t/p/w1280/620mZ7Lo8B1681F2ts4HeBIkLRz.jpg", description: "Panty and Stocking are nasty angels who were banished from the pearly gates for being foul-mouthed bad girls! Now they spend their days hunting ghosts in the lecherous abyss between Heaven and Earth. Panty likes sex, Stocking likes sweets, and their afro-sporting main man Garter Belt has a fetish we can't mention."))
//HORROR ANIME
animeList.append(Anime(id: 9, title: "Another", year: 2012, type: .horror, posterPath: "https://image.tmdb.org/t/p/w1280/cwaEn7Gg11avVtn1BZ5qaFV1aEd.jpg", description: "When Kouichi Sasakibara transfers to his new school, he can sense something frightening in the atmosphere of his new class, a secret none of them will talk about. At the center is the beautiful girl Mei Misaki. Kouichi is immediately drawn to her mysterious aura, but then he begins to realize that no one else in the class is aware of her presence."))
animeList.append(Anime(id: 10, title: "Higurashi", year: 2006, type: .horror, posterPath: "https://images-na.ssl-images-amazon.com/images/I/510Q8puAkiL._SY445_.jpg", description: "After moving into the quiet town of Hinamizawa, Maebara Keiichi spends his days blissfully in school often playing games with his local friends. However, appearances can be deceiving. One fateful day, Keiichi stumbles upon news of a murder that had occurred in Hinamizawa. From this point on, horrific events unfold in front of Keiichi, as he soon learns his close friends may not be all that they seem. Based on the amateur mystery game by 07th Expansion, the story is told in a series of different scenarios."))
animeList.append(Anime(id: 11, title: "Shiki", year: 2010, type: .horror, posterPath: "https://image.tmdb.org/t/p/w1280/zsWbTnNwNjqWvgZ9gqTcK9WLoWy.jpg", description: "Sotobamura is a small village with around 1300 residents; so small the village isn't even connected to a single highway. An isolated village in which old customs, such as the burial of the dead, are still practiced. One day, the bodies of three people are found dead. Although Ozaki Toshio, the village's lone doctor, feels uncertain, he treats the deaths as a normal occurrence. However, in the days following, the villagers start to die one after the other."))
animeList.append(Anime(id: 12, title: "BLANK", year: 2020, type: .lewd, posterPath: "https://image.tmdb.org/t/p/w1280/qpKGtHATF326zuC1jh7WCrY7u5g.jpg", description: "ALL OUTTA SHOWS"))
}
}






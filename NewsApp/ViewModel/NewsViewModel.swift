//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Merve Nurgül BAĞCI on 17.04.2022.
//

import Foundation


struct NewsTableViewModel {
    
    let newsList : [News]
    
    func numberOfrowsInsection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsViewModel {
        let news = self.newsList[index]
        return NewsViewModel(news : news)
    }
}

struct NewsViewModel {
    
    let news : News
    
    var title : String{
        return self.news.title
    }
    
    var story : String{
        return self.news.story
    }
}

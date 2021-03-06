//
//  ArticleDetailsViewController.swift
//  HospiHome
//
//  Created by Elser_10 on 5/2/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import UIKit

class ArticleDetailsViewController: UIViewController {
    var article: Article?

    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideWhenSwipe()
        fetchArticlesDetails()
    }
    
    func fetchArticlesDetails() {
        if let article = article {
            dateLabel.text = article.fullDate
            bodyLabel.text = article.body
            titleLabel.text = article.title
            if let posterImage = article.posterImage{
                posterImageView.image = UIImage(data: posterImage)
            }
        }
    }
    
    func hideWhenSwipe() {
        self.navigationController?.hidesBarsOnSwipe = true
    }
}

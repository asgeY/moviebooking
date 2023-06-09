//
//  UpcomingCell.swift
//  MovieBooking
//
//  Created by Asge Y on 02/11/2023.

//

import UIKit
import KingfisherSwiftUI

class UpcomingCell: UICollectionViewCell {
    static let reuseId: String = "UpcomingCell"
      var movie: MovieViewModel?{
           didSet{
               if let movie = self.movie {
                   imageView.kf.setImage(with: movie.posterUrl)
                   titleLabel.text = movie.title
               }
           }
       }
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "adastra_land.jpg")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Ad Astra"
        label.textColor = UIColor(named:"textColor")
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 20, weight: .bold))
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var releaseDateLabel: UILabel = {
        let label = UILabel()
        label.text = "December 25, 2023"
        label.textColor = UIColor.gray
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 15, weight: .regular))
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
      private func setupCell(){
        contentView.addSubview(self.imageView)
        contentView.addSubview(self.titleLabel)
        contentView.addSubview(self.releaseDateLabel)
                                
          NSLayoutConstraint.activate([
              imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
              imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
              imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5),
              imageView.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25),
              
              titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
              titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
              titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
              titleLabel.heightAnchor.constraint(equalToConstant: 30),

              releaseDateLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
              releaseDateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
              releaseDateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
              releaseDateLabel.heightAnchor.constraint(equalToConstant: 15)
          ])

      }
}




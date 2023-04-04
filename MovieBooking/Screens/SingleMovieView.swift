//
//  MovieDetailView.swift
//  MovieBooking
//
//  Created by Asge Y on 04/01/2023.

//

import SwiftUI
import KingfisherSwiftUI

struct SingleMovieView: View {
    
    var movieId: Int = -1
    
    @ObservedObject private var model = MovieListingViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                createPosterImage()
                MovieDetailView(movie: self.model.movie)
            }
        }.edgesIgnoringSafeArea(.top)
        .onAppear {
            self.model.getMovieDetail(id: self.movieId)
        }
    }
    
    
    
       fileprivate func createPosterImage() -> some View {
        return KFImage(source: .network(model.movie.posterUrl)).resizable()
           .aspectRatio(contentMode: .fit)
       }
}

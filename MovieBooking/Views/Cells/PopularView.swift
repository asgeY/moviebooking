//
//  PopularView.swift
//  MovieBooking
//
//  Created by AsgeY on 04/03/2023.

//

import SwiftUI
import KingfisherSwiftUI

struct PopularView: View {
    
    var movie: MovieViewModel
    
    var body: some View {
        VStack( alignment: .leading, spacing: 0) {
            
            KFImage(source: .network(movie.posterUrl)).resizable()
             .aspectRatio(contentMode: .fill)
                .cornerRadius(20)
                .clipped()
                .padding(.top, 5)
         
            
            Text("Star wars: The rise of skywalker")
                .font(.headline)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.all, 10)
        }
            
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView(movie:  MovieViewModel.default)
    }
}

//
//  OkView.swift
//  MovieBooking
//
//  Created by Asge Y on 3/01/2023.

//

import SwiftUI

struct OkView: View {
    var width: CGFloat = 30
    var lineWidth: CGFloat = 7
    var body: some View {
          OkShape()
            .stroke(style: StrokeStyle(lineWidth: self.lineWidth, lineCap: .round,lineJoin: .round))
              .fill(LinearGradient(gradient: Gradient(colors: [Color.accent, .darkPurple]) , startPoint: .leading, endPoint: .trailing))
            .frame(width: self.width, height: self.width * 2).rotationEffect(Angle(degrees: 45) )
          
    }
}

struct OkView_Previews: PreviewProvider {
    static var previews: some View {
        OkView()
    }
}

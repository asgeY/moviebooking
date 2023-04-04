//
//  BottomTicketView.swift
//  MovieBooking
//
//  Created by Asge Y on  03/02/2023.

//


import SwiftUI

struct BottomTicketView: View {
    var body: some View {
         Image("Barcode")
                       .resizable()
                       .scaledToFit()
                       .padding(30)
                       .frame(minWidth: 0.0, maxWidth: .infinity)
            .foregroundColor(Color.gray)
    }
}

struct BottomTicketView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTicketView()
    }
}

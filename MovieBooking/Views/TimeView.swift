//
//  TimeView.swift
//  MovieBooking
//
//  Created by Asge Y on 3/01/2023.

//

import SwiftUI


struct TimeView: View {
    var index: Int
    var isSelected: Bool
    var onSelect: ((Int)->()) = {_ in }


    var body: some View {
        Text("\(index):00")
            .foregroundColor(isSelected ? .white : .textColor)
            .padding()
            .background( isSelected ? Color.accent : Color.gray.opacity(0.3))
            .cornerRadius(10).onTapGesture {
                self.onSelect(self.index)
        }
    }
}

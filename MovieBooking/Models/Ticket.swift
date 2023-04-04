//
//  Ticket.swift
//  MovieBooking
//
//  Created by Asge Y on 20/01/2023.

//

import Foundation

struct Ticket: Identifiable {
    var id: UUID
    var movie: MovieViewModel
    var date: TicketDate
    var hour: String
    
    static var `default`: Ticket{
        .init(id: UUID(), movie: MovieViewModel.default, date: TicketDate.default, hour: "")
    }
}

//
//  TicketDate.swift
//  MovieBooking
//
//  Created by Asge Y on 3/01/2023.

//

import Foundation

import Foundation

struct TicketDate: Equatable {
    var day: String
    var month: String
    var year: String
    
    static var `default`: TicketDate { TicketDate(day: "", month: "", year: "") }
    
    
    
}

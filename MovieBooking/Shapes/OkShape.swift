//
//  OkShape.swift
//  MovieBooking
//
//  Created by Asge Y on 3/01/2023.

//

import SwiftUI

struct OkShape: Shape {
         
    func path(in rect: CGRect) -> Path {
        
        return Path{ path in
            path.move(to: CGPoint(x: rect.origin.x, y: rect.size.height))
            path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
            path.addLine(to: CGPoint(x: rect.size.width, y: rect.origin.y))
        }
    }
}

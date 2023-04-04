// File: DynamicContainer.swift
// Project: Grids

// Created at 01/01/2023 by AsgeY
// Visit https://www.AsgeYcom for more


import SwiftUI

struct DynamicContainer<Model, Content>: View where Content: View, Model: Identifiable {
    
    enum ContainerType {
        case stack, grid
    }
    
    
    var type: ContainerType
    var data: [Model]
    var content: (Model) -> Content
    
    
    private let gridLayout = [
        GridItem(.flexible(minimum: 100), spacing: 10, alignment: .center),
        GridItem(.flexible(minimum: 100), spacing: 10, alignment: .center)
    ]
    
    
    init( data: [Model]?, type: ContainerType = .stack, @ViewBuilder content: @escaping (Model) -> Content) {
        self.data = data ?? []
        self.type = type
        self.content = content
    }
    
    @ViewBuilder
    var body: some View {
        
        switch type {
        case .stack:
            LazyHStack(spacing: 20) {
                ForEach(data) { value in
                    self.content(value)
                }
            }.padding(.horizontal, 20)
            
        case .grid:
            LazyHGrid(rows: gridLayout, spacing: 0) {
                ForEach(data) { value in
                    self.content(value)
                }
            }
        }
    }
}


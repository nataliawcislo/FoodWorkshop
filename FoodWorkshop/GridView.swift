//
//  ListView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 13/10/2020.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        EmptyView()
    }
//    @State private var showDetails: Producer? = nil
//    let columns = 2
//    let items: [Producer]
//
//    var body: some View {
//        var grid: [[Int]] = []
//
//        _ = (0..<items.count).publisher
//            .collect(columns)
//            .collect()
//            .sink(receiveValue: { grid = $0 })
//
//        return ForEach(0..<grid.count, id: \.self) { collect in
//            HStack {
//                ForEach(grid[collect], id: \.self) { number in
//                    ZStack {
//                        Button(action: {
//                            withAnimation {
//                                self.showDetails = self.showDetails == nil ? self.items[number] : nil
//                            }
//                        }) {
//                            Image(self.items[number].filename)
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(1.0, contentMode: .fit)
//                            .cornerRadius(30)
//                        }
//                        .buttonStyle(PlainButtonStyle())
//
//
//                    }.overlay(ZStack {
//                        if self.showDetails?.id == self.items[number].id {
//                            Image(self.items[number].filename)
//                                .resizable()
//                                .scaledToFit()
//                                .edgesIgnoringSafeArea(.all)
//                        }
//                    })
//                }
//            }
//        }
//    }
}


struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

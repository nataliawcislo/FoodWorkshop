//
//  TabsView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 12/10/2020.
//

import SwiftUI

struct TabsView: View {
    @Binding var selectedTabIndex: Int
    private let tabs: [String] = [
        "Nowości",
        "Producenci",
        "Produkty",
        "Lokalizacja",
        "O nas"
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                ForEach(Array(self.tabs.enumerated()), id: \.offset) { index, tab in
                    Button(action: {
                        selectedTabIndex = index
                    }) {
                        Text(tab)
                            .fontWeight(.light)
                            .font(.custom("Helvetica Neue", size: 22))
                            .foregroundColor(index == selectedTabIndex ? Color("NavColor") : .black)
                    }
                }
                Spacer()
            }
            .padding(.leading, 20.0)
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView(selectedTabIndex: Binding.constant(0))
    }
}

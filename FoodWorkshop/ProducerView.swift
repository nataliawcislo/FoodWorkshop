//
//  ProducerView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 12/10/2020.
//

import SwiftUI

struct ProducerView: View {
    let items: [Producer]
    var body: some View {
        ScrollView{
            ForEach(items, id: \.id) { item in
              
                    ZStack{
                        Rectangle()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color("PC"), Color("PC2")]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                            .border(Color.gray)
                            .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        HStack{
                            Circle()
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color("PC13"), Color("PC5")]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing))
                                .frame(width: 70, height: 70)
                                .opacity(0.65)
                                .overlay(Text("0.7 km").foregroundColor(.white).font(.system(size: 18, weight: .bold, design: .rounded)))
                                .padding(.horizontal, 15.0)
                            VStack{
                                Text(item.name)
                                    .foregroundColor(.black)
                                    .font(.system(size: 26, weight: .light, design: .rounded))
                                    .multilineTextAlignment(.center).padding(.top, 30)
                                Spacer()
                                HStack{
                                    Spacer()
                                    Image("temp").resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100)
                                }
                            }.padding(.horizontal, 15.0).padding(.vertical, 2)
                        }
                }
            }
        }
    }
}

struct ProducerView_Previews: PreviewProvider {
    static var previews: some View {
        ProducerView(items: producers)
    }
}

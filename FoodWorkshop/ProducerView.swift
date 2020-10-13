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
//                HStack{
//                    Image(item.image)
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .cornerRadius(5)
//
//                    Text(item.name)
//                        .font(.system(size: 18, weight: .light, design: .rounded))
//                        .foregroundColor(.black)
//                }
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("PColor"))
                        .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack{
                        Circle()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [.yellow, .red]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                            .frame(width: 70, height: 70)
                            .opacity(0.65)
                            .overlay(Text("0.7 km").foregroundColor(.white).font(.system(size: 18, weight: .bold, design: .rounded)))
                       Spacer()
                        Text(item.name)
                            .foregroundColor(.white)
                            .font(.system(size: 26, weight: .light, design: .rounded))
                            .multilineTextAlignment(.center)
                    }.padding(.horizontal, 20.0)
                   
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

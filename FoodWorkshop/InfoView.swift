//
//  InfoView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 12/10/2020.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView{
            Text("Dolnośląski warsztat fundacja lokalna").font(.system(size: 32, weight: .bold, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center).padding(.all, 15.0)
            
            ZStack{
//                Image("info")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(height: 300, alignment: .center)
//                    .mask(Parallelogram(depth: 50))
                Parallelogram(depth: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color("PC5"), Color("PC10")]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                    .edgesIgnoringSafeArea(.top)
                Text("Jesteśmy organizacją, która wspiera lokalne, zrównoważone rolnictwo i małych lokalnych wytwórców. Ważne są dla nas kwestie społeczne, ekologiczne i kulturowe.Prezentujemy różnorodne  wyroby lokalne i ciekawe połączenia smaków, odkrywamy i chronimy niepowtarzalny klimat i tożsamość miejsca. Działamy bez wsparcia żadnych środków, projektów i urzędów.").font(.system(size: 22, weight: .medium, design: .rounded)).foregroundColor(.white).padding(.horizontal, 15.0).padding(.vertical, 32)
                    .edgesIgnoringSafeArea(.top)
            }
            VStack{
                Text("Zapraszamy do kontaktu z nami!").font(.system(size: 22, weight: .bold, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center).padding(.all, 10.0)
                HStack{
                Text("Prezeska fundacji:").font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center)
                Text("Marzena Żuchowicz").font(.system(size: 18, weight: .medium, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center)
                }.padding(.horizontal, 15.0)
                
                HStack{
                Text("E-mail:").font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center)
                Text("dolnoslaskiwarsztat@gmail.com").font(.system(size: 18, weight: .medium, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center)
                }.padding(.horizontal, 15.0)
            
                HStack{
                Text("Telefon:").font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center)
                Text("512 217 097").font(.system(size: 18, weight: .medium, design: .rounded)).foregroundColor(.black).multilineTextAlignment(.center)
                }.padding(.horizontal, 15.0)
            }
            .padding(.vertical, 20.0)
            Spacer()
            HStack{
                Image(systemName: "pencil")
                .font(.system(size: 35.0)).foregroundColor(Color("NavC"))
                Spacer()
                Image(systemName: "pencil")
                    .font(.system(size: 35.0)).foregroundColor(Color("NavC"))
                Spacer()
                Image(systemName: "pencil")
                    .font(.system(size: 35.0)).foregroundColor(Color("NavC"))
                Spacer()
                Image(systemName: "pencil")
                    .font(.system(size: 35.0)).foregroundColor(Color("NavC"))
                Spacer()
                Image(systemName: "pencil").foregroundColor(Color("NavC"))
                    .font(.system(size: 35.0)).foregroundColor(Color("NavC"))
            }.padding([.leading, .bottom, .trailing], 15.0)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct Parallelogram: Shape {
    
    var depth: CGFloat
    var flipped: Bool = false
    
    func path(in rect: CGRect) -> Path {
        Path { p in
            if flipped {
                p.move(to: CGPoint(x: 0, y: 0))
                p.addLine(to: CGPoint(x: rect.width, y: depth))
                p.addLine(to: CGPoint(x: rect.width, y: rect.height))
                p.addLine(to: CGPoint(x: 0, y: rect.height - depth))
            } else {
                p.move(to: CGPoint(x: 0, y: depth))
                p.addLine(to: CGPoint(x: rect.width, y: 0))
                p.addLine(to: CGPoint(x: rect.width, y: rect.height - depth))
                p.addLine(to: CGPoint(x: 0, y: rect.height))
            }
            p.closeSubpath()
        }
    }
}

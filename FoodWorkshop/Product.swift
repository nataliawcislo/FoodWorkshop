//
//  Product.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 12/10/2020.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    let name: String
    let image: String
 }


let products: [Product] = [
    Product(name: "Pieczywo, Mąka", image: "1"),
    Product(name: "Nabiał", image: "2"),
    Product(name: "Oleje", image: "3"),
    Product(name: "Warzywa, Owoce, Przetwory", image: "4"),
    Product(name: "Miody", image: "5"),
    Product(name: "Mięso, Wędliny", image: "6"),
    Product(name: "Ryby", image: "7"),
]

//let products: [Product] = [
//    Product(name: "Wino", image: "1"),
//    Product(name: "Owoce i warzywa", image: "2"),
//    Product(name: "Sery", image: "3"),
//    Product(name: "Rosliny i ziola", image: "4"),
//    Product(name: "Oleje", image: "5"),
//    Product(name: "Rekodzielo", image: "6"),
//    Product(name: "Napoje", image: "7"),
//    Product(name: "Piwo", image: "8"),
//    Product(name: "Maka", image: "9"),
//    Product(name: "Kasza", image: "10"),
//    Product(name: "Makaron", image: "11"),
//]

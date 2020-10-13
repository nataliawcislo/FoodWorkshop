//
//  Producer.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 12/10/2020.
//

import Foundation

struct Producer: Identifiable{
    var id = UUID()
    let name: String
    let image: String
 }

let producers: [Producer] = [
    Producer(name: "Młyn gospodarski Mierczyce, Sebastian Walaszczyk", image: "1"),
    Producer(name: "Gospodarstwo Rolne Marcin Gołda ", image: "1"),
    Producer(name: "Młyn Jordanów Śląski, Zenon Feszczuk", image: "1"),
    Producer(name: "Piekarnia VitaFit", image: "1"),
    Producer(name: "Piekarnia Naturalna", image: "1"),
    Producer(name: "Młyn Skokowa ", image: "1"),
    Producer(name: "Chlebownia", image: "1"),
    Producer(name: "Piekarnia UliJanka w Piechowicach „Pracownia Dobrego Chleba", image: "1")
]

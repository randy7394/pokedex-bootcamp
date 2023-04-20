//
//  Pokemon.swift
//  pokedex-bootcamp
//
//  Created by Aylwing Olivas on 4/14/23.
//

import Foundation
import UIKit

struct Pokemon {
    let name: String
    let type: String
    let photo: UIImage
}

let pokemons: [Pokemon] = [
    Pokemon(name: "Charmander", type: "Fire", photo: UIImage (named:"Charmander")!),
    Pokemon(name: "Squirtle", type: "Water", photo: UIImage (named:"Squirtle")!),
    Pokemon(name: "Bulbasur", type: "Grass", photo: UIImage (named:"Bulbasur")!),
    Pokemon(name: "Caterpie", type: "Bug", photo: UIImage (named:"Caterpie")!),
    Pokemon(name: "Weedle", type: "Bug", photo: UIImage (named:"Weedle")!),
    Pokemon(name: "Pidgey", type: "Flying", photo: UIImage (named:"Pidgey")!),
    Pokemon(name: "Rattata", type: "Normal", photo: UIImage (named:"Rattata")!),
    Pokemon(name: "Ekans", type: "Poison", photo: UIImage (named:"Ekans")!),
    Pokemon(name: "Pikachu", type: "Electric", photo: UIImage (named:"Pikachu")!),
    Pokemon(name: "Sandshrew", type: "Ground", photo: UIImage (named:"Sandshrew")!),
    Pokemon(name: "Nidoran", type: "Poison", photo: UIImage (named:"Nidoran")!),
    Pokemon(name: "Vulpix", type: "Fire", photo: UIImage (named:"Vulpix")!),
    Pokemon(name: "Charizard", type: "Fire", photo: UIImage (named:"Charizard")!),
    Pokemon(name: "Articuno", type: "Ice", photo: UIImage (named:"Articuno")!),
    Pokemon(name: "Rapidash", type: "Fire", photo: UIImage (named:"Rapidash")!)
]

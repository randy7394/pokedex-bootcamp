//
//  SecondViewController.swift
//  pokedex-bootcamp
//
//  Created by Randy Morales on 22/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var secondVCPokemonPhoto: UIImageView!
    @IBOutlet var secondVCPokemonNameLabel: UILabel!
    @IBOutlet var secondVCPokemonTypeLabel: UILabel!
    @IBOutlet var secondVCPokemonNumberLabel: UILabel!
    @IBOutlet var secondVCPokemonBiologyLabel: UILabel!
    
    var photoSecondVC = UIImage()
    var nameSecondVC = String()
    var typeSecondVC = String()
    var pokemonNumberSecondVC = String()
    var pokemonBiologySecondVC = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondVCPokemonPhoto.image = photoSecondVC
        secondVCPokemonNameLabel.text = nameSecondVC
        secondVCPokemonTypeLabel.text = typeSecondVC
        secondVCPokemonNumberLabel.text = pokemonNumberSecondVC
        secondVCPokemonBiologyLabel.text = pokemonBiologySecondVC
    }
    
}

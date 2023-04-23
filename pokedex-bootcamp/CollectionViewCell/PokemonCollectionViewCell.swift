//
//  PokemonCollectionViewCell.swift
//  pokedex-bootcamp
//
//  Created by Randy Morales on 19/4/23.
//

import UIKit

final class PokemonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var pokemonNumberLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var pokePhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.pokePhoto.layer.cornerRadius = self.pokePhoto.frame.size.width / 8
        
    }

}

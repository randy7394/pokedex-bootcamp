//
//  ViewController.swift
//  pokedex-bootcamp
//
//  Created by Derian Córdoba on 4/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var welcomeTitle: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        registerCell()
    }

    @IBAction private func didTapButton(_ sender: Any) {
        print("Button clicked")
    }
    
    private func registerCell() {
        let cell = UINib(nibName: "PokemonCollectionViewCell", bundle: nil)
        collectionView.register(cell, forCellWithReuseIdentifier: "PokemonCollectionViewCell")
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pokemons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCollectionViewCell", for: indexPath) as? PokemonCollectionViewCell
        else { return UICollectionViewCell() }
        
        cell.nameLabel.text = "Name: \(pokemons[indexPath.row].name)"
        cell.typeLabel.text = "Type: \(pokemons[indexPath.row].type)"
        cell.pokemonNumberLabel.text = "N.º \(pokemons[indexPath.row].pokemonnumber)"
        cell.pokePhoto.image = pokemons[indexPath.row].photo
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let secondViewController = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
            else {return}
        
            secondViewController.photoSecondVC = pokemons[indexPath.row].photo
            secondViewController.nameSecondVC = pokemons[indexPath.row].name
            secondViewController.typeSecondVC = pokemons[indexPath.row].type
            secondViewController.pokemonNumberSecondVC = "N.º \(pokemons[indexPath.row].pokemonnumber)"
        secondViewController.pokemonBiologySecondVC = pokemons[indexPath.row].biology
            self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}

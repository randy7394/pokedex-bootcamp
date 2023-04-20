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
        
//        setUI()
    }
    
//    private func setUI() {
//        welcomeTitle.font = UIFont.systemFont(ofSize: 34)
//    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Button clicked")
    }
    
    private func registerCell() {
        let cell = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(cell, forCellWithReuseIdentifier: "CollectionViewCell")
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
            cell.nameLabel.text = "\(pokemons[indexPath.row].name)"
            cell.typeLabel.text = "\(pokemons[indexPath.row].type)"
            cell.pokePhoto.image = pokemons[indexPath.row].photo
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}

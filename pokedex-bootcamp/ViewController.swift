//
//  ViewController.swift
//  pokedex-bootcamp
//
//  Created by Derian Córdoba on 4/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var welcomeTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    private func setUI() {
        welcomeTitle.font = UIFont.systemFont(ofSize: 34)
    }
}


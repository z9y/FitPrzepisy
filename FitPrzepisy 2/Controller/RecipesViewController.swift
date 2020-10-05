//
//  RecipesViewController.swift
//  FitPrzepisy 2
//
//  Created by zari on 24/05/2020.
//  Copyright © 2020 zari. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var recipe: [Recipe] = [
        Recipe(title: "Sphagetti", glutenFree: true, lactoseFree: false, wege: false),
        Recipe(title: "Kurczak pieczony", glutenFree: true, lactoseFree: true, wege: false),
        Recipe(title: "Sałata", glutenFree: false, lactoseFree: true, wege: true),
        Recipe(title: "Sphagetti", glutenFree: true, lactoseFree: false, wege: false),
        Recipe(title: "Kurczak pieczony", glutenFree: true, lactoseFree: true, wege: false),
        Recipe(title: "Sałata", glutenFree: true, lactoseFree: true, wege: true),
        Recipe(title: "Sphagetti", glutenFree: true, lactoseFree: false, wege: false),
        Recipe(title: "Kurczak pieczony", glutenFree: true, lactoseFree: true, wege: false),
        Recipe(title: "Sałata", glutenFree: false, lactoseFree: true, wege: true),
        Recipe(title: "Sphagetti", glutenFree: true, lactoseFree: false, wege: false),
        Recipe(title: "Kurczak pieczony", glutenFree: true, lactoseFree: true, wege: false),
        Recipe(title: "Sałata", glutenFree: true, lactoseFree: true, wege: true),
        Recipe(title: "Sphagetti", glutenFree: true, lactoseFree: false, wege: false),
        Recipe(title: "Kurczak pieczony", glutenFree: true, lactoseFree: true, wege: false),
        Recipe(title: "Sałata", glutenFree: true, lactoseFree: true, wege: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.delegate = self // błąd przy kliknieciu na wybrany cell
        tableView.dataSource = self
        title = K.appName
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
}

extension RecipesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! RecipeCell
        cell.titleLabel.text = recipe[indexPath.row].title
        if recipe[indexPath.row].glutenFree {
            cell.glutenImage.isHidden = false
        }
        if recipe[indexPath.row].lactoseFree {
            cell.lactoseImage.isHidden = false
        }
        if recipe[indexPath.row].wege {
            cell.vegeImage.isHidden = false
        }

        return cell
    }
}

//extension RecipesViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//        tableView.deselectRow(at: indexPath, animated: true)
//        performSegue(withIdentifier: K.recipesSegue, sender: self)
//    }
//}

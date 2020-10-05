//
//  ViewController.swift
//  FitPrzepisy 2
//
//  Created by zari on 24/05/2020.
//  Copyright © 2020 zari. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController {
    
    let db = Firestore.firestore()

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = K.appName
        
//        db.collection("recipe").addDocument(data: [
//            "title": "Kurczak pieczony",
//            "glutenFree": true,
//            "lactoseFree": false,
//            "vege": false,
//            "favorite": true,
//            "ingredients": [500: "kurczaka", 200: "makaron", 300: "smietany"],
//            "preparing": "Kurczaka ugotowac, dodać makaron i wymieszac, dodac smietane"
//        ])

    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
    }
    
}


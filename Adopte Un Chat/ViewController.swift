//
//  ViewController.swift
//  Adopte Un Chat
//
//  Created by Bryan Battu on 25/01/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var catImageView: UIImageView!
    
    var cats: [Cat] = [
        Cat(name: "Garfield", age: 6, gender: .Male, image: "one"),
        Cat(name: "Boldy", age: 4, gender: .Femelle, image: "two"),
        Cat(name: "Fluffy", age: 9, gender: .Male, image: "three"),
        Cat(name: "Caramel", age: 11, gender: .Male, image: "four"),
        Cat(name: "India", age: 13, gender: .Femelle, image: "five"),
        Cat(name: "Philou", age: 1, gender: .Male, image: "six"),
        Cat(name: "Pacha", age: 2, gender: .Femelle, image: "seven"),
        Cat(name: "Stormy", age: 5, gender: .Femelle, image: "eight")
    ]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundedLogo()
        containerSetup()
        catImageSetup()
        setupCat()
    }
     
    func roundedLogo () {
        let cat = cats[index]
        logo.layer.cornerRadius = logo.frame.width / 2
        logo.layer.borderColor = cat.cgColor
        logo.layer.borderWidth = 1
    }
    
    func containerSetup () {
        let cat = cats[index]
        container.layer.cornerRadius = 20
        container.layer.shadowColor = cat.cgColor
        container.layer.shadowRadius = 8
        container.layer.shadowOpacity = 0.8
        container.layer.shadowRadius = 8
        container.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
    
    func catImageSetup() {
        catImageView.layer.cornerRadius = 20
    }
    
    func setupCat() {
        let cat = cats[index]
        mainLabel.text = cat.name
        infoLabel.text = cat.desc
        catImageView.image = cat.setImage()
        mainLabel.textColor = cat.color
        infoLabel.textColor = cat.color
    }

    @IBAction func yesPressed(_ sender: Any) {
        if index < cats.count - 1 {
            index += 1
        } else {
            index = 0
        }
        setupCat()
    }
    
    
    @IBAction func noPressed(_ sender: Any) {
        if index == 0 {
            index = cats.count - 1
        } else {
            index -= 1
        }
        setupCat()
    }
    
}


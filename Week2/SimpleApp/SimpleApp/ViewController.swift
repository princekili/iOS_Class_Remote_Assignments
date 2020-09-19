//
//  ViewController.swift
//  SimpleApp
//
//  Created by prince on 2020/9/18.
//  Copyright © 2020 Princekili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonTitleColor: UIButton!
    
    var textArrayIndex = 0
    let text = [
        "Lorem ipsum dolor sit amet,consectetur adipiscingelit.Maecenastempus.",
        "Contrary to popular belief,Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "This book is atreatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
    ].shuffled()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnotherFunFact()
    }
    
    @IBAction func showAnotherFunFact() {
        textArrayIndex = Int.random(in: 0...6)
        textLabel.text = text[textArrayIndex]
        view.backgroundColor = generateRandomColor()
        buttonTitleColor.setTitleColor(view.backgroundColor, for: .normal)
    }
    
    func generateRandomColor() -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return randomColor
    }
    
}


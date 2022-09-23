//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Daniil Oreshenkov on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }


    @IBAction func showGreetingPressed(_ sender: UIButton) {
        greetingLabel.text = "Hello, \(person.name) \(person.surname)"
    }
}


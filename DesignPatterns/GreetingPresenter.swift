//
//  GreetingPresenter.swift
//  DesignPatterns
//
//  Created by Daniil Oreshenkov on 23.09.2022.
//

import Foundation

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    private unowned var view: GreetingViewProtocol
    private var person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name), \(person.surname)"
        view.setGreeting(greeting)
    }
    
    
}

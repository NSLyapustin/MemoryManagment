//
//  DogsPresenter.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

class DogsPresenter {
    
    // MARK: - Instance Properties
    
    let interactor: DogsInteractorInput
    var view: DogsViewInput?
    
    // MARK: - Initializators
    
    init(interactor: DogsInteractorInput) {
        self.interactor = interactor
    }
}

    // MARK: - DogsViewOutput

extension DogsPresenter: DogsViewOutput {
    func viewDidLoadEvent() {
        interactor.fetchDog { result in
            switch result {
            case .success(let dog):
                self.view?.display(dog: dog)
                
            case .failure(let error):
                print(error)
            }
        }
    }
}

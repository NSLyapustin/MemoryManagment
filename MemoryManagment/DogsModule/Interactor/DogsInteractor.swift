//
//  DogsInteractor.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

import Foundation

class DogsInteractor {
    
    // MARK: - Instance Properties
    
    var presenter: DogsInteractorOutput?
    
    // MARK: -
    
    private let dogsService: DogsServiceProtocol
    
    // MARK: - Initializators
    
    init(dogsService: DogsServiceProtocol) {
        self.dogsService = dogsService
    }
}

    // MARK: - DogsInteractorInput

extension DogsInteractor: DogsInteractorInput {
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void) {
        dogsService.fetchDog(completion: completion)
    }
}

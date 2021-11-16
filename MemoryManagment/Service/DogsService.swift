//
//  DogsService.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

import Foundation

protocol DogsServiceProtocol {
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void)
}

class DogsService: DogsServiceProtocol {
    
    // MARK: - Instance Properties
    
    // MARK: -
    
    let dogsRemoteDataSource: DogsRemoteDataSourceProtocol
    let dogsLocalDataSource: DogsLocalDataSourceProtocol
    
    // MARK: - Initializators
    
    init(dogsRemoteDataSource: DogsRemoteDataSourceProtocol, dogsLocalDataSource: DogsLocalDataSourceProtocol) {
        self.dogsRemoteDataSource = dogsRemoteDataSource
        self.dogsLocalDataSource = dogsLocalDataSource
    }
    
    // MARK: - DogsServiceProtocol Methods
    
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void) {
        dogsRemoteDataSource.fetchDog(completion: completion)
    }
}

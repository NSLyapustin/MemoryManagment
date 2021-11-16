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
    
    // MARK: - Initializators
    
    init(dogsRemoteDataSource: DogsRemoteDataSourceProtocol) {
        self.dogsRemoteDataSource = dogsRemoteDataSource
    }
    
    // MARK: - DogsServiceProtocol Methods
    
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void) {
        dogsRemoteDataSource.fetchDog(completion: completion)
    }
}

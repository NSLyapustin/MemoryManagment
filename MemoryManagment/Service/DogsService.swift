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
    
    let serviceDataSourceAdapter: ServiceDataSourceAdapterProtocol
    
    // MARK: - Initializators
    
    init(serviceDataSourceAdapter: ServiceDataSourceAdapterProtocol) {
        self.serviceDataSourceAdapter = serviceDataSourceAdapter
    }
    
    // MARK: - DogsServiceProtocol Methods
    
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void) {
        serviceDataSourceAdapter.fetchDogThrowAdapter(completion: completion)
    }
}

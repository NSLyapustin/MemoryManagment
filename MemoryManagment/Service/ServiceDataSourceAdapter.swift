//
//  ServiceDataSourceAdapter.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 16.11.2021.
//

import Foundation

protocol ServiceDataSourceAdapterProtocol {
    func fetchDogThrowAdapter(completion: @escaping (Result<Dog, Error>) -> Void)
}

class ServiceDataSourceAdapter: ServiceDataSourceAdapterProtocol {
    
    // MARK: - Instance Properties
    
    // MARK: -
    
    private let dogsRemoteDataSource: DogsRemoteDataSourceProtocol
    
    // MARK: - Initializators
    
    init(dogsRemoteDataSource: DogsRemoteDataSourceProtocol) {
        self.dogsRemoteDataSource = dogsRemoteDataSource
    }
    
    // MARK: - ServiceDataSourceAdapterProtocol Methods
    
    func fetchDogThrowAdapter(completion: @escaping (Result<Dog, Error>) -> Void) {
        dogsRemoteDataSource.fetchDog { result in
            switch result {
            case .success(let dogResponseModel):
                completion(.success(Dog(urlString: dogResponseModel.notUrlString)))
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

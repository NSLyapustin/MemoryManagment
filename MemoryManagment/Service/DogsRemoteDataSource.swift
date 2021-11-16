//
//  DogsRemoteDataSource.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 16.11.2021.
//

import Foundation
import UIKit

protocol DogsRemoteDataSourceProtocol {
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void)
}

class DogsRemoteDataSourceMock: DogsRemoteDataSourceProtocol {
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void) {
        completion(.success(Dog(dogImage: UIImage(named: "beautiful-australian-shepherd-walking-royalty-free-image-168814214-1560959079"))))
    }
}

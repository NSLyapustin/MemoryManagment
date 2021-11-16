//
//  DogsInteractorIO.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

import Foundation

protocol DogsInteractorInput {
    func fetchDog(completion: @escaping (Result<Dog, Error>) -> Void)
}

protocol DogsInteractorOutput {
    
}

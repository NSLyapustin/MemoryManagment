//
//  DogsModuleBuilder.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

import UIKit

class DogsModuleBuilder {
    
    // MARK: - Instance Properties
    
    func build() -> UIViewController {
        let dogsRemoteDataSource = DogsRemoteDataSourceMock()
        let dogsLocalDataSource = DogsLocalDataSource()
        let dogsService = DogsService(dogsRemoteDataSource: dogsRemoteDataSource, dogsLocalDataSource: dogsLocalDataSource)
        
        let interactor =  DogsInteractor(dogsService: dogsService)
        
        let presenter = DogsPresenter(interactor: interactor)
        
        let viewController = DogsViewController(output: presenter)
        
        presenter.view = viewController
        
        return viewController
    }
}

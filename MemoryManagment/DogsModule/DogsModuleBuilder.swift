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
        
        let dogsService = DogsService(dogsRemoteDataSource: dogsRemoteDataSource)
        
        let interactor =  DogsInteractor(dogsService: dogsService)
        
        let presenter = DogsPresenter(interactor: interactor)
        
        interactor.presenter = presenter
        
        let viewController = DogsViewController(output: presenter)
        
        presenter.view = viewController
        
        return viewController
    }
}

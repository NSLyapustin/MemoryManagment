//
//  DogsViewIO.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

import Foundation

protocol DogsViewInput: AnyObject {
    func display(dog: Dog)
}

protocol DogsViewOutput {
    func viewDidLoadEvent()
}

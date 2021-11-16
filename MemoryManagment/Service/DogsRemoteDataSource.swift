//
//  DogsRemoteDataSource.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 16.11.2021.
//

import Foundation
import UIKit

protocol DogsRemoteDataSourceProtocol {
    func fetchDog(completion: @escaping (Result<DogResponseModel, Error>) -> Void)
}

class DogsRemoteDataSourceMock: DogsRemoteDataSourceProtocol {
    
    // MARK: - Instance Properties
    
    // MARK: -
    
    private var lastCompletion: ((Result<DogResponseModel, Error>) -> Void)?
    
    // MARK: -
    
    private let dogsURL = [
        "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://cdn.pixabay.com/photo/2017/09/25/13/12/cocker-spaniel-2785074__340.jpg",
        "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGV0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://media.istockphoto.com/photos/dog-jumping-in-autumn-picture-id1280392364?b=1&k=20&m=1280392364&s=170667a&w=0&h=NGYg-_9YcmJt2vkj79MvNxEcUTMN66Pa0KfvZ5MXVjI=",
        "https://bingvsdevportalprodgbl.blob.core.windows.net/demo-images/7a8268d5-8dc8-4be3-a531-df76bde664fa.jpeg",
        "https://warlu.com/wp-content/uploads/08-Warlukurlangu-Dog-program-1-CROPPED-1.jpg",
        "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1800&h=900&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2020%2F10%2F13%2Fcorgi-dog-POPDOGNAME1020.jpg",
        "https://imagesvc.meredithcorp.io/v3/jumpstartpure/image?url=https://cf-images.us-east-1.prod.boltdns.net/v1/static/474428695/1bc031b5-d611-416f-b7b9-229de894edc5/207377a0-c917-4f48-a541-b9a7bb7c23da/1280x720/match/image.jpg&w=1280&h=720&q=90&c=cc",
        "https://assets.aboutamazon.com/dims4/default/8a8a7cc/2147483647/strip/true/crop/2000x1127+0+103/resize/660x372!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F8f%2Fed%2F6b4fa4c14800bf73794fa347f07f%2F20170516dogoftheweekrufus-js-04.JPG",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6MlgbU067Tqw7eck6fkKkFInWpTNJY1RD-A&usqp=CAU",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F24%2F2021%2F04%2F26%2FGettyImages-185743593-2000.jpg&q=85",
        "https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg"
    ]
    
    func fetchDog(completion: @escaping (Result<DogResponseModel, Error>) -> Void) {
        lastCompletion = completion
        completion(.success(DogResponseModel(notUrlString: dogsURL.randomElement()!)))
    }
}

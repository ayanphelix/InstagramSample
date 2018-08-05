//
//  NetworkingService.swift
//  InstagramSample
//
//  Created by Ayanbola Felix on 04/08/2018.
//  Copyright © 2018 Ayanbola Felix. All rights reserved.
//

import UIKit
import Firebase

class NetworkingService {
    
    static let shared = NetworkingService()
    
    private init() { }
    
    func configure(){
        FirebaseApp.configure()
    }
}



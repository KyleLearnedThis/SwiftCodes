//
//  HttpJsonExample.swift
//  SwiftCodes
//
//  Copyright © 2020 kylelearnedthis. All rights reserved.
//

import Foundation
import Combine

@available(OSX 10.15, *)
class HttpJsonExample {
    var cancellable: AnyCancellable?
    
    func getJson(urlString: String) {
        let url = URL(string: urlString)!
        // Probably need a onSubscribe(), onObserver() solution?
        let semaphore = DispatchSemaphore(value: 0)
        
        self.cancellable = URLSession.shared.dataTaskPublisher(for: url)
        .map {
            let data = $0.data
            return data
        }
        .decode(type: [Post].self, decoder: JSONDecoder())
        .replaceError(with: [])
        .eraseToAnyPublisher()
        .sink(receiveValue: { items in
            print(items.count)
            semaphore.signal()
        })
        
        semaphore.wait()
        self.cancellable?.cancel()
    }
}

//
//  Queue.swift
//  DataStructuresVisualisation
//
//  Created by Tao, Weizhe (Coll) on 19/03/2022.
//

import Foundation

class Queue: ObservableObject {
    @Published var queue: [String] = []
    
    func push(data: String) {
        self.queue.append(data)
    }
    
    func pop() -> String {
        if queue.count > 0 {
            return self.queue.removeFirst()
        }
        return "Empty Queue"
    }
    
    func peek() -> String {
        return self.queue.last ?? "Empty Queue"
    }
    
}

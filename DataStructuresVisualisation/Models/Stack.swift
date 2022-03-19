//
//  Stack.swift
//  DataStructuresVisualisation
//
//  Created by Tao, Weizhe (Coll) on 19/03/2022.
//

import Foundation

class Stack: ObservableObject {
    @Published var stack: [String] = []
    
    func push(data: String) {
        self.stack.append(data)
    }
    
    func pop() -> String {
        if stack.count > 0 {
            return self.stack.removeLast()
        }
        return "Empty Stack"
    }
    
    func peek() -> String {
        return self.stack.last ?? "Empty Stack"
    }
    
}

//
//  ContentView.swift
//  DataStructuresVisualisation
//
//  Created by Tao, Weizhe (Coll) on 19/03/2022.
//

import SwiftUI

struct StackView: View {
    @StateObject var stack = Stack()
    var body: some View {
        HStack{
            Button("Push", action: {
                stack.push(data: String(Int.random(in: 0...999)))
            })
            Spacer()
            VStack {
                ForEach(stack.stack.reversed(), id: \.self) { item in
                    Text(item)
                    Divider()
                }
            }
            Spacer()
            Button("Pop", action: {
                stack.pop()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

//
//  QueueView.swift
//  DataStructuresVisualisation
//
//  Created by Tao, Weizhe (Coll) on 19/03/2022.
//

import SwiftUI

struct QueueView: View {
    @StateObject var queue = Queue()
    var body: some View {
        VStack {
            HStack {
                ForEach(queue.queue, id: \.self) { item in
                    Text(item)
                    Divider()
                }
            }
            Button("Push", action: {
                queue.push(data: String(Int.random(in: 0...999)))
            })
            Button("Pop", action: {
                queue.pop()
            })
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}

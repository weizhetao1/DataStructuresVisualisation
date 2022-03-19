//
//  RootTabView.swift
//  DataStructuresVisualisation
//
//  Created by Tao, Weizhe (Coll) on 19/03/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            QueueView()
                .tabItem {
                    Text("Queue")
                }
            StackView()
                .tabItem {
                    Text("Stack")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}

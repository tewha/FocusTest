//
//  ContentView.swift
//  FocusTest
//
//  Created by Steven Fisher on 2021-10-10.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var isNameFocused: Bool
    @State var name: String = ""

    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 10) {
                Text("We're going to try to focus on this field.")
                TextField("Name", text: $name)
                    .focused($isNameFocused)
                    .onAppear {
                        self.isNameFocused = true
                    }
                    .task {
                        self.isNameFocused = true
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


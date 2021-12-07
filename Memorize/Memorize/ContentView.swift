//
//  ContentView.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3)
            Text("Hello, world!")
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

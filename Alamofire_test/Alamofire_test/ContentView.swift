//
//  ContentView.swift
//  Alamofire_test
//
//  Created by Nathaniel Law on 10/23/23.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        List(viewModel.categories, id: \.id) { category in
            VStack {
                Text(category)
            }
        }
        .onAppear(perform: viewModel.loadApiData)
    }
}

#Preview {
    ContentView()
}

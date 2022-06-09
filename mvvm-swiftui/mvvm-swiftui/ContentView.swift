//
//  ContentView.swift
//  mvvm-swiftui
//
//  Created by Akshay Kumar on 08/06/22.
//

import SwiftUI
import Combine
struct ContentView: View {
    @ObservedObject var viewModel = BreweriesViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.breweries, id: \.self) { data in
                BreweryView(brewery: data)
            }.navigationBarTitle("Breweries")
        }
        .onAppear {
            self.viewModel.fetchBreweries()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

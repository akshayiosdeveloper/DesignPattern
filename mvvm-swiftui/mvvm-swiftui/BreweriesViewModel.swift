//
//  BreweriesViewModel.swift
//  mvvm-swiftui
//
//  Created by Akshay Kumar on 09/06/22.
//

import Foundation
import Combine
class BreweriesViewModel: ObservableObject {
    
  private let url = "https://api.openbrewerydb.org/breweries"
    private var cancellable: AnyCancellable?
    @Published var breweries: [Brewery] = []
    
    func fetchBreweries() {
        cancellable = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
                .map { $0.data }
                .decode(type: [Brewery].self, decoder: JSONDecoder())
                .replaceError(with: [])
                .eraseToAnyPublisher()
                .receive(on: RunLoop.main)
                .assign(to: \BreweriesViewModel.breweries, on: self)
        }
}

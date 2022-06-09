//
//  BreweryView.swift
//  mvvm-swiftui
//
//  Created by Akshay Kumar on 09/06/22.
//

import SwiftUI

struct BreweryView: View {
    
    private let brewery: Brewery
    
    init(brewery: Brewery) {
        self.brewery = brewery
    }
    
    var body: some View {
        HStack {
            Image("diamond")
                .resizable()
                .scaledToFit()
                .frame(width:40, height: 40)
            VStack(alignment:.leading, spacing: 15) {
                Text(brewery.name)
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text(brewery.city)
                    .font(.system(size:18))
                
            }
        }
    }
}

struct BreweryView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryView(brewery: Brewery(name: "Test",city: "Gurgaon"))
    }
}

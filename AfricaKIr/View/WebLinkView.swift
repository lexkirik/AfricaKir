//
//  WebLinkView.swift
//  AfricaKIr
//
//  Created by Test on 20.09.23.
//

import SwiftUI

struct WebLinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wkikipedia")
                Spacer()
                Group{
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct WebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        WebLinkView(animal: animals[0])
    }
}

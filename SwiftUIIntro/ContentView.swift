//
//  ContentView.swift
//  SwiftUIIntro
//
//  Created by HBCU-c2-14 on 8/1/21.
//

import SwiftUI

struct Color: Identifiable {
    var id = UUID().uuidString
    var name: String
}

struct SettingsRowItem: Identifiable {
    var id = UUID().uuidString
    var imageName: String
    var rowTitle: String
}

struct ContentView: View {
    
    var rowItems = [
        SettingsRowItem(imageName: "gear", rowTitle: "General"),
        SettingsRowItem(imageName: "trash.circle", rowTitle: "Delete"),
        SettingsRowItem(imageName: "repeat.circle", rowTitle: "Repeat")
    ]
    
    var colors = [
        Color(name: "Blue"),
        Color(name: "Green"),
        Color(name: "Red"),
        Color(name: "Orange")
    ]
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .padding()
            Button(action: {
                print("Hey, Josh.")
            }) {
                Text("Press Me!")
            }
            Image(systemName: "gamecontroller")
                .resizable()
                .frame(width: 50.0, height: 50.0)
            List {
                ForEach(colors) { color in
                    Text(color.name)
                }
            }
            
            List {
                ForEach(rowItems) { rowItem in
                    RowView(rowItem: rowItem)
                    
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




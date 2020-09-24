//
//  List.swift
//  SwiftUISystemColor
//
//  Created by Shunsuke Takagi on 9/25/20.
//

import SwiftUI

struct ContentView2: View {
    
    struct Trail: Identifiable {
        var id = UUID()
        var name: String
        var location: String
        var distance: Double
    }

    
    let hikingTrails = [
        Trail(name: "Stanford Dish", location: "Palo Alto", distance: 3.9),
        Trail(name: "Edgewood", location: "Redwood City", distance: 3.2),
        Trail(name: "Mission Peak", location: "Fremont", distance: 7.1),
        Trail(name: "Big Basin", location: "Boulder Creek", distance: 4.3),
        Trail(name: "Alum Rock", location: "Milpitas", distance: 5.7),
    ]
    
    struct TrailRow: View {
        var trail: Trail
        
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(trail.name)
                    Text(trail.location).font(.subheadline).foregroundColor(.gray)
                }
                Spacer()
                Text(String(format: "%.1f miles", trail.distance))
            }
        }
    }
    
    var body: some View {

        List {
//            Text("naa")
            Section(header: ListHeader(), footer: ListFooter()) {
                ForEach(hikingTrails) { trail in
                    TrailRow(trail: trail)
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ListHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "map")
            Text("Hiking Trails in Silicon Valley")
        }
    }
}

struct ListFooter: View {
    var body: some View {
        Text("Remember to pack plenty of water and bring sunscreen.")
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}


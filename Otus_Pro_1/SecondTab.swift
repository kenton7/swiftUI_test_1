//
//  SecondTab.swift
//  Otus_Pro_1
//
//  Created by Илья Кузнецов on 09.02.2024.
//

import SwiftUI

struct SecondTab: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<20) { item in
                    NavigationLink(destination: SomeDestinationView(rowID: item)) {
                        Text("\(item)")
                    }
                }
            }
            .navigationTitle("Второй таб")
        }
    }
}

#Preview {
    SecondTab()
}

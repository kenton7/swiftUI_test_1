//
//  ContentView.swift
//  Otus_Pro_1
//
//  Created by Илья Кузнецов on 09.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex = 0
    @State private var showSecondTabAndRandomRow = false
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.secondarySystemBackground
    }
    
    var body: some View {
            TabView(selection: $selectedIndex) {
                NavigationStack {
                    VStack {
                        Button(action: {
                            selectedIndex = 1
                            showSecondTabAndRandomRow.toggle()
                        }, label: {
                            Text("Открыть второй таб и рандомную ячейку")
                                .font(.system(size: 30, design: .rounded))
                        }).buttonStyle(.borderedProminent)
                            .sheet(isPresented: $showSecondTabAndRandomRow, content: {
                                SomeDestinationView(rowID: Int.random(in: 0..<20))
                            })
                    }
                }
                .font(.system(size: 30, design: .rounded)).bold()
                .tabItem {
                    Label(
                        title: { Text("Первый") },
                        icon: { Image(systemName: "1.circle") }
                    )
                }.tag(0)
                
                //MARK: - Second Tab
                SecondTab()
                    .tabItem {
                        Label(
                            title: { Text("Второй") },
                            icon: { Image(systemName: "2.circle") }
                        )
                    }.tag(1)
                
                //MARK: - Third tab
                ThirdTab()
                    .tabItem {
                        Label(
                            title: { Text("Третий") },
                            icon: { Image(systemName: "3.circle") }
                        )
                    }.tag(2)
            }
        }
}

#Preview {
    ContentView()
}

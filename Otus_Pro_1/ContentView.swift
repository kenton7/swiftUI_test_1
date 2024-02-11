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
        ZStack {
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
                    Image(systemName: "1.circle")
                    Text("Первый").font(.system(size: 20, design: .rounded)).tint(.black)
                }.tag(0)
                
                //MARK: - Second Tab
                SecondTab()
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Второй").font(.system(size: 20, design: .rounded)).tint(.black)
                    }.tag(1)
                
                //MARK: - Third tab
                ThirdTab()
                    .font(.system(size: 30, design: .rounded)).bold()
                    .tabItem {
                        Image(systemName: "3.circle")
                        Text("Третий").font(.system(size: 20, design: .rounded)).tint(.black)
                    }.tag(2)
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  SomeDestinationView.swift
//  Otus_Pro_1
//
//  Created by Илья Кузнецов on 09.02.2024.
//

import SwiftUI

struct SomeDestinationView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var isActivityViewPresented = false
    var rowID: Int
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 40))
                            .padding()
                    })
                }
                Spacer()
            }
            VStack {
                Spacer()
                Text("Была нажата ячейка \(rowID)").font(.system(size: 40, design: .rounded)).bold()
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.isActivityViewPresented.toggle()
                }, label: {
                    Image(systemName: "square.and.arrow.up.circle.fill")
                    Text("Поделиться")
                })
                .padding()
                .foregroundStyle(.white)
                .font(.system(size: 30, design: .rounded))
                .buttonStyle(.borderedProminent)
                .sheet(isPresented: $isActivityViewPresented, content: {
                    let someText = "Что вы хотите сделать c ячейкой \(rowID)?"
                    ActivityView(activityItems: [someText])
                })
            }
        }
    }
}

#Preview {
    SomeDestinationView(rowID: 1)
}

//
//  ThirdTab.swift
//  Otus_Pro_1
//
//  Created by Илья Кузнецов on 09.02.2024.
//

import SwiftUI

struct ThirdTab: View {
    
    @State private var showModal = false
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            Button(action: {
                showModal.toggle()
            }, label: {
                Text("Открыть модальное окно").font(.system(size: 30, design: .rounded)).foregroundStyle(.white)
            }).sheet(isPresented: $showModal, content: {
                ModalView()
            })
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ModalView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
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
            Text("Модальное окно").font(.largeTitle)
        }
    }
}

#Preview {
    ThirdTab()
}

#Preview("Modal View") {
    ModalView()
}

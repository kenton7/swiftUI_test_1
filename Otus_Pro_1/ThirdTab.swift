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

#Preview {
    ThirdTab()
}

#Preview("Modal View") {
    ModalView()
}

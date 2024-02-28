//
//  ModalScreen.swift
//  Otus_Pro_1
//
//  Created by Илья Кузнецов on 28.02.2024.
//

import SwiftUI

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
    ModalView()
}

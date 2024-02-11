//
//  FirstView.swift
//  Otus_Pro_1
//
//  Created by Илья Кузнецов on 09.02.2024.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("First View").font(.system(size: 40, design: .rounded)).bold()
        }
    }
}

#Preview {
    FirstView()
}

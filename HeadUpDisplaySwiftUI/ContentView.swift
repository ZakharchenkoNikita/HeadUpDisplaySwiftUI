//
//  ContentView.swift
//  HeadUpDisplaySwiftUI
//
//  Created by Nikita on 08.09.21.
//

import SwiftUI

struct ContentView: View {
    @State private var showHUD = false
    
    var body: some View {
        VStack {
            HUDView(content: Label("Good buy", systemImage: "cart"))
                .offset(y: showHUD ? 0 : -100)
                .animation(.spring())
            Spacer()
            
            Button("Show HUD") {
                showHUD.toggle()
                dissmisHUD()
            }
        }
    }
    
    private func dissmisHUD() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            showHUD = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

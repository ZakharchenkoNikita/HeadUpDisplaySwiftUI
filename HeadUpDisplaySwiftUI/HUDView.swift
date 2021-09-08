//
//  HUDView.swift
//  HeadUpDisplaySwiftUI
//
//  Created by Nikita on 08.09.21.
//

import SwiftUI

struct HUDView<Content: View>: View {
    var content: Content
    
    var body: some View {
        content
            .padding(.horizontal, 40)
            .padding()
            .background(
                Capsule()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .shadow(color: Color(.black).opacity(0.4),
                            radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
            )
    }
}

struct HUDView_Previews: PreviewProvider {
    static var previews: some View {
        HUDView(content: Text("Hi"))
    }
}

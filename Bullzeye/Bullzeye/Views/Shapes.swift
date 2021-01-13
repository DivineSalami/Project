//
//  SwiftUIView.swift
//  Bullzeye
//
//  Created by P.M. Student on 1/12/21.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
        
            Circle()
                .inset(by: 10.0)
                .stroke(Color.blue, lineWidth: 20.0)
                .frame(width: 200.0, height: 100.0)
                
        }
        .background(Color.green)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

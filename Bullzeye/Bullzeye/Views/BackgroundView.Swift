//
//  BackgroundView.Swift
//  Bullzeye
//
//  Created by P.M. Student on 1/12/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
        }
        .padding()
        .background(
        Color("BackgroundColor")
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
    }
}
struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            
    
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.dash")
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
}

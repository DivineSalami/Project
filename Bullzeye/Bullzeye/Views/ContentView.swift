//
//  ContentView.swift
//  Bullzeye
//
//  Created by P.M. Student on 1/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var slidervalue = 50.0
    @State private var game = Game()
    
    var body: some View {
                   ZStack {
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    VStack {
                InstructionsView(game: $game)
                SliderView(slidervalue: $slidervalue)
                HitMeButton(alertIsVisible: $alertIsVisible, slidervalue: $slidervalue, game: $game)
            
            
          
        }
    }
    }
struct InstructionsView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumbersText(text: String(game.target))
            
        }
        
    }
}
struct SliderView: View {
    @Binding var slidervalue: Double
    var body: some View {
        HStack {
           SliderLabelText(text: "1")
            Slider(value: self.$slidervalue, in: 1.0...100.0)
           SliderLabelText(text: "100")
            
        }
        .padding()
        
    }
}
struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var slidervalue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("what's up")
            self.alertIsVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .foregroundColor(.white)
        .background(ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(3.0), Color.clear]), startPoint: .top, endPoint: .bottom)
        })
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
        
        .alert(isPresented: $alertIsVisible, content: {
            let roundedValue: Int = Int(self.slidervalue.rounded())
            return Alert(title: Text("Hello there"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
            
        })
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.device)
            .previewDevice("iPhone 11 Pro")
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
}

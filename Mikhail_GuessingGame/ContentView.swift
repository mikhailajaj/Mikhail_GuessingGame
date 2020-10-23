//
//  ContentView.swift
//  Mikhail_GuessingGame
//
//  Created by Mikhail on 2020-10-23.
//

import SwiftUI

struct ContentView: View {
    @State private var guessedNumber : String = ""
    @State private var numberOfAttempts : Int = 5
    @State private var scoreTapped : Bool = false
    @State private var message : String = ""
    @State private var randomNumber : Int
    var body: some View {
        NavigationView{
            VStack{
                Text("Guessing Game").font(.system(size: 30)).padding().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("I have a number between 1 to 25. You have 5 attempts.\nCan  You guess the number correctly?\n").font(.system(size: 30))
            TextField("Enter your guessed number",text:$guessedNumber).font(.system(size: 30))
            Text("\(numberOfAttempts) attempts left").font(.system(size: 30))
            Button (action: {
                //check if the number is correct
                if(Int(guessedNumber) == randomNumber ){
                    //alert Good job
                }else if(Int(guessedNumber) ?? 0 > randomNumber){
                    //the number is too high
                }else if(Int(guessedNumber) ?? 0 < randomNumber){
                    //the number is too low
                }
                if (numberOfAttempts == 1){
                    //Game over
                    //number of attempts = 5
                }
                else{
                    //number of attempt --
                }
                
                
            }, label: {
                Text("Check Answer")
                
            })
            Text(message).font(.system(size: 30))
            }//VSTACK
            .navigationBarTitle("Mikhail_GuessingGame", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                trailing: Button(action: {
                    self.scoreTapped = true
                    
                })
                {
                    Text("SCORE")
                })
            .sheet(isPresented: $scoreTapped)
            {
                //view the view of score
            }
            
        }//NavigationView
        .onAppear(){
            
        }
        .navigationViewStyle(DefaultNavigationViewStyle())
        .colorScheme(.dark)
    }//body
    private func setRandomNumber(){
        randomNumber = Int.random(in: 1...25)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
